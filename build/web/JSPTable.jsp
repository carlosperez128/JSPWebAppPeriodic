<%@ page import="net.webservicex.Periodictable" %>  
<%@ page import="net.webservicex.*" %>      
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Periodic Table</h1>
    </body>
</html>
    <%-- start web service invocation --%><hr/>
    <%
    try {
	net.webservicex.Periodictable service = new net.webservicex.Periodictable();
	net.webservicex.PeriodictableSoap port = service.getPeriodictableSoap();
	 // TODO initialize WS operation arguments here
	// TODO process result here
	out.println("Gold: "+port.getElementSymbol("Gold"));
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>
