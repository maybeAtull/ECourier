<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Dashboard</title>
    <link rel="stylesheet" href="./css/user_dashboard_css.css">
    <!-- Bootstrap CSS CDN link -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap/dist/css/bootstrap.min.css">
    

</head>

<body>
    <!-- Navbar -->

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">User Dashboard</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="index.jsp">Logout</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- end -->

    <!-- Main Section -->
    <section class="login-page" id="login-page">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-3">
                    <div class="sidebar">
                        <h2>Parcel Tracker</h2>
                        <ul>
                            <li><a href="#">Track Parcel</a></li>
                            <li><a href="#">View Details</a></li>
                        </ul>
                    </div>
                </div>
                
                    <div class="col-md-9">
                        <div class="main-content">
                            <h2>Book a Pickup Slot</h2>
                            <form action="BookSlotProcess.jsp" method="post" id="pickupForm">
                                
                            <label for="name">Name:</label>
                            <input type="text" id="name" name="name" required><br><br>
                                
                            <label for="address">Address:</label>
                            <input type="text" id="address" name="address" required><br><br>
                                
                            <label for="phone">Phone Number:</label>
                            <input type="tel" id="phone" name="phone" required><br><br>
                                
                            <label for="date">Select Date:</label>
                            <input type="date" id="date" name="date" required><br><br>
                                
                            <label for="time">Select Time:</label>
                            <input type="time" id="time" name="time" required><br><br>
                                
                            <button type="submit">Book Pickup</button>
                                       
                            </form>
                            <div id="pickupDetails"></div>
                        </div>
                    </div>
                
                
            </div>
        </div>
    </section>


    <!-- --------Footer------ -->
   <footer class="footer">
        <div class="container">
            <div class="social-media">
                <a href="#" class="social-link">Facebook</a>
                <a href="#" class="social-link">Twitter</a>
                <a href="#" class="social-link">Instagram</a>
            </div>
            <div class="contact-us">
                <p>Contact Us: example@example.com</p>
                <p>Phone: +123 456 789</p>
            </div>
        </div>
    </footer>  
    
    <!-- --------Footer------ -->
    <!-- End -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<script src="script.js"></script>

</body>

</html>
