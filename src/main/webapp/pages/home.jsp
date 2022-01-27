<%--
  Created by IntelliJ IDEA.
  User: Pruthiev
  Date: 07-01-2022
  Time: 11:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp"%>
<%if(((HomeAttr)homeAttr).getWelcomeUser() != null){%>
<div class="welcome-msg">
  <span class="new-year">🎆Happy New Year 2022🎆</span>
  <span class="welcome">🙏 Welcome <%=((HomeAttr)homeAttr).getWelcomeUser()%> 🙏</span>
  <span class="covid">😷Stay Safe and Healthy😷</span>
</div>
<!-- <h3 class="welcome-msg">🎆Happy New Year 2022🎆</h3>
<h3 class="welcome-msg">😷Staf and Staf Healthy😷</h3> -->
<%}%>

<%if(((HomeAttr)homeAttr).getLogOutMessage() != null){%>
<div class="alert alert-warning alert-dismissible fade show" role="alert">
  <strong><%=((HomeAttr)homeAttr).getLogOutMessage()%></strong> 🙏 Thanks for visiting us ,come back soon
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
<!-- <h3 class="welcome-msg">🎆Happy New Year 2022🎆</h3>
<h3 class="welcome-msg">😷Staf and Staf Healthy😷</h3> -->
<%}%>
<div class = "section">
  <div class="students">
    <img src="https://img.icons8.com/fluency/96/000000/student-male.png" class="male-student"/>
    <img src="https://img.icons8.com/fluency/100/000000/student-female.png" class="female-student"/>
  </div>
  <div class="grades-calculate">
    <button type="button" class="bg-primary btn btn-outline-light gpa"><a href="<%=request.getContextPath()%>/gpa">GPA </a></button>
    <button type="button" class="bg-danger btn btn-outline-light cgpa"><a href="<%=request.getContextPath()%>/cgpa">CGPA </a></button>
    <br><br>
    <button type="button" class="bg-success btn btn-outline-light gpa"><a href="<%=request.getContextPath()%>/my-gpa">My GPA's</a></button>
    <button type="button" class="bg-dark btn btn-outline-light cgpa"><a href="<%=request.getContextPath()%>/my-cgpa">My CGPA's</a></button>
  </div>
</div>
<br><br>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</body>
</html>