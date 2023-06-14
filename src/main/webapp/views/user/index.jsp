<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<!DOCTYPE html>
<html>
<head>
  <title>Usuarios</title>
  <jsp:include page="../../layouts/head.jsp" />
</head>
<body>
  <div class="container-fluid">
    <div class="row">
      <div class="col text-center mt-5">
        <h2>Usarios</h2>
        <p>Practica 1 Srvelets para realizar un CRUD de usuarios</p>
        <div class="card">
          <div class="card-header">
            <div class="col">Listado de usuarios</div>
            <div class="col">
              <a href="/user/user-view" class="btn btn-outline-success btn-sm">Agregar
              </a>
            </div>
          </div>
          <div class="card-body">
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
                <c:forEach var="user" items="${users}" varStatus="s">
                  <tr>
                    <td>
                      <c:out value="${s.count}"/>
                    </td>
                    <td>
                      <c:out value="${user.name}"/><c:out value="${user.surname}"/><c:out value="${user.lastname}"/>
                    </td>
                    <td>
                      <c:out value="${user.birthday}"/>
                    </td>
                    <td>
                      <c:out value="${user.username}"/>
                    </td>
                    <td>
                      <c:out value="${user.status}"/>
                    </td>
                    <td>
                      <form method="get" action="/user/user-view-update">
                        <input hidden value="${user.id}" name="id">
                        <button type="submit" class="btn btn-outline-warning btn-sm">
                          Editar
                        </button>
                      </form>
                      <form method="post" action="/user/delete">
                        <input hidden value="${user.id}" name="id">
                        <button type="submit" class="btn btn-outline-danger btn-sm">
                          Eliminar
                        </button>
                      </form>
                    </td>
                  </tr>
                </c:forEach>
                <tr>
                  <td colspan="6">
                    SIn registros
                  </td>
                </tr>
              </thbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  </div>
  <jsp:include page="../../layouts/head.jsp"/>
</body>
</html>