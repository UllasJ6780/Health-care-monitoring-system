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
public class data {
    public static Statement st = null;

    public static int login(String id, String psw, String type) {
        int flag=0;
        try{
            st=DB.control();
            if(type.equals("Admin")){
            ResultSet rs = st.executeQuery("select * from login where id="+id+" and password='"+psw+"' and type='"+type+"'");
            if(rs.next()){
                flag=1;
            }
           }
            else if(type.equals("Doctor")){
               String id1 = id+"";
               int psw1 = Integer.parseInt(psw);
                  ResultSet rs = st.executeQuery("select * from doctor where email='"+id1+"' and id="+psw1+"");
            if(rs.next()){
                flag=1;
             }
            }
            else if(type.equals("Patient")){
               String id1 = id+"";
               int psw1 = Integer.parseInt(psw);
                  ResultSet rs = st.executeQuery("select * from patient where email='"+id1+"' and id="+psw1+"");
                  
            if(rs.next()){
                flag=1;
            }
            }
            else if(type.equals("Employee")){
               String id1 = id+"";
               int psw1 = Integer.parseInt(psw);
                  ResultSet rs = st.executeQuery("select * from employee where email='"+id1+"' and id="+psw1+"");
            if(rs.next()){
                flag=1;
            }
            }
        }
        catch(Exception e){
            System.out.println(e);
        }
        finally{
            return flag;
        }
    }

    public static void doctor(String id1, String name, String spec,String exp, String dob, String adr, String cont, String email, String gender, String atime, String treat,String img,String sal) {
       try{
           st=DB.control();
           int id= Integer.parseInt(id1);
       
        st.executeUpdate("insert into doctor values("+id+",'"+name+"','"+spec+"','"+dob+"','"+adr+"','"+cont+"','"+email+"','"+gender+"','"+atime+"','"+treat+"','"+img+"','"+exp+"','"+sal+"')");
       }
       catch(Exception e){
           System.out.println(e);
       }
    }

    public static void patient(String id1, String name, String dob, String adr, String cont, String email, String gender, String deac, String cod, String pris, String cuc, String dur,String img[],String pres,String btype,String time,String cons){
        try{
        	String oldpre = "new";
            st=DB.control();
       int id= Integer.parseInt(id1);
       
            
               st.executeUpdate("insert into patient values("+id+",'"+name+"','"+dob+"','"+adr+"','"+cont+"','"+email+"','"+gender+"','"+deac+"','"+cod+"','"+pris+"','"+cuc+"','"+dur+"','"+img[0]+"','"+pres+"','"+btype+"','"+time+"','"+img[1]+"','"+oldpre+"','"+cons+"')");
       
        }
        catch(Exception e){
            System.out.println(e);
        }
    }

    public static void employee(String id1, String name, String dob, String adr, String cont, String email, String gender, String desg, String salary, String duty_hour,String img) {
        try{
            st=DB.control();
       int id= Integer.parseInt(id1);
        st.executeUpdate("insert into employee values("+id+",'"+name+"','"+dob+"','"+adr+"','"+cont+"','"+email+"','"+gender+"','"+desg+"','"+salary+"','"+duty_hour+"','"+img+"')");
       
        }
        catch(Exception e){
            System.out.println(e);
        }
    }

    public static void patient_update(int id,String name, String dob, String adr, String cont, String email, String gender, String deac, String cod, String pris, String cuc, String dur,String pres,String oldp) {
        try{
            st=DB.control();
            st.executeUpdate("update patient set name='"+name+"', dob='"+dob+"', address='"+adr+"',contact='"+cont+"',email='"+email+"',gender='"+gender+"',disease='"+deac+"',consulted_doctor='"+cod+"',priscribed_medicine='"+pris+"',current_condition='"+cuc+"',duration='"+dur+"',prescription='"+pres+"',oldpre='"+pres+"' where id= "+id+" ");
        }
        catch(Exception e){
            System.out.println(e);
        }
    }

    public static void doc_profile(int id,String time) {
        try{
            st=DB.control();
            st.executeUpdate("update doctor set available_time='"+time+"' where id= "+id+" ");
        }
        catch(Exception e){
            System.out.println(e);
        }
    }

    public static int del_employee(int id,String type) {
        int flag = 0;
        try{
            st=DB.control();
            flag =st.executeUpdate("delete from "+type+" where id="+id+"");
            System.out.println(flag);
            
        }
        catch(Exception e){
            System.out.println(e);
        }
        finally{
            return flag;
        }
    }

    public static void prof_patient(int id, int id3, String req) {
        try{
            st = DB.control();
            st.executeUpdate("insert into patient_req values("+id3+","+id+",'"+req+"')");
            st.executeUpdate("insert into patient_req values("+id+","+id3+",'"+req+"')");
        }
        catch(Exception e){
            System.out.println(e);
        }
    }
    
    public static ResultSet getdocutor(){
    	ResultSet res = null;
    	try{
    		 st = DB.control();
    		 res = st.executeQuery("select * from doctor");
    	}
    	catch(Exception e){
    		
    	}
    	return res;
    }
    public static ResultSet getdocutor1(){
    	ResultSet res = null;
    	try{
    		 st = DB.control();
    		 res = st.executeQuery("select * from patient");
    	}
    	catch(Exception e){
    		
    	}
    	return res;
    }
    public static ResultSet getdocutor2(){
    	ResultSet res = null;
    	try{
    		 st = DB.control();
    		 res = st.executeQuery("select * from employee");
    	}
    	catch(Exception e){
    		
    	}
    	return res;
    }
    
    public static ResultSet getPatient(String pid){
    	
    	ResultSet res = null;
    	try{
    		 st = DB.control();
    		 res = st.executeQuery("select * from patient where id='"+pid+"'");
    	}
    	catch(Exception e){
    		e.printStackTrace();
    	}
    	return res;
    	
    }
  public static ResultSet getPatient1(){
    	
    	ResultSet res = null;
    	try{
    		 st = DB.control();
    		 res = st.executeQuery("select * from patient");
    	}
    	catch(Exception e){
    		
    	}
    	return res;
    	
    }
}
