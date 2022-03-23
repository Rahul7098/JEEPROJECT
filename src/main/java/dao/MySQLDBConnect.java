package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MySQLDBConnect 
{
  public static Connection getMySQLConnection()
  {
	Connection mysqlconnectionobj = null;  
	try 
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		mysqlconnectionobj = DriverManager.getConnection("jdbc:mysql://localhost/newdatabase","root","Rahul@123");
	   System.out.println("DATABASE CONNECTION WITH MYSQL SUCCESS.....");
		   
	}catch (ClassNotFoundException e) {e.printStackTrace();}
	 catch (SQLException e) { e.printStackTrace();}
	
	 return mysqlconnectionobj;
   }   
}
