<#import "/spring.ftl" as spring>
<!DOCTYPE html>
<html>
<head>
    <!--Import Google Icon Font-->
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="<@spring.url '/css/mystyle.css'/>" media="screen,projection"/>
    <link type="text/css" rel="stylesheet" href="<@spring.url '/css/materialize.min.css'/>" media="screen,projection"/>

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
        <a href="#!" class="breadcrumb">Admin</a>
        <a href="#!" class="breadcrumb">Shops</a>
        <a href="#!" class="breadcrumb">Add Item</a>
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
            <a href="#!name"><span class="white-text name">John Doe</span></a>
            <a href="#!email"><span class="white-text email">jdandturk@gmail.com</span></a>
        </div>
    </li>
    <li><a class="text-lighten-3" href="shops.html">Explore Shops</a></li>            <li><a class="text-lighten-3" href="products.html">Explore Foods</a></li>            <li><a class="text-lighten-3" href="merchent.html">Merchant Area</a></li>            <li><a class="text-lighten-3" href="admin.html">Admin Area</a></li>
</ul>


<div class="section no-pad-bot" id="index-banner">

    <div class="container">

        <br><br>
        <a href="#" data-activates="slide-out" class="button-collapse"><i class="material-icons">menu</i></a>

        <div class="row">

            <div class="col s12 grey center-align darken-3 white-text">
                <h5>Add Products</h5>
            </div>

        </div>
        <div class="row">
            <form id="addproductform" class="col s12">
                <div class="row">
                    <div class="input-field col s6">
                        <i class="material-icons prefix">account_circle</i>
                        <input id="productId" name="productId" type="text" class="validate">
                        <label for="productId">Product ID</label>
                    </div>
                    <div class="input-field col s6">
                        <i class="material-icons prefix">store</i>
                        <input id="name" name="name" type="tel" class="validate">
                        <label for="name">Product Name</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <i class="material-icons prefix">person_pin</i>
                        <input id="description" name="description" type="text" class="validate">
                        <label for="description">Description</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s6">
                        <i class="material-icons prefix">account_circle</i>
                        <input id="otherId" name="otherId" type="text" class="validate">
                        <label for="otherId">Other ID</label>
                    </div>
                    <div class="input-field col s6">
                        <i class="material-icons prefix">open_with</i>
                        <input id="size"  name="size" type="text" class="validate">
                        <label for="size">Size</label>
                    </div>
                </div>


                <div class="row">
                    <div class="input-field col s6">
                        <i class="material-icons prefix">business</i>
                        <input id="unitPrice" name="unitPrice" type="text" class="validate">
                        <label for="unitPrice">Unit Price</label>
                    </div>
                    <div class="input-field col s6">
                        <i class="material-icons prefix">business</i>
                        <input id="availablilty" name="availablilty" type="text" class="validate">
                        <label for="availablilty">Availablilty</label>
                    </div>


                </div>


                <div class="row">
                    <div class="input-field col s6">
                        <select>
                            <option value="" disabled selected>Select Shop</option>
                            <option value="1">Shop 1</option>
                            <option value="2">Shop 2</option>
                            <option value="3">Shop 3</option>
                        </select>
                        <label>Select Shop</label>
                    </div>
                    <div class="input-field col s6">
                        <select>
                            <option value="" disabled selected>Choose Catergory</option>
                            <option value="1">Option 1</option>
                            <option value="2">Option 2</option>
                            <option value="3">Option 3</option>
                        </select>
                        <label>Select Category</label>
                    </div>

                </div>
                <div class="row">
                    <div class="input-field col s6">
                        Product Image
                        <input id="productImagePic" name="productImagePic" class="button" accept="image/*" type="file"
                               class="validate">

                    </div>

                </div>

                <div class="row">

                    <div class="input-field col s12 center-align">
                        <button class="btn waves-effect waves-light" type="submit" name="action">Submit
                            <i class="material-icons right">send</i>
                        </button>
                    </div>


                </div>

            </form>
        </div>
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
<script type="text/javascript" src="<@spring.url '/js/materialize.min.js'/>"></script>
<script type="text/javascript" src="<@spring.url '/js/jquery.validate.js'/>"></script>
<script>
    $(document).ready(function() {
        $('select').material_select();


    });

    $('.button-collapse').sideNav({
                menuWidth: 300, // Default is 300
                edge: 'right', // Choose the horizontal origin
                closeOnClick: true, // Closes side-nav on <a> clicks, useful for Angular/Meteor
                draggable: true // Choose whether you can drag to open on touch screens
            }
    );

    var urlv = "/product/add"; // the script where you handle the form input.

    $('#addproductform').validate({
//        rules: {
//            field: {
//                required: true,
//                minlength: 3
//            }
//        }

        errorElement: "div",
        errorPlacement: function (error, element) {
            var placement = $(element).data('error');
            if (placement) {
                $(placement).append(error)
            } else {
                error.insertAfter(element);
            }
        },
        submitHandler: function (form) {
            $.ajax({
                type: "POST",
                url: urlv,
                data: $("#addproductform").serialize(), // serializes the form's elements.
                success: function (response) {
                    if (response.status == "SUCCESS") {
                        Materialize.toast(response.status, 4000);
                    } else {
                        Materialize.toast(response.status, 4000);
                    }
                },
                error: function (e) {
                    Materialize.toast("Error", 4000);
                }
            });
        }
    });

</script>

</body>
</html>
