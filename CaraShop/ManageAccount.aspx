<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageAccount.aspx.cs" Inherits="CaraShop.ManageAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <link rel="stylesheet" href="../assest/login.css">
    <link rel="stylesheet" href="../assest/style.css">
    <link rel="stylesheet" href="font/fontawesome-free-6.0.0-web/css/all.min.css"/>


    <style>
        #form1 {
            /*text-align: center;*/
        }
        .submit_btn1{
            width: 180px;
            height: 50px;
            text-align: center;
            line-height: 40px;
            background: #088178;
            color: #fff;
            border-radius: 2px;
            font-size: 18px;
            text-transform: capitalize;
            border: none;
            cursor: pointer;
            display: block;
            margin: 30px 0;
            float: left;
        }
    </style>
</head>
<body>
      <section id="header">
        <a href="#"><img src="img/logo.png" alt=""></a>
        <div class="">
            <ul id="navbar">
                <li><a href="Index.aspx">Home</a></li>
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
        <form id="form1" runat="server" method="post" onsubmit="return check();">
        <div>
            Name <input id="hoten" type="text" name="hoten" value="" runat="server" /> <label id="loi_ht"></label> <br />
            Email <input id="Email" type="text" name="Email" value="" runat="server"/> <label id="loi_email"></label>   <br />
            Password <input id="pass1" type="text" name="pass1" value="" runat="server"/> <label id="loi_pass"></label> <br/>
            Retype password <input id="pass2" type="text" name="pass2" value="" runat="server"/>
            Phone <input id="SDT" type="text" name="SDT" value="" runat="server"/> <label id="loi_sdt"></label>   <br />

            <input class="submit-btn1" type="submit" name="luu" value="Save"/>
            <input class="submit-btn1" type="submit" name="sua" value="Change"/>
            <input class="submit-btn1" type="submit" name="xoa" value="Delete"/>
            <br />
            <br />
            <span id="notify" runat="server" style="color: red;"></span>
            <br />
            <div id="bang" name="bang" runat="server">

            </div>
            
        </div>

    </form>

    </div>
    <script src="../assest/script.js"></script>
    <script src="../assest/Check.js"></script>
    
</body>
</html>
