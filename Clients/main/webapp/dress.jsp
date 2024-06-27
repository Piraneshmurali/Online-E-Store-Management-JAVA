<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Add Dress</title>
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
            font-size: 30px; /* Adjust the size as needed */
            text-decoration:none;
            color:black;
        }

       
    </style>
</head>
<body>
	<a href="javascript:history.back()" class="back-button">
        <i class="fas fa-arrow-left"></i>
    </a>
    
    <h1>Add Dress</h1>
    
        <form id="addDressForm" method="POST" action="AddDress" enctype="multipart/form-data" onsubmit="return validateForm()">
        <!-- Dress Name -->
        <label for="name">Dress Name:</label>
        <input type="text" id="name" name="name" required>
        <br><br>
        
        <!-- Price -->
        <label for="price">Price:</label>
        <input type="text" id="price" name="price" required>
        <br><br>
        
        <!-- Photo URL -->
        <label for="pic" class="form-label"> Photo</label>
        <input type="file" id="pic" placeholder="pic" name="pic" required>
        
        <!-- Description -->
        <label for="description">Description:</label>
        <textarea id="description" name="des" rows="4" required></textarea>
        <br><br>
        
        <!-- Submit Button -->
        <input type="submit" value="Save Changes">
    </form>
    <script>
    function validateForm() {
        var name = document.getElementById("name").value;
        var price = document.getElementById("price").value;

        // Validate Dress Name (should not contain numbers)
        if (/^\d+$/.test(name)) {
            alert("Dress Name cannot contain numbers");
            return false;
        }

        // Validate Price (should be a number and not negative)
       if (isNaN(price) || price < 0) {
                alert("Price should be a non-negative number");
                return false;
            }

        return true; // Form is valid
    }
</script>

</body>
</html>
