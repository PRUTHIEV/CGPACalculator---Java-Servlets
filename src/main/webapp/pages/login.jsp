<%@ page import="com.cgpacalculator.cgpacalculator.LoginAttr" %><%--
  Created by IntelliJ IDEA.
  User: Hema InduKan
  Date: 06-01-2022
  Time: 16:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%Object loginAttr = request.getAttribute("attr");%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Title</title>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS v5.0.2 -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"  integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

  <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
  <!--Custom CSS -->
  <style><%@include file= "./../css/login.css"%></style>

</head>
<body>
<div class="container">
  <section id="formHolder">
    <%if((loginAttr) != null){%>
      <%String error = ((LoginAttr)loginAttr).getFailure();%>
      <% if (error != null) { %>
        <div class="alert alert-danger" role="alert">
          <%=error%>
        </div>
      <%}%>
    <%}%>
    <%if((loginAttr) != null){%>
      <%String success = ((LoginAttr)loginAttr).getSuccess();%>
      <% if (success != null) { %>
        <div class="alert alert-success" role="alert">
        <%=success%>
      </div>
      <%}%>
    <%}%>

    <div class="row">


      <div class="col-sm-6 brand ">
        <a href="/" class="logo">Home</a>

        <div class="heading">
          <h2>
            <i class="fas fa-3x fa-address-card" style="color:#FF8243"></i>
            <br>GPA Calculator
          </h2>
          <br>
          <p>By Pruthiev</p>
        </div>

        <div class="success-msg">
          <p>Great! You are one of our members now</p>
          <a href="/" class="profile">Your Profile</a>
        </div>
      </div>


      <!-- Form Box -->
      <div class="col-sm-6 form">



        <!-- Signup Form -->
        <div class="signup form-peice">
          <form class="signup-form" action="<%=request.getContextPath()%>/register" method="post" autocomplete="off">

            <div class="form-group">
              <label for="name">Full Name</label>
              <input type="text" name="name" id="name" class="name">
              <span class="error"></span>
            </div>

            <div class="form-group">
              <label for="email">Email Address</label>
              <input type="email" name="email" id="email" class="email">
              <span class="error"></span>
            </div>

            <div class="form-group">
              <label for="phone">Registration Number</label>
              <input type="number" name="username" id="phone" class="rno">
              <span class="error"></span>
            </div>

            <div class="form-group">
              <label for="password">Password</label>
              <input type="password" name="password" id="password" class="pass">
              <span class="error"></span>
            </div>

            <div class="form-group">
              <label for="passwordCon">Confirm Password</label>
              <input type="password" name="cpass" id="passwordCon" class="passConfirm">
              <span class="error"></span>
            </div>

            <div class="CTA">
              <input type="submit" value="Signup Now" id="submit" name="reg">
              <a href="#" class="switch">I have an account</a>
            </div>
          </form>
        </div><!-- End Signup Form -->
        <!-- Login Form -->
        <div class="login form-peice switched">
          <form class="login-form" action="<%=request.getContextPath()%>/login" method="post" autocomplete="off">
            <div class="form-group">
              <label for="loginemail">Roll Number</label>
              <input type="number" name="username" id="loginemail" required>
            </div>

            <div class="form-group">
              <label for="loginPassword">Password</label>
              <input type="password" name="password" id="loginPassword" required>
            </div>

            <div class="CTA">
              <input type="submit" value="Login" name="log">
              <a href="#" class="switch">I'm New</a>
              <a href="<%=request.getContextPath()%>/forgotpass" class="forgotpass">Forgot Password</a>
            </div>
          </form>
        </div><!-- End Login Form -->

      </div>
    </div>

  </section>
</div>

<!-- Bootstrap JavaScript Libraries -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

<!--JQuery CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!--Custom JS -->
<script><%@include file="./../js/login.js"%></script>
</body>
</html>
