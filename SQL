import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class db{
    public static void main(String[] args) {
        // Database parameters
        String host = "127.0.0.1";
        int port = 3306;
        String user = "root";
        String password = "user password";
        String dbName = "osticket_sql";
        String charset = "utf8";

        // JDBC connection string
        String connectionString = "jdbc:mysql://" + host + ":" +
        port + "/" + dbName + "?charset=" + charset;

        // Establishing the database connection
        try {
            Connection connection = DriverManager.getConnection(
            connectionString, user, password);
            // Use the connection object for executing SQL queri
            es or other database operations
            System.out.println("Connected to the database!");

            // Close the connection when done
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
