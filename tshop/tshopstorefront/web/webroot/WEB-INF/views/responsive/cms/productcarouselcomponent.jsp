<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="theme" tagdir="/WEB-INF/tags/shared/theme"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="format" tagdir="/WEB-INF/tags/shared/format"%>
<%@ taglib prefix="product" tagdir="/WEB-INF/tags/responsive/product"%>
<%@ taglib prefix="component" tagdir="/WEB-INF/tags/shared/component"%>

<c:choose>
	<c:when test="${not empty productData}">

		<div class="container main-container">

			<!-- Main component call to action -->

			<div class="row featuredPostContainer globalPadding style2">
				<h3 class="section-title style2 text-center">
					<span>${title}</span>
				</h3>

				<div id="productslider" class="owl-carousel owl-theme">
					<c:choose>
						<c:when test="${component.popup}">
							<c:forEach items="${productData}" var="product">

								<c:url value="${product.url}/quickView"
									var="productQuickViewUrl" />
								<%-- <div class="carousel__item">
										<a href="${productQuickViewUrl}" class="js-reference-item">
											<div class="carousel__item--thumb">
												<product:productPrimaryReferenceImage product="${product}"
													format="product" />
											</div>
											<div class="carousel__item--name">${product.name}</div>
											<div class="carousel__item--price">
												<format:fromPrice priceData="${product.price}" />
											</div>
										</a>
									</div>
 --%>
								<div class="item">
									<div class="product">
										<a class="add-fav tooltipHere" data-toggle="tooltip"
											data-original-title="Add to Wishlist" data-placement="left">
											<i class="glyphicon glyphicon-heart"></i>
										</a>

										<div class="image">
											<div class="quickview">
												<a data-toggle="modal" class="btn btn-xs btn-quickview"
													href="${productQuickViewUrl}"
													data-target="#productSetailsModalAjax">Quick View </a>
											</div>
											<a href="product-details.html"><product:productPrimaryReferenceImage
													product="${product}" format="product" /></a>

											<div class="promotion">
												<span class="new-product"> NEW</span> <span class="discount">15%
													OFF</span>
											</div>
										</div>
										<div class="description">
											<h4>
												<a href="product-details.html">${product.name} </a>
											</h4>
											<p>${product.name}</p>
										</div>
										<div class="price">
											<span></span>
										</div>
										<div class="action-control">
											<a class="btn btn-primary"> <span class="add2cart"><i
													class="glyphicon glyphicon-shopping-cart"> </i> Add to cart
											</span>
											</a>
										</div>
									</div>
								</div>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<c:forEach items="${productData}" var="product">

								<c:url value="${product.url}" var="productUrl" />

								<div class="item">
									<div class="product">
										<a class="add-fav tooltipHere" data-toggle="tooltip"
											data-original-title="Add to Wishlist" data-placement="left">
											<i class="glyphicon glyphicon-heart"></i>
										</a>

										<div class="image">
											<div class="quickview">
												<a data-toggle="modal" class="btn btn-xs btn-quickview"
													href="${productQuickViewUrl}"
													data-target="#productSetailsModalAjax">Quick View </a>
											</div>
											<a href="product-details.html"><product:productPrimaryReferenceImage
													product="${product}" format="product" /></a>

											<div class="promotion">
												<span class="new-product"> NEW</span> <span class="discount">15%
													OFF</span>
											</div>
										</div>
										<div class="description">
											<h4>
												<a href="product-details.html">${product.name} </a>
											</h4>
											<p>${product.name}</p>
										</div>
										<div class="price">
											<span></span>
										</div>
										<div class="action-control">
											<a class="btn btn-primary"> <span class="add2cart"><i
													class="glyphicon glyphicon-shopping-cart"> </i> Add to cart
											</span>
											</a>
										</div>
									</div>
								</div>
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</div>
	</c:when>

	<c:otherwise>
		<component:emptyComponent />
	</c:otherwise>
</c:choose>



