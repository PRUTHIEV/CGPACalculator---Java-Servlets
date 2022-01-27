package com.cgpacalculator.cgpacalculator;

import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;
public class MailApp {
  public static void sendMail(String to, String sub, String msg, final String user,final String pass) {
    Properties props = new Properties();
    props.put("mail.smtp.auth", true);
    props.put("mail.smtp.starttls.enable", true);
    props.put("mail.smtp.host", "smtp.gmail.com");
    props.put("mail.smtp.port", "587");
    Session session = Session.getInstance(props,
            new javax.mail.Authenticator() {
              @Override
              protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(user, pass);
              }
            });
    try {
      MimeMessage message = new MimeMessage(session);
      message.setFrom(new InternetAddress(user));
      message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));
      message.setSubject(sub);
      message.setContent(msg,"text/html");
      Transport.send(message);
    }
    catch(Exception e) {
      e.printStackTrace();
    }
  }
  public static void send(String to) throws Exception {
    String sub = "CGPACalculator Reset Password";
    String text = "<p>Click <a href=\"http://localhost:8080/CGPACalculator-1.0-SNAPSHOT/reset\">here</a> to reset your password</p>";
    String username = "aspbrothers2001@gmail.com";
    String password = "Aspbrothers@20012004";
    sendMail(to,sub,text,username,password);
    Check.check("\nMail sent");
  }
}