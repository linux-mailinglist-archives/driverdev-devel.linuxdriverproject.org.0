Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1519024C012
	for <lists+driverdev-devel@lfdr.de>; Thu, 20 Aug 2020 16:07:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9E6752265B;
	Thu, 20 Aug 2020 14:07:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id prjuIn62Ox6J; Thu, 20 Aug 2020 14:07:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2ED4E2226B;
	Thu, 20 Aug 2020 14:07:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 89AEF1BF59F
 for <devel@linuxdriverproject.org>; Thu, 20 Aug 2020 14:07:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 827B287D15
 for <devel@linuxdriverproject.org>; Thu, 20 Aug 2020 14:07:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U+k6z2d5aqMY for <devel@linuxdriverproject.org>;
 Thu, 20 Aug 2020 14:06:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EBF1287CF9
 for <devel@driverdev.osuosl.org>; Thu, 20 Aug 2020 14:06:59 +0000 (UTC)
Received: from coco.lan (ip5f5ad5a3.dynamic.kabel-deutschland.de
 [95.90.213.163])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8D50F20724;
 Thu, 20 Aug 2020 14:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597932419;
 bh=uRIasufyJG6jvkmnVHV59NybArRtiZJedVOR4Y+iZ8g=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=nybwFHcJSEQ+sNorK6h28lhlgOTpiFXwa/QO/tmNCoOemIM/jbAkdHKBh4+JqzM63
 fIu2sWwL2L3+Fvq0a/Cdzn/Zh3GQqR5WMMxz0DCY7Hfrzr6BZrIpZkKpN1EDCEaauY
 MvLAi+xqn9f0CHzZuUNAiOvgkUwF/4KSrktIOYUQ=
Date: Thu, 20 Aug 2020 16:06:49 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH 00/49] DRM driver for Hikey 970
Message-ID: <20200820160649.54741194@coco.lan>
In-Reply-To: <20200819173558.GA3733@ravnborg.org>
References: <cover.1597833138.git.mchehab+huawei@kernel.org>
 <20200819152120.GA106437@ravnborg.org>
 <20200819174027.70b39ee9@coco.lan>
 <20200819173558.GA3733@ravnborg.org>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
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

Em Wed, 19 Aug 2020 19:35:58 +0200
Sam Ravnborg <sam@ravnborg.org> escreveu:

I'm already handling the other comments from your review (I'll send a
more complete comment about them after finishing), but I have a doubt
what you meant about this:

> +static int kirin_drm_bind(struct device *dev)
> > +{
> > +	struct drm_driver *driver = &kirin_drm_driver;
> > +	struct drm_device *drm_dev;
> > +	struct kirin_drm_private *priv;
> > +	int ret;
> > +
> > +	drm_dev = drm_dev_alloc(driver, dev);
> > +	if (!drm_dev)
> > +		return -ENOMEM;
> > +
> > +	ret = kirin_drm_kms_init(drm_dev);
> > +	if (ret)
> > +		goto err_drm_dev_unref;
> > +
> > +	ret = drm_dev_register(drm_dev, 0);  
> There is better ways to do this. See drm_drv.c for the code example.

Not sure if I understood your comment here. The drm_drv.c example also calls 
drm_dev_register().

The only difference is that it calls it inside driver_probe(), while
on this driver, it uses:

	static const struct component_master_ops kirin_drm_ops = {
		.bind = kirin_drm_bind,
		.unbind = kirin_drm_unbind,
	};

	static int kirin_drm_platform_probe(struct platform_device *pdev)
	{
...
		drm_of_component_match_add(dev, &match, compare_of, remote);
...
	return component_master_add_with_match(dev, &kirin_drm_ops, match);
}

Are you meaning that I should get rid of this component API and call
kirin_drm_bind() from kirin_drm_platform_probe()?

Thanks,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
