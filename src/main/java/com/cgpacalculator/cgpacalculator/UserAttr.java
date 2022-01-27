package com.cgpacalculator.cgpacalculator;

public class UserAttr {
  private String name;
  private String email;
  private String regNo;
  private String password;

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public String getRegNo() {
    return regNo;
  }

  public void setRegNo(String regNo) {
    this.regNo = regNo;
  }

  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }

  @Override
  public String toString() {
    return "UserAttr{" +
            "name='" + name + '\'' +
            ", email='" + email + '\'' +
            ", regNo='" + regNo + '\'' +
            ", password='" + password + '\'' +
            '}';
  }
}
