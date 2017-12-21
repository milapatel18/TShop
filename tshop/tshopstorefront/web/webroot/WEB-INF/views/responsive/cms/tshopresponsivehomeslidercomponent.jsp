<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/desktop/template"%>
<%@ taglib prefix="theme" tagdir="/WEB-INF/tags/shared/theme"%>
<%@ taglib prefix="nav" tagdir="/WEB-INF/tags/desktop/nav"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="cms" uri="http://hybris.com/tld/cmstags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="ycommerce" uri="http://hybris.com/tld/ycommercetags"%>
<%@ taglib prefix="common" tagdir="/WEB-INF/tags/desktop/common"%>
<%@ taglib prefix="breadcrumb"
	tagdir="/WEB-INF/tags/desktop/nav/breadcrumb"%>




<div class="banner">
	<div class="full-container">
		<div class="slider-content">
			<ul id="pager2" class="container">
			</ul>
			<!-- prev/next links -->

			<span class="prevControl sliderControl"> <i
				class="fa fa-angle-left fa-3x "></i></span> <span
				class="nextControl sliderControl"> <i
				class="fa fa-angle-right fa-3x "></i></span>

			<div class="slider slider-v1" data-cycle-swipe=true
				data-cycle-prev=".prevControl" data-cycle-next=".nextControl"
				data-cycle-loader="wait">
				<!-- <div class="slider-item slider-item-img1">
					<img src="images/slider/slider0.jpg"
						class="img-responsive parallaximg sliderImg" alt="img">
				</div> -->
				<c:forEach items="${simpleResponsiveBanners}"
					var="simpleResponsiveBanner" varStatus="homeSliderIndex">
					<c:set var="homeSliderCount" value="${homeSliderIndex.count}"
						scope="session"></c:set>
					<cms:component component="${simpleResponsiveBanner}"
						evaluateRestriction="true"
						class="slider-item slider-item-img${homeSliderCount+1}"
						element="div" />
				</c:forEach>
			</div>
			<!--/.slider-content-->
		</div>
		<!--/.full-container-->
	</div>
</div>

<!--/.banner style1-->