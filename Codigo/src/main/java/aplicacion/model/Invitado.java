package aplicacion.model;

public class Invitado {
    private int id;
    private String nombre;

    public Invitado(int id, String nombre) {
        this.id = id;
        this.nombre = nombre;
    }

    public int getId() { return id; }
    public String getNombre() { return nombre; }
}
