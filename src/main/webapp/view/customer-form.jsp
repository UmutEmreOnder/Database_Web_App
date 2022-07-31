<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
  <head>
      <title>Create Customer</title>

      <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
      <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/add-customer-style.css">
  </head>

  <body>
      <div id="wrapper">
          <div id="header">
              <h2>CRM - Customer Relationship Manager</h2>
          </div>
      </div>

      <div id="container">
          <div id="utils">
              <h3>Save Customer</h3>
          </div>


          <form:form action="saveCustomer" modelAttribute="customer" method="post">
              <table>
                  <tbody>
                        <tr>
                            <td> First Name: <form:input path="firstName"/> </td>
                        </tr>
                        <tr>
                            <td> Last Name: <form:input path="lastName"/> </td>
                        </tr>
                        <tr>
                            <td> Email: <form:input path="email"/> </td>
                        </tr>
                        <tr>
                            <td> <input type="submit" value="Save" class="save-button"> </td>
                        </tr>
                  </tbody>
              </table>
          </form:form>

          <div id="utils">
                <p>
                    <a href="${pageContext.request.contextPath}/customer/list">Back to List</a>
                </p>
          </div>
      </div>
  </body>
</html>
