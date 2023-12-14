/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package gui;
import database.*;
import java.sql.*;
import javax.swing.*;

/**
 *
 * @author azzan
 */
public class Operations {
    public static boolean isLogin(String username,String password,JFrame frame){
        try{
             ResultSet rs = database.dbclass.st.executeQuery("Select user_id,name from user where username = '"+username+"' and password = '"+password+"' ");
            while(rs.next()){
                LoginSession.UID = rs.getInt("user_id");
                LoginSession.Name_user = rs.getString("name");
                return true;
            }
        }catch(Exception ex){
            JOptionPane.showMessageDialog(null, ex);
        }
        return false;
    }      
}

