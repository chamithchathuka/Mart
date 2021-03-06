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
    <link type="text/css" rel="stylesheet" href="<@spring.url '/css/jquery.searchableSelect.css'/>"
          media="screen,projection"/>

    <!--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

</head>

<body>

<#include "navbar.ftl">
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
    <li><a class="text-lighten-3" href="shops.html">Explore Shops</a></li>
    <li><a class="text-lighten-3" href="products.html">Explore Foods</a></li>
    <li><a class="text-lighten-3" href="merchent.html">Merchant Area</a></li>
    <li><a class="text-lighten-3" href="admin.html">Admin Area</a></li>
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
                        <input id="productId" name="productId" type="text" class="validate" disabled>
                        <label for="productId">Product ID</label>
                    </div>
                    <div class="input-field col s6">
                        <i class="material-icons prefix">store</i>
                        <input id="name" name="name" type="tel" class="validate" required>
                        <label for="name">Product Name</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <i class="material-icons prefix">person_pin</i>
                        <input id="description" name="description" type="text" class="validate" required>
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
                        Product Image
                        <input id="productImagePic" name="productImagePic" class="button" accept="image/*" type="file"
                               class="validate">
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s6">
                        <i class="material-icons prefix">business</i>
                        <input id="unitPrice" name="unitPrice" type="text" class="validate" required>
                        <label for="unitPrice">Unit Price</label>
                    </div>
                    <div class="input-field col s6">
                        <i class="material-icons prefix">business</i>
                        <input id="availablilty" name="availablilty" type="text" class="validate" required>
                        <label for="availablilty">Availablilty</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s6">
                       Select Shop
                        <select name="shopId" class="col s6">
                        <#list allshop as shop>
                            <#if shop.shopName?has_content>
                                <option value="${shop.shopNo}">${shop.shopName}</option>
                            </#if>
                        </#list>
                        </select>
                    </div>
                    <div class="input-field col s6">
                        Choose Catergory

                        <select>
                            <option value="" disabled selected>Choose Catergory</option>
                            <option value="1">Option 1</option>
                            <option value="2">Option 2</option>
                            <option value="3">Option 3</option>
                        </select>

                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s6">
                        <i class="material-icons prefix">open_with</i>
                        <input id="size" name="size" type="text" class="validate" required>
                        <label for="size">Size</label>
                    </div>
                    <div class="input-field col s6">
                        <i class="material-icons prefix">open_with</i>
                        <input id="weight" name="weight" type="number" class="validate" required>
                        <label for="weight">Weight</label>
                    </div>
                </div>
                <div id="spinneritem" class="row center">
                    <div align="center" id="spinmap" class="preloader-wrapper active">
                        <div class="spinner-layer spinner-red-only">
                            <div class="circle-clipper left">
                                <div class="circle"></div>
                            </div>
                            <div class="gap-patch">
                                <div class="circle"></div>
                            </div>
                            <div class="circle-clipper right">
                                <div class="circle"></div>
                            </div>
                        </div>
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
<#include "footer.ftl">

<!--Import jQuery before materialize.js-->
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="<@spring.url '/js/materialize.min.js'/>"></script>
<script type="text/javascript" src="<@spring.url '/js/jquery.validate.js'/>"></script>
<script type="text/javascript" src="<@spring.url '/js/jquery.searchableSelect.js'/>"></script>
<script>

    $('.button-collapse').sideNav({
                menuWidth: 300, // Default is 300
                edge: 'right', // Choose the horizontal origin
                closeOnClick: true, // Closes side-nav on <a> clicks, useful for Angular/Meteor
                draggable: true // Choose whether you can drag to open on touch screens
            }
    );

    var urlv = "/product/add"; // the script where you handle the form input.

    $(document).ready(function () {

        $("#spinneritem").hide();
    });

    $(function () {
        $('select').searchableSelect();
    });

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

            event.preventDefault();

            // Get form
            var form = $('#addproductform')[0];

            // Create an FormData object
            var data = new FormData(form);

            // If you want to add an extra field for the FormData
            data.append("courierField", "This is some extra data, testing");

            // disabled the submit button
            $("#addproductform").prop("disabled", true);
            $("#spinneritem").show();

            $.ajax({
                type: "POST",
                enctype: 'multipart/form-data',
                url: urlv,
                data: data,
                processData: false,
                contentType: false,
                cache: false,
                timeout: 600000,
                success: function (response) {
                    if (response.status == "SUCCESS") {
                        Materialize.toast(response.status, 4000);
                        $("#spinneritem").hide();
                        $("#addproductform")[0].reset();
                    } else {
                        $("#spinneritem").hide();
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
