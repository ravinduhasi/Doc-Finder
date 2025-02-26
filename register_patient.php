<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Patient Registration</title>
    <link rel="icon" href="resources/img/doc_logo.png" type="image/x-icon">
    <link rel="stylesheet" href="resources/css/register_doctor.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins&family=Roboto+Slab&display=swap">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
    <link rel="stylesheet" href="resources/css/loging.css">
</head>
<body>
    <div class="headers">
    <a href="home.html" class="logo">
        <div class="lo">
            <img src="resources/img/doc_logo.png" style="width: 100px; height:65px">
        </div>
        <div class="log"><p>DOC FINDER</p></div>
    </a>
    </div>

    <div class="wrapper">
        <h1>Patient Registration</h1>
        <!-- Display messages -->
        <div class="message-box">
            <?php
            
            session_start();

            // Display error message if any
            if (!empty($_SESSION['error_message'])) {
                echo "<p class='error' style='color: #D8000C;'>{$_SESSION['error_message']}</p>";
                $_SESSION['error_message'] = ''; 
            }

            // Display success message if any
            if (!empty($_SESSION['success_message'])) {
                echo "<p class='success' style='color: #D8000C;'>{$_SESSION['success_message']}</p>";
                $_SESSION['success_message'] = ''; 
            }
            ?>
        </div>
        <form action="process_register_patient.php" method="post" enctype="multipart/form-data">
            <div class="input-box">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="input-box">
                <label for="nic">NIC:</label>
                <input type="text" id="nic" name="nic" required>
            </div>
            <div class="input-box">
                <label for="first_name">First Name:</label>
                <input type="text" id="first_name" name="first_name" required>
            </div>
            <div class="input-box">
                <label for="last_name">Last Name:</label>
                <input type="text" id="last_name" name="last_name" required>
            </div>
            <div class="input-box">
                <label for="age">Age:</label>
                <input type="number" id="age" name="age" required>
            </div>
            <div class="input-box">
                <label for="phone_no">Phone Number:</label>
                <input type="text" id="phone_no" name="phone_no" required>
            </div>
            <div class="input-box">
                <label for="address">Address:</label>
                <input type="text" id="address" name="address" required>
            </div>
            <div class="input-box">
                <label for="district">District:</label>
                <input type="text" id="district" name="district" required>
            </div>
            <div class="input-box">
                <label for="sick">Sick:</label>
                <input type="text" id="sick" name="sick" required>
            </div>
            <button type="submit" class="btn">Register</button>
            <br>
            
        </form>
    </div>
</body>
</html>
