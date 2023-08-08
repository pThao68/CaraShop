<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="CaraShop.signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Clothing : Create Account</title>

    <link rel="stylesheet" href="../assest/login.css">
    <link rel="stylesheet" href="../assest/style.css">
    <link rel="stylesheet" href="font/fontawesome-free-6.0.0-web/css/all.min.css"/>

    

</head>
<body>

    <section id="header">
        <a href="#"><img src="img/logo.png" alt=""></a>

        <div class="">
            <ul id="navbar">
                <li><a href="index.aspx">Home</a></li>
                <li><a href="shop.aspx">Shop</a></li>
                <li><a href="blog.aspx">Blog</a></li>
                <li><a href="about.aspx">About</a></li>
                <li><a href="contact.aspx">Contact</a></li>
                <li id="session" runat="server">
                    
                </li>
                <li id="login_admin" runat="server"><a class="active" href="login.aspx">Sign up</a></li>
                <li id="lg_bag" runat="server"><a href="cart.aspx"><i class="fa-solid fa-bag-shopping"></i></a></li>
                <a href="#" id="close"><i class="fa-solid fa-xmark"></i></a>
            </ul>
        </div>
        <div id="mobile">
            <a href="cart.aspx"><i class="fa-solid fa-bag-shopping"></i></a>
            <i id="bar" class="fa-solid fa-outdent"></i>
        </div>

    </section>
    

    <div class="body">
        <div class="container">
            <img src="/img/logo.png" class="logo" alt=""/>
            <form runat="server" method="post" onsubmit="return check1()">
            <div id="container_form">
                <input type="text" autocomplete="off" name="fullname" id="name" placeholder="name" value="text"/><span class="tb" id="tb_name"></span>
                <input type="email" autocomplete="off" name="email" id="email" placeholder="email"/><span class="tb" id="tb_email"></span>
                <input type="password" autocomplete="off" name="password" id="password" placeholder="password"/><span class="tb" id="tb_pass"></span>
                <input type="text" autocomplete="off" name="number" id="number" placeholder="number phone" value="text"/><span class="tb" id="tb_number"></span><br />

                <input type="submit" name="create_acc" class="submit-btn" value="create account"/>

                <span id="notificationsubmit" style = "border-bottom: 5px;" runat="server"></span>
            </div>

            <div style="text-align:center; align-content: center;">
                 <span>Accept <a href="#">our terms and consitions.</a> <br />
                And recieve upcoming offers and events mails after register.</span>
            </div>
                <br />
            
            </form> 
            <a href="login.aspx" class="link">already have an account? Log in here</a><br />
            
           
        </div>
    </div>
    
    <script src="../assest/form.js"></script>
    
    <script src="../assest/script.js"></script>

</body>
</html>
