<%--
  Created by IntelliJ IDEA.
  User: Hema InduKan
  Date: 27-01-2022
  Time: 16:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
  <title>404 Page Not Found </title>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <!-- Bootstrap CSS v5.0.2 -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"  integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <style>
      .page_404 {
          text-align: center;
      }
      .four-zero-four {
          width: 40%;
      }
      .fnf {
          font-size: 2.5rem;
          font-family: "Dancing Script", cursive;
      }
      .btn,
      .home-button {
          color: white;
          border-radius: 20px;
          width: 10%;
      }
      .home-button {
          margin-right: 4rem;
      }
  </style>
  <!--Favicon-->
  <link rel="shortcut icon" href="img/android-chrome-192x192.png" type="image/x-icon">
</head>
<body>
<section class="page_404">
  <img src="https://cdn.dribbble.com/users/722246/screenshots/3066818/404-page.gif" alt="this slowpoke moves"  width="250" class="four-zero-four" />
  <p class="fnf">PAGE NOT FOUND</p>
  <button type="button" class="btn btn-outline-dark btn-primary home-button">Home</button>
<%--  <%if(isLoginned){%>--%>
  <button type="button" class="btn btn-outline-dark btn-success login-button">Login</button>
<%--  <%}%>--%>
</section>

<!-- Bootstrap JavaScript Libraries -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
    $(document).ready(function () {
        $(".home-button").click(function () {
            location.assign("/");
        });
        $(".login-button").click(function () {
            location.assign("/login");
        });
    });

</script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

</body>
</html>
