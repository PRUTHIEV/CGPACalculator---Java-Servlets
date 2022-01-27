package com.cgpacalculator.cgpacalculator;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public interface Cookies {
  static void createCookie(HttpServletResponse response, UserAttr user){}
  static Boolean checkCookie(HttpServletRequest request)throws Exception{return null;}
  static void removeCookie(HttpServletResponse response){}
}
