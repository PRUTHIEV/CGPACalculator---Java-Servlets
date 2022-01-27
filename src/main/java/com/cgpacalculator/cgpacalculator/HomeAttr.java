package com.cgpacalculator.cgpacalculator;

public class HomeAttr {
  protected String homePage;
  protected String styleFileName;
  protected String auth;
  protected String welcomeUser;
  protected String logOutMessage;
  public HomeAttr(String homePage,String styleFileName,String auth,String welcomeUser,String logOutMessage){
    this.homePage = homePage;
    this.styleFileName = styleFileName;
    this.auth = auth;
    this.welcomeUser = welcomeUser;
    this.logOutMessage = logOutMessage;
  }
  public HomeAttr(String homePage, String styleFileName, String auth) {
    this.homePage = homePage;
    this.styleFileName = styleFileName;
    this.auth = auth;
    this.welcomeUser = null;
    this.logOutMessage = null;
  }
  public HomeAttr(String homePage, String styleFileName, String auth,String welcomeMessage) {
    this.homePage = homePage;
    this.styleFileName = styleFileName;
    this.auth = auth;
    this.welcomeUser = welcomeMessage;
    this.logOutMessage = null;
  }

  public String getHomePage() {
    return homePage;
  }

  public String getStyleFileName() {
    return styleFileName;
  }

  public String getAuth() {
    return auth;
  }

  public String getWelcomeUser(){
    return welcomeUser;
  }

  public String getLogOutMessage(){
    return logOutMessage;
  }
}
