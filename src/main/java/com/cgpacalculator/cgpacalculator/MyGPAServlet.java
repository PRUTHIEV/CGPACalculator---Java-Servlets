package com.cgpacalculator.cgpacalculator;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.LinkedHashMap;

@WebServlet(name = "MyGPAServlet", value = "/my-gpa")
public class MyGPAServlet extends HttpServlet {
  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
    if(MyCookies.checkCookie(request)) {
      try {
        Class.forName("com.mysql.jdbc.Driver");
        JDBCConnection.dataBaseConnect();
        LinkedHashMap<String, Double> gpas = JDBCConnection.getGPAs(MySession.retrieveSession(request));
        request.setAttribute("attr", new MyGPA("body-home", "myGPAs.css", "LogOut", gpas));
        request.getRequestDispatcher("pages/mygpa.jsp").forward(request, response);

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
}
