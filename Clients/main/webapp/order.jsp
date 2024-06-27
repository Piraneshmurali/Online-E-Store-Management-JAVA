<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="impl.DressInterface" %>
<%@ page import="model.Dress" %>
<%@ page import="database.DressImpl" %>
<%@ page import="java.util.Base64" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Menu</title>
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
    <form action="GetDressCal" method="post">
        <table cellpadding="10" align="center">
            <tr>
                <th>Dress Name</th>
                <th>Description</th>
                <th>Price</th>
                <th>Photo</th>
                <th>Quantity</th>
                <th>Add to Cart</th>
            </tr>
            <%
            DressInterface de = new DressImpl();
            ArrayList<Dress> dresses = de.getDresses();
            for (Dress dress : dresses) {
            %>
            <tr>
                <td><%= dress.getName() %></td>
                <td><%= dress.getDesc() %></td>
                <td><%= dress.getPrice() %></td>
                <td>
                    <img src="data:image/jpeg;base64, <%= Base64.getEncoder().encodeToString(dress.getPhoto()) %>" width="100" height="100" />
                </td>
                <td>
                    <input type="number" id="quantity_<%= dress.getDressId() %>" name="quantity_<%= dress.getDressId() %>" />
                </td>
                <td>
                    <input type="hidden" name="id" value="<%= dress.getDressId() %>" />
                    <input type="hidden" name="name" value="<%= dress.getName() %>" />
                    <input type="hidden" name="price" value="<%= dress.getPrice() %>" />
                    <input type="hidden" name="description" value="<%= dress.getDesc() %>" />
                    <input type="hidden" name="photo" value="<%= Base64.getEncoder().encodeToString(dress.getPhoto()) %>" />
                    <input type="submit" value="Add to Cart" />
                </td>
            </tr>
            <%
            }
            %>
        </table>
    </form>
</body>
</html>
