<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.escenic.com/taglib/escenic-article" prefix="article" %>

<h3>Root group</h3>

<h4>
  Header
</h4>
<c:forEach items="${pool.rootElement.areas.header.items}" var="item">
  <c:set var="element" value="${item}" scope="request"/>
  <jsp:include page="${item.type}.jsp"/>
</c:forEach>
<h4>
  Main
</h4>
<c:forEach items="${pool.rootElement.areas.main.items}" var="item">
  <c:set var="element" value="${item}" scope="request"/>
  <jsp:include page="${item.type}.jsp"/>
</c:forEach>
<h4>
  Footer
</h4>
<c:forEach items="${pool.rootElement.areas.footer.items}" var="item">
  <c:set var="element" value="${item}" scope="request"/>
  <jsp:include page="${item.type}.jsp"/>
</c:forEach>

<h4>
  Article list items (in current section)
</h4>
<article:list id="myArticleList" />
<ol>
  <c:forEach items="${myArticleList}" var="item">
    <li>
      <a href="${item.url}">${item.title}</a> ${item.id}
    </li>
  </c:forEach>
</ol>
