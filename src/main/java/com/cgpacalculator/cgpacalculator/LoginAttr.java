package com.cgpacalculator.cgpacalculator;

public class LoginAttr {
  private String success;
  private String failure;

  public LoginAttr( String failure) {
    this.failure = failure;
  }
  public String getSuccess() { return success;}
  public String getFailure() {
    return failure;
  }
}
