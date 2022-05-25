package domain;

public class Autor {
    private int autorID;
    private String nombre;

    public int getAutorID() {
        return autorID;
    }

    public String getNombre() {
        return nombre;
    }

    public Autor(int autorID, String nombre) {
        this.autorID = autorID;
        this.nombre = nombre;
    }

    @Override
    public String toString() {
        return "domain.Autor{" +
                "autorID=" + autorID +
                ", nombre='" + nombre + '\'' +
                '}';
    }
}
