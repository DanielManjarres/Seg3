<%@ page import="org.aguzman.webapp.servlet.seguimiento3.Usuario" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Muestra datos</title>
</head>
<body>
<%
    Usuario usuario = (Usuario) request.getAttribute("usuario");
    if (usuario != null) {
%>
<br>Su nombre es: <%=usuario.getNombre()%>
<br>Sus apellidos son: <%=usuario.getApellidos()%>
<br>Su contraseña es: <%=usuario.getPassword()%>
<%
} else {
%>
<p>El usuario no está disponible.</p>
<%
    }
%>

<h2>Conceptos sobre Directivas JSP</h2>
<table border="1">
    <tr>
        <th>La directiva page</th>
        <td>Atributos: language, extends, import, session, buffer, autoFlush, isThreadSafe, info, errorPage, isErrorPage, contentType, pageEncoding</td>
    </tr>
    <tr>
        <th>La directiva taglib</th>
        <td>Atributos: uri, prefix</td>
    </tr>
    <tr>
        <th>La directiva include</th>
        <td>Atributos: file</td>
    </tr>
</table>

<%@ include file="footer.jsp" %>

<form action="logout.jsp" method="post">
    <input type="submit" value="Cerrar Sesión">
</form>
</body>
</html>
