<!DOCTYPE html>
<html lang="en">
<%@ page import="java.sql.*"%>
<head>
  <title>EWALLET</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <meta name="viewport" content="width=device-width,intial-scale=1" />
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   <script src="jquery.validate.min.js"></script>
   
    <style>
       

        #panel {
            padding: 50px;
            height: 500px;
            width: 300px;
        }

        #pid {
       
            height: 300px;
            width: 500px;          
            position:absolute;
            top:50px;
            left:200px;
          
        
        }
         #pid1 {
       
            height: 300px;
            width: 500px;          
            position:absolute;
            top:50px;
            left:200px;
          
        
        }
    </style>
   <script>
var request;
function sendInfo()
{
var v=document.vinform.t1.value;
var url="index.jsp?val="+v;

if(window.XMLHttpRequest){
request=new XMLHttpRequest();
}
else if(window.ActiveXObject){
request=new ActiveXObject("Microsoft.XMLHTTP");
}

try
{
request.onreadystatechange=getInfo;
request.open("GET",url,true);
request.send();
}
catch(e)
{
alert("Unable to connect to server");
}
}

function getInfo(){
if(request.readyState==4){
var val=request.responseText;
document.getElementById('amit').innerHTML=val;
}
}

</script>
   
   <script>
   $(document).ready(function(){
	   $("#form").validate({
	      rules: {
	         email: {
	            required: true,
	            email: true
	               },
	   		mobile:{
	   			required: true,
	   			minlength: 9,
	   			maxlength: 10
	   		}
	         },
	         messages: {
	            email: "Enter valid email",
	            minlength: "Mobile no. not valid"
	         }
	     });
	});
		
$(document).ready(function(){
    $("#flip").click(function(){
        $("#panel").slideToggle("slow");
        $("#pid").slideToggle("slow");
        $("#pid1").slideToggle("slow");
    });
});

$(document).ready(function(){
    $("#show").click(function () {
        $("#pid").css("visibility","visible");
        $("#pid1").css("visibility","hidden");
    });
});

$(document).ready(function(){
    $("#show1").click(function () {
        $("#pid1").css("visibility","visible");
        $("#pid").css("visibility","hidden");
    });
    });


    </script>

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
      background-color: #800080;
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
    
      img {
    border-radius: 8px;
}
  </style>
</head>
<body>
   
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
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
        <li><a href="loginform.jsp"><span class="glyphicon glyphicon-log-in"></span>Logout</a></li>
      </ul>
    </div>
  </div>
</nav>
        <%String email=(String)session.getAttribute("email123");%> 
<div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-2 sidenav">
    <div class="well">
      <p><a href="loginform.jsp">Login</a></p>
      </div>
      <div class="well">
      <p><a href="customerform.jsp">Register</a></p>
      </div>
      <div class="well">
      <p><a href="addmoney1.jsp">Recharge Wallet</a></p>
        </div>
      <div class="well">
      <p><a href="walletTowallet.jsp">Send Money</a></p>
        </div>
      <div class="well">
       <p><a href="bootstrap1.jsp">Recharge Mobile & Pay Bills</a></p>
       </div>
      
    </div>
    <div class="col-sm-8 text-left"> 
 
      <ul class="nav nav-tabs">

                <li><a href="#" id="flip" >PayBill</a></li>
            

            </ul>
         

       

    <div id="panel" class="jumbotran">

        <form>
            <div class="radio" >
                <label><input type="radio" name="optradio"  id="show">MobileBill</label>
            </div>
            <div class="radio" >
                <label><input type="radio" name="optradio" id="show1">ElectricityBill</label>
            </div>
           
        </form>
    </div>
    <br>
    
    <div id="pid" class="jumbotran" style="visibility:hidden;margin-top:10%;margin-left:15%">
<form  id="form" name="form" method="post" action="http://localhost:8080/wall/BillPayment">
   
   <div class="form-group">
      <label for="mobile">Enter Mobile No:</label>
          
        
            <input  type="text" class="form-control" id="mobile"  name="mobile" />
        </div>
         
   <div class="form-group">
      <label for="email"> Email:</label>
          
        
            <input  type="text" class="form-control" id="email"  name="email" value=<%=email%> />
        </div>
        <div class="form-group">
             <label for="amt">Enter Amount:</label>
           <input  type="text" class="form-control" id="amt"  name="amount"  />
       
      </div>
    <%
	if( session.getAttribute("amt") != null)
	{
    int flag=(int)session.getAttribute("amt"); 
	if(flag == 1)
	{
%>
	 <script>
	 alert("No amt present"); 
		
	 </script>
	
		  
  <%  
	}
	session.setAttribute("amt", 0);
	}%>
	
    <%         String[] operator=new String[10];

try{

	Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/wallet","root","");
PreparedStatement ps=con.prepareStatement("select VendorName from vendor where VendorName NOT LIKE '%Electricity%'");
int i=0;
ResultSet rs=ps.executeQuery();
while(rs.next()){
operator[i]= rs.getString("VendorName");

i++;

}
con.close();
}catch(Exception e){e.printStackTrace();}


%>
        <div class="dropdown">
            <label for="amt">Enter Operator:</label>
            <select name="Operator" id="Operator">
<option value=<%=operator[0] %>><%=operator[0] %></option>
<option value=<%=operator[1] %>><%=operator[1] %></option>
<option value=<%=operator[2] %>><%=operator[2] %></option>
</select>
           
        </div>
        
        <div class="form-group col-sm-offset-2 col-sm-8">
            <input type="submit" class="btn btn-primary" value="Pay" />
        </div>
 
        </form>
    </div>
    
     
    <div id="pid1" class="jumbotran" style="visibility:hidden;margin-top:10%;margin-left:15%">
<form  id="form" method="post" action="http://localhost:8080/wall/BillPayment">
     <div class="form-group">
          
             <label for="amt"> Email:</label>
         
             <input  type="text" class="form-control" id="email"  name="email" value=<%=email%>  >  
       
      </div>
        <div class="form-group">
             <label for="amt">Enter Amount:</label>
           <input  type="text" class="form-control" id="amt"  name="amount"  />
       
      </div>
  
        <div class="form-group">
             <label for="amt">Electricity Board:</label>
          <div class="dropdown">
            <label for="amt">Enter Operator:</label>
            <%

            String[] state=new String[10];

try{

	Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/wallet","root","");
PreparedStatement ps=con.prepareStatement("select VendorName from vendor where VendorName LIKE '%Electricity%'");
int i=0;
ResultSet rs=ps.executeQuery();
while(rs.next()){
state[i]= rs.getString("VendorName");

i++;

}
con.close();
}catch(Exception e){e.printStackTrace();}


%>
            <select name="Operator" id="Operator">
<option value=<%=state[0]%>><%=state[0]%></option>
<option value=<%=state[1]%>><%=state[1]%></option>
<option value=<%=state[2]%>><%=state[2]%></option>
<option value=<%=state[3]%>><%=state[3]%></option>

</select>
           
        </div>
      </div>
       
   
        
       
        <div class="form-group col-sm-offset-2 col-sm-8">
            <input type="submit" class="btn btn-primary" value="Pay" />
        </div>
    </div>

    </form>
 
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
</body>
</html>














