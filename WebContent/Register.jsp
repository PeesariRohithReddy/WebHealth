
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/style.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>

<title>Pregnocare</title>
</head>
<body style="background-color:#f4e8de">
<nav  style="background-color:#42597f;" class="navbar navbar-default">
   <div class="container">
         <div class="navbar-header">
         <a href="index.html" style="color:white;" class="navbar-brand">PregnoCare</a>
         </div>
         <div>
         <ul class="nav navbar-nav" ">
         <li><a href="index.html" style="color:white;" >Home</a></li>
         <li ><a href="Diet.html" style="color:white;">Diet</a></li>
         <li><a href="#" style="color:white;">Exercise</a></li>
         <li><a href="weekbyweek.html" style="color:white;">Week-By-Week</a></li>
         <li><a href="#" style="color:white;">About Us</a></li>
         <li><a href="#" style="color:white;">Contact Us</a></li>
         </ul>
         </div>
         <ul class="nav navbar-nav navbar-right">
      
      <li><a href="login.jsp" style="color:white;"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
   </div>
</nav>
<div class="container">
<div class="row">
<div class="col-sm-10 text-center">
<p style="color:red;">${message}</p>
</div>
</div>
</div>
<div class="container">
			<div class="row main">
				<div class="main-login main-center">
				<h5>Register now for your baby !!!</h5>
					<form class="" method="post" action="RegisterServlet">
						
						<div class="form-group">
							<label for="name" class="cols-sm-2 control-label">Your Name</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="name" id="name" required placeholder="Enter your Name"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="email" class="cols-sm-2 control-label">Your Email</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
									<input type="email" class="form-control" name="email" id="email"  required placeholder="Enter your Email"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="username" class="cols-sm-2 control-label">Username</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="username" id="username" required placeholder="Enter your Username"/>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="DOB" class="cols-sm-2 control-label">DateofBirth</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									<input type="date" class="form-control" name="dob" id="dob" required placeholder="Date of birth"/>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="Duedate" class="cols-sm-2 control-label">Due Date for you baby?</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									<input type="date" class="form-control" name="duedate" id="duedate" required placeholder=""/>
								</div>
							</div>
						</div>
						<div class="form-group">
						<div class="radio">
						<a href="duedate.html" style="color:white;">I don't know my due date?</a>
						</div>
						</div>
						

						<div class="form-group">
							<label for="password" class="cols-sm-2 control-label">Password</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="password" class="form-control" name="password" id="password" required placeholder="Enter your Password"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="confirm" class="cols-sm-2 control-label">Confirm Password</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="password" class="form-control" name="confirm" id="confirm" required placeholder="Confirm your Password"/>
								</div>
							</div>
						</div>

						<div class="form-group ">
							<input type="submit"  value="Register"  id="button" class="btn btn-primary btn-lg btn-block login-button">
						</div>
						
					</form>
				</div>
			</div>
		</div>
</body>
</html>

