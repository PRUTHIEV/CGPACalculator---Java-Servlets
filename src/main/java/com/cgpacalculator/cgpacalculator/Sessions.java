package com.cgpacalculator.cgpacalculator;
import jakarta.servlet.http.HttpServletRequest;

public interface Sessions {
  static void createSession(HttpServletRequest request,UserAttr user){}
  static String retrieveSession(HttpServletRequest request){return null;}
  static void destroySession(HttpServletRequest request){}
}
