/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author user
 */
import java.sql.*;
public class DB {
    public static Statement st = null;
    public static Statement control(){
    try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3307/health","root","root");
    st = cn.createStatement();
    
}
 catch(Exception e){

}
    return st;
}   
    
    
}
