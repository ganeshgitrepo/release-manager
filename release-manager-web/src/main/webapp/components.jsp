<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Components</title>
    <jsp:include page="/incl/css.jsp"/>
</head>
<body>
        <jsp:include page="/incl/nav.jsp"/>
    <div class="container">
        <h1>Components</h1>
        <table class="table">
            <thead><tr><th>Name</th></tr></thead>
            <tbody>
                <c:forEach var="component" items="${components}">
                <tr>
                    <td>${component.name}</td>
                    <td>
                        <form method="POST" action="${pageContext.request.contextPath}/components/${component.id}.html"
                            role="form" class="form-inline">
                            <input class="btn btn-default btn-sm" type="submit" name="submit" value="Remove"/>
                        </form>
                    </td>
                </tr>
                </c:forEach>
            </tbody>
        </table>
        <p>${fn:length(components)} component(s)</p>
            <p>
                <a href="${pageContext.request.contextPath}/components/create.html">Create</a>
        </p>
	</div>
</body>
</html>