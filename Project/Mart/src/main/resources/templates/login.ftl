<#import "/spring.ftl" as spring>
<html>

<head>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.5/css/materialize.min.css">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="<@spring.url '/css/materialize.min.css'/> media="screen,projection"/>
    <link type="text/css" rel="stylesheet" href="<@spring.url '/css/mystyle.css'/>" media="screen,projection"/>

</head>

<body>
<div class="section"></div>
<main>
    <center>
        <div class="center" style="width: 250px;" ><h3>Mart Shopping</h3></div>
        <div class="section"></div>

        <h5 class="indigo-text">Please, login into your account</h5>
        <div class="section"></div>

        <div class="container">
            <div class="z-depth-1 grey lighten-4 row" style="display: inline-block; padding: 32px 48px 0px 48px; border: 1px solid #EEE;">

                <form class="col s12" name="f"  action="login" method="post">
                    <div class='row'>
                        <div class='col s12'>
                        </div>
                    </div>

                    <div class='row'>
                        <div class='input-field col s12'>
                            <input class='validate' type='email' name='username' id='email' />
                            <label for='email'>Enter your email</label>
                        </div>
                    </div>

                    <div class='row'>

                        <div class='input-field col s12'>
                            <input class='validate'  type='password' name='password' id='password' />
                            <label for='password'>Enter your password</label>
                        </div>

                        <label style='float: right;'>
                            <a class='pink-text' href='#!'><b>Forgot Password?</b></a>
                        </label>
                    </div>
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    <br />
                    <center>
                        <div class='row'>
                            <button type='submit' name='btn_login' class='col s12 btn btn-large waves-effect indigo'>Login</button>
                        </div>
                    </center>
                </form>
            </div>
        </div>
        <a href="/signup">Create account</a>
    </center>

    <div class="section"></div>
    <div class="section"></div>
</main>

<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="<@spring.url '/js/materialize.min.js'/>"></script>

</body>

</html>