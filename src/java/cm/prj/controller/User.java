/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cm.prj.controller;

/**
 *
 * @author USER
 */
import static cm.prj.db.DbUtil.getConnection;
import com.mysql.jdbc.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
public class User {
private int userid;
public static int status;
private String firstName;
public  static String Username;
//public  String status;
private String lastName;
private Date dob;
private String email;
private ResultSet resultset;

public int getUserid() {
    
    return userid;
}


public void setUserid(int userid) {
this.userid = userid;
}

public String getFirstName() {
return firstName;
}

public void setFirstName(String firstName) {
this.firstName = firstName;
}

public String getLastName() {
return lastName;
}

public void setLastName(String lastName) {
this.lastName = lastName;
}

public Date getDob() {
return dob;
}

public void setDob(Date dob) {
this.dob = dob;
}

public static String getUsername() {
return Username;
}
public static void setUsername(String user) {
Username = user;
}

public String getEmail() {
return email;
}

public void setEmail(String email) {
this.email = email;
}
@Override

public String toString() {
return "User [userid=" + userid + ", firstName=" + firstName
+ ", lastName=" + lastName + ", dob=" + dob + ", email="
+ email + "]";
}

    public boolean Verify(String Username, String password) throws SQLException {

        
        //  throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        Connection connection = (Connection) getConnection();
        Statement statement = connection.createStatement();
       resultset= statement.executeQuery("select * from users where name= '"+Username+"' and password='"+password+"'");
       if(resultset.next()) {
       System.out.println(resultset.getString("status"));
       this.setUsername(Username);
       this.setUserid(userid);
       this.setStatus(resultset.getInt("status"));
       return true;
       }
       return false;
    }

    private static void setStatus(int aInt) {
       status=aInt;
    }
    public static int getStatus()
    {
    
    return status;
    }
}