/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package tpuniversityoracle;

import java.sql.*;

/**
 *
 * @author gob
 */
public class Connexion {

    
    static Connection Connect(String user, String pass){
        Connection con=null;
        try {  
            Class.forName("oracle.jdbc.driver.OracleDriver");  
            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", user, pass);  
            System.out.println("connected.."+con);  
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }  
        return con;
    }

    
    
}
