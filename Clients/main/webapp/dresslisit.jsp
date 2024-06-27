<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="impl.DressInterface" %>
<%@ page import="model.Dress" %>
<%@ page import ="database.DressImpl"%>
<%@ page import="java.util.Base64" %>
<!DOCTYPE html>
<html>
<head>
    <title>List of Dresses</title>
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
    <br>
    <h1>List of Dresses</h1>
    <table>
        <tr>
            <th>Dress ID</th>
            <th>Dress Name</th>
            <th>Description</th>
            <th>Price</th>
            <th>Photo</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        
        <% 
        DressInterface de = new DressImpl();
        ArrayList<Dress> dresses = de.getDresses();
        %>

        <% for (Dress dress : dresses) { %>
        <tr>
            <td><%= dress.getDressId() %></td>
            <td><%= dress.getName() %></td>
            <td><%= dress.getDesc() %></td>
            <td>Rs.<%= dress.getPrice() %></td>
            <td>
                <img src="data:image/jpeg;base64, <%= Base64.getEncoder().encodeToString(dress.getPhoto()) %>" />
            </td>
            <td>
                <form method="POST" action="GetDress">
                    <input type="hidden" name="id" value="<%= dress.getDressId() %>" />
                    <button type="submit" class="btn anim" name="btnInsert">edit</button>
                </form>
            </td>
            <td>
                <form method="POST" action="DeleteDress">
                    <input type="hidden" name="id" value="<%= dress.getDressId() %>" />
                    <button type="submit" class="btn anim" name="btnInsert">delete</button>
                </form>
            </td>     
        </tr>
        <% }
        System.out.println("work");
        %>
    </table>
    <a href="dress.jsp"><button>Add New Dress</button></a>
</body>
</html>
