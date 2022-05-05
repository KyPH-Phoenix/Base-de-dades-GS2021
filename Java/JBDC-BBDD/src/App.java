import java.sql.*;

public class App {
    public static void main(String[] args) {
        try {
            String url = "jdbc:mysql://localhost:3306/biblioteca";
            String user = "jdbc";
            String password = "123";

            try (Connection con = DriverManager.getConnection(url, user, password)) {
                String getAuthorsQuery = "SELECT * FROM autor";
                PreparedStatement getAuthorsStmnt = con.prepareStatement(getAuthorsQuery);

                ResultSet result = getAuthorsStmnt.executeQuery();

                while (result.next()) {
                    System.out.println(result.getString("Nombre"));
                }
            }
        } catch (SQLException e) {
            System.err.println(e);
        }
    }
}
