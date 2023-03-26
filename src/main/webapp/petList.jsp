<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="g" uri="WEB-INF/tlds/globalIdentifier.tld" %>
<%@taglib prefix="p" tagdir="/WEB-INF/tags" %>
<p:page title="Pet list">
    <style>
        td {
            border: 1px solid black;
        }

        thead > tr > td {
            font-weight: bold;
        }
    </style>
    <table>
        <thead>
        <tr>
            <td>ID</td>
            <td>Name</td>
            <td>Chip code</td>
            <td>Address</td>
            <td>Species</td>
            <td>Global Identifier</td>
            <td>Action</td>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${pets}" var="pets">
            <tr>
                <td>
                    <c:out value="${pets.id}" />
                </td>
                <td>
                    <c:out value="${pets.name}" />
                </td>
                <td>
                    <c:out value="${pets.chipCode}" />
                </td>
                <td>
                    <c:out value="${pets.address}" />
                </td>
                <td>
                    <c:out value="${pets.species}" />
                </td>
                <td>
                    <g:global pet="${pets}" />
                </td>
                <td>
                    <form method="post">
                        <input type="hidden" name="id" value="${pets.id}">
                        <input type="submit" value="Delete" />
                    </form>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</p:page>