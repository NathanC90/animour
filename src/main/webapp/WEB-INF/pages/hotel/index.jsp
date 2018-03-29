<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

${beansselect.hotelId}
${beansselect.onwer}
${beansselect.type}
${beansselect.total}
${beansselect.species}
${beansselect.dogName}
${beansselect.checkIn}




<c:forEach var="avar" items="${beansfindall}">
${avar.id}
${avar.onwer}
${avar.type}
${avar.total}
${avar.species}
${avar.dogName}
${avar.checkIn}



</c:forEach>
</body>
</html>