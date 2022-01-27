package com.cgpacalculator.cgpacalculator;

import java.util.HashMap;
import java.util.LinkedHashMap;

public class MyCGPA extends HomeAttr{
  LinkedHashMap<String,Double> cgpas = null;
  public MyCGPA(String homePage,String fileName,String auth,LinkedHashMap<String,Double>cgpas){
    super(homePage,fileName,auth);
    this.cgpas = cgpas;
  }

  public HashMap<String, Double> getCGPAs() {
    return cgpas;
  }
}
