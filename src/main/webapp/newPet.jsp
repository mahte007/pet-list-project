<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="p" tagdir="/WEB-INF/tags" %>
<p:page title="Pets">
    <form method="post">
        <table>
            <tr>
                <td>Name:</td>
                <td><input type="text" name="name" /></td>
            </tr>
            <tr>
                <td>Chip code:</td>
                <td><input type="text" name="chipCode" /></td>
            </tr>
            <tr>
                <td>Address:</td>
                <td><input type="text" name="address" /></td>
            </tr>
            <tr>
                <td>Species:</td>
                <td><input type="text" name="species" /></td>
            </tr>
            <tr>
                <td><input type="submit" value="Save" /></td>
            </tr>
        </table>
    </form>
</p:page>