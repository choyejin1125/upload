<%@ page import="com.yj.age.Bean" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<% final Bean bb = (Bean) request.getAttribute("bean");

%>

  <%= bb.getBirth() %> 년생 이시군요, 당신의 나이는 <%=bb.getAge()%>살 입니닷
</body>
</html>
