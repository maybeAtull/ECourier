<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Courier Management</title>

    <!-- Font Awesome Icons -->
    <link rel="stylesheet" href="./css/all.css">

    <!-- -----owl carasoul----- -->
    <link rel="stylesheet" href="./css/owl.carousel.min.css">
    <link rel="stylesheet" href="./css/owl.theme.default.min.css">

    <!-- --------AOS Library--------- -->
    <link rel="stylesheet" href="./css/aos.css">

    <!-- Custom style -->
    <link rel="stylesheet" href="./css/style.css">

    <link  href=" https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">

    <!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet"> -->

</head>

<body>
    <!---------------------- Nav bar --------------------------->
    <nav class="nav">
        <div class="nav-menu flex-row">
            <div class="nav-brand">
                <a href="#" class="text-gray">E-Courier</a>
            </div>
            <div class="toggle-collapse">
                <div class="toggle-icons">
                    <i class="fas fa-bars"></i>
                </div>
            </div>
            <div>
                <ul class="nav-items">
                    <li class="nav-link">
                        <a href="index.jsp">Home</a>
                    </li>
                    <!-- <li class="nav-link">
                        <a href="course.html">Course</a>
                    </li> -->
                    <li class="nav-link">
                        <a href="feedback_form.jsp">Feedback</a>
                    </li>
                    <li class="nav-link">
                        <a href="contact_us.jsp">Contact Us</a>
                    </li>
                </ul>
            </div>
            <div>
                <div class="social text-gray">
                    <a href="#"><i class="fab fa-facebook-f"></i></a>
                    <a href="#"><i class="fab fa-instagram"></i></a>
                    <a href="#"><i class="fab fa-twitter"></i></a>
                    <a href="#"><i class="fab fa-youtube"></i></a>
                </div>
            </div>
            <div class="login-container">
                <form action="login.jsp">
                  <button type="submit">Login</button>
                </form>
            </div>
        </div>

    </nav>

    <!---------------------- Nav bar --------------------------->

    <!---------------------Main section---------------------- -->

    <main>
        <!-- Title -->
        <section class="site-title">
            <div class="site-background" data-aos="fade-up" data-aos-delay="100" >
                <h2>Your Fast Lane to Reliable E-Courier</h2>
                <h1>Delivering Dreams, One Click At A Time</h1>
                <button class="btn" >Explore</button>
            </div>
        </section>
    

        <!-- Title -->
        <div class="featurette">
            <div class="featurette-content">
                <h2 class="featurette-heading">Featurette Heading. <span class="text-muted">It'll blow your mind.</span></h2>
                <p class="lead">Some great placeholder content for the first featurette here. Imagine some exciting text here.</p>
            </div>
            <img src="./img/Featurette/1.jpeg" alt="Featurette Image" height="350" width="350" class="featurette-image">
        </div>
    
        <!-- Second Featurette Section -->
        <div class="featurette">
            <img src="./img/Featurette/2.jpeg" alt="Featurette Image" height="350" width="350" class="featurette-image">
            <div class="featurette-content">
                <h2 class="featurette-heading">Oh yeah, it’s that good. <span class="text-muted">See for yourself.</span></h2>
                <p class="lead">Another featurette? Of course. More placeholder content here to give you an idea of how this layout would work with some actual real-world content in place.</p>
            </div>
        </div>

        <!-- Blog Container -->

        <!-- blog carousel -->
    
           <section>
            <div class="blog">
                <div class="container">
                    <div class="owl-carousel owl-theme blog-post">
                        <div class="blog-content" data-aos="fade-right" data-aos-delay="200">
                            <img src="./img/Blog Carasol/Tracking.jpeg" alt="post1" height="227vh">
                            <div class="blog-title">
                                <h3>Tracking</h3>
                                <!-- <button class="btn btn-blog">Lorem.</button> -->
                                <span>"Experience the convenience of real-time package tracking with our advanced e-courier website.
                                     With our robust tracking system, you can easily monitor your parcels'
                                     journey from pickup to delivery, ensuring complete transparency and peace of mind.</span>
                            </div>
                        </div>
                        <div class="blog-content" data-aos="fade-in" data-aos-delay="200">
                            <img src="./img/Blog Carasol/booking.jpeg" alt="post2" height="227vh">
                            <div class="blog-title">
                                <h3>Booking</h3>
                                <!-- <button class="btn btn-blog">Lorem.</button> -->
                                <span>"Booking a courier has never been easier! With our intuitive and user-friendly online platform, 
                                    you can quickly schedule and book your courier services from the comfort of your home or office. </span>
                            </div>
                        </div>
                        <div class="blog-content" data-aos="fade-left" data-aos-delay="200">
                            <img src="./img/Blog Carasol/order.jpeg" alt="post3" height="227vh">
                            <div class="blog-title">
                                <h3>Orders </h3>
                                <!-- <button class="btn btn-blog">Lorem.</button> -->
                                <span>"Manage your orders effortlessly with our state-of-the-art order management system.
                                     Our user-friendly dashboard empowers you to keep track of all your shipments in one place.</span>
                            </div>
                        </div>
                        <div class="blog-content" data-aos="fade-right" data-aos-delay="200">
                            <img src="./img/Blog Carasol/Team.jpeg" alt="post4" height="227vh">
                            <div class="blog-title">
                                <h3>Our Team</h3>
                                <!-- <button class="btn btn-blog">Lorem.</button>  -->
                                <span> we take pride in our dedicated and passionate team of professionals who are committed to providing exceptional courier services. 
                                    Our team comprises experienced logistics experts, skilled couriers, and friendly customer support representatives. .</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    
        <!-- blog carousel -->

    </main>

   
    <!------------------------- Footer----------------------- -->

    <footer class="footer">
        <div class="container">
            <div class="about-us" data-aos="fade-right" data-aos-delay="200">
                <h2>About us</h2>
                <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit</p>
            </div>
            <div class="newsletter" data-aos="fade-right" data-aos-delay="200">
                <h2>Newsletter</h2>
                <p>Stay update with our latest</p>
                <div class="form-element">
                    <input type="text" placeholder="Email"><span><i class="fas fa-chevron-right"></i></span>
                </div>
            </div>
            <div class="instagram" data-aos="fade-left" data-aos-delay="200">
                <h2>Instagram</h2>
                <div class="flex-row">
                    <img src="./img/insta/1.jpeg" alt="insta1" >
                    <img src="./img/insta/2.jpeg" alt="insta2" >
                    <img src="./img/insta/3.jpeg" alt="insta3" >
                </div>
                <div class="flex-row">
                    <img src="./img/insta/4.jpeg" alt="insta4" >
                    <img src="./img/insta/5.jpeg" alt="insta5" >
                    <img src="./img/insta/6.jpeg" alt="insta6" >
                </div>
            </div>
            <div class="follow" data-aos="fade-right" data-aos-delay="200">
                <h2>Follow us</h2>
                <p>Join us on</p>
                <div>
                    <i class="fab fa-facebook-f"></i>
                    <i class="fab fa-twitter"></i>
                    <i class="fab fa-instagram"></i>
                    <i class="fab fa-youtube"></i>
                </div>
            </div>
        </div>
        <div class="rights flex-row">
            <h4 class="text-gray">
                Copyright &copy; 2023 All right reserved 
            </h4>
        </div>
        <div class="move-up">
            <span><i class="fas fa-arrow-circle-up fa-2x"></i></span>
        </div>
    </footer>






    <!------------------------- Footer----------------------- -->



    <!---------------------Main section---------------------- -->
    <!-- JQuery library -->
    <script src="./js/jquery3.6.1.min.js"></script>

    <!-- owl carasoul js -->

    <script src="./js/owl.carousel.min.js"></script>

    <!-- --------AOS js library---------- -->
   <script src="./js/aos.js"></script>

    <!-- Java Script File -->
    <script src="./js/main.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>