<%-- 
    Document   : editProfileCheck
    Created on : Jan 18, 2022, 10:38:41 AM
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
        
        <c:set var="useric" value="<%= session.getAttribute("userId") %>"/>  
        <c:set var="e" value="<%= request.getParameter("email") %>"/>   
        <c:set var="pnum" value="<%= request.getParameter("phonenum") %>"/> 
        <c:set var="address_1" value="<%= request.getParameter("address1") %>"/> 
        <c:set var="address_2" value="<%= request.getParameter("address2") %>"/> 
        <c:set var="p" value="<%= request.getParameter("password") %>"/> 
        <c:if test="${ e!=null && pnum!=null && address_1!=null && address_2!=null && p!=null && useric!=null}">
            <sql:update var="result" dataSource="${myDatasource}">
                update APP.CUSTOMER
                set EMAIL='${e}',PHONENUM='${pnum}', ADDRESS_1='${address_1}', ADDRESS_2='${address_2}', PASSWORD='${p}'
                where USERIC='${useric}'
            </sql:update>    
        </c:if>
                
     <script type="text/javascript">
     <c:if test="${result >=1}">
         window.alert("your account successfull update");
         window.location = "profile.jsp";
     </c:if></script>
                                
    </body>
</html>
