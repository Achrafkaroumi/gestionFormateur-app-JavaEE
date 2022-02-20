/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author pc expert
 */
public class cnx {     
         public static Connection getConnexion(){   //Connection
        Connection conn=null;
        try {
            Class.forName("oracle.jdbc.OracleDriver");
             conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "achraf", "ntic");
            return  conn;
        } catch(Exception e) {e.printStackTrace();}
        
        return null;
        
    }
    
    
    
    public static ResultSet executeSelect(String req){      //ExecuteQuerry
         ResultSet rs=null;
        try {
                      
            Statement st=getConnexion().createStatement();
            rs=st.executeQuery(req);
            
            return rs;
        } catch(Exception e) {e.printStackTrace();}
        return null;
    }
    
    
    
    public static int executeLMD (String req) {        //ExecuteUpdate
        int rs=0;
        try{
            Statement st=getConnexion().createStatement();
            rs=st.executeUpdate(req);
            
        } catch(Exception e) {e.printStackTrace();}
        return rs;
        
    }
    
  }

