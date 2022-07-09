<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@include file="../Includes/sesion.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="../Imagenes/logo2.ico" />
        <title>Generar Reporte</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <header>
            <%@include file="../Includes/header.jsp"%>
        </header>
        <div class="container-fluid">
            <div class="row min-vh-100 flex-column flex-md-row">
                <aside class="col-12 col-md-3 col-xl-2 p-0  shadow-lg">
                    <nav class="navbar navbar-dark navbar-expand-md navbar bd-dark flex-md-column flex-row align-items-center  text-center sticky-top " id="sidebar">
                        <div class="text-center center">
                            <img src="../Imagenes/logo2.jpg" class="rounded-circle " alt="logo" width="54" height="44">
                        </div>
                        <p class="text-center">PollitoChicken<br> </p>
                        <button type="button" class="navbar-toggler border-0 order-1" data-bs-toggle="collapse" data-bs-target="#navi" aria-controls="nav" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse order-last" id="navi">
                            <ul class="navbar-nav flex-column w-100 col-xl-2  ">
                                <li class="nav-item  " id="user" style="padding-left: 15px">
                                    <a class="nav-link active "><i class="fa fa-user "></i> BIENVENIDO <div class="px-4"><%=nombre%></div></a>
                                </li>
                                <li class="nav-item  " style="padding-left: 15px">
                                    <a href="../index.jsp" class="nav-link "><i class="fas fa-house-user"></i> Inicio</a>
                                </li>
                                <%if (rol == 2 || rol == 3) {%> <li class="nav-item">
                                    <button class="dropdown-btn"><a href="../ServletCliente?op=listar" class="nav-link"><i class="fas fa-users"></i>
                                            Clientes</a></button>
                                </li><%}%>
                                <%if (rol == 3) {%> <li class="nav-item">
                                    <button class="dropdown-btn"><a href="#" class="nav-link"><i class="fa fa-user"></i>
                                            Empleados<i class="fa fa-caret-down"></i></a></button>
                                    <div class="dropdown-container">
                                        <a class="nav-link" href="AgregarEmpleado.jsp">Insertar Empleados</a>
                                        <a class="nav-link" href="../ServletEmpleado?op=listar">Mostrar Empleados</a>
                                    </div>
                                </li><%}%>
                                <%if (rol == 1) {%><li class="nav-item  " style="padding-left: 15px">
                                    <a href="../ServletProducto?op=listar2&codCat=0" class="nav-link"> <i class="fas fa-archive"></i> Productos</a>
                                </li><%}%>
                                <%if (rol == 2 || rol == 3) {%> <li class="nav-item">
                                    <button class="dropdown-btn"><a href="#" class="nav-link"><i class="fas fa-boxes"></i>
                                            Productos<i class="fa fa-caret-down"></i></a></button>
                                    <div class="dropdown-container">
                                        <a class="nav-link" href="AgregarProducto.jsp">Insertar Producto</a>
                                        <a class="nav-link" href="../ServletProducto?op=listar">Mostrar Producto</a>
                                    </div>
                                </li><%}%>
                                <%if (rol == 2) {%><li class="nav-item">
                                    <button class="dropdown-btn"><a href="#" class="nav-link"><i class="fa fa-bookmark"></i>
                                            Categoria<i class="fa fa-caret-down"></i></a></button>
                                    <div class="dropdown-container">
                                        <a class="nav-link" href="AgregarCategoria.jsp">Insertar Categoria</a>
                                        <a class="nav-link" href="../ServletCategoria?op=listar">Mostrar Categoria</a>
                                    </div>
                                </li><%}%>
                                <%if (rol == 2) {%><li class="nav-item">
                                    <button class="dropdown-btn"><a href="#" class="nav-link"><i class="fas fa-suitcase"></i>
                                            Proveedores<i class="fa fa-caret-down"></i></a></button>
                                    <div class="dropdown-container">
                                        <a class="nav-link" href="AgregarProveedor.jsp">Insertar Proveedor</a>
                                        <a class="nav-link" href="../ServletProveedor?op=listar">Mostrar Proveedor</a>
                                    </div>
                                </li><%}%>
                                <%if (rol == 2 || rol == 3) {%><li class="nav-item">
                                    <button class="dropdown-btn"><a href="../ServletBoleta?op=listar" class="nav-link"><i class="fa fa-shopping-basket"></i>
                                            Boletas</a></button>
                                </li><%}%>
                                <%if (rol == 2) {%><li class="nav-item">
                                    <button class="dropdown-btn"><a href="../ServletOrden?op=listar" class="nav-link"><i class="fa fa-database"></i>
                                            Ordenes</a></button>
                                </li><%}%>
                                <%if (rol == 2 || rol == 3) {%><li class="nav-item">
                                    <button class="dropdown-btn"><a href="View/Reporte.jsp" class="nav-link"><i class="fa fa-shopping-basket"></i>
                                            Reportes</a></button>
                                </li><%}%>
                                <%if (rol == 2) {%><li class="nav-item">
                                    <button class="dropdown-btn"><a href="../ServletConsulta?op=listar" class="nav-link"><i class="fa fa-eye"></i>
                                            Consultas</a></button>
                                </li><%}%>
                                <%if (rol == 1) {%><li class="nav-item  " style="padding-left: 15px">
                                    <a href="Nosotros.jsp" class="nav-link"> <i class="fas fa-building"></i> Nosotros</a>
                                </li><%}%>
                                <%if (rol == 1) {%><li class="nav-item  " style="padding-left: 15px">
                                    <a href="Contactos.jsp" class="nav-link"> <i class="fas fa-tablet"></i> Contactos</a>
                                </li><%}%>
                                <li class="nav-item  " style="padding-left: 15px">
                                    <a href="../Login.jsp" class="nav-link"> <i class="fas fa-user-lock"></i> Cerrar Sesión </a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </aside>
                   
    <main class="col px-0 flex-grow-1 p pb-4">       
        <div class="container py-3">
            <h3><i class="fas fa-chart-line"></i> Reporte de Ventas</h3>
            <p class="text lead">Bienvenido, aqui podrá generar un reporte de los productos más vendidos por mes.</p>
        </div>         
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-4">
                </div>
                <div class="col-lg-4">
                    <form name="reporte" action="../ServletPDF" class="row g-3">
                        <div class="col-auto">
                        <label for="staticEmail" class="col-form-label">Seleccione mes:</label>
                        </div>
                        <div class="col-auto">
                        <select name="mes" class="form-control">
                            <option value="1">Enero</option>
                            <option value="2">Febrero</option>
                            <option value="3">Marzo</option>
                            <option value="4">Abril</option>
                            <option value="5">Mayo</option>
                            <option value="6">Junio</option>
                            <option value="7">Julio</option>
                            <option value="8">Agosto</option>
                            <option value="9">Setiembre</option>
                            <option value="10">Octubre</option>
                            <option value="11">Noviembre</option>
                            <option value="12">Diciembre</option>
                        </select>
                        </div>
                        <div class="col-auto">
                        <input type="submit" value="Visualizar PDF" name="btnver" class="btn btn-primary"/>
                         </div>
                    </form>
                </div>
                <div class="col-lg-4"> 
                </div>
            </div>
        </div> 
                     
    </main>
                   
            </div>
        </div>
        <div>
            <%@include file="../Includes/footer.jsp"%>
        </div> 
    </body>
</html>
