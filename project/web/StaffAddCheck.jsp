<%-- 
    Document   : StaffAddCheck
    Created on : Jan 21, 2022, 11:43:33 AM
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

        <c:set var="staffid" value="<%= session.getAttribute("staffId")%>" />
        
        <c:set var="email" value="<%= request.getParameter("staff_email")%>"/>   
        <c:set var="name" value="<%= request.getParameter("staff_name")%>"/> 
        <c:set var="password" value="<%= request.getParameter("staff_pass")%>"/> 
        <c:if test="${(email!=null)&&(name!=null)&&(password!=null)}" var="result">
            <sql:update var="result" dataSource="${myDatasource}">
                INSERT INTO APP.STAFF (STAFF_EMAIL, STAFF_NAME, STAFF_PASS) 
                VALUES  ('${email}','${name}','${password}')

            </sql:update>    
        </c:if>
                
                
                <script type="text/javascript">
     <c:if test="${result >=1}">
         window.alert("new staff add");
         window.location = "StaffAdd.jsp";
     </c:if></script>
        
        
        
    </body>
</html>
