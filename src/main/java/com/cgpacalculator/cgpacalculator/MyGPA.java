package com.cgpacalculator.cgpacalculator;

import java.util.HashMap;
import java.util.LinkedHashMap;

public class MyGPA extends HomeAttr{
  LinkedHashMap<String,Double> gpas = null;
  public MyGPA(String homePage,String fileName,String auth,LinkedHashMap<String,Double>gpas){
    super(homePage,fileName,auth);
    this.gpas = gpas;
  }

  public HashMap<String, Double> getGpas() {
    return gpas;
  }
}
