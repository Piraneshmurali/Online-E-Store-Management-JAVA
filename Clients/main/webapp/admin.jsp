<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@ page import="database.DressImpl" %>
  <%@ page import="database.Deliveryimpl" %>
    <%@ page import="database.Usermethod" %>
<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
   
   
  
  <style type="text/css">
  *{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: Verdana, Geneva, Tahoma, sans-serif;
}
body {
    width: 100%;
    position: relative;
    display: flex;
    background-image: url('https://images.pexels.com/photos/414660/pexels-photo-414660.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1');
    background-size: 1750px;
    background-repeat: no-repeat;
    
}
#menu{
    background-color: hsl(340, 100%, 75%);
    width: 300px;
    height: 738px;
   /*  border-right: 3px solid rgb(0, 0, 0); */
}
#menu .logo{
    background-color: hsl(340, 100%, 75%);
    display: flex;
    align-items: center;
    color: #000000;
    padding: 30px 0 0 30px;

}
#menu .logo img{
    width: 45px;
    margin-right: 15px;
}
#menu .items{
    margin-top: 10px;
}
#menu .items li{
    list-style: none;
    padding: 15px 0;
    transition: 0.3s ease;
     background-color: hsl(340, 100%, 75%);
    
}
#menu .items li:hover{
    background-color: rgba(0, 0, 0, 0.1);
    cursor: pointer;
}


/* #menu .items li:nth-child(1){
    border-left: 4px solid #ffff;
} */
#menu .items li i{
    color: aquamarine;
    width: 30px;
    height: 30px;
    line-height: 100px;
    text-align: center;
    font-size: 14px;
    margin: 0 10px 0 25px;
}
#menu .items li img{
    color: aquamarine;
    width: 30px;
    height: 30px;
    line-height: 100px;
    

    margin: 0 15px -8px 25px;
    border-radius: 50px;
    
}
#menu .items li:hover i,
#menu .items li:hover a{
    color: white;

}
#menu .items li a{
    text-decoration: none;
    color: rgb(0, 0, 0);
    font-weight: 300px;
    transition: 0.3s ease;
}
#interface{
    width: calc(100% - 300px);
}
#interface .navigation{
    display: flex;
    align-items: center;
    justify-content: space-between;
    background-color: hsl(340, 100%, 75%);
    padding: 15px 30px;
 
}
#interface .navigation .search {
    display: flex;
    justify-content: flex-start;
    width:300px;
    margin-top:13px;
    align-items: center;
    /* padding: 10px 14px; */
    border: 1px solid #d7dbe6;
    border-radius: 4px;
    background-color: #f7f7f7; /* Updated background color */
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); /* Added shadow effect */
}

#interface .navigation .search i {
    
    color: #888; /* Updated icon color */
}

#interface .navigation .search input {
    border: none;
    outline: none;
    font-size: 14px;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; /* Updated font */
    width: 100%;
    padding: 8px;
}

#interface .navigation .search input::placeholder {
    color: #aaa; /* Placeholder text color */
}

#interface .navigation .search:hover {
    border-color: #b4b4b4; /* Updated border color on hover */
}

#interface .navigation .profile{
    display: flex;
    justify-content: flex-start;
    align-items: center;
    
}
#interface .navigation .profile i{
    margin-right: 20px;
    font-size: 19px;
    font-weight: 400;
}
#interface .navigation .profile img{
margin-top:13px;
    width: 30px;
    height: 30px;
    object-fit: cover;
    border-radius: 50%;
}
.i-name{
    color: black;
    padding: 30px 30px 0 30px;
    font-size: 24px;
    font-weight: 700;
    font-style:bold;
}
.values{
    padding: 30px 30px 0 30px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    flex-wrap: wrap;
}
.values .val-box {
    background: #ffffff;
    width: 235px;
    padding: 16px 20px;
    margin-right:45px;
    border-radius: 5px;
    display: flex;
    justify-content: flex-start;
    align-items: center;
}
.values .val-box i{
    font-size: 25px;
    width: 60px;
    height: 60px;
    line-height: 60px;
    border-radius: 50%;
    text-align: center;
    color: #ffff;
    margin-right: 15px;
}
.values .val-box img{
    
    width: 60px;
    height: 60px;
    line-height: 60px;
    border-radius: 50%;
    color: #ffff;
    margin-left: -80px;
     
}
.values .val-box h3{
    font-size: 18px;
    font-weight: 600;
}
.values .val-box span{
    font-size: 15px;
    color: grey;
}
 button{
        	background-color: black;
            color: white;
            font-size:20px;
            margin-top:10px;
            padding: 5px 10px;
            height:35px;
            border: none;
            cursor: pointer;
            border-radius:5px;
            transition: background-color 0.3s, transform 0.3s;
            transform: translateY(0);
            font-weight:bold;
        }
        
        button:hover {
    background-color: #555; /* Change to a darker shade or any color you prefer */
    transform: translateY(-2px); /* Move the button slightly upwards on hover */
}

        
  </style>

  
  
</head>
<body >
<% int dressCount2 =Deliveryimpl.printcount();%>
    <% int dressCount3 =Usermethod.printcount();%>
<% int dressCount1 = DressImpl.printCount();%>
    
    
    <section id="menu">
        <div class="logo">
           <img src="logo.jpg" alt=""> 
           <h2>SILLKY&#128498;</h2>
        </div>
        <div class="items">
            <li><i class="fad fa-chart-pie-alt"></i><img src="dd.gif" alt=""><a href="">Dashboard</a></li>
            <li><i class="fad fa-chart-pie-alt"></i><a href="deliverylist.jsp"><img src="del.gif" alt="">Delivery person</a></li>
            <li><i class="fad fa-chart-pie-alt"></i><a href="dresslisit.jsp"><img src="done.gif" alt="">Dresses</a></li>
            <li><i class="fad fa-chart-pie-alt"></i><img src="dollar.gif" alt=""><a href="viewcard.jsp">Orders</a></li>
            <li><i class="fad fa-chart-pie-alt"></i><a href="set.jsp"><img src ="ch.gif" alt="">Settings</a></li>
            
        </div>
    </section>
    <section id="interface">
        <div class="navigation">
            <div class="n1">
                <div class="search">
                    <i class="far fa-search"></i>
                    <input type="text" placeholder="Search">
                </div>
            </div>
         
            <div class="profile">
                <i class="far fa-bell"></i>
                <a href="login.jsp"><button>Logout</button></a>
            </div>
        </div>
        <h3 class="i-name">
            Dashboard
        </h3>
        <div class="values">
            <div class="val-box">
                <i class="fad fa-chart-pie-alt"></i><img src="dd.gif">
                <div>
                    <h3><%= dressCount1 %></h3>
                    <span>Available Products</span>
                </div>
            </div>
            <div class="val-box">
                <i class="fad fa-chart-pie-alt"></i><img src="del.gif" alt="">
                <div>
                    <h3> <%= dressCount2 %></h3>
                    <span>Total delivery person</span>
                </div>
            </div>
            <div class="val-box">
                <i class="fad fa-chart-pie-alt"></i><img src="dollar.gif" alt="">
                <div>
                    <h3>9530</h3>
                    <span>Produts Sell</span>
                </div>
            </div>
            <div class="val-box">
                <i class="fad fa-chart-pie-alt"></i><img src ="ch.gif" alt="">
                <div>
                    <h3><%= dressCount3 %></h3>
                    <span>Available customer</span>
                </div>
            </div>
        </div>
      
    </section>
</body>
</html>