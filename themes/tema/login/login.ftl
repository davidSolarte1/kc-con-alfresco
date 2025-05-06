<!-- Importa los archivos de estilo y JavaScript necesarios -->
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">

<style>
body {
    font-family: 'Roboto', sans-serif;
    margin: 0;
    padding: 0;
    display: flex;
    height: 100vh;
}

.main-container {
    display: flex;
    width: 100%;
    height: 100vh;
    flex-direction: row;
}

.login-section {
    width: 100%;
    max-width: 400px;
    background-color: rgba(255, 255, 255, 0.95);
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    padding: 2rem;
    box-shadow: 5px 0 15px rgba(0, 0, 0, 0.1);
    position: relative;
}

.logo-container {
    margin-bottom: 2rem;
    width: 80%;
    max-width: 200px;
}

.logo-container img {
    width: 100%;
    height: auto;
}

.product-name {
    font-size: 2rem;
    font-weight: bold;
    color: #941b1b;
    text-align: center;
    margin-bottom: 10px;
    line-height: 1.2;
}

.product-community {
    font-size: 0.9rem;
    color: black;
    text-align: center;
    margin-bottom: 2rem;
}

.login-form {
    width: 100%;
    max-width: 300px;
}

.form-group {
    margin-bottom: 1.5rem;
}

input.form-control {
    font-size: 0.9rem;
    padding: 0.8rem;
    border: 1px solid #ddd;
    border-radius: 8px;
    width: 100%;
    transition: all 0.3s ease;
}

input.form-control:focus {
    border-color: #941b1b;
    box-shadow: 0 0 0 0.2rem rgba(148, 27, 27, 0.15);
}

input.form-control::placeholder {
    font-size: 0.8rem;
    color: #6c757d;
}

.custom-btn {
    background-color: #941b1b !important;
    border-color: #941b1b !important;
    font-size: 1rem !important;
    font-weight: bold;
    padding: 0.8rem !important;
    border-radius: 8px !important;
    transition: all 0.3s ease;
    width: 100%;
    color: #ffffff;
}

.custom-btn:hover {
    background-color: #e07b1a !important;
    transform: scale(1.02);
}

.footer-text {
    position: absolute;
    bottom: 1rem;
    left: 0;
    width: 100%;
    text-align: center;
    font-size: 0.8rem;
    color: #666;
    padding: 0 1rem;
}

.alert-danger {
    width: 100%;
    font-size: 0.9rem;
    margin-bottom: 1.5rem;
}

.image-section {
    flex: 1;
    background-image: url('https://i.imgur.com/E324xV0.png'); /* Ruta de la imagen para el cuadro azul */
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
}



/* Ajustes para pantallas más pequeñas */
@media (max-width: 768px) {
    .main-container {
        flex-direction: column;
    }

    .login-section {
        width: 100%;
        max-width: none;
        height: auto;
        padding-bottom: 3rem; /* Espacio extra para el footer en pantallas pequeñas */
    }

    .image-section {
        width: 100%;
        height: 50vh;
    }

    .product-name {
        font-size: 1.8rem;
    }
}
</style>

<div class="main-container">
    <div class="login-section">
        <div class="logo-container">
            <img src="https://i.imgur.com/fcro2xF.png" alt="Logo Prueba" class="img-fluid">
        </div>

        <div class="product-name">Gobernación de Nariño</div>
        <div class="product-community">Secretaría de Educación Departamental</div>

        <!-- Mensaje de error de autenticación -->
        <#if error??>
        <div class="alert alert-danger" role="alert">
            Error en la autenticación. Inténtalo de nuevo.
        </div>
        </#if>

        <!-- Formulario de inicio de sesión -->
        <form id="kc-form-login" class="login-form" onsubmit="login.disabled = true; return true;" action="${url.loginAction}" method="post">
            <div class="form-group">
                <input type="text" id="username" name="username" value="${username!}" class="form-control" placeholder="Nombre de usuario" required autofocus>
            </div>
            <div class="form-group">
                <input type="password" id="password" name="password" class="form-control" placeholder="Contraseña" required>
            </div>
            <div class="form-group">
                <button type="submit" id="kc-login" class="btn btn-lg custom-btn">Iniciar Sesión</button>
            </div>
        </form>

        <!-- Footer -->
        <div class="footer-text">
            © 2024 Gobernación de Nariño<br>
            Secretaría de Educación Departamental
        </div>
    </div>

    <!-- Sección de la imagen -->
    <div class="image-section"></div>
</div>

<!-- Dependencias de JavaScript -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
