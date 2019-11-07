<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Login</title>
</head>
<body>
    
         <form:select path="Place">
          <form:options items="${tourism}" />
   <form:option value="NONE" label="--- Select ---"/>
  
   </form:select>
   
                    </body>
                    
</html>