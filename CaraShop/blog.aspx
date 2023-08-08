﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="blog.aspx.cs" Inherits="CaraShop.blog" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../assest/style.css">
    <link rel="stylesheet" href="font/fontawesome-free-6.0.0-web/css/all.min.css"/>

    <style>
        #page-header.blog-header:hover {
    background-image: url("/img/banner/b1.jpg");
    font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
    
}
        #page-header h2:hover{
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
        }
    </style>

</head>

<body>

    <section id="header">
        <a href="#"><img src="img/logo.png" alt=""></a>

        <div class="">
            <ul id="navbar">
                <li><a href="index.aspx">Home</a></li>
                <li><a href="shop.aspx">Shop</a></li>
                <li><a class="active" href="blog.aspx">Blog</a></li>
                <li><a href="about.aspx">About</a></li>
                <li><a href="contact.aspx">Contact</a></li>
                 <li id="session" runat="server">
                    
                </li>
                <li id="login_admin" runat="server"><a href="login.aspx">Login</a></li>
                <li id="lg_bag" runat="server"><a href="cart.aspx"><i class="fa-solid fa-bag-shopping"></i></a></li>
                <a href="#" id="close"><i class="fa-solid fa-xmark"></i></a>
            </ul>
        </div>
        <div id="mobile">
            <a href="cart.aspx"><i class="fa-solid fa-bag-shopping"></i></a>
            <i id="bar" class="fa-solid fa-outdent"></i>
        </div>

    </section>

    <section id="page-header" class="blog-header">
        <h2>#readmore</h2>
        <p>Reas all case studies about our products! </p>
    </section>

    <section id="blog">
        
    
    <button onclick="doSomething()" style="background-color: #333; color:#00ff00; border-radius: 5px;">click me</button>
    <p id="test">Hello</p>

    <script>
        function doSomething() {
            document.getElementById("test").innerHTML = "good bye";
            
       
        }
    </script>
        <div class="blog-box">
            <div class="blog-img">
                <img src="img/blog/b1.jpg" alt="">
            </div>
            <div class="blog-details">
                    <h4>The cotton-Jersey Zip-Up Hoodie</h4>
                    <p>Kickstarter man braid godard coloring book. Raclette waistcoat selfies
                        yr wolf chartreuse hexagon irony, godard...
                    </p>
                    <a href="#">CONTINUE READING</a>
            </div>
            <H1>13/01</H1>
        </div>
        <div class="blog-box">
            <div class="blog-img">
                <img src="img/blog/b6.jpg" alt="">
            </div>
            <div class="blog-details">
                
                    <h4>The cotton-Jersey Zip-Up Hoodie</h4>
                    <p>Kickstarter man braid godard coloring book. Raclette waistcoat selfies
                        yr wolf chartreuse hexagon irony, godard...
                    </p>
                    <a href="#">CONTINUE READING</a>
            </div>
            <H1>20/01</H1>
        </div>
        <div class="blog-box">
            <div class="blog-img">
                <img src="img/blog/b3.jpg" alt="">
            </div>
            <div class="blog-details">
                    <h4>The cotton-Jersey Zip-Up Hoodie</h4>
                    <p>Kickstarter man braid godard coloring book. Raclette waistcoat selfies
                        yr wolf chartreuse hexagon irony, godard...
                    </p>
                    <a href="#">CONTINUE READING</a>
            </div>
            <H1>11/01</H1>
        </div>
        <div class="blog-box">
            <div class="blog-img">
                <img src="img/blog/b4.jpg" alt="">
            </div>
            <div class="blog-details">
                    <h4>The cotton-Jersey Zip-Up Hoodie</h4>
                    <p>Kickstarter man braid godard coloring book. Raclette waistcoat selfies
                        yr wolf chartreuse hexagon irony, godard...
                    </p>
                    <a href="#">CONTINUE READING</a>
            </div>
            <H1>10/04</H1>
        </div>
        <div class="blog-box">
            <div class="blog-img">
                <img src="img/blog/b5.jpg" alt="">
            </div>
            <div class="blog-details">
                    <h4>The cotton-Jersey Zip-Up Hoodie</h4>
                    <p>Kickstarter man braid godard coloring book. Raclette waistcoat selfies
                        yr wolf chartreuse hexagon irony, godard...
                    </p>
                    <a href="#">CONTINUE READING</a>
            </div>
            <H1>16/04</H1>
        </div>

    </section>


    <section id="pagination" class="section-p1">
        <a href="#">1</a>
        <a href="#">2</a>
        <a href="#"><i class="fa-solid fa-arrow-right"></i></a>
    </section>

    <section id="newsletter" class="section-p1 section-m1">
        <div class="newstext">
            <h4>Sign Up For Newsletters</h4>
            <p>Get E-mail update about our latest shop and <span>special offers.</span></p>
        </div>
        <div class="form">
            <input type="text" placeholder="Your email address" name="" id="">
            <button class="normal">Sign Up</button>
        </div>
    </section>

    <footer class="section-p1">
        <div class="col">
            <img class="logo" src="img/logo.png" alt="">
            <h4>Contact</h4>
            <p><strong>Address: </strong> 523 Hai Ba Trung, Street 34, Ha Noi</p>
            <p><strong>Phone:</strong> +29 3333 555 / (+84) 01 2222 444</p>
            <p><strong>Hours:</strong> 10:00 - 18:00, Mon - Sat</p>
            <div class="follow">
                <h4>Follow us</h4>
                <div class="icon">
                    <i class="fab fa-facebook-f"></i>
                    <i class="fab fa-twitter"></i>
                    <i class="fab fa-instagram"></i>
                    <i class="fab fa-pinterest-p"></i>
                    <i class="fab fa-youtube"></i>
                </div>
            </div>
        </div>

        <div class="col">
            <h4>About</h4>
            <a href="#">About Us</a>
            <a href="#">Delivery Information</a>
            <a href="#">Privacy Policy</a>
            <a href="#">Terms & Conditions</a>
            <a href="#">Contact Us</a>
        </div>

        <div class="col">
            <h4>About</h4>
            <a href="#">Sign In</a>
            <a href="#">View Cart</a>
            <a href="#">My Wishlist</a>
            <a href="#">Track My Order</a>
            <a href="#">Help</a>
        </div>

        <div class="col install">
            <h4>Install App</h4>
            <p>From App Store or Google Play</p>
            <div class="row">
                <img src="img/pay/app.jpg" alt="">
                <img src="img/pay/play.jpg" alt="">
            </div>
            <p>Secured Payment Gateways</p>
            <img src="img/pay/pay.png" alt="">
        </div>

        <div class="copyright">
            <p>2022 HTML CSS Ecommerce Web</p>
        </div>
    </footer>




    <script src="../assest/script.js"></script>
    
</body>
</html>
