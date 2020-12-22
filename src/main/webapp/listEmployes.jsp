<%-- 
    Document   : listEmployes
    Created on : Dec 22, 2020, 10:16:51 PM
    Author     : soufiane boutahiri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Work with database derby</title>
    </head>
    <body>
        <h1>Affichr des Employes</h1>
        <%@page import="java.sql.*" %>
        <table width="100%" border="2">
            <tr>
                <td width="25%">Matricule</td>
                <td width="25%">nom</td>
                <td width="25%">prenom</td>
                <td width="25%">service</td>
            </tr>
            <%
            try{
                Class.forName("org.apache.derby.jdbc.ClientDriver").newInstance();
                Connection conn = DriverManager.getConnection("jdbc:derby://localhost:1527/etablissement","root","qwerty");
                Statement stmt  = conn.createStatement();
                String sql = "select * from employe";
                ResultSet rs = stmt.executeQuery(sql);
                while(rs.next()){%>
                <tr>
                    <td> <%=rs.getString("matricule") %> </td>
                    <td> <%=rs.getString("nom")  %> </td>
                    <td> <%=rs.getString("prenom")  %> </td>
                    <td> <%=rs.getString("service")  %> </td>
                </tr>
                
               <% }
                    if(stmt != null) stmt.close();
                    if(conn != null) conn.close();
                   
                }catch(Exception e)
                    {
                        out.print(e);
                    }
            %>
        </table>
    </body>
</html>
