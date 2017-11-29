/**
 *
 */
package com.tshop.storefront.controllers.cms;

import de.hybris.platform.acceleratorfacades.device.ResponsiveMediaFacade;
import de.hybris.platform.commercefacades.product.data.ImageData;
import de.hybris.platform.commerceservices.i18n.CommerceCommonI18NService;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tshop.core.model.TSHOPSimpleResponsiveBannerComponentModel;
import com.tshop.storefront.controllers.ControllerConstants;


/**
 * @author milap.patel
 *
 */
@Controller("TSHOPSimpleResponsiveBannerComponentController")
@RequestMapping(value = ControllerConstants.Actions.Cms.TSHOPSimpleResponsiveBannerComponent)
public class TSHOPSimpleResponsiveBannerComponentController
		extends AbstractAcceleratorCMSComponentController<TSHOPSimpleResponsiveBannerComponentModel>
{
	@Resource(name = "responsiveMediaFacade")
	private ResponsiveMediaFacade responsiveMediaFacade;

	@Resource(name = "commerceCommonI18NService")
	private CommerceCommonI18NService commerceCommonI18NService;

	@Override
	protected void fillModel(final HttpServletRequest request, final Model model,
			final TSHOPSimpleResponsiveBannerComponentModel component)
	{
		final List<ImageData> mediaDataList = responsiveMediaFacade
				.getImagesFromMediaContainer(component.getMedia(commerceCommonI18NService.getCurrentLocale()));
		model.addAttribute("medias", mediaDataList);
		model.addAttribute("urlLink", component.getUrlLink());
		model.addAttribute("bannerTitle", component.getTitle());
	}
}