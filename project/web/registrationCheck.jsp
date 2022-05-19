<%-- 
    Document   : RegistrationCheck
    Created on : Jan 17, 2022, 9:19:49 PM
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
<html lang="en">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration check</title>
    </head>
    <body>
        <c:set var="USERIC" value="<%= request.getParameter("USERIC") %>"/>  
        <c:set var="EMAIL" value="<%= request.getParameter("EMAIL") %>"/>   
        <c:set var="PHONENUM" value="<%= request.getParameter("PHONENUM") %>"/> 
        <c:set var="ADDRESS_1" value="<%= request.getParameter("ADDRESS_1") %>"/> 
        <c:set var="ADDRESS_2" value="<%= request.getParameter("ADDRESS_2") %>"/> 
        <c:set var="PASSWORD" value="<%= request.getParameter("PASSWORD") %>"/> 
        <c:if test="${(USERIC!=null)&&(EMAIL!=null)&&(PHONENUM!=null)&& (ADDRESS_1!=null)&&(ADDRESS_2!=null)&&(PASSWORD!=null)}" var="result">
            <sql:update var="result" dataSource="${myDatasource}">
                INSERT INTO APP.CUSTOMER (USERIC, EMAIL, PHONENUM, ADDRESS_1, ADDRESS_2, PASSWORD) 
	VALUES  ('${USERIC}','${EMAIL}','${PHONENUM}','${ADDRESS_1}','${ADDRESS_2}','${PASSWORD}')

            </sql:update>    
        </c:if>
        
        <script type="text/javascript">
     <c:if test="${result >=1}">
         window.alert("register sucessfully");
         window.location = "login.jsp";
     </c:if></script>
        
    </body>
</html>
