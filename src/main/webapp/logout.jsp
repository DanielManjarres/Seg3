<%--
  Created by IntelliJ IDEA.
  User: Usuario
  Date: 19/08/2024
  Time: 11:00 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%
    session.invalidate(); // Cierra la sesión del usuario
    response.sendRedirect("index.jsp"); // Redirige a la página de registro
%>

