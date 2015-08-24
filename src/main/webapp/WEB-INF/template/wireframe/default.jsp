<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://www.escenic.com/taglib/escenic-section" prefix="section" %>
<%@ taglib uri="http://www.escenic.com/taglib/escenic-view" prefix="view" %>
<h2>Section: ${section.name}</h2>
<div id="menu">
  <h3>
    Menu
  </h3>
  <bean:define id="rootSection" name="publication" property="rootSection" type="neo.xredsys.api.Section"/>
  <section:recursiveView id="secView" name="rootSection" depth="2"/>
  <c:url var="arrow" value="/gfx/arrow.gif" scope="request"/>
  <view:iterate view="<%=secView%>" id="item" type="neo.xredsys.api.Section">
    <section:use section="<%=item%>">
      <view:forEachLevel>
        &nbsp;
      </view:forEachLevel>
      &nbsp;→&nbsp;<a href="${section.url}">${section.name}</a><br/>
    </section:use>
  </view:iterate>
</div>

<c:choose>
  <c:when test="${requestScope['com.escenic.context']=='art'}">
    <jsp:include page="../article/${article.articleTypeName}.jsp"/>
  </c:when>
  <c:otherwise>
    <jsp:include page="../group/${pool.rootElement.type}.jsp" />
  </c:otherwise>
</c:choose>
