package com.cgpacalculator.cgpacalculator;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;


@WebServlet(name = "HomeServlet", value = "/")
public class HomeServlet extends HttpServlet {
  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    if(MyCookies.checkCookie(request)){
      String username = MySession.retrieveSession(request);
      request.setAttribute("attr",new HomeAttr("body-home","HomeStyle.css","LogOut",username));
      request.getRequestDispatcher("pages/home.jsp").forward(request,response);
    }else {
      request.setAttribute("attr", new HomeAttr("body-home", "HomeStyle.css", "LogIn"));
      request.getRequestDispatcher("pages/home.jsp").forward(request, response);
    }
  }

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

  }
}
