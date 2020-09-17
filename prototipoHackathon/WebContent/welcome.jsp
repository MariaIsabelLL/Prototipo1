<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome </title>
<link rel="stylesheet" href="controller/css/estilos.css" />
</head>
<body>  
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