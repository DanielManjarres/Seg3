<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Registro de Usuario</title>
</head>
<body>
<div>
    <h1>Registro de Usuario</h1>
    <!-- Llama al servlet RegistrarUsuario -->
    <form action="RegistrarUsuario" method="post">
        <div>
            <div>
                <label for="textUsuario">Nombre:</label>
                <input type="text" name="textUsuario" id="textUsuario" required>
            </div>
            <div>
                <label for="textApellidos">apellidos:</label>
                <input type="text" name="textApellidos" id="textApellidos" required>
            </div>
            <div>
                <label for="textPassword">Contraseña:</label>
                <input type="password" name="textPassword" id="textPassword" required>
            </div>
            <hr>
            <input type="reset" value="Borrar">
            <input type="submit" value="Registrar">
        </div>
    </form>
</div>
</body>
</html>
