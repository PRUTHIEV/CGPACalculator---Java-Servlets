package com.cgpacalculator.cgpacalculator;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;



@WebServlet(name = "GPAServlet", value = "/gpa")
public class GPAServlet extends HttpServlet {
  private GPAPostAttr gpaAttr = new GPAPostAttr("body-gpa","GpaStyle.css","LogOut",0,false,0.0);
  private void readCredits(HttpServletRequest request){
    gpaAttr.initializeCreditArray();
    for(int i = 0 ; i < gpaAttr.getNumberOfSubjects() ; i++){
      gpaAttr.setCreditsItems(Integer.parseInt(request.getParameter("subject-" + i + "-credits")));
    }
  }

  private void readGrades(HttpServletRequest request){
    gpaAttr.initializeGradeArray();
    for(int i = 0 ; i < gpaAttr.getNumberOfSubjects() ; i++){
      gpaAttr.setGradeItems(request.getParameter("subject-" + i + "-grade"));
    }
  }

  private void  calculateGPA(){
    gpaAttr.getTotalPoints();
    gpaAttr.getTotalCredits();
    gpaAttr.setGPA();
  }
  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    if(MyCookies.checkCookie(request)){
      request.setAttribute("attr", gpaAttr);
      request.getRequestDispatcher("pages/gpa.jsp").forward(request, response);
    } else {
      request.getRequestDispatcher("pages/login.jsp").forward(request,response);
    }
  }

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    if(request.getParameter("subjects") != null){
      gpaAttr.setNumberOfSubjects(Integer.parseInt(request.getParameter("subjects")));
      request.setAttribute("attr",new GPAPostAttr("body-gpa","GpaStyle.css","LogOut", gpaAttr.getNumberOfSubjects(), false,0.0));
      request.getRequestDispatcher("pages/gpa.jsp").forward(request,response);
    } else if(request.getParameter("saveName") != null){
      Grades gpa = new Grades(MySession.retrieveSession(request),request.getParameter("saveName"), gpaAttr.getGpa());
      try {
        Class.forName("com.mysql.jdbc.Driver");
        JDBCConnection.dataBaseConnect();
        JDBCConnection.saveGPAs(gpa);
      } catch(Exception e) {
        gpaAttr.setError("Name already exists , give a different name");
        request.setAttribute("attr",gpaAttr);
        request.getRequestDispatcher("pages/gpa.jsp").forward(request,response);
      }
    } else {
      readCredits(request);
      readGrades(request);
      calculateGPA();
      try {
        Check.check(gpaAttr.toString());
      } catch (Exception e) {
        e.printStackTrace();
      }
      request.setAttribute("attr",gpaAttr);
      request.getRequestDispatcher("pages/gpa.jsp").forward(request,response);
    }


  }
}
