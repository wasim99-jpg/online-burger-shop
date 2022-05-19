<%-- 
    Document   : deleteUser
    Created on : Jan 20, 2022, 11:14:38 PM
    Author     : deskt
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<sql:setDataSource var="myDatasource" driver="org.apache.derby.jdbc.ClientDriver" url="jdbc:derby://localhost:1527/Burgermbira" user="app" password="app"/>
<!DOCTYPE html>
<html>
    <body>
        <c:set var="staffid" value="<%= session.getAttribute("staffId")%>" />
        <c:set var="userId" value="<%=request.getParameter("userID")%>"/>

            <c:if  test="${ userId!=null && staffid!=null}" >
            <sql:update var="result" dataSource="${myDatasource}">
                DELETE FROM APP.CUSTOMER WHERE USERIC = '${userId}'
            </sql:update>   
             </c:if>

        <script type="text/javascript">
            <c:if test="${result >=1}">
                    window.alert("delete successfully");
                    window.location = "StaffUserList.jsp";
            </c:if></script>
    </body>
</html>
