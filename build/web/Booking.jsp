
<!-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> -->
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tour Booking</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-repeat: no-repeat;
             background-size: cover;
            background-image: url("im.jpeg")
            
        }
        header {
            background-color: #10b0dc;
            color: rgb(255, 255, 255);
            padding: 10px 20px;
            text-align: center;
        }
        form {
            padding: 20px;
            width: 300px;
            margin: 0 auto;
            border: 1px solid #ddd;
            border-radius: 5px;
            background-color: #f5f4f8;
        }
        input[type="text"], input[type="number"] {
            width: calc(100% - 20px);
            padding: 8px;
            margin: 5px 0;
            border: 1px solid #ddd;
            border-radius: 3px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin-top: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            background-repeat: no-repeat;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
        
    </style>
</head>
<body>
    <header>
        <h1>Book Your Tour</h1>
    </header>
    <form action="bookdetails" method="post">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required><br>
        
        <label for="age">Age:</label>
        <input type="number" id="age" name="age" min="18" required><br>
        
        <label for="mobile">Mobile Number:</label>
        <input type="number" id="mobile" name="mobile" pattern="[0-9]{10}" required><br>
        
        
        <label for="adults">Adults:</label>
        <input type="number" id="adults" name="adults" min="1" required><br>
        
        <label for="children">Children:</label>
        <input type="number" id="children" name="children" min="0" required><br>
        
        <label for="tourists">Total Number of Tourists:</label>
            <input type="number" id="tourists" name="tourists" min="1" required><br>
         
            <span style="color:red;">${error}</span>   
        <input type="submit" value="Book Now">
        </form>
    
</body>
</html>
