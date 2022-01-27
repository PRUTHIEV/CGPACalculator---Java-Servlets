package com.cgpacalculator.cgpacalculator;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class JDBCCheck {
  private static Connection connection;
  private static PreparedStatement preparedStatement;
  public static void JDBCConnect() throws SQLException {
    String host = "ec2-3-218-47-9.compute-1.amazonaws.com";
    String port = "5432";
    String dbConnectionString = "jdbc:postgresql://ec2-3-218-47-9.compute-1.amazonaws.com:5432/dfouknnh9lhnkt";
    String username = "vehbpqxuzcpwfy";
    String password = "f47214135d87694ed2f42e5c7ea0af15a705279a485ff9ab0b1649dd7acacd91";
    connection = DriverManager.getConnection(dbConnectionString, username, password);
    System.out.println("Connected");
  }
  public static void insertData() throws SQLException {
    String query = "INSERT INTO Users(Student_Name,Student_Email,Student_Reg_No,Student_Password) VALUES(?,?,?,?);";
    preparedStatement = connection.prepareStatement(query);
    preparedStatement.setString(1,"Balukn");
    preparedStatement.setString(2,"balukn@gmail.com");
    preparedStatement.setString(3,"2019506017");
    preparedStatement.setString(4,"Asp@2001");
    preparedStatement.executeUpdate();
  }
  public static void main(String[] args) throws SQLException {
    JDBCConnect();
  }
}
