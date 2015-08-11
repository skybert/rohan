<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="left" value="${element.areas.left}" scope="page"/>
<c:set var="center" value="${element.areas.center}" scope="page"/>
<c:set var="right" value="${element.areas.right}" scope="page"/>

<jsp:include page="group-info.jsp"/>

<div class="three-col">
  <c:forEach items="${left.items}" var="item">
    <c:set var="element" value="${item}" scope="request"/>
    <jsp:include page="../element/${element.content.articleTypeName}.jsp"/>
  </c:forEach>
  <c:forEach items="${center.items}" var="item">
    <c:set var="element" value="${item}" scope="request"/>
    <jsp:include page="../element/${element.content.articleTypeName}.jsp"/>
  </c:forEach>
  <c:forEach items="${right.items}" var="item">
    <c:set var="element" value="${item}" scope="request"/>
    <jsp:include page="../element/${element.content.articleTypeName}.jsp"/>
  </c:forEach>
</div>
