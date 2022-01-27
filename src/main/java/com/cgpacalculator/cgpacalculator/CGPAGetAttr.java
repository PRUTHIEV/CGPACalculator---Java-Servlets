package com.cgpacalculator.cgpacalculator;

public class CGPAGetAttr extends HomeAttr{
  protected int numberOfSemester;
  protected boolean setCGPA;
  protected double cgpa;

  public CGPAGetAttr(String homePage, String styleFileName, String auth,int numberOfSemester,Boolean setCGPA,double cgpa) {
    super(homePage, styleFileName, auth);
    this.numberOfSemester = numberOfSemester;
    this.setCGPA = setCGPA;
    this.cgpa = cgpa;
  }

  public int getNumberOfSemester() {
    return numberOfSemester;
  }

  public void setNumberOfSemester(int numberOfSemester) { this.numberOfSemester = numberOfSemester ;}

  public boolean getSetCGPA() {
    return setCGPA;
  }

  public double getCgpa() {
    return cgpa;
  }
}
