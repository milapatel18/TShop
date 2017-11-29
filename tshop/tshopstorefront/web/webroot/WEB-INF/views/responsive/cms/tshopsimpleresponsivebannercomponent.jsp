<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<c:forEach items="${medias}" var="media">
	<c:choose>
		<c:when test="${empty imagerData}">
			<c:set var="imagerData">"${media.width}":"${media.url}"</c:set>
		</c:when>
		<c:otherwise>
			<c:set var="imagerData">${imagerData},"${media.width}":"${media.url}"</c:set>
		</c:otherwise>
	</c:choose>
	<c:if test="${empty altText}">
		<c:set var="altText" value="${media.altText}"/>
	</c:if>	
	<c:if test="${media.width>=1200}">
		<c:set var="mediaurl" value="${media.url}"/>
	</c:if>	
	<c:if test="${media.width >900}">
		<c:set var="mediaURL" value="${media.url}"/>
	</c:if>
</c:forEach>
<c:url value="${bannerTitle}" var="bannersTitle" />
<c:url value="${urlLink}" var="encodedUrl" />

<a href="${encodedUrl}">
	<img alt="ads" class="img-responsive" src="${mediaURL}" />
</a>
                   