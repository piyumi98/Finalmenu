package DB;

import java.sql.Connection;
import java.sql.DriverManager;



public class DbCon {

	public Connection getDbCon() {
		 Connection con=null;
	        
	        try{
	            Class.forName("com.mysql.cj.jdbc.Driver");
	            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hotelgod?useSSL=false","root","root");
	          
	        }
	        catch(Exception e){
	            System.out.println(e);
	        }
	        
	        return con;
}
	}
