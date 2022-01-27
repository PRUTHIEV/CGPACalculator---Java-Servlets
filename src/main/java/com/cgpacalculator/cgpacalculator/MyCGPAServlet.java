package com.cgpacalculator.cgpacalculator;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.LinkedHashMap;

@WebServlet(name = "MyCGPAServlet", value = "/my-cgpa")
public class MyCGPAServlet extends HttpServlet {
  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    if(MyCookies.checkCookie(request)) {
      try {
        Class.forName("com.mysql.jdbc.Driver");
        JDBCConnection.dataBaseConnect();
        LinkedHashMap<String, Double> cgpas = JDBCConnection.getCGPAs(MySession.retrieveSession(request));
        request.setAttribute("attr", new MyCGPA("body-home", "myGPAs.css", "LogOut", cgpas));
        request.getRequestDispatcher("pages/mycgpa.jsp").forward(request, response);

      } catch (Exception e) {
        try {
          Check.check(e.toString());
        } catch (Exception ex) {
          ex.printStackTrace();
        }
      }
    } else{
      request.getRequestDispatcher("pages/login.jsp").forward(request,response);
    }
  }

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

  }
}
