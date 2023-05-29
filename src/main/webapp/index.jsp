<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>Usuarios</title>
<jsp:include page="./layouts/head.jsp" />
</head>
<body>
<div class="container-fluid">
  <div class="row">
    <div class="col text-center mt-5">
      <h2>Usarios</h2>
      <p>Practica 1 Srvelets para realizar un CRUD de usuarios</p>
      <div class="card">
        <div class="header">
          <div class="col">Listado de usuarios</div>
          <div class="col">
            <button class="btn btn-outline-success btn-sm">Agregar</button>
          </div>
        </div>
        <div class="body">
          <table class="table table-striped">
            <thead>
              <th>#</th>
            <th>Nombre</th>
            <th>Fecha Nacimiento</th>
            <th>Usuario</th>
            <th>Estado</th>
            <th>Acciones</th>
            
            </thead>
            <thbody>
              <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td></tr>
            </thbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</div>

<h1><%= "Hello World!" %></h1>
<br/>
<a href="hello-servlet">Hello Servlet</a>
<jsp:include page="./layouts/head.jsp"/>
</body>
</html>