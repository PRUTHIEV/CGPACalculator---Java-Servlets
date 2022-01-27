<%@ page import="com.cgpacalculator.cgpacalculator.CGPAPostAttr" %><%--
  Created by IntelliJ IDEA.
  User: Hema InduKan
  Date: 07-01-2022
  Time: 15:15
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="header.jsp"%>
<!-- Input field to get the number of subjects-->
<div class="gpa-fields">
  <form action="<%=request.getContextPath()%>/cgpa" method="post" id="subjectCount">
		<span class="dropdown">Enter the number of Semesters :
			<input type="hidden" name="subjectCount">
			<select name="semesters" class="dropdown-subjects">
				<%if(((CGPAPostAttr)homeAttr).getNumberOfSemester() == 0){%>
					<option value="0" selected>0</option>
				<%}else{%>
					<option value="0">0</option>
				<%}%>
				<%if(((CGPAPostAttr)homeAttr).getNumberOfSemester()  == 1){%>
					<option value="1" selected>1</option>
				<%}else{%>
					<option value="1">1</option>
				<%}%>
				<%if(((CGPAPostAttr)homeAttr).getNumberOfSemester()  == 2){%>
					<option value="2" selected>2</option>
				<%}else{%>
					<option value="2">2</option>
				<%}%>
				<%if(((CGPAPostAttr)homeAttr).getNumberOfSemester()  == 3){%>
					<option value="3" selected>3</option>
				<%}else{%>
					<option value="3">3</option>
				<%}%>
				<%if(((CGPAPostAttr)homeAttr).getNumberOfSemester() == 4){%>
					<option value="4" selected>4</option>
				<%}else{%>
					<option value="4">4</option>
				<%}%>
				<%if(((CGPAPostAttr)homeAttr).getNumberOfSemester() == 5){%>
					<option value="5" selected>5</option>
				<%}else{%>
					<option value="5">5</option>
				<%}%>
				<%if(((CGPAPostAttr)homeAttr).getNumberOfSemester() == 6){%>
					<option value="6" selected>6</option>
				<%}else{%>
					<option value="6">6</option>
				<%}%>
				<%if(((CGPAPostAttr)homeAttr).getNumberOfSemester() == 7){%>
					<option value="7" selected>7</option>
				<%}else{%>
					<option value="7">7</option>
				<%}%>
				<%if(((CGPAPostAttr)homeAttr).getNumberOfSemester() == 8){%>
					<option value="8" selected>8</option>
				<%}else{%>
					<option value="8">8</option>
				<%}%>
			</select>
		</span>
    <br><br>
  </form>
  <!--Form for Entering Credits and Grades -->
  <form action="<%=request.getContextPath()%>/cgpa" id="subjectCount" method="post" class="input-fields">
    <%if(((CGPAPostAttr)homeAttr).getCredits() != null){%>
    <%for(int i = 0 ; i < ((CGPAPostAttr)homeAttr).getNumberOfSemester() ; i++){%>
    <%if(i % 2 == 0 && i > 0){%>
    <br><br>
    <%}%>
    <span class="dropdown-fields">
					<span class="dropdown-credits-box">Total Credits :
						<input type="number" name="credits-<%=i%>" class="dropdown-credits" value = <%=((CGPAPostAttr)homeAttr).getCredits().get(i)%> required>
					</span>
					<span class="grades">CGPA :
						<input type="number" name="gpa-<%=i%>" class="dropdown-grades"step="0.01" value = <%=((CGPAPostAttr)homeAttr).getGrades().get(i)%> required >
					</span>
				</span>
    <%}%>
    <%}else{%>
    <%for(int i = 0 ; i < ((CGPAPostAttr)homeAttr).getNumberOfSemester() ; i++){%>
    <%if(i % 2 == 0 && i > 0){%>
    <br><br>
    <%}%>
    <span class="dropdown-fields">
					<span class="dropdown-credits-box">Total Credits :
						<input type="number" name="credits-<%=i%>" class="dropdown-credits" required>
					</span>
					<span class="grades">GPA :
						<input type="number" name="gpa-<%=i%>" class="dropdown-grades"step="0.01" required >
					</span>
				</span>
    <%}%>
    <%}%>
    <%if(((CGPAPostAttr)homeAttr).getNumberOfSemester() != 0){%>
    <br><br><button type="submit" class="btn-submit btn btn-primary btn-outline-success" style="color:white;width:20%; border-radius:30px;">CALCULATE</button>
    <%}%>
  </form>
  <%if(((CGPAPostAttr)homeAttr).getSetCGPA()){%>
  <div class="gpa-val-box">
    <div class="gpa-div" style="margin-top:1rem;">
      <span class="gpa-val">Your GPA is :<%=((CGPAPostAttr)homeAttr).getCgpa()%></span><br><br>
      <form action="<%=request.getContextPath()%>/cgpa" method="post" id="input-save-name">
        <input placeholder="Enter name" type="text" style="color:black" name="saveName" id="input-save"><br><br>
      </form>
      <button type="button" class="btn btn-success" id="gpa-div-save">SAVE</button>
      <button type="button"class="btn btn-danger" id="gpa-div-close">CLOSE</button>
    </div>
  </div>
  <%}%>
  <br><br>
  <% if (((CGPAPostAttr)homeAttr).getError() != null) { %>
  <div class="alert alert-danger" role="alert"><%=((CGPAPostAttr)homeAttr).getError()%></div>
  <%}%>
</div>
<!-- Bootstrap JavaScript Libraries -->
<script><%@include file="./../js/Cgpa.js"%></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</body>
</html>
