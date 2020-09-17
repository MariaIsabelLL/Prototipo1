<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome MVC</title>
<link rel="stylesheet" href="controller/css/estilos.css" />
</head>
<body>
Welcome!!!
<a href="controller/Inicio">Click Here</a>

<!-- <div class="login"> -->
<!--     <h1>Login</h1> -->

<!--     <form class="form" method="post" action="controller/Inicio"> -->

<!--       <p class="field"> -->
<!--         <input type="text" name="login" placeholder="Username" required/> -->
<!--         <i class="fa fa-user"></i> -->
<!--       </p> -->

<!--       <p class="field"> -->
<!--         <input type="password" name="password" placeholder="Password" required/> -->
<!--         <i class="fa fa-lock"></i> -->
<!--       </p> -->

<!--       <p class="submit"><input type="submit" name="sent" value="Login"></p> -->


<!--     </form> -->
<!--   </div> / Login -->
  
 <form class="form" method="post" action="controller/Inicio">
  <h1>Employer Log in</h1>
  <div class="inset">
  <p>
    <label for="email">LOGIN</label>
    <input type="text" name="login" id="email">
  </p>
  <p>
    <label for="password">PASSWORD</label>
    <input type="password" name="password" id="password">
  </p>
  </div>
  <p class="p-container">
    <span>Forgot password ?</span>
    <input type="submit" name="go" id="go" value="Log in">
  </p>
</form>
 
</body>
</html>