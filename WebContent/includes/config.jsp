<%@ page import="java.sql.*" %>
<HTML>
<HEAD>
<TITLE>JDBC Connection</TITLE>
</HEAD>
<BODY>
<%
    Connection connection = null;
    try
    {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "abhrak", "abhrak");
        Statement statement = connection.createStatement();
        /*ResultSet resultSet = statement.executeQuery("SELECT Capacity FROM Engine");
        while (resultSet.next())
        {
            int x = resultSet.getInt("Capacity");
        }*/
    }
    catch(Exception exception)
    {
        out.println("Exception : " + exception.getMessage() + "");
    }
    finally
    {
        if(connection != null)
        {
            try
            {
                connection.close();
            }
            catch (Exception ignored)
            {
                // ignore
            }
        }
    }
%>
</BODY>
</HTML>