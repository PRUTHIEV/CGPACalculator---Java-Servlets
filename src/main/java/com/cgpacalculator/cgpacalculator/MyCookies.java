package com.cgpacalculator.cgpacalculator;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class MyCookies implements Cookies{
  private static Cookie username;
  public static void createCookie(HttpServletResponse response, UserAttr user){
    username = new Cookie("username",user.getRegNo());
    username.setMaxAge(-1);
    response.addCookie(username);
  }
  public static Boolean checkCookie(HttpServletRequest request){
    Cookie [] cookies = request.getCookies();
    for (Cookie cook : cookies){
      try {
        Check.check(cook.getName() + " " + cook.getValue());
      }catch(Exception exp){
        exp.printStackTrace();
      }
    }
    if(cookies != null) {
      for (Cookie cook : cookies) {
        if (cook.getName().equals("username")) {
          return true;
        }
      }
    }
    return false;
  }
  public static void removeCookie(HttpServletResponse response){
    username = new Cookie("username","");
    username.setMaxAge(0);
    response.addCookie(username);
  }
}
