<!DOCTYPE html>
<html>
<head>
    <!--Import Google Icon Font-->
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="css/materialize.min.css" media="screen,projection"/>
    <link type="text/css" rel="stylesheet" href="css/mystyle.css" media="screen,projection"/>

    <!--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

</head>

<body>

<nav class="grey darken-4" role="navigation">
    <div class="nav-wrapper container">

        <a id="logo-container" href="#" class="brand-logo">Mart Online</a>
        <ul class="right hide-on-med-and-down">
            <li><a class="text-lighten-3" href="shops.html">Explore Shops</a></li>            <li><a class="text-lighten-3" href="products.html">Explore Foods</a></li>            <li><a class="text-lighten-3" href="merchent.html">Merchant Area</a></li>            <li><a class="text-lighten-3" href="admin.html">Admin Area</a></li>
        </ul>

        <ul id="nav-mobile" class="side-nav">
            <li><a class="text-lighten-3" href="shops.html">Explore Shops</a></li>            <li><a class="text-lighten-3" href="products.html">Explore Foods</a></li>            <li><a class="text-lighten-3" href="merchent.html">Merchant Area</a></li>            <li><a class="text-lighten-3" href="admin.html">Admin Area</a></li>
            <li><a href="#" data-activates="slide-out" class="button-collapse"><i class="material-icons">menu</i></a>
            </li>
        </ul>
        <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a>
        <br><br>

    </div>
</nav>
<div class="col s12 grey darken-4">
    <div class="container col s12">
        <a href="#!" class="breadcrumb">Explore</a>
        <a href="#!" class="breadcrumb">Shops</a>
        <a href="#!" class="breadcrumb">Products</a>
    </div>
</div>
<ul id="slide-out" class="side-nav">
    <li>
        <div class="userView">
            <div class="background">
                <img src="https://s3-ap-southeast-1.amazonaws.com/martonline/office.jpg">
            </div>
            <a href="#!user"><img class="circle"
                                  src="https://s3-ap-southeast-1.amazonaws.com/martonline/sample1.jpg"></a>
            <a href="#!name"><span class="white-text name">Chamith Chathuka</span></a>
            <a href="#!email"><span class="white-text email">chamithc@gmail.com</span></a>
        </div>
    </li>
    <li><a class="text-lighten-3" href="shops.html">Explore Shops</a></li>            <li><a class="text-lighten-3" href="products.html">Explore Foods</a></li>            <li><a class="text-lighten-3" href="merchent.html">Merchant Area</a></li>            <li><a class="text-lighten-3" href="admin.html">Admin Area</a></li>
</ul>


<div class="section no-pad-bot" id="index-banner">

    <div class="container">

        <br><br>
        <a href="#" data-activates="slide-out" class="button-collapse"><i class="material-icons">menu</i></a>

        <div class="row">

            <div class="col s9">
                <ul class="tabs">
                    <li class="tab col s6 grey darken-4 white-text"><a class="white-text" href="#test1"><i
                            class="material-icons white-text">shopping_basket</i>Products</a></li>

                    <li class="tab col s6 grey darken-4 white-text"><a class="white-text" href="#test2"><i
                            class="material-icons white-text">store</i>About</a></li>
                </ul>
            </div>
            <div class="col s3 center grey darken-4 white-text">
                <a class="white-text"><i class="material-icons white-text">shopping_cart</i>Small Cart</a>
                <span id="smallcartbadge" class="new badge red" data-badge-caption="Items in cart"></span>
                <div id='grandtotal'class ="green">
                </div>
                <a href="placeorder.html" ><div class="blue-grey white-text">Checkout</div></a>

            </div>



            <div id="test1" class="col s9 ">
                <div class="input-field">
                    <!--<i class="material-icons prefix">search</i>-->
                </div>
                <input id="filter" placeholder="Search" type="text" class="validate">

                <ul class="list row">
                    <li class="col s4">
                        <div class="card">
                            <div class="card-image">
                                <img src="http://lorempixel.com/output/food-q-c-640-480-4.jpg">

                                <a class="btn-floating halfway-fab waves-effect waves-light red"><i
                                        class="material-icons">add</i></a>
                            </div>
                            <div class="card-content">
                                <span class="card-title item_name">Rice & Curry</span>
                                <p>Simpe lunch non veg
                                </p>
                            </div>
                            <div class="card-action">
                                <span class="new badge red item_price" data-badge-caption="price">14.50</span>
                                <a href="#modal1"> More info </a>
                            </div>
                        </div>
                    </li>
                    <li class="col s4">
                        <div class="card simpleCart_shelfItem">
                            <div class="card-image">
                                <img class="item_path" src="http://lorempixel.com/output/food-q-c-640-480-9.jpg">

                                <a href="javascript:;"
                                   class="btn-floating halfway-fab waves-effect waves-light red item_add"><i
                                        class="material-icons">add</i></a>
                            </div>
                            <div class="card-content">
                                <span class="card-title item_name">Submarine</span>


                                <p>Soft and chewy fresh Sub Bun.with polish sausage</p><br>
                            </div>
                            <div class="card-action">
                                <span class="new badge red item_price" data-badge-caption="price">14.50</span>
                                <a href="#modal1"> More info </a>
                            </div>
                        </div>
                    </li>
                    <li class="col s4">
                        <div class="card simpleCart_shelfItem">
                            <div class="card-image">
                                <img src="http://lorempixel.com/output/food-q-c-640-480-10.jpg">

                                <a href="javascript:;"
                                   class="btn-floating halfway-fab waves-effect waves-light red item_add"><i
                                        class="material-icons">add</i></a>
                            </div>
                            <div class="card-content">
                                <span class="card-title item_name">Dry Bun</span>
                                <br>
                                <p class="item_price">12.50</p><br>
                            </div>
                            <div class="card-action">
                                <span class="new badge red item_price" data-badge-caption="price">14.50</span>
                                <a href="#modal1"> More info </a>
                            </div>
                        </div>
                    </li>
                    <li class="col s4">
                        <div class="card">
                            <div class="card-image">
                                <img src="http://lorempixel.com/output/food-q-c-640-480-1.jpg">

                                <a class="btn-floating halfway-fab waves-effect waves-light red"><i
                                        class="material-icons">add</i></a>
                            </div>

                            <div class="card-content">
                                <span class="card-title ">Eggplant Curry</span>
                                <p>Curry made with Egg plant.
                                </p>
                            </div>
                            <div class="card-action">
                                <span class="new badge red item_price" data-badge-caption="price">14.50</span>
                                <a href="#modal1"> More info </a>
                            </div>
                        </div>
                    </li>
                    <li class="col s4">
                        <div class="card">
                            <div class="card-image">
                                <img src="http://lorempixel.com/output/food-q-c-640-480-8.jpg">

                                <a class="btn-floating halfway-fab waves-effect waves-light red"><i
                                        class="material-icons">add</i></a>
                            </div>
                            <div class="card-content">
                                <span class="card-title item_name">Sushi</span>
                                <p>I am a very simple card. I am good at containing small bits of information.
                                </p>
                            </div>
                            <div class="card-action">
                                <span class="new badge red item_price" data-badge-caption="price">14.50</span>
                                <a href="#modal1"> More info </a>
                            </div>
                        </div>
                    </li>


                </ul>

            </div>
            <div id="test2" class="col s9">

                <ul id="smallullist" class="collection">
                    <li class="collection-item avatar">
                        <img class="item_thumb" src="http://lorempixel.com/output/food-q-c-640-480-4.jpg"
                             thumb="https://s3-ap-southeast-1.amazonaws.com/martonline/office.jpg" alt=""
                             class="circle">
                        <span class="title">Item Name</span>
                        <p>X 1<br>$15.25

                        </p>
                        <p align="right">$45.00</p>
                        <a href="#!" class="secondary-content"><i class="material-icons">close</i></a>
                    </li>
                    <li class="collection-item avatar">
                        <i class="material-icons circle">folder</i>
                        <span class="title">Title</span>
                        <p>First Line <br>
                            Second Line
                        </p>
                        <a href="#!" class="secondary-content"><i class="material-icons">close</i></a>
                    </li>
                    <li class="collection-item avatar">
                        <i class="material-icons circle green">insert_chart</i>
                        <span class="title">Title</span>
                        <p>First Line <br>
                            Second Line
                        </p>
                        <a href="#!" class="secondary-content"><i class="material-icons">close</i></a>
                    </li>

                </ul>

            </div>
            <div class="col s3">

                <ul class="collection" id="smallcart">
                    <li class="collection-item avatar">
                        <img src="https://s3-ap-southeast-1.amazonaws.com/martonline/office.jpg" alt="" class="circle">
                        <span class="uid" hidden>office.jpg</span>
                        <span class="title">Item Name</span>
                        $15.25 &nbsp; X &nbsp; 1

                        </p>
                        <p align="right">$45.00</p>
                        <a href="#!" class="secondary-content"><i class="material-icons">close</i></a>
                    </li>

                </ul>

            </div>

        </div>


        <br><br>

    </div>
</div>
<!-- Modal Structure -->
<div id="modal1" class="modal">
    <div class="modal-content">
        <h4>Submarine</h4>
        <p>Hoagies, grinders, subs...whatever you call them, the secret to making them great is Gonnella Bread. Nothing
            is more delectable to complement your favorite sandwich than this soft and chewy fresh Sub Bun. Ideal for
            bratwurst and polish sausage too, this delicious addition to the Gonnella Bread family is perfect for any of
            your culinary creations.</p>
        <h5>Ingredients</h5>
        <p>

            Enriched bleached flour (wheat flour, malted barley flour, niacin, reduced iron, thiamin mononitrate, riboflavin, folic acid), water, high fructose corn syrup, soybean oil, contains less than 2% of yeast, salt, mono- and diglycerides,
            hydroxylated soy lecithin, cultured wheat flour, vinegar, enzymes, calcium sulfate, ascorbic acid, calcium peroxide,
            azodicarbonamide, fumaric acid, acetic acid, citric acid, lactic acid, sodium stearoyl lactylate, wheat gluten, calcium propionate (preservative), soy lecithin.
            Contains soy, wheat.
            May contain milk.
        </p>

    </div>
    <div class="modal-footer">
        <a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat">Close</a>
    </div>
</div>

<footer class="page-footer">
    <div class="container">
        <div class="row">
            <div class="col l6 s12">
                <h5 class="white-text">Mart Online Shopping</h5>
                <p class="grey-text text-lighten-4">@2017</p>
            </div>
            <div class="col l4 offset-l2 s12">
                <h5 class="white-text">Links</h5>
                <ul>
                    <li><a class="grey-text text-lighten-3" href="#!">Explore Foods</a></li>
                    <li><a class="grey-text text-lighten-3" href="#!">Explore Shops</a></li>
                    <li><a class="grey-text text-lighten-3" href="#!">Merchant Area</a></li>
                    <li><a class="grey-text text-lighten-3" href="#!">Admin Area</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="footer-copyright">
        <div class="container">

            <a class="grey-text text-lighten-4 right" href="#!">More Links</a>
        </div>
    </div>
</footer>

<!--Import jQuery before materialize.js-->
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="js/materialize.min.js"></script>
<script type="text/javascript" src="js/jquery.filterList.js"></script>
<script type="text/javascript" src="js/simpleCart.js"></script>
<script>
    $('.button-collapse').sideNav({
                menuWidth: 300, // Default is 300
                edge: 'right', // Choose the horizontal origin
                closeOnClick: true, // Closes side-nav on <a> clicks, useful for Angular/Meteor
                draggable: true // Choose whether you can drag to open on touch screens
            }
    );
    simpleCart({
        // array representing the format and columns of the cart,
        // see the cart columns documentation
        cartColumns: [
            {attr: "name", label: "Name"},
            {attr: "id", label: "ID"},
            {view: 'image', attr: 'thumb', label: false},
            {view: "currency", attr: "price", label: "Price"},
            {view: "decrement", label: false},
            {attr: "quantity", label: "Qty"},
            {view: "increment", label: false},
            {view: "currency", attr: "total", label: "SubTotal"},
            {view: "remove", text: "Remove", label: false}
        ],

        // "div" or "table" - builds the cart as a
        // table or collection of divs
        cartStyle: "div",

        // how simpleCart should checkout, see the
        // checkout reference for more info
        checkout: {
            type: "PayPal",
            email: "you@yours.com"
        },

        // set the currency, see the currency
        // reference for more info
        currency: "USD",

        // collection of arbitrary data you may want to store
        // with the cart, such as customer info
        data: {},

        // set the cart langauge
        // (may be used for checkout)
        language: "english-us",

        // array of item fields that will not be
        // sent to checkout
        excludeFromCheckout: [],

        // custom function to add shipping cost
        shippingCustom: null,

        // flat rate shipping option
        shippingFlatRate: 0,

        // added shipping based on this value
        // multiplied by the cart quantity
        shippingQuantityRate: 0,

        // added shipping based on this value
        // multiplied by the cart subtotal
        shippingTotalRate: 0,

        // tax rate applied to cart subtotal
        taxRate: 0,

        // true if tax should be applied to shipping
        taxShipping: false,

        // event callbacks
        beforeAdd: null,
        afterAdd: null,
        load: null,
        beforeSave: null,
        afterSave: null,
        update: null,
        ready: null,
        checkoutSuccess: null,
        checkoutFail: null,
        beforeCheckout: null,
        beforeRemove: null
    });

    simpleCart.bind("afterAdd", function (item) {

        Materialize.toast(item.get("name") +" was added to the cart!", 4000);

        loaditemtocart();
    });
    function loaditemtocart() {
        $('.collection-item').remove();
        var badge = document.getElementById('smallcartbadge');
        badge.innerHTML = simpleCart.quantity();
        var grandtotalele = document.getElementById('grandtotal');
        grandtotalele.innerHTML = 'Grand Total : Rs .'+ simpleCart.grandTotal().toFixed(2);
        simpleCart.each(function (item) {


            var ulElement = document.getElementById('smallcart');
            var liElement = document.createElement('li');

            liElement.setAttribute('class', 'collection-item avatar');
            var spanelement = document.createElement('span');
            spanelement.setAttribute('class', 'title');
            spanelement.innerHTML = item.get('name');
            var p = document.createElement('p');
            p.innerHTML = item.get('quantity') + ' X ' + item.get('price').toFixed(2);
            var totp = document.createElement('p');
            totp.setAttribute('align', 'right');
            var price = item.get('price').toFixed(2);
            var textnode = document.createTextNode(item.get('quantity') * price);
            totp.appendChild(textnode);
            var aremove = document.createElement('a');
            aremove.setAttribute('class', 'secondary-content');
            var itemremovelogo = document.createElement('i');
            itemremovelogo.setAttribute('class', 'material-icons');
            itemremovelogo.innerHTML = 'close';
            //itemremovelogo.setAttribute('onclick','removeitem('+item+');');
            itemremovelogo.setAttribute('onclick', 'removeitem("' + item.id() + '");');
            aremove.appendChild(itemremovelogo);


            liElement.appendChild(spanelement);
            liElement.appendChild(p);
            liElement.appendChild(totp);
            liElement.appendChild(aremove);
            ulElement.appendChild(liElement);

            console.log(item.get('quantity') + ' x ' + item.get('name'));
        });

    }


    function removeitem(itemid) {

        var item = simpleCart.find(itemid);


        var qty = item.get('quantity');
        if (qty > 0) {
            qty--;
            item.set('quantity', qty);
        }
        else {

            item.remove();
        }
        loaditemtocart();
    }
    $(document).ready(function () {
        // the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
        $('.modal').modal();
    });
    $(window).load(function () {
        // executes when HTML-Document is loaded and DOM is ready
        loaditemtocart();

    });
    $('#filter').filterList();
</script>
</body>
</html>
