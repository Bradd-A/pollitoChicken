<%@page import="java.util.*" %>
<%@page import="Beans.ProductosBeans" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../Includes/sesion.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <title>EDITAR EMPLEADO</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" href="Imagenes/logo2.ico" />
        <link rel="stylesheet" href="Css/nav.css">
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
                            <img src="Imagenes/logo2.jpg" class="rounded-circle " alt="logo" width="54" height="44">
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
                                    <a href="index.jsp" class="nav-link "><i class="fas fa-house-user"></i> Inicio</a>
                                </li>
                                <%if (rol == 2 || rol == 3) {%> <li class="nav-item">
                                    <button class="dropdown-btn"><a href="ServletCliente?op=listar" class="nav-link"><i class="fas fa-users"></i>
                                            Clientes</a></button>
                                </li><%}%>
                                <%if (rol == 3) {%> <li class="nav-item">
                                    <button class="dropdown-btn"><a href="#" class="nav-link"><i class="fa fa-user"></i>
                                            Empleados<i class="fa fa-caret-down"></i></a></button>
                                    <div class="dropdown-container">
                                        <a class="nav-link" href="View/AgregarEmpleado.jsp">Insertar Empleados</a>
                                        <a class="nav-link" href="ServletEmpleado?op=listar">Mostrar Empleados</a>
                                    </div>
                                </li><%}%>
                                <%if (rol == 1) {%><li class="nav-item  " style="padding-left: 15px">
                                    <a href="View/Productos.jsp" class="nav-link"> <i class="fas fa-archive"></i> Productos</a>
                                </li><%}%>
                                <%if (rol == 2 || rol == 3) {%> <li class="nav-item">
                                    <button class="dropdown-btn"><a href="#" class="nav-link"><i class="fas fa-boxes"></i>
                                            Productos<i class="fa fa-caret-down"></i></a></button>
                                    <div class="dropdown-container">
                                        <a class="nav-link" href="View/AgregarProducto.jsp">Insertar Producto</a>
                                        <a class="nav-link" href="ServletProducto?op=listar">Mostrar Producto</a>
                                    </div>
                                </li><%}%>
                                <%if (rol == 2) {%><li class="nav-item">
                                    <button class="dropdown-btn"><a href="#" class="nav-link"><i class="fa fa-bookmark"></i>
                                            Categoria<i class="fa fa-caret-down"></i></a></button>
                                    <div class="dropdown-container">
                                        <a class="nav-link" href="View/AgregarCategoria.jsp">Insertar Categoria</a>
                                        <a class="nav-link" href="ServletCategoria?op=listar">Mostrar Categoria</a>
                                    </div>
                                </li><%}%>
                                <%if (rol == 2) {%><li class="nav-item">
                                    <button class="dropdown-btn"><a href="#" class="nav-link"><i class="fas fa-suitcase"></i>
                                            Proveedores<i class="fa fa-caret-down"></i></a></button>
                                    <div class="dropdown-container">
                                        <a class="nav-link" href="View/AgregarProveedor.jsp">Insertar Proveedor</a>
                                        <a class="nav-link" href="ServletProveedor?op=listar">Mostrar Proveedor</a>
                                    </div>
                                </li><%}%>
                                <%if (rol == 2 || rol == 3) {%><li class="nav-item">
                                    <button class="dropdown-btn"><a href="ServletBoleta?op=listar" class="nav-link"><i class="fa fa-shopping-basket"></i>
                                            Boletas</a></button>
                                </li><%}%>
                                <%if (rol == 2) {%><li class="nav-item">
                                    <button class="dropdown-btn"><a href="ServletOrden?op=listar" class="nav-link"><i class="fa fa-database"></i>
                                            Ordenes</a></button>
                                </li><%}%>
                                <%if (rol == 2 || rol == 3) {%><li class="nav-item">
                                    <button class="dropdown-btn"><a href="View/Reporte.jsp" class="nav-link"><i class="fa fa-shopping-basket"></i>
                                            Reportes</a></button>
                                </li><%}%>
                                <%if (rol == 2) {%><li class="nav-item">
                                    <button class="dropdown-btn"><a href="ServletConsulta?op=listar" class="nav-link"><i class="fa fa-eye"></i>
                                            Consultas</a></button>
                                </li><%}%>
                                <%if (rol == 1) {%><li class="nav-item  " style="padding-left: 15px">
                                    <a href="View/Nosotros.jsp" class="nav-link"> <i class="fas fa-building"></i> Nosotros</a>
                                </li><%}%>
                                <%if (rol == 1) {%><li class="nav-item  " style="padding-left: 15px">
                                    <a href="View/Contactos.jsp" class="nav-link"> <i class="fas fa-tablet"></i> Contactos</a>
                                </li><%}%>
                                <li class="nav-item  " style="padding-left: 15px">
                                    <a href="Login.jsp" class="nav-link"> <i class="fas fa-user-lock"></i> Cerrar Sesión </a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </aside>
                <main class="col px-0 flex-grow-1 p-3 pb-4"> 
                    <form action="ServletProducto">
                        <div class="container py-3">
                            <h3><i class="fas fa-id-badge"></i> EDITAR PRODUCTO</h3>
                            <p class="text lead">En este módulo podrás editar los productos ya registrados en el area de almacen.</p>
                        </div>
                        <div class="container bg-light pt-4" id="info">
                            <h3> <i class="far fa-id-card"></i> INFORMACIÓN DEL PRODUCTO</h3> <br>
                            <div class="row"> 
                                <%
                                    ArrayList<ProductosBeans> lista
                                            = (ArrayList<ProductosBeans>) request.getAttribute("lista");
                                    for (int i = 0; i < lista.size(); i++) {
                                       ProductosBeans eb = lista.get(i);
                                %>
                                <div class="col-md-6  ">
                                    <div class="form-floating">
                                        <input type="text" name="txtCod"  readonly="readonly" class="form-control" id="floatingInput" value="<%=eb.getID_PRODUCTO()%>" >
                                        <label for="floatingInput">Codigo</label>
                                    </div>
                                    <div class="form-floating mt-2">
                                        <input type="text" name="txtNom" class="form-control" value="<%=eb.getNOM_PROD()%>" id="floatingInput">
                                        <label for="floatingInput">Nombre</label>
                                    </div>
                                    <div class="form-floating mt-2">
                                        <input type="text" name="txtDescrip" class="form-control" value="<%=eb.getDESCRIP_PROD()%>" id="floatingInput">
                                        <label for="floatingInput">Descripcion</label>
                                    </div>
                                    <div class="form-floating mt-2">
                                        <input type="text" name="txtCat" class="form-control" value="<%=eb.getID_CATEGORIA()%>" id="floatingInput">
                                        <label for="floatingInput">Categoria</label>
                                    </div>
                                    <div class="form-floating mt-2">
                                        <input type="text" name="txtProv" class="form-control" value="<%=eb.getID_PROVEEDOR()%>" id="floatingPassword">
                                        <label for="floatingInput">Proveedor</label>
                                    </div>   
                                </div>
                                <div class="col-md-6 ">
                                    <div class="form-floating">
                                        <input type="text" name="txtPrecio" class="form-control" value="<%=eb.getPRECIO_UNIT()%>" id="floatingInput">
                                        <label for="floatingInput">Precio</label>
                                    </div>
                                    <div class="form-floating mt-2">
                                        <input type="text" name="txtEstado" class="form-control" value="<%=eb.getESTADO()%>" id="floatingPassword">
                                        <label for="floatingInput">Estado</label>
                                    </div>
                                    <div class="form-floating mt-2">
                                        <input type="text" name="txtStock" class="form-control" value="<%=eb.getSTOCK()%>" id="floatingPassword">
                                        <label for="floatingInput">Stock</label>
                                    </div>
                                    <div class="form-floating mt-2">
                                        <input type="text" name="txtImagen" class="form-control" value="<%=eb.getIMAGEN()%>" id="floatingPassword">
                                        <label for="floatingInput">Imagen</label>
                                    </div>  
                                </div>
                                </div>  <br> 
                            <input type="hidden" name="op" value="editar">
                            <input type="Submit" name="btn" class=" btn btn-dark" value="Guardar Cambios">
                        </div>                      
                    </form>
                    <%
                        }
                    %>
                </main>
            </div>
        </div>
        <div>
            <%@include file="../Includes/footer.jsp"%>
        </div> 
    </body>
</html>