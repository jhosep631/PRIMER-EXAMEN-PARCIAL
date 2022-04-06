<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Productos"%>
<%
    ArrayList<Productos> lista=(ArrayList<Productos>)session.getAttribute("lista");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="1" style="align-items: center; margin: 0 auto">
            <tr>
                <th>
                    <h2>PRIMER PARCIAL TEM-742</h2>
                    <p>Nombre: Jose Fernando Patty Cutile</p>
                    <p>Carnet: 10097877 </p>
                </th>
            </tr>
        </table>
        <h1 style="text-align: center">Productos</h1>
        <a href="MainController?op=nuevo">Nuevo Productos</a>
        <table border="1" style="align-items: center; margin: 0 auto">
            <tr>
                <th>Id</th>
                <th>Descripcion</th>
                <th>Cantidad</th>
                <th>Precio</th>
                <th>Categoria</th>
                <th>Editar</th>
                <th>Eliminar</th>
            </tr>
            <%
                if(lista!=null){
                    for(Productos item : lista){
                
            %>
                
            <tr>
                <td><%=item.getId()%></td>
                <td><%=item.getDescripcion()%></td>
                <td><%=item.getCantidad()%></td>
                <td><%=item.getPrecio()%></td>
                <td><%=item.getCategoria()%></td>
              
                <td><a href="MainController?op=editar&id=<%=item.getId()%>">Editar</a></td>
                <td><a href="MainController?op=eliminar&id=<%=item.getId()%>">Eliminar</a></td>
            </tr>
            <%
                      } 

                    }
            %>
    </body>
</html>
