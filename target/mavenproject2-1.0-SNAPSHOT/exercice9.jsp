<%-- 
    Document   : exercice9
    Created on : Dec 12, 2020, 11:53:00 PM
    Author     : soufiane boutahiri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<BODY BGCOLOR="navy" TEXT="yellow">
<%! int[] fib;%>
<CENTER>
<H1>Calcul du nombre de Fibonacci de 0-19</H1>
<br>
Le nombre fibonacci de 0 est 0
<BR>
Le nombre fibonacci de 1 est 1
<BR>
<% fib = new int[20]; fib[0] = 0;
fib[1] = 1;
for (int i = 2; i < 20; i++) {
%>
 
Le nombre fibonacci de <%= i%> est <% fib[i] = fib[i - 1] + fib[i - 2];%>
<%= fib[i]%>
<br>
<% }%>
</CENTER>
</body>
</html>
