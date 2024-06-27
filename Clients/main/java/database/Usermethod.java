package database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.logging.Logger;


public class Usermethod {

	public static final Logger log = Logger.getLogger(Usermethod.class.getName());

	private static Connection connection;

	private static Statement statement;
	
	private static PreparedStatement pr;
	
	private static final String COUNT_CUSTOMER_SQL="SELECT COUNT(*) FROM customer";
	
	public boolean insertuser(String name, String phone, String email, String username, String password) {
	    boolean isSuccess = false;
	    try {
	        connection = Dbconnection.getDbConnection();
	        String sql = "INSERT INTO customer (name, phone, email, username, password) VALUES (?, ?, ?, ?, ?)";
	        PreparedStatement preparedStatement = connection.prepareStatement(sql);
	        preparedStatement.setString(1, name);
	        preparedStatement.setString(2, phone);
	        preparedStatement.setString(3, email);
	        preparedStatement.setString(4, username);
	        preparedStatement.setString(5, password);

	        int rs2 = preparedStatement.executeUpdate();
	        if (rs2 > 0) {
	            isSuccess = true;
	        }
	        preparedStatement.close();
	        connection.close();
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return isSuccess;
	}

	public boolean validate(String name,String pass){
		boolean status=false;
			
		try{
			Class.forName("com.mysql.jdbc.Driver");
			connection = Dbconnection.getDbConnection();
			pr = connection.prepareStatement("select * from customer where username =? and password = ? ");
			
			pr.setString(1,name);
			pr.setString(2,pass);
	
			ResultSet rs=pr.executeQuery();
			status = rs.next();
	
	
		}catch(Exception e){
			System.out.println(e);
		}
			return status;
	}
	public  static int printcount() {
		int count=0;
		try(Connection connection=Dbconnection.getDbConnection();
				
				PreparedStatement preparedStatement = connection.prepareStatement(COUNT_CUSTOMER_SQL)){
			ResultSet re = preparedStatement.executeQuery();
			if (re.next()) {
                count = re.getInt(1);
                preparedStatement.close();
    			connection.close();
            }
			
		}catch (Exception e) {
			
		}
		return count;
		
	}
	
	
//	public boolean adminValidate(String uname , String pass) {
//		
//		//boolean status;
//		
//		if(uname == "admin" && pass == "admin123") {
//			return true;
//		}
//		else {
//			return false;
//		}
//	}
	

}
