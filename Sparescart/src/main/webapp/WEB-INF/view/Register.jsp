		 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel = "stylesheet" type="text/css" href = "./stylesheet/registerform.css"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="./bootstrap/css/bootstrap.min.css">
  <script src="./bootstrap/js/jquery-2.2.3.min.js"></script>
  <script src="./bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
${message}
<div class="container">
			<div class="row main">
				<div class="main-login main-center">
				<h5>Not Registered User Sign up here. </h5>
					<form class="" method="get" action="adduser">
						
						<div class="form-group">
							<label for="name" class="cols-sm-2 control-label">Your Name</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="name" id="name"  placeholder="Enter your Name"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="email" class="cols-sm-2 control-label">Your Email</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="mail" id="email"  placeholder="Enter your Email"/>
								</div>
							</div>
						</div>	

						<div class="form-group">
							<label for="username" class="cols-sm-2 control-label">Username</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="id" id="id"  placeholder="Enter your Username"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="password" class="cols-sm-2 control-label">Password</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="password" class="form-control" name="password" id="password"  placeholder="Enter your Password"/>
								</div>
							</div>
						</div>

						  <div class="form-group">
							<label for="confirm" class="cols-sm-2 control-label">Contact</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="contact" class="form-control" name="contact" id="contact"  placeholder="Enter your contact"/>
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="cols-sm-10">
								
							</div>
						</div>

						<div class="form-group ">
							<!--<a href="Register.jsp" target="_blank" type="button" id="button" class="btn btn-primary btn-lg btn-block login-button">Register</a> -->
							 <input type="submit" value="Submit">
						
						</div>
						
					</form>
				</div>
			</div>
		</div>
</body>
</html>
</body>
</html>