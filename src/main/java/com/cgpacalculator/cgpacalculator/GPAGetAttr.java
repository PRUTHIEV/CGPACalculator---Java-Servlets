package com.cgpacalculator.cgpacalculator;

public class GPAGetAttr extends HomeAttr{
  protected int numberOfSubjects;
  protected boolean setCGPA;
  protected double gpa;

  public GPAGetAttr(String homePage, String styleFileName, String auth, int numberOfSubjects, boolean setCGPA, double gpa) {
    super(homePage,styleFileName,auth);
    this.numberOfSubjects = numberOfSubjects;
    this.setCGPA = setCGPA;
    this.gpa = gpa;
  }

  public void setNumberOfSubjects(int numberOfSubjects) {
    this.numberOfSubjects = numberOfSubjects;
  }

  public int getNumberOfSubjects() {
    return numberOfSubjects;
  }

  public boolean getSetCGPA() {
    return setCGPA;
  }

  public double getGpa() {
    return gpa;
  }
}
