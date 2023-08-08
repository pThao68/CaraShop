<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="CaraShop.contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../assest/style.css">
    <link rel="stylesheet" href="/font/fontawesome-free-6.0.0-web/css/all.min.css"/>
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
                <li><a class="active" href="contact.aspx">Contact</a></li>
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
        <h2>#let's_talk</h2>
        <p>LEAVE A MESSAGE, We love to hear from you!</p>
    </section>

    <section id="contact-details" class="section-p1">
        <div class="details">
            <span>GET IN TOUCH</span>
            <h2>Visit one of our agency locations or contact us today</h2>
            <h3>Head Office</h3>
            <div>
                <li>
                    <i class="fa-solid fa-map"></i>
                    <p>523 Hai Ba Trung, Street 34, Ha Noi</p>
                </li>
                <li>
                    <i class="fa-solid fa-envelope"></i>
                    <p>contact@example.com</p>
                </li>
                <li>
                    <i class="fas fa-phone-alt"></i>
                    <p>011 222 444</p>
                </li>
                <li>
                    <i class="far fa-clock"></i>
                    <p>Monday to Saturday: 9.00am to 16.pm</p>
                </li>
            </div>
        </div>

        <div class="map">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3725.
            1958924820874!2d105.83639861533173!3d20.98478329465316!2m3!1f0!2f0!3f0!3
            m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac5d5d09255d%3A0x7b952e68b5dfbd38!2
            zOTYgxJDhu4tuaCBDw7RuZywgUGjGsMahbmcgTGnhu4d0LCBUaGFuaCBYdcOibiwgSMOgIE7hu5
            lpLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1647312681424!5m2!1svi!2s" 
            width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
        </div>
    </section>

    <section id="form-details">
        <form action="">
            <span>LEAVE A MESSAGE</span>
            <h2>We love to hear from you</h2>
            <input type="text" placeholder="Your Name">
            <input type="text" placeholder="E-mail">
            <input type="text" placeholder="Subject">
            <textarea name="" id="" cols="30" rows="10" placeholder="Your Message">

            </textarea>
            <button class="normal">Submit</button>
        </form>

        <div class="people">
            <div>
                <img src="/img/people/1.png" alt="">
                <p><span>John Doe</span> Senior Marketing Manager <br/> Phone + 000 123 1111 <br/> Email: contact@example.com</p>
            </div>
            <div>
                <img src="/img/people/2.png" alt="">
                <p><span>William Smith</span> Senior Marketing Manager <br/> Phone + 000 123 1111 <br/> Email: contact@example.com</p>
            </div>
            <div>
                <img src="/img/people/3.png" alt="">
                <p><span>Emma Stone</span> Senior Marketing Manager <br/> Phone + 000 123 1111 <br/> Email: contact@example.com</p>
            </div>
        </div>
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
