<%--
  Created by IntelliJ IDEA.
  User: Hema InduKan
  Date: 26-01-2022
  Time: 18:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>Reset Password</title>
  <style><%@include file= "./../css/login.css"%></style>
  <style>
      .box {
          margin-top: 200px;
          width: 500px;
          height: 300px;
          color: #443a3a86;
          background: #fff;
          top: 50%;
          left: 50%;
          position: relative;
          transform: translate(-50%, -50%);
          box-shadow: 3px 3px 10px rgba(0, 0, 0, 0.2);
          box-sizing: border-box;

      }

      h2 {
          font-size: 40px;
          font-weight: 500;
          text-transform: uppercase;
          margin-top: 20px;
          margin-bottom: 0;
          text-align: center;

      }

      p {
          font-size: 15px;
          font-weight: 300;
          text-transform: uppercase;
          letter-spacing: 2px;
          white-space: 4px;
          font-family: "Raleway", sans-serif;
          text-align: center;
      }

      .form form input:not([type="submit"]) {
          border-bottom: 1px solid rgb(226, 221, 221);
      }

      #goback {
          color: #443a3a86;
      }

      #goback:hover {
          color: #f95959;
          cursor: pointer;
      }

      #submit:hover {
          cursor: pointer;
      }

      #space {
          margin: 50px;
      }

      @media (max-width: 480px) {
          .wrap {
              width: 400px;
              overflow: hidden;
          }

          .box {
              position: fixed;
              margin-top: 100px;
              width: 80%;
          }

          #highlight {
              margin: 10px;
          }

      }

      @media (max-width: 330px) {
          .box {
              margin-top: 80px;
          }
      }

      @media (min-width: 768px) {
          .wrap {
              width: 100%;
              overflow: hidden;
          }

      }
  </style>
</head>

<body>
<div class="wrap">
  <div class="col-sm-6 form">

    <div id="highlight">
      <h2>RESET PASSWORD</h2>
      <p>Enter your new password and confirm it</p>

    </div>
    <div class="box">
      <form class="signup-form" action="<%=request.getContextPath()%>/reset" id="check" method="post" onsubmit="return validate()">



        <div class="form-group">
          <label for="password">Password</label>
          <input type="password" name="password" id="password" class="pass" pattern=".{8,}" title="Password should contain atleast eight characters" required>
          <span class="error"></span>
        </div>
        <div id="space"></div>
        <div class="form-group">
          <label for="passwordCon">Confirm Password</label>
          <input type="password" name="cpass" id="passwordCon" class="passConfirm" pattern=".{8,}" title="Password should contain atleast eight characters" required>
          <span class="error"></span>
        </div>
        <div class="CTA">
          <input type="submit" value="Reset" id="submit" name="reset_pass">
          <a href="/" class="switch" id="goback">Back to home</a>
        </div>
      </form>
    </div>
  </div>
</div>
<script>
    function validate() {


        var pass1 = document.getElementById('password').value;
        var pass2 = document.getElementById('passwordCon').value;

        if (pass1 != pass2) {

            alert("The passwords do NOT match");
            document.getElementById('check').reset();
            return false;

        }

    }

</script>
</body>

</html>
