<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.sql.Driver" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.PreparedStatement" %>
<%--
<%@ page import="javastuff.*" %>
<%@ page import="javastuff.KasutajaDAO" %>
  Created by IntelliJ IDEA.
  User: Robin
  Date: 4/17/2018
  Time: 8:42 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>



<%
    String first_name=request.getParameter("eesnimi");
    String last_name=request.getParameter("perenimi");
    String city_name=request.getParameter("vanus");
    String email=request.getParameter("email");
    out.println("siinveeltootab");
    try
    {
        Connection connection = null;

        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sys", "root", "root");


        PreparedStatement st = conn.prepareStatement("insert into kasutajad(eesnimi,perenimi,vanus,email) VALUES ('" + first_name + "','" + last_name + "','" +city_name + "','" + email + "'");
       st.executeUpdate();
        out.println("Data is successfully inserted!");
    }
    catch(Exception e)
    {
        out.println("feilib");
        System.out.print(e);
        e.printStackTrace();
    }
%>
<html>
<head>
    <img src="https://i.imgur.com/WoF89Ay.jpg">
    <p>Sinu sisestatud info: </p>

    <p>Eesnimi: <%= request.getParameter("eesnimi") %></p>

    <p>Perenimi: <%= request.getParameter("perenimi") %></p>

    <p>Vanus: <%= request.getParameter("vanus") %></p>

    <p>Email: <%= request.getParameter("email") %></p>



</head>
<body>


</body>
</html>
