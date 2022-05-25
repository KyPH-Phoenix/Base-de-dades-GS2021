package dao;

import domain.Autor;

import java.sql.Connection;

public interface AutorDao {
    Autor findById(int id);
}
