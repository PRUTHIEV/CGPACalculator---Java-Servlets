package com.cgpacalculator.cgpacalculator;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CGPAServlet", value = "/cgpa")
public class CGPAServlet extends HttpServlet {
  private CGPAPostAttr cgpaAttr =
          new CGPAPostAttr("body-gpa",
                  "CgpaStyle.css",
                  "LogOut",
                  0,
                  false,0.0);

  private void readCredits(HttpServletRequest request){
    cgpaAttr.initializeCreditsArray();
    for(int i = 0 ; i < cgpaAttr.getNumberOfSemester() ; i++){
      cgpaAttr.setCreditItems(Integer.parseInt(request.getParameter("credits-" + i)));
    }
  }
  private void readGPAs(HttpServletRequest request){
    cgpaAttr.initializeGpaArray();
    for(int i = 0 ; i < cgpaAttr.getNumberOfSemester() ; i++){
      cgpaAttr.setGpaArray(Double.parseDouble(request.getParameter("gpa-" + i)));
    }
  }
  private void calculateCGPA(){
    cgpaAttr.setTotalCredits();
    cgpaAttr.setTotalGPA();
    cgpaAttr.setCgpa();
  }
  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    if(MyCookies.checkCookie(request)){
      request.setAttribute("attr", new CGPAPostAttr("body-gpa", "CgpaStyle.css", "LogOut", 0, false, 0.0));
      request.getRequestDispatcher("pages/cgpa.jsp").forward(request, response);
    }else {
      request.getRequestDispatcher("pages/login.jsp").forward(request,response);
    }
  }

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    if(request.getParameter("semesters") != null){
      cgpaAttr.setNumberOfSemester(Integer.parseInt(request.getParameter("semesters")));
      try {
        Check.check(cgpaAttr.toString());
      } catch (Exception e) {
        e.printStackTrace();
      }
      request.setAttribute("attr",cgpaAttr);
      request.getRequestDispatcher("pages/cgpa.jsp").forward(request,response);
    } else if(request.getParameter("saveName") != null){
      Grades grades = new Grades(MySession.retrieveSession(request),request.getParameter("saveName"), cgpaAttr.getCgpa());
      try {
        Class.forName("com.mysql.jdbc.Driver");
        JDBCConnection.dataBaseConnect();
        JDBCConnection.saveCGPAs(grades);
      } catch(Exception e) {
        try {
          Check.check(e.toString());
        } catch (Exception ex) {
          ex.printStackTrace();
        }
        cgpaAttr.setError("Name already exists , give a different name");
        request.setAttribute("attr",cgpaAttr);
        request.getRequestDispatcher("pages/cgpa.jsp").forward(request,response);
      }
    } else{
      readCredits(request);
      readGPAs(request);
      calculateCGPA();
      request.setAttribute("attr",cgpaAttr);
      request.getRequestDispatcher("pages/cgpa.jsp").forward(request,response);
    }

  }
}
