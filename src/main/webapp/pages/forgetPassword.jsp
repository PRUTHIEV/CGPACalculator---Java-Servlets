<%--
  Created by IntelliJ IDEA.
  User: Hema InduKan
  Date: 26-01-2022
  Time: 12:19
  To change this template use File | Settings | File Templates.
--%>
<html>

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Forgot Password</title>
  <style><%@include file= "./../css/login.css"%></style>
  <style>
      .box {
          margin-top: 160px;
          width: 600px;
          height: 200px;
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
          margin-top: 50px;
          margin-bottom: 0;
          text-align: center;
      }
      p {
          font-size: 15px;
          font-weight: 300;
          text-transform: uppercase;
          letter-spacing: 2px;
          font-family: "Raleway", sans-serif;
          text-align: center;
      }
      .form form input:not([type="button"]) {
          border-bottom: 1px solid rgb(226, 221, 221);
      }
      .switch{
          margin-top:1rem;
          text-align: center;
      }
      #goback {
          color: #443a3a86;
      }
      #goback:hover{
          color: #f95959;
          cursor: pointer;
      }
      #submit:hover{
          cursor: pointer;
      }
      .message-success{
          color:white;
          background-color:#7900FF;
          border-radius: 20px;
          width: 50%;
          margin: auto;
          height:3rem;
          padding: 1rem;
          box-sizing: border-box;
          display: none;
      }
      .message-failure{
          color:white;
          background-color:#DD4A48;
          border-radius: 20px;
          width: 50%;
          margin: auto;
          height:3rem;
          padding: 1rem;
          box-sizing: border-box;
          display: none;
      }
      @media (max-width: 480px) {
          .wrap {
              width: 400px;
              overflow: hidden;
          }
          .box {
              position: fixed;
              margin-top: 80px;
              width: 80%;
          }
          #highlight {
              margin: 10px;
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
      <h2>FORGOT PASSWORD</h2>
      <p>Enter your registered email to reset your password.</p>
    </div>

    <div class="box">
      <form class="signup-form" method="post">
        <div class="form-group">
          <label for="email">Email Address</label>
          <input type="email" name="email" id="email" class="email" required>
          <span class="error"></span>
        </div>
        <div class="CTA">
          <input type="button" value="Proceed" id="submit" name="proceed" class="proceed">
          <a href="<%=request.getContextPath()%>/login" class="switch" id="goback">Back to login</a>
        </div>
      </form>
    </div>
    <p class="message-success"><%=request.getContextPath()%></p>
    <p class="message-failure"><%=request.getContextPath()%></p>
  </div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script><%@include file="./../js/forgotPass.js"%></script>
</body>
</html>
