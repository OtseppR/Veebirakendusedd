<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>

<form method="post">

        <%
            try
            {
                Class.forName("org.postgresql.Driver");
                String url="jdbc:postgresql://ec2-54-243-213-188.compute-1.amazonaws.com:5432/deoqpobdfumna2";
                String username="vkzivsefpcoxqi";
                String password="dc800fc78ba20df40f86c5c828c8a4b69dce75095371428e732ca89f2c36b080";
                String query="select eesnimi from kasutajad";
                Connection conn=DriverManager.getConnection(url, username, password);
                Statement stmt=conn.createStatement();
                ResultSet rs=stmt.executeQuery(query);
                while(rs.next())
                {
        %>
    <div>
        <table style="width:50%; float:left">
            <tr>
                <td><%out.println(rs.getString("eesnimi")+"\t"+rs.getString("perenimi")); %></td>
            </tr>
        </table>

        <table id="tblTwo" style="width:50%; float:left">
        <tr><td><%out.println(rs.getString("vanus")+("\t")+rs.getString("email")); %></td></tr>
        </table>
    </div>


        <%
            }
        %>

    <%
            rs.close();
            stmt.close();
            conn.close();
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    %>
</form>`