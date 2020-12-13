<%-- 
    Document   : firstOne
    Created on : Dec 9, 2020, 10:10:11 AM
    Author     : soufiane boutahiri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
            <%! int a = 5;%>
            <%
                int b = 6;
                int prod = b * a;
                int somme = b + a ;
           
                %>
                <h1>la valeur de a = <%= a%></h1>
                <h1>la valeur de b = <%= b %></h1>
                <h1>la somme de <%= a%> et <%= b %> = <%= somme%></h1>
                <h1>la produit de <%= a%> et <%= b %>= <%= prod%></h1>
                <h1> Suite de Fibonacci method 1</h1>
                <table border = "1">
                    <tr>
                        
                        <% for(int i = 0; i < 10;i++) { %>
                        <td> <%= i %></td>
                        <%}%>
                    </tr>
                    <tr>
                        <% int nbr1 = 0;
                           int nbr2 = 1;
                           int nbr3 = nbr1;
                           %> <td> <%= nbr1 %></td>
                              <td> <%= nbr2 %></td><%
                            for(int i = 0; i < 8;i++) { 
                               nbr3 = nbr1+ nbr2;
                            %> <td> <%= nbr3 %></td>
                            
                            <%
                                
                                nbr1 = nbr2;
                                nbr2 = nbr3;
                                }
                            %>
                        
                        
                    </tr>
                </table>
                <h1> Suite de Fibonacci method 2</h1>
                <table border = "1">
                  
                    <tr>
                        <%
                             nbr1 = 0;
                             nbr2 = 1;
                             %>
                                <tr> 
                                <td> i </td>
                                <td> U_i </td>
                                </tr>
                    <tr> 
                    <td> 0 </td>
                    <td> 0 </td>
                    </tr>
                    <tr> 
                    <td> 1 </td>
                    <td> 1 </td>
                    </tr>
                            <%
                                for(int i = 2; i < 10 ; i++){
                                   nbr3 = nbr1+ nbr2;
                            %> 
                            <tr> 
                            <td> <%= i %> </td>
                            <td> <%= nbr3 %> </td>
                            </tr>
                            <%
                                
                                nbr1 = nbr2;
                                nbr2 = nbr3;
                                }
                            %>
                        
                        
                    </tr>
                </table>
                

    </body>
</html>
