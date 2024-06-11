<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin</title>
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
                    <h2>Admin<span class="danger">Dashboard</span></h2>
                </div>
                <div class="close" id="close-btn">
                    <span class="material-icons-sharp">
                        close
                    </span>
                </div>
            </div>

            <div class="sidebar">
                <a href="#" class="sidebar-link active" data-section="dashboard-section">
                    <span class="material-icons-sharp">dashboard</span>
                    <h3>Dashboard</h3>
                </a>
                <a href="#" class="sidebar-link" data-section="staff-section">
                    <span class="material-icons-sharp">person_outline</span>
                    <h3>Staffs</h3>
                </a>
                <a href="#" class="sidebar-link" data-section="slots-section">
                    <span class="material-icons-sharp">insights</span>
                    <h3>Slots</h3>
                </a>
                
                <a href="#" class="sidebar-link" data-section="parcels-section">
                    <span class="material-icons-sharp">insights</span>
                    <h3>Parcels</h3>
                </a>
                
                <a href="#" class="sidebar-link" data-section="track-section">
                    <span class="material-icons-sharp">mail_outline</span>
                    <h3>Track</h3>
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

            <div class="section" id="dashboard-section">
                <h1>Analytics</h1>
                <div class="analyse">
                    <div class="sales">
                        <div class="status">
                            <div class="info">
                                <h3>Total Sales</h3>
                                <h1>Rs 45,000</h1>
                            </div>
                           
                        </div>
                    </div>
                    <div class="visits">
                        <div class="status">
                            <div class="info">
                                <h3>Parcel Delivered</h3>
                                <h1>24,981</h1>
                            </div>
                           
                        </div>
                    </div>
                    <div class="searches">
                        <div class="status">
                            <div class="info">
                                <h3>Searches</h3>
                                <h1>14,147</h1>
                            </div>
                            
                        </div>
                    </div>
                </div>
                <!-- End of Analyses -->
    
                <!-- Recent Orders Table -->
                <div class="recent-orders">
                    <h2>Recent Orders</h2>
                    <table>
                        <thead>
                            <tr>
                                <th>Parcel Number</th>
                                <th>Parcel</th>
                                <th>Payment</th>
                                <th>Status</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody></tbody>
                    </table>
                   
                </div>
                <!-- ... your existing content ... -->
            </div>
         
            <!-- Staff Section -->
            <div class="section" id="staff-section">
                <h1>Staff Management</h1>
                 <!-- Add Employee Section -->
                    <div class="subsection" id="add-employee-section">
                        <h2>Add Employee</h2>
                        <form action="StaffProcess.jsp" method="post" id="employee-form">
                            <label for="name">Name:</label>
                            <input type="text" id="name" name="name" required>
                    
                            <label for="email">Email:</label>
                            <input type="email" id="email" name="email" required>
                    
                            <label for="password">Password:</label>
                            <input type="password" id="password" name="password" required>
                    
                            <label for="phone">Phone:</label>
                            <input type="tel" id="phone" name="phone" required>
                    
                            <label for="address">Address:</label>
                            <textarea id="address" name="address" required></textarea>
                    
                            <button type="submit" >Add Employee</button>
                        </form>
                    </div>
                    <!-- View Employee Section -->
					<div class="subsection" id="view-employee-section">
					    <h2>View Employee</h2>
					    <div id="employeeData"><!-- Employee data will be displayed here --></div>
					</div>
					                    
            </div>
        
            <!-- Parcels Section -->
            <div class="section" id="parcels-section">
                <h1>Parcel Management</h1>
                <div id="parcelData"><!-- Parcel data will be displayed here --></div>
            </div>
        
            <!-- Track Section -->
            <div class="section" id="track-section">
                <h1>Track Parcel</h1>
                <!-- ... your track parcel content ... -->
            </div>
        
            <!-- Report Section -->
            <div class="section" id="report-section">
                <h1>Report Generation</h1>
                <h2>Employee Details</h2>
			    <div id="empData"><!-- Employee data will be displayed here --></div>
			    
			    <h2>Parcel Details</h2>
			    <div id="parData"><!-- Employee data will be displayed here --></div>
			    
            </div>
            
            
            <div class="section" id="slots-section">
                <h1>Booked Slots</h1>
                <div id="slotData"><!-- Slot data will be displayed here --></div>
                <!-- ... your report generation content ... -->
            </div>
        
           
            
            <!-- End of Recent Orders -->

        </main>
        <!-- End of Main Content -->

        
     <script src="./js/index.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
 <script>
 $(document).ready(function() {
     // Make an AJAX request to fetch employee data
     $.ajax({
         type: 'GET',
         url: '/ECourier/EmployeeDataServlet',
         dataType: 'json',
         success: function(data) {
             // Process the fetched data and update the HTML
             if (data && data.length > 0) {
                 var employeeDataHTML = '<table>';
                 employeeDataHTML += '<thead><tr><th>Name</th><th>Email</th><th>Password</th><th>Phone</th><th>Address</th></tr></thead>';
                 employeeDataHTML += '<tbody>';
                 data.forEach(function(employee) {
                     employeeDataHTML += '<tr>';
                     employeeDataHTML += '<td>' + employee.name + '</td>';
                     employeeDataHTML += '<td>' + employee.email + '</td>';
                     employeeDataHTML += '<td>' + employee.password + '</td>';
                     employeeDataHTML += '<td>' + employee.phone + '</td>';
                     employeeDataHTML += '<td>' + employee.address + '</td>';
                     employeeDataHTML += '</tr>';
                 });
                 employeeDataHTML += '</tbody></table>';
                 $('#employeeData').html(employeeDataHTML);
             } else {
                 $('#employeeData').html('<p>No employee data available.</p>');
             }
         },
         error: function() {
             $('#employeeData').html('<p>Error fetching employee data.</p>');
         }
     });
 }); 
</script>

<script>
//AJAX request to fetch slot data
$.ajax({
    type: 'GET',
    url: '/ECourier/SlotDataServlet',
    dataType: 'json',
    success: function(data) {
        // Process the fetched data and update the HTML
        if (data && data.length > 0) {
            var slotDataHTML = '<table>';
            slotDataHTML += '<thead><tr><th>Name</th><th>Address</th><th>Phone</th><th>Date</th><th>Time</th></tr></thead>';
            slotDataHTML += '<tbody>';
            data.forEach(function(slot) {
                slotDataHTML += '<tr>';
                slotDataHTML += '<td>' + slot.name + '</td>';
                slotDataHTML += '<td>' + slot.address + '</td>';
                slotDataHTML += '<td>' + slot.phone + '</td>';
                slotDataHTML += '<td>' + slot.date + '</td>';
                slotDataHTML += '<td>' + slot.time + '</td>';
                slotDataHTML += '</tr>';
            });
            slotDataHTML += '</table>';
            $('#slotData').html(slotDataHTML);
        } else {
            $('#slotData').html('<p>No slot data available.</p>');
        }
    },
    error: function() {
        $('#slotData').html('<p>Error fetching slot data.</p>');
    }
});

</script>

<script>
//AJAX request to fetch parcel data
$.ajax({
    type: 'GET',
    url: '/ECourier/ParcelDataServlet',
    dataType: 'json',
    success: function(data) {
        // Process the fetched data and update the HTML
        if (data && data.length > 0) {
            var parcelDataHTML = '<table>';
            parcelDataHTML += '<thead><tr><th>Sender Name</th><th>Sender Address</th><th>Sender Phone</th><th>Receiver Name</th><th>Receiver Address</th><th>Receiver Phone</th><th>Parcel Type</th><th>Parcel Weight</th><th>Total Price</th><th>Payment</th></tr></thead>';
            parcelDataHTML += '<tbody>';
            data.forEach(function(parcel) {
                parcelDataHTML += '<tr>';
                parcelDataHTML += '<td>' + parcel.senderName + '</td>';
                parcelDataHTML += '<td>' + parcel.senderAddress + '</td>';
                parcelDataHTML += '<td>' + parcel.senderPhone + '</td>';
                parcelDataHTML += '<td>' + parcel.receiverName + '</td>';
                parcelDataHTML += '<td>' + parcel.receiverAddress + '</td>';
                parcelDataHTML += '<td>' + parcel.receiverPhone + '</td>';
                parcelDataHTML += '<td>' + parcel.parcelType + '</td>';
                parcelDataHTML += '<td>' + parcel.parcelWeight + '</td>';
                parcelDataHTML += '<td>' + parcel.totalPrice + '</td>';
                parcelDataHTML += '<td>' + parcel.payment + '</td>';
                parcelDataHTML += '</tr>';
            });
            parcelDataHTML += '</table>';
            $('#parcelData').html(parcelDataHTML);
        } else {
            $('#parcelData').html('<p>No parcel data available.</p>');
        }
    },
    error: function() {
        $('#parcelData').html('<p>Error fetching parcel data.</p>');
    }
});
</script>
<script>

$(document).ready(function() {
    // Make an AJAX request to fetch employee data
    $.ajax({
        type: 'GET',
        url: '/ECourier/ReportEmpDataServlet',
        dataType: 'json',
        success: function(data) {
            // Process the fetched data and update the HTML
            if (data && data.length > 0) {
                var empDataHTML = '<table>';
                empDataHTML += '<thead><tr><th>Name</th><th>Email</th><th>Password</th><th>Phone</th><th>Address</th></tr></thead>';
                empDataHTML += '<tbody>';

                data.forEach(function(employee) {
                    empDataHTML += '<tr>';
                    empDataHTML += '<td>' + employee.name + '</td>';
                    empDataHTML += '<td>' + employee.email + '</td>';
                    empDataHTML += '<td>' + employee.password + '</td>';
                    empDataHTML += '<td>' + employee.phone + '</td>';
                    empDataHTML += '<td>' + employee.address + '</td>';
                    empDataHTML += '</tr>';
                });

                empDataHTML += '</tbody></table>';
                $('#empData').html(empDataHTML);
            } else {
                $('#empData').html('<p>No employee data available.</p>');
            }
        },
        error: function() {
            $('#empData').html('<p>Error fetching employee data.</p>');
        }
    });
});
</script>
<script>
//AJAX request to fetch parcel data
$.ajax({
    type: 'GET',
    url: '/ECourier/ReportParcelDataServlet',
    dataType: 'json',
    success: function(data) {
        // Process the fetched data and update the HTML
        if (data && data.length > 0) {
            var parcelDataHTML = '<table>';
            parDataHTML += '<thead><tr><th>Sender Name</th><th>Sender Address</th><th>Sender Phone</th><th>Receiver Name</th><th>Receiver Address</th><th>Receiver Phone</th><th>Parcel Type</th><th>Parcel Weight</th><th>Total Price</th><th>Payment</th></tr></thead>';
            parDataHTML += '<tbody>';
            data.forEach(function(parcel) {
                parDataHTML += '<tr>';
                parDataHTML += '<td>' + parcel.senderName + '</td>';
                parDataHTML += '<td>' + parcel.senderAddress + '</td>';
                parDataHTML += '<td>' + parcel.senderPhone + '</td>';
                parDataHTML += '<td>' + parcel.receiverName + '</td>';
                parDataHTML += '<td>' + parcel.receiverAddress + '</td>';
                parDataHTML += '<td>' + parcel.receiverPhone + '</td>';
                parDataHTML += '<td>' + parcel.parcelType + '</td>';
                parDataHTML += '<td>' + parcel.parcelWeight + '</td>';
                parDataHTML += '<td>' + parcel.totalPrice + '</td>';
                parDataHTML += '<td>' + parcel.payment + '</td>';
                parDataHTML += '</tr>';
            });
            parDataHTML += '</table>';
            $('#parData').html(parDataHTML);
        } else {
            $('#parData').html('<p>No parcel data available.</p>');
        }
    },
    error: function() {
        $('#parcelData').html('<p>Error fetching parcel data.</p>');
    }
});
</script>
</body>
</html>