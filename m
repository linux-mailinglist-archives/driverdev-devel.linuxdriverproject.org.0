Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D5E624C254
	for <lists+driverdev-devel@lfdr.de>; Thu, 20 Aug 2020 17:37:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 30B8686958;
	Thu, 20 Aug 2020 15:37:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JO8c1s0LPebC; Thu, 20 Aug 2020 15:37:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B4D5A86277;
	Thu, 20 Aug 2020 15:37:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AE2281BF3C3
 for <devel@linuxdriverproject.org>; Thu, 20 Aug 2020 15:37:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A703C8803D
 for <devel@linuxdriverproject.org>; Thu, 20 Aug 2020 15:37:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IofJAAsyD4lV for <devel@linuxdriverproject.org>;
 Thu, 20 Aug 2020 15:37:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from asavdk3.altibox.net (asavdk3.altibox.net [109.247.116.14])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1D54E864E6
 for <devel@driverdev.osuosl.org>; Thu, 20 Aug 2020 15:37:02 +0000 (UTC)
Received: from ravnborg.org (unknown [188.228.123.71])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id 2E3E72001E;
 Thu, 20 Aug 2020 17:36:56 +0200 (CEST)
Date: Thu, 20 Aug 2020 17:36:54 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH 00/49] DRM driver for Hikey 970
Message-ID: <20200820153654.GA190547@ravnborg.org>
References: <cover.1597833138.git.mchehab+huawei@kernel.org>
 <20200819152120.GA106437@ravnborg.org>
 <20200819174027.70b39ee9@coco.lan>
 <20200819173558.GA3733@ravnborg.org>
 <20200820160649.54741194@coco.lan>
 <20200820144808.GA186324@ravnborg.org>
 <20200820171322.3b2e94fd@coco.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200820171322.3b2e94fd@coco.lan>
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=f+hm+t6M c=1 sm=1 tr=0
 a=S6zTFyMACwkrwXSdXUNehg==:117 a=S6zTFyMACwkrwXSdXUNehg==:17
 a=kj9zAlcOel0A:10 a=7gkXJVJtAAAA:8 a=VwQbUJbxAAAA:8
 a=laJNNbqgfG9yBzy7lO0A:9 a=CjuIK1q_8ugA:10 a=E9Po1WZjFZOl8hwRPBS3:22
 a=AjGcO6oz07-iQ99wixmX:22
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 Xinliang Liu <xinliang.liu@linaro.org>,
 Wanchun Zheng <zhengwanchun@hisilicon.com>, linuxarm@huawei.com,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 devel@driverdev.osuosl.org, Daniel Borkmann <daniel@iogearbox.net>,
 John Fastabend <john.fastabend@gmail.com>,
 Xiubin Zhang <zhangxiubin1@huawei.com>, Wei Xu <xuwei5@hisilicon.com>,
 David Airlie <airlied@linux.ie>, Xinwei Kong <kong.kongxinwei@hisilicon.com>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Bogdan Togorean <bogdan.togorean@analog.com>, Jakub Kicinski <kuba@kernel.org>,
 Laurentiu Palcu <laurentiu.palcu@nxp.com>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, Liwei Cai <cailiwei@hisilicon.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Chen Feng <puck.chen@hisilicon.com>,
 Alexei Starovoitov <ast@kernel.org>, linaro-mm-sig@lists.linaro.org,
 Rob Herring <robh+dt@kernel.org>, mauro.chehab@huawei.com,
 Rob Clark <robdclark@chromium.org>, linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Liuyao An <anliuyao@huawei.com>, netdev@vger.kernel.org,
 Rongrong Zou <zourongrong@gmail.com>, bpf@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Mauro.

Quick feedback below.

	Sam

On Thu, Aug 20, 2020 at 05:13:22PM +0200, Mauro Carvalho Chehab wrote:
> Em Thu, 20 Aug 2020 16:48:08 +0200
> Sam Ravnborg <sam@ravnborg.org> escreveu:
> 
> > Hi Mauro.
> > 
> > On Thu, Aug 20, 2020 at 04:06:49PM +0200, Mauro Carvalho Chehab wrote:
> > > Em Wed, 19 Aug 2020 19:35:58 +0200
> > > Sam Ravnborg <sam@ravnborg.org> escreveu:
> > > 
> > > I'm already handling the other comments from your review (I'll send a
> > > more complete comment about them after finishing),  
> > If you get back only on things you do not understand or do not agree on
> > that would be fine. The rest should be visible in the changelog on the
> > updated patch - no need to do extra work here.
> > 
> > > but I have a doubt what you meant about this:
> > >   
> > > > +static int kirin_drm_bind(struct device *dev)  
> > > > > +{
> > > > > +	struct drm_driver *driver = &kirin_drm_driver;
> > > > > +	struct drm_device *drm_dev;
> > > > > +	struct kirin_drm_private *priv;
> > > > > +	int ret;
> > > > > +
> > > > > +	drm_dev = drm_dev_alloc(driver, dev);
> > > > > +	if (!drm_dev)
> > > > > +		return -ENOMEM;
> > > > > +
> > > > > +	ret = kirin_drm_kms_init(drm_dev);
> > > > > +	if (ret)
> > > > > +		goto err_drm_dev_unref;
> > > > > +
> > > > > +	ret = drm_dev_register(drm_dev, 0);    
> > > > There is better ways to do this. See drm_drv.c for the code example.  
> > > 
> > > Not sure if I understood your comment here. The drm_drv.c example also calls 
> > > drm_dev_register().  
> > 
> > This is indeed not obvious from my comments but what I wnated to say is
> > that the driver should embed drm_device in some struct,
> > maybe in "struct kirin_drm_private".
> > 
> > This should also be part of the referenced example.
> > 
> > I hope this clarifies it.
> 
> Yeah. I was already doing those changes ;-) 
> 
> Something like the enclosed patch, right?
> 
> Btw, I'm not sure if the error handling part is ok, as I didn't check
> what the devm stuff does at the subsystem. 
> 
> -
> 
> On a separate question, I was unable to use the helper macros,
> as it sounds that there's no macro with this:
> 
> 	.dumb_create		= drm_gem_cma_dumb_create_internal,
> 
> The existing DRM_GEM_CMA_VMAP_DRIVER_OPS uses, instead
> drm_gem_cma_dumb_create(). I'm not sure if this driver can use
> such function instead.

From the documentation of drm_gem_cma_dumb_create_internal:
* It should not be used directly
* as their &drm_driver.dumb_create callback.

I would expect drm_gem_cma_dumb_create() to be the right choice.
So you can go ahead with DRM_GEM_CMA_VMAP_DRIVER_OPS

(I hope I am right, not the are	i know much about)


> staging: hikey9xx/gpu: use drm_managed interface
>     
> Use a more modern design for the driver binding logic by
> using drm_managed and getting rid of drm->dev_private.
>     
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> 
> diff --git a/drivers/staging/hikey9xx/gpu/kirin9xx_drm_drv.c b/drivers/staging/hikey9xx/gpu/kirin9xx_drm_drv.c
> index c7736f4d74b7..600c89605cc0 100644
> --- a/drivers/staging/hikey9xx/gpu/kirin9xx_drm_drv.c
> +++ b/drivers/staging/hikey9xx/gpu/kirin9xx_drm_drv.c
> @@ -29,12 +29,13 @@
>  #include <drm/drm_of.h>
>  #include <drm/drm_probe_helper.h>
>  #include <drm/drm_vblank.h>
> +#include <drm/drm_managed.h>
>  
>  #include "kirin9xx_drm_drv.h"
>  
>  static int kirin_drm_kms_cleanup(struct drm_device *dev)
>  {
> -	struct kirin_drm_private *priv = dev->dev_private;
> +	struct kirin_drm_private *priv = to_drm_private(dev);
>  	static struct kirin_dc_ops const *dc_ops;
>  
>  	if (priv->fbdev)
> @@ -45,15 +46,13 @@ static int kirin_drm_kms_cleanup(struct drm_device *dev)
>  	drm_kms_helper_poll_fini(dev);
>  	dc_ops->cleanup(dev);

>  	drm_mode_config_cleanup(dev);
This should also be gone when you are using
drmm_mode_config_init()

> -	devm_kfree(dev->dev, priv);
> -	dev->dev_private = NULL;
>  
>  	return 0;
>  }
>  
>  static void kirin_fbdev_output_poll_changed(struct drm_device *dev)
>  {
> -	struct kirin_drm_private *priv = dev->dev_private;
> +	struct kirin_drm_private *priv = to_drm_private(dev);
>  
>  	dsi_set_output_client(dev);
>  
> @@ -69,18 +68,20 @@ static const struct drm_mode_config_funcs kirin_drm_mode_config_funcs = {
>  
>  static int kirin_drm_kms_init(struct drm_device *dev)
>  {
> -	struct kirin_drm_private *priv = dev->dev_private;
> +	struct kirin_drm_private *priv = to_drm_private(dev);
It is assigned a few lines later.

>  	static struct kirin_dc_ops const *dc_ops;
>  	int ret;
>  
> -	priv = devm_kzalloc(dev->dev, sizeof(*priv), GFP_KERNEL);
> +	priv = drmm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
>  	if (!priv)
>  		return -ENOMEM;

OK, I am confused here.
This code allocates a struct kirin_drm_private.
But the calling function does the same.
What am I missing here? Coffee?

>  
>  	dev->dev_private = priv;
>  	dev_set_drvdata(dev->dev, dev);
>  
> -	drm_mode_config_init(dev);
> +	ret = drmm_mode_config_init(dev);
> +	if (ret)
> +		return ret;
>  
>  	dev->mode_config.min_width = 0;
>  	dev->mode_config.min_height = 0;
> @@ -94,20 +95,20 @@ static int kirin_drm_kms_init(struct drm_device *dev)
>  	dc_ops = of_device_get_match_data(dev->dev);
>  	ret = dc_ops->init(dev);
>  	if (ret)
> -		goto err_mode_config_cleanup;
> +		return ret;
>  
>  	/* bind and init sub drivers */
>  	ret = component_bind_all(dev->dev, dev);
>  	if (ret) {
>  		DRM_ERROR("failed to bind all component.\n");
> -		goto err_dc_cleanup;
> +		return ret;
>  	}
>  
>  	/* vblank init */
>  	ret = drm_vblank_init(dev, dev->mode_config.num_crtc);
>  	if (ret) {
>  		DRM_ERROR("failed to initialize vblank.\n");
> -		goto err_unbind_all;
> +		return ret;
>  	}
>  	/* with irq_enabled = true, we can use the vblank feature. */
>  	dev->irq_enabled = true;
> @@ -119,28 +120,10 @@ static int kirin_drm_kms_init(struct drm_device *dev)
>  	drm_kms_helper_poll_init(dev);
>  
>  	return 0;
> -
> -err_unbind_all:
> -	component_unbind_all(dev->dev, dev);
> -err_dc_cleanup:
> -	dc_ops->cleanup(dev);
> -err_mode_config_cleanup:
> -	drm_mode_config_cleanup(dev);
> -	devm_kfree(dev->dev, priv);
> -	dev->dev_private = NULL;
> -
> -	return ret;
>  }
>  
>  DEFINE_DRM_GEM_CMA_FOPS(kirin_drm_fops);
>  
> -static int kirin_gem_cma_dumb_create(struct drm_file *file,
> -				     struct drm_device *dev,
> -				     struct drm_mode_create_dumb *args)
> -{
> -	return drm_gem_cma_dumb_create_internal(file, dev, args);
> -}
> -
>  static int kirin_drm_connectors_register(struct drm_device *dev)
>  {
>  	struct drm_connector_list_iter conn_iter;
> @@ -176,11 +159,11 @@ static int kirin_drm_connectors_register(struct drm_device *dev)
>  static struct drm_driver kirin_drm_driver = {
>  	.driver_features	= DRIVER_GEM | DRIVER_MODESET |
>  				  DRIVER_ATOMIC | DRIVER_RENDER,
> -	.fops				= &kirin_drm_fops,
> +	.fops			= &kirin_drm_fops,
>  
>  	.gem_free_object	= drm_gem_cma_free_object,
>  	.gem_vm_ops		= &drm_gem_cma_vm_ops,
> -	.dumb_create		= kirin_gem_cma_dumb_create,
> +	.dumb_create		= drm_gem_cma_dumb_create_internal,
>  
>  	.prime_handle_to_fd	= drm_gem_prime_handle_to_fd,
>  	.prime_fd_to_handle	= drm_gem_prime_fd_to_handle,
> @@ -207,42 +190,48 @@ static int compare_of(struct device *dev, void *data)
>  static int kirin_drm_bind(struct device *dev)
>  {
>  	struct drm_driver *driver = &kirin_drm_driver;
> -	struct drm_device *drm_dev;
>  	struct kirin_drm_private *priv;
> +	struct drm_device *drm;
>  	int ret;
>  
> -	drm_dev = drm_dev_alloc(driver, dev);
> -	if (!drm_dev)
> +	priv = kzalloc(sizeof(*priv), GFP_KERNEL);
> +	if (!priv)
>  		return -ENOMEM;
>  
> -	ret = kirin_drm_kms_init(drm_dev);
> +	drm = &priv->drm;
> +
> +	ret = devm_drm_dev_init(dev, drm, driver);
> +	if (ret) {
> +		kfree(priv);
> +		return ret;
> +	}
> +	drmm_add_final_kfree(drm, priv);
> +
> +	ret = kirin_drm_kms_init(drm);
>  	if (ret)
> -		goto err_drm_dev_unref;
> +		return ret;
>  
> -	ret = drm_dev_register(drm_dev, 0);
> +	ret = drm_dev_register(drm, 0);
>  	if (ret)
> -		goto err_kms_cleanup;
> +		return ret;
>  
> -	drm_fbdev_generic_setup(drm_dev, 0);
> -	priv = drm_dev->dev_private;
> +	drm_fbdev_generic_setup(drm, 0);
>  
>  	/* connectors should be registered after drm device register */
> -	ret = kirin_drm_connectors_register(drm_dev);
> +	ret = kirin_drm_connectors_register(drm);
>  	if (ret)
>  		goto err_drm_dev_unregister;
>  
>  	DRM_INFO("Initialized %s %d.%d.%d %s on minor %d\n",
>  		 driver->name, driver->major, driver->minor, driver->patchlevel,
> -		 driver->date, drm_dev->primary->index);
> +		 driver->date, drm->primary->index);
>  
>  	return 0;
>  
>  err_drm_dev_unregister:
> -	drm_dev_unregister(drm_dev);
> -err_kms_cleanup:
> -	kirin_drm_kms_cleanup(drm_dev);
> -err_drm_dev_unref:
> -	drm_dev_put(drm_dev);
> +	drm_dev_unregister(drm);
> +	kirin_drm_kms_cleanup(drm);
> +	drm_dev_put(drm);
>  
>  	return ret;
>  }
> @@ -252,6 +241,7 @@ static void kirin_drm_unbind(struct device *dev)
>  	struct drm_device *drm_dev = dev_get_drvdata(dev);
>  
>  	drm_dev_unregister(drm_dev);
I think this is not needed. But the component framework confuses me.

> +	drm_atomic_helper_shutdown(drm_dev);
>  	kirin_drm_kms_cleanup(drm_dev);
>  	drm_dev_put(drm_dev);
This should likewise go I think.

>  }
> diff --git a/drivers/staging/hikey9xx/gpu/kirin9xx_drm_drv.h b/drivers/staging/hikey9xx/gpu/kirin9xx_drm_drv.h
> index 58f6fc7be347..09255d136c54 100644
> --- a/drivers/staging/hikey9xx/gpu/kirin9xx_drm_drv.h
> +++ b/drivers/staging/hikey9xx/gpu/kirin9xx_drm_drv.h
> @@ -31,6 +31,7 @@ struct kirin_dc_ops {
>  };
>  
>  struct kirin_drm_private {
> +	struct drm_device drm;
>  	struct drm_fb_helper *fbdev;
>  	struct drm_crtc *crtc[MAX_CRTC];
>  };
> @@ -44,4 +45,6 @@ extern const struct kirin_dc_ops kirin960_dss_dc_ops;
>  extern const struct kirin_dc_ops kirin970_dss_dc_ops;
>  void dsi_set_output_client(struct drm_device *dev);
>  
> +#define to_drm_private(d) container_of(d, struct kirin_drm_private, drm)
> +
>  #endif /* __KIRIN_DRM_DRV_H__ */
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
