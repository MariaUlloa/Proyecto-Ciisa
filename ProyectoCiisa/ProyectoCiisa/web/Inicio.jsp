<%@page import="java.util.List"%>
<%@page import="java.util.LinkedList"%>
<%@page import="Datos.producto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bienvenido</title>
    </head>
    <body>
        <form action="srvController" method="post">
            <input type="submit" name="mostrar" value="Mostrar">
            <table>
                <thead>
                    <tr>
                        <th>Codigo</th>
                        <th>Nombre</th>
                        <th>Cantidad</th>
                        <th>Precio</th>
                        <th>Familia</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        List<producto> lista = (List<producto>) request.getAttribute("productos");
                        if(lista!=null){
                            for (int i=0;i<lista.size();i++){
                                out.println("<tr>");
                                out.println("<td>");
                                out.println(lista.get(i).getPrdc_codigo());         
                                out.println("</td>");
                                out.println("<td>");
                                out.println(lista.get(i).getPrdc_nombre());          
                                out.println("</td>");
                                out.println("<td>");
                                out.println(lista.get(i).getPrdc_cantidad());         
                                out.println("</td>");
                                out.println("<td>");
                                out.println(lista.get(i).getPrdc_precio());         
                                out.println("</td>");
                                out.println("<td>");
                                out.println(lista.get(i).getFmls_nombre());         
                                out.println("</td>");
                                out.println("</tr>");
                            }
                        }
                    %>
                </tbody>
            </table>
        </form>
    </body>
</html>
