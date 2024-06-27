<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Professional Form</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<style>
  body {
    background: url('https://images.pexels.com/photos/414660/pexels-photo-414660.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1') center center fixed;
    background-size: cover;
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
  }

  form {
    background: rgba(255, 255, 255, 0.7);
    padding: 50px;
    border-radius: 10px;
    animation: fadeIn 1s ease-in-out;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
  }

  @keyframes fadeIn {
    0% {
      opacity: 0;
    }
    100% {
      opacity: 1;
    }
  }

  label {
    display: block;
    margin: 10px 5px;
    font-weight: bold;
  }

  input {
    width: 100%;
    padding: 10px;
    margin: 5px 0;
    border: 1px solid #ccc;
    border-radius: 5px;
    justify-content: center;
    background-color: rgba(255, 240, 245, 0.7);
  }

  input[type="submit"] {
     background-color: hsl(340, 100%, 85%);
    color: white;
    border: none;
    padding: 10px 20px;
    cursor: pointer;
    border-radius: 5px;
    margin-right:50px;
  }

  input[type="submit"]:hover {
    background: black;
  }
</style>
</head>
<body>
  <form action="Registerserverlet" method="POST" onsubmit="return validateForm()">
    <label for="name">Name:</label>
    <input type="text" id="name" name="name" required>

    <label for="phone">Phone:</label>
    <input type="text" id="phone" name="phone">

    <label for="email">Email:</label>
    <input type="email" id="email" name="email" required>

    <label for="username">Username:</label>
    <input type="text" id="username" name="uname" required>

    <label for="password">Password:</label>
    <input type="password" id="password" name="password" required>

    <input type="submit" value="Submit">
  </form>
  <script>
  function validateForm() {
    var name = document.getElementById("name").value;
    var phone = document.getElementById("phone").value;
    var email = document.getElementById("email").value;
    var username = document.getElementById("username").value;

    // Check if name contains numbers
    if (/\d/.test(name)) {
      alert("Name cannot contain numbers.");
      return false;
    }

    // Check if phone contains only numbers
    // Check if phone contains only numbers and is not negative
if (!/^\d+$/.test(phone) || parseInt(phone) < 0) {
    alert("Phone should contain only non-negative numbers.");
    return false;
}


    // Validate email format
    var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    if (!emailRegex.test(email)) {
      alert("Please enter a valid email address.");
      return false;
    }

    // Check if username contains numbers
    if (/\d/.test(username)) {
      alert("Username cannot contain numbers.");
      return false;
    }

    return true;
  }
</script>
</body>
</html>
