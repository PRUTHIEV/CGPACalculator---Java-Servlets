<%--
  Created by IntelliJ IDEA.
  User: Pruthiev
  Date: 07-01-2022
  Time: 11:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.cgpacalculator.cgpacalculator.HomeAttr" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%Object homeAttr = request.getAttribute("attr");%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>GPA CALCULATOR</title>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS v5.0.2 -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"  integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

  <!--My CSS -->
  <%if(((HomeAttr)homeAttr).getStyleFileName() != null && ((HomeAttr)homeAttr).getStyleFileName().equals("HomeStyle.css")){%>
  <style><%@include file= "./../css/HomeStyle.css"%></style>
  <%}else if(((HomeAttr)homeAttr).getStyleFileName().equals("GpaStyle.css")){%>
  <style><%@include file= "./../css/GpaStyle.css"%></style>
  <%}else if(((HomeAttr)homeAttr).getStyleFileName().equals("CgpaStyle.css")){%>
  <style><%@include file= "./../css/CgpaStyle.css"%></style>
  <%}else if(((HomeAttr)homeAttr).getStyleFileName().equals("myGPAs.css")){%>
  <style><%@include file= "./../css/myGPAs.css"%></style>
  <%}%>


  <link rel="shortcut icon" href="img/android-chrome-192x192.png" type="image/x-icon">

  <!--Google Fonts -->
  <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&display=swap" rel="stylesheet">
  <!--Fonst Awesome-->
  <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>

</head>

<body class="<%=((HomeAttr)homeAttr).getHomePage()%>">
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <div class="container-fluid">
<%--    <i class="fad fa-calculator fa-3x" style="color:#EA5C2B">--%>
    <a class="navbar-brand" href="#"><img src="https://img.icons8.com/external-vitaliy-gorbachev-flat-vitaly-gorbachev/58/000000/external-calculator-back-to-school-vitaliy-gorbachev-flat-vitaly-gorbachev.png"/>
      </i>GPA CALCULATOR</a>
    <button class="navbar-toggler"   type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarScroll">
      <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
        <li class="nav-item">
          <a class="nav-link" aria-current="page" href="<%=request.getContextPath()%>/"><i class="fas fa-lg fa-home" style="color:#fff"></i></a>
        </li>
        <%String auth = ((HomeAttr)homeAttr).getAuth();%>
        <%if(auth != null && auth.equals("LogIn")){%>
        <li class="nav-item">
          <a class="nav-link" href="<%=request.getContextPath()%>/login"><i class="fas fa-lg fa-sign-in-alt" style="color:#fff"></i></a>
        </li>
        <%}else{%>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="/" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            <i class="fas fa-user-circle fa-lg" style="color:#fff;"></i>
          </a>
          <ul class="dropdown-menu bg-dark" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item menus" href="<%=request.getContextPath()%>/my-gpa">MY GPA's</a></li>
            <li><a class="dropdown-item  menus" href="<%=request.getContextPath()%>/my-cgpa">MY CGPA's</a></li>
            <li><a class="dropdown-item  menus" href="<%=request.getContextPath()%>/logout">LogOut</a></li>
            <!-- <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li> -->
          </ul>
        </li>
        <%}%>
      </ul>
    </div>
    <br>
  </div>
</nav>
</body>
</html>

