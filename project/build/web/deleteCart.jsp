<%-- 
    Document   : deleteCart
    Created on : Jan 19, 2022, 3:06:47 PM
    Author     : deskt
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<sql:setDataSource var="myDatasource" 
                   driver="org.apache.derby.jdbc.ClientDriver" 
                   url="jdbc:derby://localhost:1527/Burgermbira" user="app" 
                   password="app"/>

<!DOCTYPE html>
<html>

    <body>
        
        <c:set var="useric" value="<%= session.getAttribute("userId")%>" />
        <c:set var="CARTId" value="<%=request.getParameter("cartId")%>"/>

        <c:if  test="${ CARTId!=null && useric!=null}" >
            <sql:update var="result" dataSource="${myDatasource}">
                DELETE FROM APP.CART WHERE CARTID = ${CARTId}
            </sql:update>   
        </c:if>

        <script type="text/javascript">
            <c:if test="${result >=1}">
                    window.alert("delete successfully");
                    window.location = "cart.jsp";
            </c:if></script>

    </body>
</html>
