package org.aguzman.webapp.servlet.seguimiento3;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/RecibeDatos")
public class RecibeDatos extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Obtener los parámetros de la solicitud
        String nombre = request.getParameter("textUsuario");
        String apellidos = request.getParameter("textApellidos");
        String password = request.getParameter("textPassword");

        // Crear un objeto Usuario y establecer sus atributos
        Usuario usuario = new Usuario();
        usuario.setNombre(nombre);
        usuario.setApellidos(apellidos);
        usuario.setPassword(password);

        // Establecer el objeto Usuario como un atributo en la solicitud
        request.setAttribute("usuario", usuario);

        // Redirigir a la página JSP para mostrar los datos
        request.getRequestDispatcher("/muestraDatos.jsp").forward(request, response);
    }
}
