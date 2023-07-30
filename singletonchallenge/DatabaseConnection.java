/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package espol.singletonchallenge;

/**
 *
 * @author wayar
 */
public class DatabaseConnection {
    private String connectionString;

    public DatabaseConnection(String connectionString) {
        this.connectionString = connectionString;
        // Aquí podríamos establecer una conexión real a la base de datos
        // (simulado en el ejemplo con el mensaje de impresión).
    }

    public void executeQuery(String query) {
        // Simulación de ejecución de consulta en la base de datos.
        System.out.println("Ejecutando consulta en la base de datos: " + query);
    }
}