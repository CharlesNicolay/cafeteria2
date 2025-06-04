<%-- 
    Document   : realizarPedido
    Created on : 30 abr. 2025, 10:00:54
    Author     : dkred
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Resumen del Pedido</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<div class="container mt-5">
    <div class="card shadow">
        <div class="card-header bg-primary text-white">
            <h2 class="mb-0">Resumen del Pedido</h2>
        </div>
        <div class="card-body">
            <p><strong>Cliente:</strong> <%= session.getAttribute("nombre") %></p>
            <p><strong>Producto:</strong> <%= session.getAttribute("producto") %></p>
            <p><strong>Cantidad:</strong> <%= session.getAttribute("cantidad") %></p>
            
            <div class="mt-4">
                <!-- Botón que lleva al servlet -->
                <a href="${pageContext.request.contextPath}/ControladorPrincipal" class="btn btn-success">
                    Guardar
                </a>
            </div>
        </div>
    </div>
</div>

</body>
</html>