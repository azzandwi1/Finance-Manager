/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package database;
import java.sql.*;
import javax.swing.*;

public class dbclass {
    public static Connection con;
    public static Statement st;
    
    static{
        try{
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_finmanager","root","");
            st = con.createStatement();
        }catch (Exception ex){
            JOptionPane.showMessageDialog(null ,ex);
        }
    }
}
