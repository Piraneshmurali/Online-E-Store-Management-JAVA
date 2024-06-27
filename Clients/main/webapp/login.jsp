<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
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

  .form-container {
    background-color: rgba(255, 255, 255, 0.5); /* Semi-transparent white background */
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
    width: 100%;
    max-width: 400px;
    margin: 50px auto;
    padding: 20px;
    transition: transform 0.3s;
  }

  .form-container:hover {
    transform: scale(1.02); /* Slight scale effect on hover */
  }

  .form-container p {
    text-align: center;
    font-size: 24px;
    margin-bottom: 20px;
  }

  .form-container form {
    display: flex;
    flex-direction: column;
  }

 .form-container input[type="text"],
.form-container input[type="password"] {
  padding: 10px;
  margin: 10px 0;
  border: none;
  background-color: rgba(255, 240, 245, 0.7); /* Semi-transparent pink background */
  border-radius: 5px;
  font-size: 16px;
  transition: background-color 0.3s;
}

.form-container input[type="text"]:focus,
.form-container input[type="password"]:focus {
  background-color: #ffe0ef; /* Highlight the input background on focus */
}

.form-container input[type="submit"] {
  background-color: hsl(340, 100%, 85%); /* Pink button color */
  color: #fff;
  border: none;
  padding: 10px;
  margin-top: 20px;
  border-radius: 5px;
  cursor: pointer;
  font-size: 16px;
  transition: background-color 0.3s;
}

.form-container input[type="submit"]:hover {
  background-color: black; /* Darker pink button color on hover */
}


  .form__link {
    text-decoration: none;
    color: black;
    text-align: center;
    font-size: 16px;
    margin-top: 10px;
  }

  @media (max-width: 600px) {
    .form-container {
      width: 90%;
      padding: 10px;
    }
    .form-container p {
      font-size: 20px;
    }
  }
</style>
</head>
<body>
  <div class="form-container">
    <form action="Loginserverlet" method="POST">
      <p class="p1">User Login</p>
      <input name="uid" type="text" placeholder="Username" required>
      <input name="pass" type="password" placeholder="Password" required>
      <input type="submit" value="Login">
      <p class="p2"><a class="form__link" href="reg.jsp">Create your account</a></p>
    </form>
  </div>
</body>
</html>
