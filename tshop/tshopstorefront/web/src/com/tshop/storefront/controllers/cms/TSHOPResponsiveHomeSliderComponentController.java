/**
 *
 */
package com.tshop.storefront.controllers.cms;

import de.hybris.platform.acceleratorstorefrontcommons.controllers.cms.AbstractCMSComponentController;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tshop.core.model.TSHOPResponsiveHomeSliderComponentModel;
import com.tshop.storefront.controllers.ControllerConstants;


@Controller("TSHOPResponsiveHomeSliderComponentController")
@Scope("tenant")
@RequestMapping(value = ControllerConstants.Actions.Cms.TSHOPResponsiveHomeSliderComponent)
public class TSHOPResponsiveHomeSliderComponentController
		extends AbstractCMSComponentController<TSHOPResponsiveHomeSliderComponentModel>
{
	@Override
	protected void fillModel(final HttpServletRequest request, final Model model,
			final TSHOPResponsiveHomeSliderComponentModel component)
	{
		model.addAttribute("simpleResponsiveBanners", component.getBannersLinkList());
	}

	/*
	 * (non-Javadoc)
	 *
	 * @see
	 * de.hybris.platform.acceleratorstorefrontcommons.controllers.cms.AbstractCMSComponentController#getView(de.hybris.
	 * platform.cms2.model.contents.components.AbstractCMSComponentModel)
	 */
	@Override
	protected String getView(final TSHOPResponsiveHomeSliderComponentModel component)
	{
		// YTODO Auto-generated method stub
		return ControllerConstants.Views.Cms.ComponentPrefix + StringUtils.lowerCase(component.getItemtype());
	}
}