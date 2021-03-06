<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta http-equiv="Content-type" content="text/html; charset=iso-8859-1" />
    <link rel="stylesheet" type="text/css"
          href="http://skybert.net/theme/styles/skybert.css" />
    <style type="text/css">
      #menu { float: right; }
    </style>
    <title>
      Publication: ${publication.name}
      <c:if test="${requestScope['com.escenic.context']=='art'}">
        - ${article.fields.title}
      </c:if>
    </title>
  </head>
  <body>
    <h1>Publication: ${publication.name} </h1>
    <jsp:include page="wireframe/default.jsp"/>
  </body>
</html>
