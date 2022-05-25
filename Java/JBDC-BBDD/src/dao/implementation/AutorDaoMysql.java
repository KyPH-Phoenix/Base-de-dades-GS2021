package dao.implementation;

import dao.AutorDao;
import domain.Autor;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AutorDaoMysql implements AutorDao {
    private Connection con;
    private Autor autor = null;

    public AutorDaoMysql(Connection con) {
        this.con = con;
    }

    @Override
    public Autor findById(int id) {
        String query = "SELECT * FROM autor WHERE autorID = ?";

        try {
            // Preparar query
            PreparedStatement getAutoStmt = con.prepareStatement(query);

            //Sustituir variable
            getAutoStmt.setInt(1, id);

            // Ejecutar query
            ResultSet result = getAutoStmt.executeQuery();

            if (result.next()) {
                String nombreAutor = result.getString("nombre");
                int autorID = result.getInt("autorID");

                autor = new Autor(autorID, nombreAutor);
            }

        } catch (SQLException e) {
            System.out.println(e);
        }

        return autor;
    }
}
