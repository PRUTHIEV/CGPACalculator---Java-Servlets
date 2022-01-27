package com.cgpacalculator.cgpacalculator;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;


@WebServlet(name = "ResetPasswordServlet", value = "/reset")
public class ResetPasswordServlet extends HttpServlet {
  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
    request.getRequestDispatcher("pages/reset.jsp").forward(request,response);
  }

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String password = request.getParameter("password");
    String userEmail = ForgetPasswordServlet.email;
    try {
      Class.forName("com.mysql.jdbc.Driver");
      JDBCConnection.dataBaseConnect();
      JDBCConnection.updatePassword(password,userEmail);
      Check.check("Password Updated");
    }catch(Exception e){
      try {
        Check.check(e.toString());
      } catch (Exception ex) {
        ex.printStackTrace();
      }
    }
    request.getRequestDispatcher("pages/login.jsp").forward(request,response);
  }
}
