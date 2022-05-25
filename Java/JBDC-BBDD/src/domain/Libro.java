package domain;

public class Libro {
    private int LibroID;
    private String titulo;
    private int paginas;
    private String editorial;
    private Autor autor;

    public int getLibroID() {
        return LibroID;
    }

    public String getTitulo() {
        return titulo;
    }

    public int getPaginas() {
        return paginas;
    }

    public String getEditorial() {
        return editorial;
    }

    public Autor getAutor() {
        return autor;
    }

    public Libro(int libroID, String titulo, int paginas, String editorial, Autor autor) {
        LibroID = libroID;
        this.titulo = titulo;
        this.paginas = paginas;
        this.editorial = editorial;
        this.autor = autor;
    }

    @Override
    public String toString() {
        return "domain.Libro{" +
                "LibroID=" + LibroID +
                ", titulo='" + titulo + '\'' +
                ", paginas=" + paginas +
                ", editorial='" + editorial + '\'' +
                ", autor=" + autor +
                '}';
    }
}
