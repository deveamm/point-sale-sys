
package config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Deveamm
 */
public class Conexion {
    
    Connection conexion = null;

    String base = "almacen";
    String url = "jdbc:mysql://localhost:3306/" + base;
    String user = "root";
    String password = "password";

    public Connection getConexion() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conexion = DriverManager.getConnection(url, user, password);
            return conexion;
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println(e.toString());
            return null;
        }
    }
}
