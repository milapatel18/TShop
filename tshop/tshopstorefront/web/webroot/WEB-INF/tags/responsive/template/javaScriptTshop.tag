<%@ tag body-content="empty" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="theme" tagdir="/WEB-INF/tags/shared/theme"%>
<%@ taglib prefix="cms" tagdir="/WEB-INF/tags/responsive/template/cms"%>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/responsive/template"%>

<c:url value="/" var="siteRootUrl" />

<template:javaScriptVariables />

<c:choose>
	<c:when test="${wro4jEnabled}">
		<script type="text/javascript"
			src="${contextPath}/wro/all_responsive.js"></script>
		<script type="text/javascript"
			src="${contextPath}/wro/addons_responsive.js"></script>
	</c:when>
	<c:otherwise>

		<%-- plugins --%>
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js">
			
		</script>
		<script src="${themeResourcePath}/assets/bootstrap/js/bootstrap.min.js"></script>
		<script>
			// this script required for subscribe modal
			$(window).load(function() {
				// full load
				$('#modalAds').modal('show');
				$('#modalAds').removeClass('hide');
			});
		</script>

		<!-- include jqueryCycle plugin -->
		<script src="${themeResourcePath}/assets/js/jquery.cycle2.min.js"></script>

		<!-- include easing plugin -->
		<script src="${themeResourcePath}/assets/js/jquery.easing.1.3.js"></script>

		<!-- include  parallax plugin -->
		<script type="text/javascript" src="${themeResourcePath}/assets/js/jquery.parallax-1.1.js"></script>

		<!-- optionally include helper plugins -->
		<script type="text/javascript"
			src="${themeResourcePath}/assets/js/helper-plugins/jquery.mousewheel.min.js"></script>

		<!-- include mCustomScrollbar plugin //Custom Scrollbar  -->

		<script type="text/javascript"
			src="${themeResourcePath}/assets/js/jquery.mCustomScrollbar.js"></script>

		<!-- include icheck plugin // customized checkboxes and radio buttons   -->
		<script type="text/javascript"
			src="${themeResourcePath}/assets/plugins/icheck-1.x/icheck.min.js"></script>

		<!-- include grid.js // for equal Div height  -->
		<script src="${themeResourcePath}/assets/js/grids.js"></script>

		<!-- include carousel slider plugin  -->
		<script src="${themeResourcePath}/assets/js/owl.carousel.min.js"></script>

		<!-- jQuery select2 // custom select   -->
		<script
			src="http://cdnjs.cloudflare.com/ajax/libs/select2/4.0.0/js/select2.min.js"></script>

		<!-- include touchspin.js // touch friendly input spinner component   -->
		<script src="${themeResourcePath}/assets/js/bootstrap.touchspin.js"></script>

		<!-- include custom script for only homepage  -->
		<script src="${themeResourcePath}/assets/js/home.js"></script>
		<!-- include custom script for site  -->
		<script src="${themeResourcePath}/assets/js/script.js"></script>
		<script>
			
		</script>

		<%-- Custom ACC JS --%>

		<script type="text/javascript"
			src="${commonResourcePath}/js/acc.address.js"></script>
		<script type="text/javascript"
			src="${commonResourcePath}/js/acc.autocomplete.js"></script>
		<script type="text/javascript"
			src="${commonResourcePath}/js/acc.carousel.js"></script>
		<script type="text/javascript"
			src="${commonResourcePath}/js/acc.cart.js"></script>
		<script type="text/javascript"
			src="${commonResourcePath}/js/acc.cartitem.js"></script>
		<script type="text/javascript"
			src="${commonResourcePath}/js/acc.checkout.js"></script>
		<script type="text/javascript"
			src="${commonResourcePath}/js/acc.checkoutaddress.js"></script>
		<script type="text/javascript"
			src="${commonResourcePath}/js/acc.checkoutsteps.js"></script>
		<script type="text/javascript"
			src="${commonResourcePath}/js/acc.cms.js"></script>
		<script type="text/javascript"
			src="${commonResourcePath}/js/acc.colorbox.js"></script>
		<script type="text/javascript"
			src="${commonResourcePath}/js/acc.common.js"></script>
		<script type="text/javascript"
			src="${commonResourcePath}/js/acc.forgottenpassword.js"></script>
		<script type="text/javascript"
			src="${commonResourcePath}/js/acc.global.js"></script>
		<script type="text/javascript"
			src="${commonResourcePath}/js/acc.hopdebug.js"></script>
		<script type="text/javascript"
			src="${commonResourcePath}/js/acc.imagegallery.js"></script>
		<script type="text/javascript"
			src="${commonResourcePath}/js/acc.langcurrencyselector.js"></script>
		<script type="text/javascript"
			src="${commonResourcePath}/js/acc.minicart.js"></script>
		<script type="text/javascript"
			src="${commonResourcePath}/js/acc.navigation.js"></script>
		<script type="text/javascript"
			src="${commonResourcePath}/js/acc.order.js"></script>
		<script type="text/javascript"
			src="${commonResourcePath}/js/acc.paginationsort.js"></script>
		<script type="text/javascript"
			src="${commonResourcePath}/js/acc.payment.js"></script>
		<script type="text/javascript"
			src="${commonResourcePath}/js/acc.paymentDetails.js"></script>
		<script type="text/javascript"
			src="${commonResourcePath}/js/acc.pickupinstore.js"></script>
		<script type="text/javascript"
			src="${commonResourcePath}/js/acc.product.js"></script>
		<script type="text/javascript"
			src="${commonResourcePath}/js/acc.productDetail.js"></script>
		<script type="text/javascript"
			src="${commonResourcePath}/js/acc.quickview.js"></script>
		<script type="text/javascript"
			src="${commonResourcePath}/js/acc.ratingstars.js"></script>
		<script type="text/javascript"
			src="${commonResourcePath}/js/acc.refinements.js"></script>
		<script type="text/javascript"
			src="${commonResourcePath}/js/acc.silentorderpost.js"></script>
		<script type="text/javascript"
			src="${commonResourcePath}/js/acc.tabs.js"></script>
		<script type="text/javascript"
			src="${commonResourcePath}/js/acc.termsandconditions.js"></script>
		<script type="text/javascript"
			src="${commonResourcePath}/js/acc.track.js"></script>
		<script type="text/javascript"
			src="${commonResourcePath}/js/acc.storefinder.js"></script>
		<script type="text/javascript"
			src="${commonResourcePath}/js/acc.futurelink.js"></script>
		<script type="text/javascript"
			src="${commonResourcePath}/js/acc.productorderform.js"></script>
		<script type="text/javascript"
			src="${commonResourcePath}/js/acc.savedcarts.js"></script>
		<script type="text/javascript"
			src="${commonResourcePath}/js/acc.multidgrid.js"></script>
		<script type="text/javascript"
			src="${commonResourcePath}/js/acc.quickorder.js"></script>

		<script type="text/javascript"
			src="${commonResourcePath}/js/acc.csv-import.js"></script>

		<script type="text/javascript"
			src="${commonResourcePath}/js/_autoload.js"></script>

		<%-- Cms Action JavaScript files --%>
		<c:forEach items="${cmsActionsJsFiles}" var="actionJsFile">
			<script type="text/javascript"
				src="${commonResourcePath}/js/cms/${actionJsFile}"></script>
		</c:forEach>

		<%-- AddOn JavaScript files --%>
		<c:forEach items="${addOnJavaScriptPaths}" var="addOnJavaScript">
			<script type="text/javascript" src="${addOnJavaScript}"></script>
		</c:forEach>

	</c:otherwise>
</c:choose>


<cms:previewJS cmsPageRequestContextData="${cmsPageRequestContextData}" />
