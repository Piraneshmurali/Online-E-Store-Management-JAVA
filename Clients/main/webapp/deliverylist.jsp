<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="model.Delivery" %>
<%@ page import="database.Deliveryimpl" %>
<%@ page import="impl.Deliveryinterface" %>
<!DOCTYPE html>
<html>
<head>
    <title>Delivery List</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        /* Add styles for the table */
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

        table {
            width: 100%;
            border-collapse: collapse;
            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
            overflow: hidden;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        tr {
           background-color: rgba(255, 255, 255, 0.7);
        }
        
        tr:hover {
            background-color:#E49CB4;
            color: white;
        }

        th {
           /*  background-color: black; */
            color: black;
        }

        td img {
            max-width: 100px;
            max-height: 100px;
        }

        .btn.anim {
            background-color: #333;
            color: white;
            padding: 5px 10px;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s, transform 0.3s;
            transform: translateY(0);
        }

        .btn.anim:hover {
            background-color: #555;
            transform: translateY(-2px);
        }

        a {
            display: block;
            text-align: center;
            margin-top: 20px;
            text-decoration: none;
            color: black;
            transition: color 0.3s;
        }
        
        button{
        	background-color: black;
            color: white;
            padding: 5px 10px;
            height:35px;
            border: none;
            cursor: pointer;
            border-radius:5px;
            transition: background-color 0.3s, transform 0.3s;
            transform: translateY(0);
        }
        
        button:hover {
    background-color: #555; /* Change to a darker shade or any color you prefer */
    transform: translateY(-2px); /* Move the button slightly upwards on hover */
}

        a:hover {
            color: #555;
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

    <br>
    <h1>Delivery List</h1>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Phone</th>
            <th>Address</th>
            <th>Actions</th>
        </tr>
        <% Deliveryinterface dimpl = new Deliveryimpl();
        ArrayList<Delivery> listUser = dimpl.getdetails(); %>
        <% for (Delivery del : listUser) { %>
            <tr>
                <td><%= del.getID() %></td>
                <td><%= del.getName() %></td>
                <td><%= del.getEmail() %></td>
                <td><%= del.getPhone() %></td>
                <td><%= del.getAddress() %></td>
                <td>
                    <form method="POST" action="DeliveryDelete">
                    <input type="hidden" name="id" value="<%= del.getID() %>" />
                    <button type="submit" class="btn anim" name="btnInsert">delete</button>
                </form>
                    
                </td>
            </tr>
        <% } %>
    </table>
    <a href="delivery.jsp" ><button>Add New Delivery</button></a>
</body>
</html>
