<%@tag dynamic-attributes="params" language="java" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8">
    <title>${params.get("title")}</title>
</head>
<body>
<h1>Welcome here!</h1>
<h2>Menu</h2>
<div>
    <div>
        <a href="${pageContext.request.contextPath}/newPet">Add new pet</a>
    </div>
    <div>
        <a href="${pageContext.request.contextPath}/petList">Pet list</a>
    </div>
</div>
<div>
    <jsp:doBody />
</div>
</body>
</html>
