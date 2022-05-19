<%-- 
    Document   : cartInsert
    Created on : Jan 19, 2022, 10:54:12 AM
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
        <c:set var="userid" value="<%= session.getAttribute("userId")%>" />

        <c:set var="quantity" value="<%=request.getParameter("quantity")%>"/>

        <c:set var="cart" value="<%=request.getParameter("cartId")%>"/>

        <c:set var="image" value="<%=request.getParameter("picture")%>"/>

        <sql:query var="result" dataSource="${myDatasource}">
            SELECT * FROM APP.BURGER where BURGERID='<%=request.getParameter("burgerid")%>'

        </sql:query>



        <c:forEach var="row" items="${result.rows}">
            <c:set var="price" value="${row.BURGERPRICE}"/>
        </c:forEach>
        <c:set var="TOTAL" value="${quantity*price}"/>

        <sql:update var="resulty" dataSource="${myDatasource}">


            INSERT INTO APP.CART (QUANTITY, TOTAL, USERIC, BURGERID, STATUS) 
            VALUES (${quantity}, ${TOTAL}, '${userid}', '<%=request.getParameter("burgerid")%>', 'NO')

        </sql:update>   

        <script type="text/javascript">
            <c:if test="${resulty >=1}">
            window.alert("Add to cart successfully");
            window.location = "cart.jsp";
            </c:if></script>     



    </body>
</html>