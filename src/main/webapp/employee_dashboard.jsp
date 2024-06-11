<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee</title>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Sharp" rel="stylesheet">
    <link rel="stylesheet" href="./css/AdminEmp.css">
</head>
<body>
<div class="container">
        <!-- Sidebar Section -->
        <aside>
            <div class="toggle">
                <div class="logo">
                    <h2>Emp<span class="danger">Dashboard</span></h2>
                </div>
                <div class="close" id="close-btn">
                    <span class="material-icons-sharp">
                        close
                    </span>
                </div>
            </div>

            <div class="sidebar">
                <a href="#" class="sidebar-link" data-section="parcels-section">
                    <span class="material-icons-sharp">insights</span>
                    <h3>Parcels</h3>
                </a>
                <a href="#" class="sidebar-link" data-section="report-section">
                    <span class="material-icons-sharp">inventory</span>
                    <h3>Report</h3>
                </a>
                <a href="index.jsp">
                    <span class="material-icons-sharp">logout</span>
                    <h3>Logout</h3>
                </a>
            </div>
        </aside>
        <!-- End of Sidebar Section -->
        <!-- Main Content -->
        <main>
					<div class="section" id="parcels-section">
					     <h1>Parcel Management</h1>
					    <div class="subsection" id="add-employee-section">
					    <form action="ParcelProcess.jsp" method="post" id="senderReceiverForm">
					        <!-- Sender Details -->
					        <h2>Sender Details</h2>
					        <label for="senderName">Name:</label>
					        <input type="text" id="senderName" name="sendername" required>
					
					        <label for="senderPhone">Phone:</label>
					        <input type="text" id="senderPhone" name="senderphone" required>
					
					        <label for="senderAddress">Address:</label>
					        <textarea id="senderAddress" name="senderaddress" required></textarea>
					
					        <!-- Receiver Details -->
					        <h2>Receiver Details</h2>
					        <label for="receiverName">Name:</label>
					        <input type="text" id="receiverName" name="receivername" required>
					
					        <label for="receiverPhone">Phone:</label>
					        <input type="text" id="receiverPhone" name="receiverphone" required>
					
					        <label for="receiverAddress">Address:</label>
					        <textarea id="receiverAddress" name="receiveraddress" required></textarea>
					        
					         <h2>Parcel Information</h2>
					          
					        <label for="serialNumber">Serial Number:</label>
					        <input type="text" id="serialNumber" name="serialnumber" required>
					
					        <label for="parcelType">Parcel Type:</label>
					        <input type="text" id="parcelType" name="parceltype" required>
					
					        <label for="parcelWeight">Parcel Weight (in kg):</label>
					        <input type="number" id="parcelWeight" name="parcelweight" step="0.1" required>
					
					        <label for="price">Price:</label>
					        <input type="text" id="price" name="pricee" readonly>
					        
					        <label for="price">Price:Weight Charges + Delivery </label>
					        <input type="text" id="price" name="Totalprice" required>
					        
					        <h2>Payment Status</h2>
					        <div>
					            <input type="radio" id="paymentYes" name="paymentstatus" value="yes" required>
					            <label for="paymentYes">Yes</label>
				       	   </div>
				        <div>
				            <input type="radio" id="paymentNo" name="paymentstatus" value="no" required>
				            <label for="paymentNo">No</label>
      				    </div>
					
					        <button type="button" onclick="calculatePrice()">Calculate Price</button>
					       
					        <button type="submit">Submit</button>
					    </form>
					</div>
				</div>
					<!-- Section for Parcel Information -->
			   <!-- Track Section -->
				<div class="section" id="track-section">
					     <h1>Track Parcel</h1>
				  <!-- ... your track parcel content ... -->
				 </div>
					        
				<!-- Report Section -->
				 <div class="section" id="report-section">
					 <h1>Report Generation</h1>
				  <!-- ... your report generation content ... -->
				  </div>        	            
            <!-- End of Recent Orders -->
        </main>
        <!-- End of Main Content -->

        <!-- Right Section -->
        <div class="right-section">
            <div class="nav">
                <button id="menu-btn">
                    <span class="material-icons-sharp">
                        menu
                    </span>
                </button>
                <div class="dark-mode">
                    <span class="material-icons-sharp active">
                        light_mode
                    </span>
                    <span class="material-icons-sharp">
                        dark_mode
                    </span>
                </div>

                <div class="profile">
                    <div class="info">
                        <p>Hey, <b>Employee</b></p>
                    </div>
                    
                </div>

            </div>
            <!-- End of Nav -->

            </div>

        </div>

    <script src="./js/index.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

</body>
</html>