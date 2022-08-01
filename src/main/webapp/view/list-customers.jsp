<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
    <head>
        <title>Customer List</title>
        <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
    </head>

    <body>
        <div id = "wrapper">
            <div id = "header">
                <h2>CRM - Customer Relationship Manager</h2>
            </div>
        </div>



        <div id = "container">

            <div id="utils">
                <input class="add-button" type="button" value="Add Customer" onclick="window.location.href='showFormForAdd'; return false;"/>
            </div>

            <div id = "content">
                <%-- Our Table --%>
                <table>
                    <tr>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Email Name</th>
                        <th>Action</th>
                    </tr>

                    <%-- Loop over customer list --%>
                    <c:forEach var="customer" items="${customers}">
                        <tr>
                            <c:url var="updateLink" value="/customer/showFormForUpdate">
                                <c:param name="customerId" value="${customer.id}"/>
                            </c:url>

                            <td>${customer.firstName}</td>
                            <td>${customer.lastName}</td>
                            <td>${customer.email}</td>
                            <td>
                                <a href="${updateLink}">Update</a>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </div>
    </body>
</html>
