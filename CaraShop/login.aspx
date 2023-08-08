<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="CaraShop.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cara: Log In</title>

    <link rel="stylesheet" href="../assest/login.css">
    <link rel="stylesheet" href="../assest/style.css">
    <link rel="stylesheet" href="font/fontawesome-free-6.0.0-web/css/all.min.css"/>
</head>
<body>

        <section id="header">
            <a href="#"><img src="img/logo.png" alt=""></a>
    
            <div class="">
                <ul id="navbar">
                    <li><a  href="index.aspx">Home</a></li>
                    <li><a href="shop.aspx">Shop</a></li>
                    <li><a href="blog.aspx">Blog</a></li>
                    <li><a href="about.aspx">About</a></li>
                    <li><a href="contact.aspx">Contact</a></li>
                    <li><a class="active" href="login.aspx">Login</a></li>
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
                <img src="/img/logo.png" class="logo" alt="">
                <form method="post" runat="server" onsubmit="return check1();">
                     <div>
                    <!--<input type="text" autocomplete="off" name="name" id="name" placeholder="name" runat="server"/> -->
                    <input type="email" autocomplete="off" name="username" id="email" placeholder="email" runat="server"/><span class="tb" id="tb_email"></span>
                    <input type="password" autocomplete="off" name="password" id="password" placeholder="password" runat="server"/><span class="tb" id="tb_pass"></span>
                    <input type="submit" class="submit-btn" id="log_in" runat="server" value="Log In" />

                        <span id="notificationsubmit" style = "border-bottom: 5px;" runat="server"></span><br />
                    </div>
                </form>
               
                <a href="signup.aspx" class="link">don't have an account? Create one</a>
            </div>
        </div>

    <script src="../assest/form.js"></script>
    <script src="../assest/script.js"></script>
</body>
</html>
