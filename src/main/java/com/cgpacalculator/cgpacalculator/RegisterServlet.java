package com.cgpacalculator.cgpacalculator;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;


@WebServlet(name = "RegisterServlet", value = "/register")
public class RegisterServlet extends HttpServlet {
  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    UserAttr user = new UserAttr();
    user.setName(request.getParameter("name"));
    user.setEmail(request.getParameter("email"));
    user.setRegNo(request.getParameter("username"));
    user.setPassword(request.getParameter("password"));
    try {
      Class.forName("com.mysql.jdbc.Driver");
      JDBCConnection.dataBaseConnect();
      JDBCConnection.registerUser(user);
      MySession.createSession(request,user);
      MyCookies.createCookie(response,user);
      request.setAttribute("attr",new HomeAttr("body-home","HomeStyle.css","LogOut",user.getName()));
      request.getRequestDispatcher("pages/home.jsp").forward(request,response);
    } catch (Exception e) {
      request.setAttribute("attr",new LoginAttr("User Already Exist Try Again"));
      request.getRequestDispatcher("pages/login.jsp").forward(request,response);
    }
  }
}
