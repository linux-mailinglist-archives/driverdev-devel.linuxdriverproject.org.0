Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A72D224C0E1
	for <lists+driverdev-devel@lfdr.de>; Thu, 20 Aug 2020 16:48:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 553208816A;
	Thu, 20 Aug 2020 14:48:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0Wy2wNfnc6SC; Thu, 20 Aug 2020 14:48:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B7A9787FDE;
	Thu, 20 Aug 2020 14:48:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 74EDD1BF59F
 for <devel@linuxdriverproject.org>; Thu, 20 Aug 2020 14:48:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6C52020404
 for <devel@linuxdriverproject.org>; Thu, 20 Aug 2020 14:48:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NXrTgBwTlJCS for <devel@linuxdriverproject.org>;
 Thu, 20 Aug 2020 14:48:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from asavdk3.altibox.net (asavdk3.altibox.net [109.247.116.14])
 by silver.osuosl.org (Postfix) with ESMTPS id 622552001C
 for <devel@driverdev.osuosl.org>; Thu, 20 Aug 2020 14:48:17 +0000 (UTC)
Received: from ravnborg.org (unknown [188.228.123.71])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id B6D2820026;
 Thu, 20 Aug 2020 16:48:09 +0200 (CEST)
Date: Thu, 20 Aug 2020 16:48:08 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH 00/49] DRM driver for Hikey 970
Message-ID: <20200820144808.GA186324@ravnborg.org>
References: <cover.1597833138.git.mchehab+huawei@kernel.org>
 <20200819152120.GA106437@ravnborg.org>
 <20200819174027.70b39ee9@coco.lan>
 <20200819173558.GA3733@ravnborg.org>
 <20200820160649.54741194@coco.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200820160649.54741194@coco.lan>
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=f+hm+t6M c=1 sm=1 tr=0
 a=S6zTFyMACwkrwXSdXUNehg==:117 a=S6zTFyMACwkrwXSdXUNehg==:17
 a=kj9zAlcOel0A:10 a=7gkXJVJtAAAA:8 a=FQPn5FuWFEp6BKnZ598A:9
 a=CjuIK1q_8ugA:10 a=E9Po1WZjFZOl8hwRPBS3:22
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

On Thu, Aug 20, 2020 at 04:06:49PM +0200, Mauro Carvalho Chehab wrote:
> Em Wed, 19 Aug 2020 19:35:58 +0200
> Sam Ravnborg <sam@ravnborg.org> escreveu:
> 
> I'm already handling the other comments from your review (I'll send a
> more complete comment about them after finishing),
If you get back only on things you do not understand or do not agree on
that would be fine. The rest should be visible in the changelog on the
updated patch - no need to do extra work here.

> but I have a doubt what you meant about this:
> 
> > +static int kirin_drm_bind(struct device *dev)
> > > +{
> > > +	struct drm_driver *driver = &kirin_drm_driver;
> > > +	struct drm_device *drm_dev;
> > > +	struct kirin_drm_private *priv;
> > > +	int ret;
> > > +
> > > +	drm_dev = drm_dev_alloc(driver, dev);
> > > +	if (!drm_dev)
> > > +		return -ENOMEM;
> > > +
> > > +	ret = kirin_drm_kms_init(drm_dev);
> > > +	if (ret)
> > > +		goto err_drm_dev_unref;
> > > +
> > > +	ret = drm_dev_register(drm_dev, 0);  
> > There is better ways to do this. See drm_drv.c for the code example.
> 
> Not sure if I understood your comment here. The drm_drv.c example also calls 
> drm_dev_register().

This is indeed not obvious from my comments but what I wnated to say is
that the driver should embed drm_device in some struct,
maybe in "struct kirin_drm_private".

This should also be part of the referenced example.

I hope this clarifies it.

	Sam

> 
> The only difference is that it calls it inside driver_probe(), while
> on this driver, it uses:
> 
> 	static const struct component_master_ops kirin_drm_ops = {
> 		.bind = kirin_drm_bind,
> 		.unbind = kirin_drm_unbind,
> 	};
> 
> 	static int kirin_drm_platform_probe(struct platform_device *pdev)
> 	{
> ...
> 		drm_of_component_match_add(dev, &match, compare_of, remote);
> ...
> 	return component_master_add_with_match(dev, &kirin_drm_ops, match);
> }
> 
> Are you meaning that I should get rid of this component API and call
> kirin_drm_bind() from kirin_drm_platform_probe()?
> 
> Thanks,
> Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
