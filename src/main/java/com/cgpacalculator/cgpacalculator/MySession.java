package com.cgpacalculator.cgpacalculator;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

public class MySession implements Sessions{
   public static void createSession(HttpServletRequest request, UserAttr user){
    HttpSession session = request.getSession();
    session.setAttribute("username",user.getRegNo());
  }
  public static String retrieveSession(HttpServletRequest request){
    HttpSession session = request.getSession();
    return (String)session.getAttribute("username");
  }
  public static void destroySession(HttpServletRequest request){
     HttpSession session = request.getSession();
     session.invalidate();
  }
}
