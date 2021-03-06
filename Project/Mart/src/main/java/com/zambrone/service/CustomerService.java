package com.zambrone.service;

import com.zambrone.entity.Customer;
import org.springframework.dao.DataAccessException;

import java.util.List;

/**
 * Created by Chamith on 04/07/2017.
 */
public interface CustomerService {


    public void registerNewCustomer(Customer customer) throws DataAccessException;

    public List<Customer> getAllCustomer() throws DataAccessException;

    public Customer getCustomerByName(String name) throws DataAccessException;


    public Customer getCustomerByID(Integer id) throws DataAccessException;

    public Customer getCustomerByPhone(String phone) throws DataAccessException;

    public Customer getCustomerByEmail(String email) throws DataAccessException;

    public void updateCustomer(Customer customer) throws DataAccessException;

    public void removeCustomer(Integer id) throws DataAccessException;

    public List<Customer> getCustomerByType(String type) throws DataAccessException;
}
