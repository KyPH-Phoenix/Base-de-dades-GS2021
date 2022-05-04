import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class App {
    public static void main(String[] args) {
        try {
            String url = "jdbc:mysql://localhost:3306/biblioteca";
            String user = "jdbc";
            String password = "123";

            Connection con = DriverManager.getConnection(url, user, password);
        } catch (SQLException e) {
            System.err.println(e);
        }
    }
}
