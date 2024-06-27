<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="model.Delivery" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delivery</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
    
  body {
    font-family: 'Arial', sans-serif;
    background-image: url('https://images.pexels.com/photos/414660/pexels-photo-414660.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'); /* Add your food background image path */
    background-size: cover;
    background-position: center;
    margin: 0;
    padding: 0;
    height: 100vh;
    overflow: hidden;
  }
        h1 {
            text-align: center;
            color: black;
        }

        form {
            max-width: 400px;
            margin: 0 auto;
            padding: 50px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            
            background-color: rgba(255, 255, 255, 0.5);
        }

        label {
            display: block;
            margin-top: 10px;
            color: #333;
        }

        input[type="text"],
        input[type="file"],
        textarea {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
             background-color: rgba(255, 240, 245, 0.7);
        }

        input[type="submit"] {
        margin-top:20px;
            background-color: #333;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
            background-color: hsl(340, 100%, 85%);
        }

        input[type="submit"]:hover {
             background-color: black;
        }
        .back-button {
            position: absolute;
            top: 10px;
            left: 10px;
            cursor: pointer;
            font-size: 24px; /* Adjust the size as needed */
            text-decoration:none;
            color:black;
        }

        /* Close icon */
        .close-icon {
            position: absolute;
            top: 10px;
            right: 10px;
            cursor: pointer;
            font-size: 24px; /* Adjust the size as needed */
            text-decoration:none;
            color:black;
        }
    </style>
</head>
<body>
<a href="javascript:history.back()" class="back-button">
        <i class="fas fa-arrow-left"></i>
    </a>
    
    <a href="admin.jsp" class="close-icon">
        <i class="fas fa-times"></i>
    </a>
<div class="container col-md-5">
    <div class="card">
        <div class="card-body">
         <h1>Add New Deliveryperson</h1>
             <form id="deliveryForm" action="DeliveryInsert" method="post" onsubmit="return validateForm()">
                
                    <label for="name">Name</label>
                    <input type="text" class="form-control" name="name" id="name" required="required" />
                
                
                    <label for="email">Email</label>
                    <input type="text" class="form-control" name="email" id="email" required/>
                
                
                    <label for="phone">Phone</label>
                    <input type="text" class="form-control" name="phone" id="phone" required/>
                
                
                    <label for="address">Address</label>
                    <input type="text" class="form-control" name="address" id="address" required/>
                
                <input type="submit" class="btn btn-success" value="Add Delivery Person">
            </form>

        </div>
    </div>
</div>
<script>
    function validateForm() {
        var name = document.getElementById("name").value;
        var email = document.getElementById("email").value;
        var phone = document.getElementById("phone").value;
        var address = document.getElementById("address").value;

        // Check if name is empty
        if (name.trim() === "") {
            alert("Please enter a name.");
            return false;
        }

        // Check if name contains numbers
        if (/\d/.test(name)) {
            alert("Name cannot contain numbers.");
            return false;
        }

        // Validate email format using regular expression
        var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!emailRegex.test(email)) {
            alert("Please enter a valid email address.");
            return false;
        }

        // Check if phone contains only numbers
       if (!/^\d+$/.test(phone) || phone < 0) {
        alert("Phone should contain only non-negative numbers.");
        return false;
    }

        // You can add additional validation for the address if needed

        return true; // Form is valid
    }
</script>

</body>
</html>
