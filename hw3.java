/**
 * @file JDBC.java
 * @author Craig Hulsebus
 * @date 30 October 2018
 * @assignment 3
 */

import java.sql.*;


public class hw3

{

  public void displayData(String urlStr,String username,String password)
  {

		  try
		  {

			  Class.forName ("com.mysql.jdbc.Driver").newInstance ();
			  
			  Connection conn = DriverManager.getConnection(urlStr,username,password);
			  System.out.println ("Connected to the MySQL database");

			  
			  /* Problem #1 - Display all the sculptures (id_no, year, title, description, artist_name, weight, height) created from stone (material).  */
			  Statement stmt1 = conn.createStatement();
			  ResultSet rs1=null;
			  rs1=stmt1.executeQuery("select s.id_no, a.year, a.title, a.description, a.artist_name, s.weight, s.height from Sculpture s, Art_object a where s.id_no = a.id_no and s.material = 'Stone'");
			  while (rs1.next())
			  {
				  System.out.println("id_no: "+rs1.getString(1));
				  System.out.println("year: "+rs1.getString(2));
				  System.out.println("title: "+rs1.getString(3));
				  System.out.println("description: "+rs1.getString(4));
				  System.out.println("artist_name: "+rs1.getString(5));
				  System.out.println("weight: "+rs1.getString(6));
				  System.out.println("height: "+rs1.getString(7));
			  }
			  stmt1.close();

			  
			  /* Problem #2 - Query “artist_no_of_sculpture” view (created in homework2) to display all the tuples in that view.  */
			  Statement stmt2 = conn.createStatement();
			  ResultSet rs2=null;
			  rs2=stmt2.executeQuery("select * from artist_no_of_sculpture");
			  while (rs2.next())
			  {
				  System.out.println("name: "+rs2.getString(1));
				  System.out.println("no_of_sculptures: "+rs2.getString(2));
			  }
			  stmt2.close();			  
			  
			  
			  /* Problem #3 - Call “No_of_painting_exhibited” function. Given exhibition name “E1”, display the number of paintings exhibited. */
			  CallableStatement cstmt = conn.prepareCall("{?= call No_of_painting_exhibited('E1')}"); //call a function
			  cstmt.registerOutParameter(1,Types.NUMERIC);
			  cstmt.execute();
			  System.out.println ("Number of paintings exhibited: "+ cstmt.getBigDecimal(1).toString());
			  cstmt.close();
			  conn.close();
			  System.out.println("Disconnected");

			
		  }
		  catch (Exception e)
		  {
			  e.printStackTrace();
		  }

  }

  public static void main (String args [])
  {
		String url= "jdbc:mysql://athena.ecs.csus.edu/cs174111";
		String username= "cs174111";
		String password = "xssgpuhx";

		hw3 example = new hw3();
		example.displayData(url,username,password);

  }

}
