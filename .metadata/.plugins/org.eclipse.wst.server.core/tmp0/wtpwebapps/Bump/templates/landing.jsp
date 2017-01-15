<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Bump</title>
<link href="css/bump.min.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div class="landing-page-content">
		
		<form class="login" method="post" action="LoginHandler">
			<div class="form-container">
				<div class="input-container">
					<input name="user-id" type="text" required="true" autofocus="true" autocomplete="off" placeholder="Practitioner ID"/>
					<img src="assets/icons/ic_face_black_36dp_1x.png" class="input-image">
				</div>
				<div class="input-container">
					<input name="password" type="password" required="true" autofocus="true" placeholder="Password"/>				
					<img src="assets/icons/ic_lock_black_36dp_1x.png" class="input-image">
				</div>				
			</div>
			<div class="button log-in-button">
				<button type="submit">Log In</button>
			</div>			
		</form>
		<form class="signup" method="post" action="SignupHandler">
			<div class="form-container">
				<input name="name" type="text" required="true" autofocus="true" placeholder="Name"/>
				<input name="clinic-id" type="text" required="true" autofocus="true" placeholder="Clinic ID"/>
				<input name="user-id" type="text" required="true" autofocus="true" placeholder="Practitioner ID"/>
				<input name="password" type="password" required="true" autofocus="true" placeholder="Password"/>
				<input name="signup-code" type="text" required="true" autofocus="true" placeholder="Signup Code"/>
			</div>
			<div class="button sign-in-button">
				<button type="submit">Sign Up</button>
			</div>	
		</form>
	</div>
</body>
</html>