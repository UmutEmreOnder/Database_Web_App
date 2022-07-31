<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
    <head>
        <title>Customer List</title>
    </head>

    <body>
        <div id = "wrapper">
            <div id = "header">
                <h2>CRM - Customer Relationship Manager</h2>
            </div>
        </div>

        <div id = "container">
            <div id = "content">
                <%-- Our Table --%>
                <table>
                    <tr>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Email Name</th>
                    </tr>

                    <%-- Loop over customer list --%>
                    <c:forEach var="customer" items="${customers}">
                        <tr>
                            <td>${customer.firstName}</td>
                            <td>${customer.lastName}</td>
                            <td>${customer.email}</td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </div>
    </body>
</html>
