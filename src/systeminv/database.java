/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package systeminv;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author home
 */
public class database {
  /*

 *
 * @author havehere
 */
    private String db_url = "jdbc:mysql://localhost/atmdb";
    private String user = "root";
    private String pass = "root";
    
    public Statement getconnect(){
         Connection con;
         Statement stmt = null;
        try {
            con = DriverManager.getConnection(db_url, user, pass);
            stmt = con.createStatement();
        } catch (SQLException ex) {
           System.out.println("error: " + ex.getMessage());
        }
        return stmt;
    }
}
  

