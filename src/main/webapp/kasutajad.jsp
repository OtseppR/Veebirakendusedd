<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd" >
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<HTML>
<HEAD>
    <TITLE>Kasutaja info </TITLE>
</HEAD>
<BODY bgcolor="#7ac968">
<font size="+3" color="green"><br>Welcome memer!</font>
<FORM action="tekst.jsp" method="get">
    <TABLE style="background-color: #14e01b;" WIDTH="30%" >
        <TR>
            <TH width="50%">Name</TH>
            <TD width="50%"><INPUT TYPE="text" NAME="eesnimi"></TD>
        </tr>
        <TR>
            <TH width="50%">City</TH>
            <TD width="50%"><INPUT TYPE="text" NAME="perenimi"></TD>
        </tr>
        <TR>
            <TH width="50%">Phone</TH>
            <TD width="50%"><INPUT TYPE="text" NAME="vanus"></TD>
        </tr>
        <TR>
            <TH width="50%">Email</TH>
            <TD width="50%"><INPUT TYPE="text" NAME="email"></TD>
        </tr>
        <TR>
            <TH></TH>
            <TD width="50%"><INPUT TYPE="submit" VALUE="submit"></TD>
        </tr>
    </TABLE>
    <%
        String name = request.getParameter("eesnimi");
        String city = request.getParameter("perenimi");
        String phone = request.getParameter("vanus");
        String email = request.getParameter("email");

        Connection connection = null;

        PreparedStatement pstatement = null;

        Class.forName("org.postgresql.Driver").newInstance();
        int updateQuery = 0;

        if(name!=null && city!=null && phone!=null){

            if(name!="" && city!="" && phone!="") {
                try {

                    connection = DriverManager.getConnection("jdbc:postgresql://ec2-54-243-213-188.compute-1.amazonaws.com:5432/deoqpobdfumna2", "vkzivsefpcoxqi", "dc800fc78ba20df40f86c5c828c8a4b69dce75095371428e732ca89f2c36b080");

                    String queryString = "INSERT INTO kasutajad(eesnimi, perenimi,vanus,email) VALUES (?, ?, ?,?)";

                    pstatement = connection.prepareStatement(queryString);
                    pstatement.setString(1, name);
                    pstatement.setString(2, city);
                    pstatement.setString(3, phone);
                    pstatement.setString(4, email);
                    updateQuery = pstatement.executeUpdate();
                    if (updateQuery != 0) { %>
    <br>
    <TABLE style="background-color: #14e01b;"
           WIDTH="50%" border="2">
        <tr><th>Data is inserted successfully
            in database.</th></tr>
    </table>
    <%
                    }
                }
                catch (Exception ex) {
                    throw new Error(ex);
                }
                finally {

                    pstatement.close();
                    connection.close();
                }
            }
        }
    %>
</FORM>
</body>
</html>