/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cm.prj.db;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
public class DbUtil {
private static Connection connection = null;
public static Connection getConnection() {
if (connection != null)
return connection;
else {
try {
Properties prop = new Properties();
InputStream inputStream = DbUtil.class.getClassLoader().getResourceAsStream("/db.properties");
prop.load(inputStream);
String driver = prop.getProperty("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/time_table_db?zeroDateTimeBehavior=convertToNull";
String user = prop.getProperty("user");
String password = prop.getProperty("password");
Class.forName("com.mysql.jdbc.Driver");
connection = DriverManager.getConnection(url, user, password);
} catch (ClassNotFoundException e) {
e.printStackTrace();
} catch (SQLException e) {e.printStackTrace();
} catch (FileNotFoundException e) {
e.printStackTrace();
} catch (IOException e) {
e.printStackTrace();
}
return connection;
}
}
    private Statement statement;
    private ResultSet result;
    private ResultSetMetaData metadata;

public boolean Query(String sql) throws SQLException
{
 
       
    try {
        statement = connection.createStatement();
    } catch (SQLException ex) {
        Logger.getLogger(DbUtil.class.getName()).log(Level.SEVERE, null, ex);
    }
        return statement.execute(sql);
   
}
public ArrayList getResultSet(String sql) throws SQLException
{
        connection=getConnection();
             ArrayList<Object> resultSet = new ArrayList<Object>();
        try {
            if (connection != null) {
                statement = connection.createStatement();
                result = statement.executeQuery(sql);
                System.out.println(connection.toString());
                while (result.next()) {

                         resultSet.add(result.getObject(1));
                        

                    }
                }
            }
         
catch (SQLException pp) {
            System.out.println("Errror "+pp.getCause());
            resultSet.add("");
        }

        if (resultSet.isEmpty())
        {
            resultSet.add("");
            System.out.println("Empty List");
        }
            return resultSet;
}


}