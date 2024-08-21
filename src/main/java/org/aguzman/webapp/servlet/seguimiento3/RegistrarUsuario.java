package org.aguzman.webapp.servlet.seguimiento3;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/RegistrarUsuario")
public class RegistrarUsuario extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Crear un nuevo objeto Usuario y establecer sus atributos
        Usuario usuario = new Usuario();
        usuario.setNombre(request.getParameter("textUsuario"));
        usuario.setApellidos(request.getParameter("textApellidos")); // Ajusta este valor según tus necesidades
        usuario.setPassword(request.getParameter("textPassword"));

        // Establecer el objeto Usuario como un atributo en la solicitud
        request.setAttribute("usuario", usuario);

        // Redirigir a la página JSP para mostrar los datos
        request.getRequestDispatcher("/muestraDatos.jsp").forward(request, response);
    }
}
