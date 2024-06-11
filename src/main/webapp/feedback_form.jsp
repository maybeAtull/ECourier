<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Feedback_form</title>

    <link rel="stylesheet" href="./css/admission_us.css">
</head>
<body>
    <section class="contact">
        <div class="content">
            <h2>Feedback Form</h2>
            <p>Give us feedback to improve</p>
        </div>
        <div class="container">
            <div class="contactForm">
                <form action="feedbackProcess.jsp" method="post">
                    <h2>Form</h2>
                    <div class="inputBox">
                        <input type="text" name="name" required="">
                        <span>Full Name</span>
                    </div>
                    <div class="inputBox">
                        <input type="text" name="email" required="">
                        <span>Email</span>
                    </div>
                    <div class="inputBox">
                        <input type="text" name="phone" required="">
                        <span>Phone</span>
                    </div>
                    <!-- <div class="inputBox">
                        <input type="text" name="" required="">
                        <span>Age</span>
                    </div> -->
                    <div class="inputBox">
                        <input type="text" name="ftype" required="">
                        <span>Feedback related to:</span>
                    </div>
                    <div class="inputBox">
                        <textarea name="message" required="required"></textarea>
                        <span>Type Your Message...</span>
                    </div>
                    <div class="inputBox">
                        <input type="submit" name="" value="Submit">
                    </div>
                </form>
            </div>
        </div>
    </section>
</body>
</html>