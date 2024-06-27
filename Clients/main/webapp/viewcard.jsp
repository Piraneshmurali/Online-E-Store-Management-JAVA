<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="model.Dress" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Cart</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('https://images.pexels.com/photos/414660/pexels-photo-414660.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'); /* Add your food background image path */
    background-size: cover;
    background-position: center;
    margin: 0;
    padding: 0;
    height: 100vh;
    overflow: hidden;
            text-align: center;
        }
        
        h2 {
            color: black;
        }

        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0px 5px 10px rgba(0, 0, 0, 0.2);
        }

        table th, table td {
            padding: 10px;
            text-align: left;
        }

        table th {
            background-color: #333;
            color: #fff;
        }

        table tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        table td {
            border-bottom: 1px solid #ccc;
        }

        p {
            font-size: 20px;
            margin-top: 20px;
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
    
    <a href="home.jsp" class="close-icon">
        <i class="fas fa-times"></i>
    </a>
    <h2>Your Cart</h2>
    <table cellpadding="10" align="center">
        <tr>
            <th>Dress Name</th>
            <th>Description</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Item Total</th>
        </tr>
        <%
        ArrayList<Dress> cart = (ArrayList<Dress>) session.getAttribute("cart");
        float grandTotal = 0;
        if (cart != null) {
            for (Dress dress : cart) {
                float itemTotal = dress.getPrice() * dress.getQuantity();
                grandTotal += itemTotal;
        %>
        <tr>
            <td><%= dress.getName() %></td>
            <td><%= dress.getDesc() %></td>
            <td>Rs<%= dress.getPrice() %></td>
            <td><%= dress.getQuantity() %></td>
            <td>Rs<%= itemTotal %></td>
        </tr>
        <%
            }
        }
        %>
    </table>
    <p>Grand Total: Rs<%= grandTotal %></p>
</body>
</html>
