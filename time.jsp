<%@ page import="java.text.DateFormat" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="javax.servlet.*,java.text.*" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>It is time to have a ....</title>
</head>
<body>
<%
    Date date = new Date();
    SimpleDateFormat dateFormat = new SimpleDateFormat("HH:mm aa"); // this is time format with PM and AM
    String time = dateFormat.format(date);%>
<h1>Time is: <%=time%>
</h1>

<% try {
    if (dateFormat.parse(dateFormat.format(date)).before(dateFormat.parse("12:00 PM"))) {%>
<h3>It is time to have a breakfast</h3>

<% } else if (dateFormat.parse(dateFormat.format(date)).before(dateFormat.parse("16:00 PM"))) { %>
<h3>It is time to have a lunch</h3>

<% } else if (dateFormat.parse(dateFormat.format(date)).equals(dateFormat.parse("16:00 PM"))) { %>
<h3>It is time to have a lunch</h3>

<% } else if (dateFormat.parse(dateFormat.format(date)).after(dateFormat.parse("16:00 PM"))) { %>
<h3>It is time to have a dinner/supper</h3>

<% }
} catch (ParseException e) {
    e.printStackTrace();
} %>

</body>
</html>