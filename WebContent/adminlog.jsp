<!DOCTYPE html>
<html lang="en">
<head>
  <title>EWALLET</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">


<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>

<script type="text/javascript">

var app = angular.module('ngpatternApp', []);

app.controller('ngpatternCtrl', function ($scope) {

$scope.sendForm = function () {

$scope.msg = "Form Validated";

};

});
</script>



<script>

function validateForm() {
    var x = document.forms["myForm"]["uid"].value;
    if (x == "") {
        alert("Name must be filled out");
        return false;
        
        
        var y = document.forms["myForm"]["pwd"].value;
        if (y=="") {
            alert("Password field must be filled");
            return false;
        
    }




</script>
  
      <style>
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 450px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      padding-top: 20px;
      background-color:  #800080;
      color: white;
      height: 100%;
    }
    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #000000;
      color: white;
      padding: 15px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
          color: white;
      }
      .row.content {height:auto;} 
    }
    
    .button {
    background-color: #000000;
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}
    
       img {
    border-radius: 8px;
}
  </style>
</head>
<body>
<form action="AdminServlet" method="post">


<nav class="navbar navbar-inverse">
  <div class="container-fluid" ng-app="ngpatternApp" ng-controller="ngpatternCtrl">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <img src="kssp2.jpg" alt="Paris" width="100" height="60">
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="MainHome.jsp">Home</a></li>
        <li><a href="#">About</a></li>
        <li><a href="#">Contact Us</a></li>
        
      </ul>
      <ul class="nav navbar-nav navbar-right">
         <li><a href=LogoutServlet><span class="glyphicon glyphicon-log-in"></span>Logout</a></li>
      </ul>
    </div>
  </div>
</nav>
  
<div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-2 sidenav">
      <div class="well">
      <p><a href="adminlog.jsp">Admin Login</a></p>
      </div>
    <div class="well">
      <p><a href="loginform.jsp">Login</a></p>
      </div>
      <div class="well">
      <p><a href="customerform.jsp">Register</a></p>
      </div>
      
    </div>
    <div class="col-sm-8 text-left"> 
    <img src="adminlogin.jpg" alt="Paris" width="100" height="60">
            
   <div class="form-group">
      <label for="email">Enter Email:</label>
           
            <input  type="email" class="form-control" id="email"  name="email" required/>
        </div>
		 <div class="form-group">
      <label for="email">Enter password</label>
           
            <input  type="email" class="form-control" id="email"  name="password" required/>
        </div>
		
		      
  
             
			
        <div class="form-group col-sm-offset-2 col-sm-4">
            <input type="submit" onsubmit="validateForm()" class="button" value=" Login" /><br/>
            <div>
      <a href="forgotpass.jsp">forgot password?</a>
      </div>
    
    </div>
    </div>
    <div class="col-sm-2 sidenav">
      <div class="well">
        <p>ADS</p>
      </div>
      <div class="well">
        <p>ADS</p>
      </div>
    </div>
  </div>
</div>

<footer class="container-fluid text-right">
  <p>Copyright kssp@2017</p>
</footer>
</form>
</body>
</html>







