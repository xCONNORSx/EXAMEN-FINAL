/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package facade;

import negocio.Persona;

/**
 *
 * @author CONNORS
 */
public class SIAExtension {

    public SIAExtension() {
        
    }
    
    public boolean validarUsuario(String nombre, String clave){
    
        return false;
    }
    
    public String insertarEstudiante(long codigo, String nombre, String email, String contraseña){
    
        return Persona.insertarEstudiante()
    }

}
