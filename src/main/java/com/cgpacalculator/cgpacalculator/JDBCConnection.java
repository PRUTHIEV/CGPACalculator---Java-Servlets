package com.cgpacalculator.cgpacalculator;

import java.sql.*;
import java.util.LinkedHashMap;

public class JDBCConnection {
  private static Connection connection;
  private static PreparedStatement preparedStatement;
  public static void dataBaseConnect() throws Exception {
      String dbConnectionString = "jdbc:mysql://localhost:3306/CGPACalculator?autoReconnect=true&useSSL=false";
      String username = "root";
      String password = "Pruthiev";
      connection = DriverManager.getConnection(dbConnectionString, username, password);
      Check.check("Successfully connected");
  }
  public static void  registerUser(UserAttr user) throws Exception {
    String query = "INSERT INTO Users(Student_Reg_No,Student_Name,Student_Email,Student_Password) VALUES(?, ?, ?, ?);";
    preparedStatement = connection.prepareStatement(query);
    preparedStatement.setString(1,user.getRegNo());
    preparedStatement.setString(2,user.getName());
    preparedStatement.setString(3,user.getEmail());
    preparedStatement.setString(4,user.getPassword());
    preparedStatement.executeUpdate();
  }
  public static String authenticateUser(UserAttr user) throws Exception{
    String query = "SELECT Student_Reg_No FROM Users WHERE Student_Reg_No = ? AND Student_Password = ?;";
    Check.check(user.toString());
    preparedStatement = connection.prepareStatement(query);
    preparedStatement.setString(1,user.getRegNo());
    preparedStatement.setString(2,user.getPassword());
    ResultSet rs = preparedStatement.executeQuery();
    rs.next();
    String name = rs.getString("Student_Reg_No");
    return name;
  }
  public static boolean checkUser(String email) throws SQLException {
    String query = "SELECT * FROM Users WHERE Student_Email = ?";
    preparedStatement = connection.prepareStatement(query);
    preparedStatement.setString(1,email);
    ResultSet rs = preparedStatement.executeQuery();
    return rs.next();
  }
  public static void updatePassword(String password,String email)throws Exception{
    String query = "UPDATE Users SET Student_Password = ? WHERE Student_Email = ?;";
    preparedStatement = connection.prepareStatement(query);
    preparedStatement.setString(1,password);
    preparedStatement.setString(2,email);
    preparedStatement.executeUpdate();
  }
  public static void saveGPAs(Grades grades) throws SQLException{
    String query = "INSERT INTO GPA(Student_Reg_No,Name,GPA) VALUES(?,?,?);";
    preparedStatement  = connection.prepareStatement(query);
    preparedStatement.setString(1,grades.getRegNo());
    preparedStatement.setString(2,grades.getName());
    preparedStatement.setDouble(3,grades.getGrade());
    preparedStatement.executeUpdate();
  }
  public static void saveCGPAs(Grades grades) throws SQLException{
    String query = "INSERT INTO CGPA(Student_Reg_No,Name, CGPA) VALUES(?,?,?);";
    preparedStatement  = connection.prepareStatement(query);
    preparedStatement.setString(1,grades.getRegNo());
    preparedStatement.setString(2,grades.getName());
    preparedStatement.setDouble(3,grades.getGrade());
    preparedStatement.executeUpdate();
  }

  public static LinkedHashMap<String,Double> getGPAs(String user) throws Exception{
    LinkedHashMap<String,Double>gpas = new LinkedHashMap<>();
    String query = "SELECT Name,GPA FROM GPA WHERE Student_Reg_No = ?;";
    preparedStatement = connection.prepareStatement(query);
    preparedStatement.setString(1,user);
    ResultSet rs = preparedStatement.executeQuery();
    while(rs.next()){
      gpas.put(rs.getString("Name"),rs.getDouble("GPA"));
    }
    return gpas;
  }
  public static LinkedHashMap<String,Double> getCGPAs(String user) throws Exception{
    LinkedHashMap<String,Double>cgpas = new LinkedHashMap<>();
    String query = "SELECT Name,CGPA FROM CGPA WHERE Student_Reg_No = ?;";
    preparedStatement = connection.prepareStatement(query);
    preparedStatement.setString(1,user);
    ResultSet rs = preparedStatement.executeQuery();
    while(rs.next()){
      cgpas.put(rs.getString("Name"),rs.getDouble("CGPA"));
    }
    return cgpas;
  }
}
