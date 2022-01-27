<%--
  Created by IntelliJ IDEA.
  User: Pruthiev
  Date: 07-01-2022
  Time: 11:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.cgpacalculator.cgpacalculator.GPAGetAttr" %>
<%@ page import="com.cgpacalculator.cgpacalculator.GPAPostAttr" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp" %>
<div class="gpa-fields">
  <form action="<%=request.getContextPath()%>/gpa" method="post" id="subjectCount">
		<span class="dropdown">Enter the number of subjects :
			<input type="hidden" name="subjectCount">
			<select name="subjects" class="dropdown-subjects" >
				<%if(((GPAPostAttr)homeAttr).getNumberOfSubjects() == 0){%>
					<option value="0" selected>0</option>
				<%}else{%>
					<option value="0">0</option>
				<%}%>
				<%if(((GPAPostAttr)homeAttr).getNumberOfSubjects()== 1){%>
					<option value="1" selected>1</option>
				<%}else{%>
					<option value="1">1</option>
				<%}%>
				<%if(((GPAPostAttr)homeAttr).getNumberOfSubjects() == 2){%>
					<option value="2" selected>2</option>
				<%}else{%>
					<option value="2">2</option>
				<%}%>
				<%if(((GPAPostAttr)homeAttr).getNumberOfSubjects() == 3){%>
					<option value="3"selected>3</option>
				<%}else{%>
					<option value="3">3</option>
				<%}%>
				<%if(((GPAPostAttr)homeAttr).getNumberOfSubjects() == 4){%>
					<option value="4" selected>4</option>
				<%}else{%>
					<option value="4">4</option>
				<%}%>
				<%if(((GPAPostAttr)homeAttr).getNumberOfSubjects() == 5){%>
					<option value="5" selected>5</option>
				<%}else{%>
					<option value="5">5</option>
				<%}%>
				<%if(((GPAPostAttr)homeAttr).getNumberOfSubjects() == 6){%>
					<option value="6" selected>6</option>
				<%}else{%>
					<option value="6">6</option>
				<%}%>
				<%if(((GPAPostAttr)homeAttr).getNumberOfSubjects() == 7){%>
					<option value="7" selected>7</option>
				<%}else{%>
					<option value="7">7</option>
				<%}if(((GPAPostAttr)homeAttr).getNumberOfSubjects() == 8){%>
					<option value="8" selected>8</option>
				<%}else{%>
					<option value="8">8</option>
				<%}%>
			</select>
		</span>
    <br><br>
  </form>
  <!--Form for Entering Credits and Grades -->
  <form action="<%=request.getContextPath()%>/gpa" id="subjectCount" method="post" class="input-fields">
    <%if(((GPAPostAttr)homeAttr).getCredits() != null){%>
    <%for(int i = 0 ; i < ((GPAPostAttr)homeAttr).getNumberOfSubjects(); i++){%>
    <%if(i % 2 == 0 && i > 0){%>
    <br><br>
    <%}%>
    <span class="dropdown">
					<span>Credits :
						<select name="subject-<%=i%>-credits" class="dropdown-credits">
							<%if(((GPAPostAttr)homeAttr).getCredits().get(i) == 1){%>
								<option value="1" selected>1</option>
							<%}else{%>
								<option value="1">1</option>
							<%}%>
							<%if(((GPAPostAttr)homeAttr).getCredits().get(i) == 2){%>
								<option value="2" selected>2</option>
							<%}else{%>
								<option value="2">2</option>
							<%}%>
							<%if(((GPAPostAttr)homeAttr).getCredits().get(i) == 3){%>
								<option value="3" selected>3</option>
							<%}else{%>
								<option value="3">3</option>
							<%}%>
							<%if(((GPAPostAttr)homeAttr).getCredits().get(i)== 4){%>
								<option value="4" selected>4</option>
							<%}else{%>
								<option value="4">4</option>
							<%}%>
              <!-- <option value="1">1</option>
              <option value="2">2</option>
              <option value="3" selected>3</option>
              <option value="4">4</option> -->
						</select>
					</span>
					<span class="grades">Grade :
						<select name="subject-<%=i%>-grade" class="dropdown-grades">
							<%if(((GPAPostAttr)homeAttr).getGrades().get(i) == 10){%>
								<option value="O" selected>O</option>
							<%}else{%>
								<option value="O">O</option>
							<%}%>
							<%if(((GPAPostAttr)homeAttr).getGrades().get(i) == 9){%>
								<option value="A+" selected>A+</option>
							<%}else{%>
								<option value="A+">A+</option>
							<%}%>
							<%if(((GPAPostAttr)homeAttr).getGrades().get(i) == 8){%>
								<option value="A" selected>A</option>
							<%}else{%>
								<option value="A">A</option>
							<%}%>
							<%if(((GPAPostAttr)homeAttr).getGrades().get(i) == 7){%>
								<option value="B+" selected>B+</option>
							<%}else{%>
								<option value="B+">B+</option>
							<%}%>
							<%if(((GPAPostAttr)homeAttr).getGrades().get(i) == 6){%>
								<option value="B" selected>B</option>
							<%}else{%>
								<option value="B">B</option>
							<%}%>
              <!-- <option value="O">O</option>
              <option value="A+">A+</option>
              <option value="A" selected>A</option>
              <option value="B+">B+</option>
              <option value="B">B</option> -->
						</select>
					</span>
				</span>
    <%}%>
    <%}else{%>
    <%for(int i = 0 ; i < ((GPAPostAttr)homeAttr).getNumberOfSubjects() ; i++){%>
    <%if(i % 2 == 0 && i > 0){%>
    <br><br>
    <%}%>
    <span class="dropdown">
						<span>Credits :
							<select name="subject-<%=i%>-credits" class="dropdown-credits">
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3" selected>3</option>
								<option value="4">4</option>
							</select>
						</span>
						<span class="grades">Grade :
							<select name="subject-<%=i%>-grade" class="dropdown-grades">
								<option value="O">O</option>
								<option value="A+">A+</option>
								<option value="A" selected>A</option>
								<option value="B+">B+</option>
								<option value="B">B</option>
							</select>
						</span>
					</span>
    <%}%>
    <%}%>
    <%if(((GPAPostAttr)homeAttr).getNumberOfSubjects() != 0){%>
    <br><br><button type="submit" class="btn-submit btn btn-primary btn-outline-success" id="submitGPA" style="color:black;width:20%; border-radius:30px;">CALCULATE</button>
    <%}%>
  </form>
  <%if(((GPAPostAttr)homeAttr).getSetCGPA()){%>
  <div class="gpa-val-box">
    <div class="gpa-div" style="margin-top:1rem;">
      <span class="gpa-val">Your GPA is :<%=((GPAPostAttr)homeAttr).getGpa()%></span><br><br>
      <form action="<%=request.getContextPath()%>/gpa" method="post" id="input-save-name">
        <input placeholder="Enter name" style="color:black"type="text" name="saveName" id="input-save"><br><br>
      </form>
      <button type="button" class="btn btn-success" id="gpa-div-save">SAVE</button>
      <button type="button"class="btn btn-danger" id="gpa-div-close">CLOSE</button>
    </div>
  </div>
  <%}%>
  <br><br>
  <% if (((GPAPostAttr)homeAttr).getError() != null) { %>
  <div class="alert alert-danger alert-dismissible fade show" role="alert">
    <strong style="color:red;">❗❗❗<%=((GPAPostAttr)homeAttr).getError()%></strong>
    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
  </div>
  <%}%>
</div>
<!-- Bootstrap JavaScript Libraries -->
<script><%@include file="./../js/GpaJS.js"%></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</body>
</html>