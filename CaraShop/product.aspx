﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="product.aspx.cs" Inherits="CaraShop.product" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../assest/style.css">
    <link rel="stylesheet" href="font/fontawesome-free-6.0.0-web/css/all.min.css"/>
</head>
<body>

    <section id="header">
        <a href="#"><img src="img/logo.png" alt=""></a>

        <div class="">
            <ul id="navbar">
                <li><a href="index.aspx">Home</a></li>
                <li><a class="active" href="shop.aspx">Shop</a></li>
                <li><a href="blog.aspx">Blog</a></li>
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

    <section id="prodetails" class="section-p1">
        <div class="single-pro-image">
            <img src="img/products/f1.jpg" width="100%" id="MainImg" alt="">

            <div class="small-img-group">
                <div class="small-img-col">
                    <img src="img/products/f1.jpg" width="100%" class="small-img" alt="">
                </div>

                <div class="small-img-col">
                    <img src="img/products/f2.jpg" width="100%" class="small-img" alt="">
                </div>
                <div class="small-img-col">
                    <img src="img/products/f3.jpg" width="100%" class="small-img" alt="">
                </div>
                <div class="small-img-col">
                    <img src="img/products/f4.jpg" width="100%" class="small-img" alt="">
                </div>
            </div>
        </div>
        <div class="single-pro-details">
            <h6> Home / T-Shirt</h6>
            <h4>men's Fashion T Shirt</h4>
            <h2>$139.00</h2>
            <select>
                <option>Select Size </option>
                <option>XL </option>
                <option>XXL </option>
                <option>Small </option>
                <option>Large </option>
            </select>
            <input type="number" value="1">
            <button class="normal">Add To Cart</button>
            <h4>Product Details</h4>
            <span>The Gildan Ultra Contton T-shirt is made from a substantial 6.0 oz. per sq. yd. fabric constructed from 100% cotton, this classic
                fit preshrunk jersey knit provides umathched  comfort with each wear. Featuring a taped neck and shounder, and a seamless double-needle 
                collar, and available in a range of color, it offers it all in the unltimate head-turning package.</span>

            <span></span>
        </div>
    </section>

    <section id="product1" class="section-p1">
        <h2>Featured Products</h2>
        <p>Summer Collection New Morden Design</p>
        <div class="pro-container">
            <div class="pro">
                <img src="img/products/n1.jpg" alt="">
                <div class="des">
                    <span>adidas</span>
                    <h5>Cartoon Astronaut T-shirts</h5>
                    <div class="star">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                    <h4>$78</h4>
                </div>
                <a href="#"><i class="fa-solid fa-cart-plus cart"></i></a>
            </div>
            <div class="pro">
                <img src="img/products/n2.jpg" alt="">
                <div class="des">
                    <span>adidas</span>
                    <h5>Cartoon Astronaut T-shirts</h5>
                    <div class="star">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                    <h4>$78</h4>
                </div>
                <a href="#"><i class="fa-solid fa-cart-plus cart"></i></a>
            </div>
            <div class="pro">
                <img src="img/products/n3.jpg" alt="">
                <div class="des">
                    <span>adidas</span>
                    <h5>Cartoon Astronaut T-shirts</h5>
                    <div class="star">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                    <h4>$78</h4>
                </div>
                <a href="#"><i class="fa-solid fa-cart-plus cart"></i></a>
            </div>
            <div class="pro">
                <img src="img/products/n4.jpg" alt="">
                <div class="des">
                    <span>adidas</span>
                    <h5>Cartoon Astronaut T-shirts</h5>
                    <div class="star">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                    <h4>$78</h4>
                </div>
                <a href="#"><i class="fa-solid fa-cart-plus cart"></i></a>
            </div>
           

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

            <script>
                var MainImg = document.getElementById("MainIng");
                var smalling = document.getElementsByClassName("small-img");

                smalling[0].onclick = function(){
                    MainImg.src = smallimg[0].src;
                }
                smalling[1].onclick = function(){
                    MainImg.src = smallimg[1].src;
                }
                smalling[2].onclick = function(){
                    MainImg.src = smallimg[2].src;
                }
                smalling[3].onclick = function(){
                    MainImg.src = smallimg[3].src;
                }
            </script>


    <script src="../assest/script.js"></script>
    
</body>
</html>
