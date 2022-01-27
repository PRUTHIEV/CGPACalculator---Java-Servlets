<%@ page import="com.cgpacalculator.cgpacalculator.MyCGPA" %>
<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: Hema InduKan
  Date: 07-01-2022
  Time: 16:36
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="header.jsp"%>
<%Object myGpa = request.getAttribute("attr");%>
<%for(Map.Entry<String,Double>gpas : ((MyCGPA)myGpa).getCGPAs().entrySet()){%>
<div class="credits-grades d-flex">
  <div class="details align-self-center">
    <p class="name" style="margin-top: 1rem;">Name : <%=gpas.getKey()%></p>
    <p class="reg">gpa : <%=gpas.getValue()%></p>
  </div>
</div>
<%}%>
<%if(((MyCGPA)myGpa).getCGPAs().size() == 0){%>
<p class="result">You have no saved GPA's</p>
<%}%>
<br><br><br>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
    $(document).ready(function () {
        $("title").text("My GPA");
    });
    $(".gpa-icon").hover(function () {
        $(".gpa-icon").css("cursor", "pointer");
    });
    $(".cgpa-icon").hover(function () {
        $(this).css("cursor", "pointer");
    });
    $(".gpa-icon").click(function () {
        location.assign("/gpa");
    });
    $(".cgpa-icon").click(function () {
        location.assign("/cgpa");
    });
</script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</body>
</html>