<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
<style type="text/css">
.btn
{
   position:relative;
   padding:5px;
   border: 5px solid #42597f;
   background: #42597f;
   color: white;
   height:30px;
   width:120px;
   left:100px;   
}
</style>
<title>Pregnocare</title>
</head>
<body style="background-color: #eaecef">
<nav  style="background-color:#42597f;" class="navbar navbar-default navbar-fixed-top">
   <div class="container">
         <div class="navbar-header">
         <a href="dashboard.jsp" style="color:white;" class="navbar-brand">PregnoCare</a>
         </div>
         <div>
         <ul class="nav navbar-nav" >
         
         <li ><a href="Diet.html" style="color:white;">Diet</a></li>
         <li><a href="Exercises.html" style="color:white;">Exercise</a></li>
         <li><a href="weekbyweek.html" style="color:white;">Week-By-Week</a></li>
         
         </ul>
         </div>
           <ul class="nav navbar-nav navbar-right">
      <li><a href="" style="color:white;"><span class="glyphicon glyphicon-user"></span>   ${username}</a></li>
      <li><a href="Logout" style="color:white;"><span class="glyphicon glyphicon-log-out"></span>  Logout</a></li>
    </ul>
         
    
  </div>
</nav>
<br><br>
<div class="container-fluid">
  <div class="row">
    <div class="col-md-3">
      <a href="Diet.html"><img src="resources/Images/Diet.jpg"></a>
      <br><br>
      <a href="Diet.html" class="btn">Diet</a>
    </div>
    
    <div class="col-md-3">
      <a href="Exercises.html"><img src="resources/Images/excercise.jpg"></a>
      <br><br>
      <a href="Exercises.html" class="btn">Exercise</a>
    </div> 
    <div class="col-md-3">
      <a href="weekbyweek.html"><img src="resources/Images/weekbyweek.jpg"></a>
      <br><br>
      <a href="weekbyweek.html" class="btn">WeekbyWeek</a>
    </div> 
      <div class="col-md-3">
      <a href="weekbyweek.html"><img src="resources/Images/statistics.jpg"></a>
      <br><br>
      <a href="weekbyweek.html" class="btn">Statistics</a>
    </div>
       
  </div>
  

  </div>
  
  
</div>

</body>
</html>