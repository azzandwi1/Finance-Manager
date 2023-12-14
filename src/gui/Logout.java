/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package gui;

import javax.swing.JFrame;

/**
 *
 * @author azzan
 */
public class Logout {
    public static void logout(JFrame context,Login loginscreen ){
        LoginSession.isLoggedIn = false;
        context.setVisible(false);
        loginscreen.setVisible(true);
    }
}
