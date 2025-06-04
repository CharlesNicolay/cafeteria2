<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Formulario de Pedido</title>
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js" integrity="sha384-j1CDi7MgGQ12Z7Qab0qlWQ/Qqz24Gc6BM0thvEMVjHnfYGF0rmFCozFSxQBxwHKO" crossorigin="anonymous"></script>
    </head>
<body>
    
<div class="container d-flex justify-content-center align-items-center min-vh-100">
    <div class="card shadow p-4 w-100" style="max-width: 700px;">
        <h2 class="card-title text-center mb-4">Pedido de Café</h2>
        <form action="${pageContext.request.contextPath}/ControladorPrincipal" method="post" class="needs-validation" novalidate>
            <div class="mb-3">
                <label for="nombre" class="form-label">Nombre del Cliente:</label>
                <input type="text" id="nombre" name="nombre" class="form-control" required>
                <div class="invalid-feedback">Por favor ingrese su nombre.</div>
            </div>

            <div class="mb-3">
                <label for="producto" class="form-label">Producto:</label>
                <select id="producto" name="producto" class="form-select" required>
                    <option value="">Seleccione un producto</option>
                    <option value="cafe">Café</option>
                    <option value="capuchino">Capuchino</option>
                    <option value="latte">Latte</option>
                </select>
                <div class="invalid-feedback">Seleccione un producto.</div>
            </div>

            <div class="mb-3">
                <label for="cantidad" class="form-label">Cantidad:</label>
                <input type="number" id="cantidad" name="cantidad" class="form-control" min="1" required>
                <div class="invalid-feedback">Ingrese una cantidad válida.</div>
            </div>

            <div class="d-grid">
                <button type="submit" class="btn btn-primary">Realizar Pedido</button>
            </div>
        </form>
    </div>
</div>


</body>
</html>