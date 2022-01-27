package com.cgpacalculator.cgpacalculator;

import java.util.ArrayList;

public class CGPAPostAttr extends CGPAGetAttr{
  private ArrayList<Integer> credits = null;
  private ArrayList<Double>gpa = null;
  private String error = null;
  private int totalCredits = 0;
  private double totalGPA = 0.0;
  public CGPAPostAttr(String homePage, String styleFileName,
                      String auth, int numberOfSubjects, boolean setCGPA, double cgpa){
    super(homePage,styleFileName,auth,numberOfSubjects,setCGPA,cgpa);
  }
  public CGPAPostAttr(String homePage, String styleFileName,
                      String auth, int numberOfSubjects,
                      boolean setCGPA, double cgpa,
                      ArrayList<Integer>credits,ArrayList<Double>gpa,String error) {
    super(homePage, styleFileName, auth, numberOfSubjects, setCGPA, cgpa);
    this.credits = credits;
    this.gpa = gpa;
    this.error = error;
  }

  public void setError(String error) {
    this.error = error;
  }

  public void initializeCreditsArray(){ this.credits = new ArrayList<>(); }

  public void setCreditItems(int value){ this.credits.add(value); }

  public void initializeGpaArray(){ this.gpa = new ArrayList<>(); }

  public void setGpaArray(double value) { this.gpa.add(value); }

  public void setTotalCredits(){
    for(int i = 0 ; i < numberOfSemester ; i++){
      totalCredits += credits.get(i);
    }
  }

  public void setTotalGPA(){
    for(int i = 0 ; i < numberOfSemester ; i++){
      totalGPA += gpa.get(i) * credits.get(i);
    }
  }

  public void setCgpa(){
    this.setCGPA = true;
    cgpa = (double) Math.round((totalGPA/totalCredits) * 100) / 100;
  }

  public ArrayList<Integer> getCredits() {
    return credits;
  }

  public ArrayList<Double> getGrades() {
    return gpa;
  }

  public String getError(){
    return error;
  }

  @Override
  public String toString() {
    return "GPAPostAttr{" +
            "homePage='" + homePage + '\'' +
            ", styleFileName='" + styleFileName + '\'' +
            ", auth='" + auth + '\'' +
            ", numberOfSubjects=" + numberOfSemester +
            ", setCGPA=" + setCGPA +
            ", gpa=" + cgpa +
            ", credits=" + credits +
            ", grades=" + gpa +
            ", error='" + error + '\'' +
            '}';
  }
}
