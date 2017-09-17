
package com.zambrone.controller;

import com.zambrone.config.JsonResponse;
import com.zambrone.entity.Orders;
import com.zambrone.entity.Product;
import com.zambrone.entity.ProductOrder;
import com.zambrone.service.OrderService;
import com.zambrone.service.ProductService;
import org.hibernate.Session;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.sql.Time;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * Created by Chamith on 13/09/2017.
 */
@RestController
@RequestMapping("/order")
public class OrderController {
    public static final Logger logger = LoggerFactory.getLogger(CustomerController.class);

    @Autowired
    OrderService orderService;

    @Autowired
    ProductService productService;

// -------------------Retrieve Single Orders------------------------------------------

    @RequestMapping(value = "/order/{id}", method = RequestMethod.GET)
    public ResponseEntity<?> getOrder(@PathVariable("id") int id) {
        logger.info("Fetching orders with id {}", id);
        Orders orders = orderService.getOrderByOrderId(id);
        if (orders == null) {
            logger.error("Orders with id {} not found.", id);
            return new ResponseEntity("Orders with id " + id
                    + " not found", HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<Orders>(orders, HttpStatus.OK);
    }

    // -------------------Retrieve Orders details------------------------------------------
    @RequestMapping(value = "/orderdetail/{id}", method = RequestMethod.GET)
    public ResponseEntity<?> getOrderDetail(@PathVariable("id") int id) {
        logger.info("Fetching Orders Details with id {}", id);
        List<ProductOrder> orderDetails = orderService.getOrderDetailsByOrderId(id);

        if (orderDetails.isEmpty()) {
            logger.error("Orders with id {} not found.", id);
            return new ResponseEntity("Orders with id " + id
                    + " not found", HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<List>(orderDetails, HttpStatus.OK);
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    @ResponseBody
    public ModelAndView getallprameters(
            @RequestParam Map<String, String> allRequestParams,HttpSession session) {

        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String name = auth.getName(); //get logged in username

        System.out.println("logged in user name"+name);

        ModelAndView modelAndView = new ModelAndView("placeorder");
        Double unitPrice = new Double(0);
        Integer qty = new Integer(0);

        Orders orders = new Orders();
        if (name != null || name.equals(null))
            modelAndView.addObject("username", name);

        orderService.addOrder(orders);

        modelAndView.addObject("orderid", orders.getOrderNo());

        List<ProductOrder> productOrders = new ArrayList<>();

        for (Map.Entry<String, String> entry : allRequestParams.entrySet()) {

            if (entry.getKey().contains("item_price")) {
                unitPrice = Double.parseDouble(entry.getValue());
            }

            if (entry.getKey().contains("quantity")) {
                qty = Integer.parseInt(entry.getValue());
            }

            if (entry.getValue().contains("numb")) {
                String[] parts = entry.getValue().split(":");
                Integer itemId = Integer.parseInt(parts[1].trim());
                ProductOrder productOrder = new ProductOrder();

                if (!parts[1].trim().equals("") || !parts[1].trim().equals(null)) {
                    Product product = productService.getProductByID(itemId);
                    if (product != null) {
                        productOrder.setProductId(itemId);
                        productOrder.setOrderId(orders.getOrderNo());

                        productOrder.setUnitPrice(unitPrice);
                        productOrder.setQuantity(qty);

                        productOrders.add(productOrder);

                    } else {

                    }
                } else {

                }
            }
        }

        if (!productOrders.isEmpty()) {
            orderService.saveOrderDetails(orders.getOrderNo(), productOrders);
            modelAndView.addObject("result", "Sucess");
        }
        //below else-block for the purpose of deleting the created order id if the order is not placed by the customer user
        //
//        else
//
//        {
//             orderService.deleteOrder(orders.getOrderNo());
//           //System.out.println("product orders is null");
//        }

        Integer shopID = orderService.getShopIDbyOrderNo(orders.getShopNo());
        orders.setShopNo(shopID);
        orderService.updateOrder(orders);
        modelAndView.addObject("shopID",shopID);

        return modelAndView;

    }



    @RequestMapping(value = "/updateorder", method = RequestMethod.GET)
    public   @ResponseBody String returntherequest(
            @RequestParam Map<String, String> allRequestParams) {

        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String name = auth.getName(); //get logged in username

        System.out.println("logged in user name"+name);

        String orderNo = allRequestParams.get("orderNo");
        String shopNo = allRequestParams.get("shopNo");
        String deliveryName = allRequestParams.get("deliveryName");
        String city = allRequestParams.get("City");
        String deliveryAddress = allRequestParams.get("deliveryAddress");
        String deliveryEmail = allRequestParams.get("deliveryEmail");
        String deliveryTelephoneNo = allRequestParams.get("deliveryTelephoneNo");
        String date = allRequestParams.get("date");
        String deliveryTime = allRequestParams.get("deliveryTime");

        System.out.println(allRequestParams);
        try{

            Integer orderId = Integer.parseInt(orderNo.trim());
            Orders orders = orderService.getOrderByOrderId(orderId);

            if(orders!=null) {
                System.out.println("!!!!!!!!!order found");
                if (!deliveryName.equals(null) || deliveryName != "") {
                    orders.setDeliveryName(deliveryName.trim());

                }

                if (!city.equals(null) || city != "") {
                    orders.setCity(city.trim());
                }

                if (!deliveryAddress.equals(null) || deliveryAddress != "") {
                    orders.setDeliveryAddress(deliveryAddress.trim());

                }
                if (!deliveryTelephoneNo.equals(null) || deliveryTelephoneNo != "") {
                    orders.setDeliveryTelephoneNo(deliveryTelephoneNo.trim());

                } if (!shopNo.equals(null) || shopNo != "") {
                    int shopI = Integer.parseInt(shopNo.trim());
                    orders.setShopNo(shopI);

                }
                if (!date.equals(null) || date != "") {
                    SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");

                    try {
                        Date parsed = format.parse(date.trim());
                        java.sql.Date sqlDate = new java.sql.Date(parsed.getTime());
                        orders.setDate(sqlDate);

                    } catch (ParseException e) {
                        e.printStackTrace();
                    }

                }
                if (!deliveryEmail.equals(null) || deliveryEmail != "") {
                    orders.setDeliveryEmail(deliveryEmail.trim());
                }

                if (!deliveryTime.equals(null) || deliveryTime!= "") {
                    SimpleDateFormat simpletimeFormat = new SimpleDateFormat("HH:mm");
                    try {
                        long ms = simpletimeFormat.parse(deliveryTime.trim()).getTime();
                        Time t = new Time(ms);
                        orders.setDeliveryTime(t);
                    } catch (ParseException e) {
                        e.printStackTrace();
                    }
                }
                orderService.updateOrder(orders);
            }else{
                System.out.println("cannot find the order");
            }
        }catch (NullPointerException ex){
            ex.printStackTrace();
            System.out.println("Null pointer found !!!!!!!");
        }

        return "Success";
    }

}