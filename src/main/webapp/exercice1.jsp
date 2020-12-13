<%-- 
    Document   : exercice1
    Created on : Dec 12, 2020, 11:24:50 PM
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
<%! String[] articlesEnInventaire = {"qcm123", "ads234", "qwerty456", "azerty567", "cap789", "down345", "top765", "jungle432", "fire876", "hi234"};
String articlesCherches = "down345"; boolean trouve = false;
int trouveIndex = -1;%>
<H1>Recherche de <%=articlesCherches%> au niveau de la base:
</H1>
<UL>
<% int i = 0;
while (!trouve && i < articlesEnInventaire.length) {%>
<LI> Recherche index <%= i%>: <%= articlesEnInventaire[i]%>
<% if (articlesEnInventaire[i] == articlesCherches) { trouve = true;
trouveIndex = i;
} i++;
 
} %>
</UL>
<H2>
<% if (trouve) {%>
Trouvé à index = <%=trouveIndex%>
<% } else {%>
Désolé, <%=articlesCherches%> ne se trouve pas dans la base
<% }%>
</H2>
</body>
</html>
