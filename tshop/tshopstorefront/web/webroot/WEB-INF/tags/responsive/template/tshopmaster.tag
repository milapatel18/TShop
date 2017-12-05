<%@ tag body-content="scriptless" trimDirectiveWhitespaces="true"%>
<%@ attribute name="pageTitle" required="false" rtexprvalue="true"%>
<%@ attribute name="metaDescription" required="false"%>
<%@ attribute name="metaKeywords" required="false"%>
<%@ attribute name="pageCss" required="false" fragment="true"%>
<%@ attribute name="pageScripts" required="false" fragment="true"%>

<%@ taglib prefix="template" tagdir="/WEB-INF/tags/responsive/template"%>
<%@ taglib prefix="analytics" tagdir="/WEB-INF/tags/shared/analytics"%>
<%@ taglib prefix="addonScripts"
	tagdir="/WEB-INF/tags/responsive/common/header"%>
<%@ taglib prefix="generatedVariables"
	tagdir="/WEB-INF/tags/shared/variables"%>
<%@ taglib prefix="debug" tagdir="/WEB-INF/tags/shared/debug"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="htmlmeta" uri="http://hybris.com/tld/htmlmeta"%>

<!DOCTYPE html>
<html lang="${currentLanguage.isocode}">
<head>
<title>${not empty pageTitle ? pageTitle : not empty cmsPage.title ? cmsPage.title : 'Accelerator Title'}
</title>

<%-- Meta Content --%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />

<%-- Additional meta tags --%>
<htmlmeta:meta items="${metatags}" />

<%-- Favourite Icon --%>
<spring:theme code="img.favIcon" text="/" var="favIconPath" />
<link rel="shortcut icon" type="image/x-icon" media="all"
	href="${originalContextPath}${favIconPath}" />
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="assets/ico/apple-touch-icon-144-precomposed.png" />
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="assets/ico/apple-touch-icon-114-precomposed.png" />
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="assets/ico/apple-touch-icon-72-precomposed.png" />
<link rel="apple-touch-icon-precomposed"
	href="ico/apple-touch-icon-57-precomposed.png" />
<link rel="shortcut icon" href="assets/ico/favicon.png" />

<%-- CSS Files Are Loaded First as they can be downloaded in parallel --%>
<template:styleSheetsTshop />

<%-- Inject any additional CSS required by the page --%>
<jsp:invoke fragment="pageCss" />
<analytics:analytics />
<generatedVariables:generatedVariables />






<!-- Just for debugging purposes. -->
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->

<!-- include pace script for automatic web page progress bar  -->
<script>
	paceOptions = {
		elements : true
	};
</script>
<script src="${themeResourcePath}/assets/js/pace.min.js"></script>

</head>

<body
	class="${pageBodyCssClasses} ${cmsPageRequestContextData.liveEdit ? ' yCmsLiveEdit' : ''} language-${currentLanguage.isocode}">

	<!-- Modal Login start -->
	<div class="modal signUpContent fade" id="ModalLogin" tabindex="-1"
		role="dialog">
		<div class="modal-dialog ">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h3 class="modal-title-site text-center">Login to TSHOP</h3>
				</div>
				<div class="modal-body">
					<div class="form-group login-username">
						<div>
							<input name="log" id="login-user" class="form-control input"
								size="20" placeholder="Enter Username" type="text">
						</div>
					</div>
					<div class="form-group login-password">
						<div>
							<input name="Password" id="login-password"
								class="form-control input" size="20" placeholder="Password"
								type="password">
						</div>
					</div>
					<div class="form-group">
						<div>
							<div class="checkbox login-remember">
								<label> <input name="rememberme" value="forever"
									checked="checked" type="checkbox"> Remember Me
								</label>
							</div>
						</div>
					</div>
					<div>
						<div>
							<input name="submit" class="btn  btn-block btn-lg btn-primary"
								value="LOGIN" type="submit">
						</div>
					</div>
					<!--userForm-->

				</div>
				<div class="modal-footer">
					<p class="text-center">
						Not here before? <a data-toggle="modal" data-dismiss="modal"
							href="#ModalSignup"> Sign Up. </a> <br> <a
							href="forgot-password.html"> Lost your password? </a>
					</p>
				</div>
			</div>
			<!-- /.modal-content -->

		</div>
		<!-- /.modal-dialog -->

	</div>
	<!-- /.Modal Login -->

	<!-- Modal Signup start -->
	<div class="modal signUpContent fade" id="ModalSignup" tabindex="-1"
		role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h3 class="modal-title-site text-center">REGISTER</h3>
				</div>
				<div class="modal-body">
					<div class="control-group">
						<a class="fb_button btn  btn-block btn-lg " href="#"> SIGNUP
							WITH FACEBOOK </a>
					</div>
					<h5 style="padding: 10px 0 10px 0;" class="text-center">OR</h5>

					<div class="form-group reg-username">
						<div>
							<input name="login" class="form-control input" size="20"
								placeholder="Enter Username" type="text">
						</div>
					</div>
					<div class="form-group reg-email">
						<div>
							<input name="reg" class="form-control input" size="20"
								placeholder="Enter Email" type="text">
						</div>
					</div>
					<div class="form-group reg-password">
						<div>
							<input name="password" class="form-control input" size="20"
								placeholder="Password" type="password">
						</div>
					</div>
					<div class="form-group">
						<div>
							<div class="checkbox login-remember">
								<label> <input name="rememberme" id="rememberme"
									value="forever" checked="checked" type="checkbox">
									Remember Me
								</label>
							</div>
						</div>
					</div>
					<div>
						<div>
							<input name="submit" class="btn  btn-block btn-lg btn-primary"
								value="REGISTER" type="submit">
						</div>
					</div>
					<!--userForm-->

				</div>
				<div class="modal-footer">
					<p class="text-center">
						Already member? <a data-toggle="modal" data-dismiss="modal"
							href="#ModalLogin"> Sign in </a>
					</p>
				</div>
			</div>
			<!-- /.modal-content -->

		</div>
		<!-- /.modal-dialog -->

	</div>
	<!-- /.ModalSignup End -->

	<%-- Inject the page body here --%>
	<jsp:doBody />



	<%-- Load JavaScript required by the site --%>
	<template:javaScriptTshop />

	<%-- Inject any additional JavaScript required by the page --%>
	<%-- <jsp:invoke fragment="pageScripts" />--%>
	<%-- Inject CMS Components from addons using the placeholder slot--%>
	<addonScripts:addonScripts />


</body>

<debug:debugFooter />

</html>
