package com.cgpacalculator.cgpacalculator;

import java.io.File;
import java.io.FileOutputStream;

public class Check {
  public static void check(String msg) throws Exception{
    File f = new File("D:\\Java Web Development\\src\\main\\java\\com\\cgpacalculator\\cgpacalculator\\Check");
    FileOutputStream fout = new FileOutputStream(f,true);
    byte[] b = msg.getBytes();
    fout.write(b);
  }
}