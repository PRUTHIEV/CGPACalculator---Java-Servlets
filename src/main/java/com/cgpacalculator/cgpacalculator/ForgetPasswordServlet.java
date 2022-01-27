package com.cgpacalculator.cgpacalculator;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;


@WebServlet(name = "ForgetPasswordServlet", value = "/forgotpass")
public class ForgetPasswordServlet extends HttpServlet {
  public static String email;
  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
    request.getRequestDispatcher("pages/forgetPassword.jsp").forward(request,response);
  }

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    ForgetPasswordServlet.email = request.getParameter("email");
    try {
      Class.forName("com.mysql.jdbc.Driver");
      JDBCConnection.dataBaseConnect();
      if(JDBCConnection.checkUser(email)){
        new Thread(() -> {
          try {
            MailApp.send(email);
          } catch (Exception e) {
            e.printStackTrace();
          }
        });
        response.setContentType("text/plain");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write("1");
      }
    }catch (Exception e){
      try {
        Check.check(e.toString());
      } catch (Exception ex) {
        ex.printStackTrace();
        response.setContentType("text/plain");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write("0");
      }
    }

  }
}
