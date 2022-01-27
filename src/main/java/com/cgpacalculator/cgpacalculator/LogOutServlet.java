package com.cgpacalculator.cgpacalculator;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "LogOutServlet", value = "/logout")
public class LogOutServlet extends HttpServlet {
  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    MySession.destroySession(request);
    MyCookies.removeCookie(response);
    request.setAttribute("attr",new HomeAttr("body-home","HomeStyle.css","LogIn"));
    request.getRequestDispatcher("pages/home.jsp").forward(request,response);
  }

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

  }
}
