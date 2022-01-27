package com.cgpacalculator.cgpacalculator;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoginServlet", value = "/login")
public class LoginServlet extends HttpServlet {

  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    request.getRequestDispatcher("pages/login.jsp").forward(request,response);
  }

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    UserAttr user = new UserAttr();
    user.setRegNo(request.getParameter("username"));
    user.setPassword(request.getParameter("password"));
    try {
      Class.forName("com.mysql.jdbc.Driver");
      JDBCConnection.dataBaseConnect();
      JDBCConnection.authenticateUser(user);
      MySession.createSession(request,user);
      MyCookies.createCookie(response,user);
      String username =  MySession.retrieveSession(request);
      if(username == null)Check.check("not working");
      else Check.check("username");
      request.setAttribute("attr",new HomeAttr("body-home","HomeStyle.css","LogOut",username));
      request.getRequestDispatcher("pages/home.jsp").forward(request,response);
    } catch (Exception e) {
      try {
        Check.check(e.toString());
      } catch (Exception ex) {
        ex.printStackTrace();
      }
      request.setAttribute("attr",new LoginAttr("Incorrect Username/Password Try Again !!!"));
      request.getRequestDispatcher("pages/login.jsp").forward(request,response);

    }
  }
}
