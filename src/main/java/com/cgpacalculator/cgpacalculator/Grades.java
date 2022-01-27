package com.cgpacalculator.cgpacalculator;

public class Grades {
  private String regNo;
  private String name;
  private double grade;

  public Grades(String regNo, String name, double grade) {
    this.regNo = regNo;
    this.name = name;
    this.grade = grade;
  }

  public String getRegNo() {
    return regNo;
  }

  public void setRegNo(String regNo) {
    this.regNo = regNo;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public double getGrade() {
    return grade;
  }

  public void setGrade(double gpa) {
    this.grade = gpa;
  }
}
