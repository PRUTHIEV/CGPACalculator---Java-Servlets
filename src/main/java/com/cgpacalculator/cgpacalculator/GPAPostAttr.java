package com.cgpacalculator.cgpacalculator;

import java.util.ArrayList;

public class GPAPostAttr extends GPAGetAttr{

  private ArrayList<Integer>credits = null;
  private ArrayList<Integer>grades = null;
  private String error = null;
  private int  totalPoints = 0;
  private int totalCredits = 0;
  public GPAPostAttr(String homePage, String styleFileName, String auth, int numberOfSubjects,
                     boolean setCGPA, double gpa){
    super(homePage,styleFileName,auth,numberOfSubjects,setCGPA,gpa);
  }
  public GPAPostAttr(String homePage, String styleFileName,
                     String auth, int numberOfSubjects,
                     boolean setCGPA, double gpa,
                     ArrayList<Integer>credits,ArrayList<Integer>grades,String error) {
    super(homePage, styleFileName, auth, numberOfSubjects, setCGPA, gpa);
    this.credits = credits;
    this.grades = grades;
    this.error = error;
  }
  public void initializeCreditArray(){ this.credits = new ArrayList<>();}

  public void setCreditsItems(int value) {
    this.credits.add(value);
  }

  public void initializeGradeArray(){this.grades = new ArrayList<>();}

  private int getPoints(String grade){
    switch(grade){
      case "O" :
        return 10;
      case "A+":
        return 9;
      case "A":
        return 8;
      case "B+":
        return 7;
      case "B":
        return 6;
      default:
        return -1;
    }
  }
  public void setGradeItems(String value) {this.grades.add(getPoints(value));}

  public ArrayList<Integer> getCredits() { return credits; }

  public ArrayList<Integer> getGrades() { return grades; }

  public String getError(){ return error; }

  public void getTotalPoints(){
    for(int i = 0 ; i < numberOfSubjects ; i++){
      totalPoints += credits.get(i) * grades.get(i);
    }
  }

  public void getTotalCredits(){
    for(int i = 0 ; i < numberOfSubjects ; i++){
      totalCredits += credits.get(i);
    }
  }

  public void setGPA(){
    this.setCGPA = true;
    gpa = (double)totalPoints / (double)totalCredits;
  }

  public void setError(String error) {
    this.error = error;
  }

  @Override
  public String toString() {
    return "GPAPostAttr{" +
            "homePage='" + homePage + '\'' +
            ", styleFileName='" + styleFileName + '\'' +
            ", auth='" + auth + '\'' +
            ", numberOfSubjects=" + numberOfSubjects +
            ", setCGPA=" + setCGPA +
            ", gpa=" + gpa +
            ", credits=" + credits +
            ", grades=" + grades +
            ", error='" + error + '\'' +
            '}';
  }
}
