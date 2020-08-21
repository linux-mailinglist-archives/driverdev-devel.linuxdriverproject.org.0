Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C63F824E206
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Aug 2020 22:17:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9C78788505;
	Fri, 21 Aug 2020 20:17:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j5R1dKctzfSI; Fri, 21 Aug 2020 20:17:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0BC10883C1;
	Fri, 21 Aug 2020 20:17:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 97CCF1BF34C
 for <devel@linuxdriverproject.org>; Fri, 21 Aug 2020 20:17:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 940588836B
 for <devel@linuxdriverproject.org>; Fri, 21 Aug 2020 20:17:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lXNGALfaQT3r for <devel@linuxdriverproject.org>;
 Fri, 21 Aug 2020 20:17:41 +0000 (UTC)
X-Greylist: delayed 17:21:52 by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0041.hostedemail.com
 [216.40.44.41])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A3128882A7
 for <devel@driverdev.osuosl.org>; Fri, 21 Aug 2020 20:17:41 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave03.hostedemail.com (Postfix) with ESMTP id C52861805957D
 for <devel@driverdev.osuosl.org>; Fri, 21 Aug 2020 20:17:39 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay02.hostedemail.com (Postfix) with ESMTP id 339D61DE3;
 Fri, 21 Aug 2020 20:17:36 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:800:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:3870:3871:4321:5007:6742:7576:10004:10400:10848:11026:11232:11473:11657:11658:11914:12043:12296:12297:12438:12740:12760:12895:13069:13311:13357:13439:14181:14659:14721:21080:21433:21451:21627:21990:30029:30046:30054:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:4, LUA_SUMMARY:none
X-HE-Tag: hall57_5807ae72703c
X-Filterd-Recvd-Size: 3078
Received: from XPS-9350.home (unknown [47.151.133.149])
 (Authenticated sender: joe@perches.com)
 by omf03.hostedemail.com (Postfix) with ESMTPA;
 Fri, 21 Aug 2020 20:17:33 +0000 (UTC)
Message-ID: <d466e1163c73b144a0501b61f6221de8e9a67a48.camel@perches.com>
Subject: Re: [PATCH 10/49] staging: hikey9xx/gpu: add debug prints for this
 driver
From: Joe Perches <joe@perches.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>
Date: Fri, 21 Aug 2020 13:17:32 -0700
In-Reply-To: <71e74aa8ff84a2f0b879c46a63d5f51f6d808348.1597833138.git.mchehab+huawei@kernel.org>
References: <cover.1597833138.git.mchehab+huawei@kernel.org>
 <71e74aa8ff84a2f0b879c46a63d5f51f6d808348.1597833138.git.mchehab+huawei@kernel.org>
User-Agent: Evolution 3.36.4-0ubuntu1 
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
Cc: Rob Clark <robdclark@chromium.org>, devel@driverdev.osuosl.org,
 Liwei Cai <cailiwei@hisilicon.com>, Manivannan Sadhasivam <mani@kernel.org>,
 Chen Feng <puck.chen@hisilicon.com>, Neil Armstrong <narmstrong@baylibre.com>,
 linuxarm@huawei.com, dri-devel <dri-devel@lists.freedesktop.org>,
 Xiubin Zhang <zhangxiubin1@huawei.com>, Andrzej Hajda <a.hajda@samsung.com>,
 John Stultz <john.stultz@linaro.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, mauro.chehab@huawei.com,
 Laurentiu Palcu <laurentiu.palcu@nxp.com>, linux-kernel@vger.kernel.org,
 Bogdan Togorean <bogdan.togorean@analog.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, 2020-08-19 at 13:45 +0200, Mauro Carvalho Chehab wrote:
> From: Xiubin Zhang <zhangxiubin1@huawei.com>
> 
> Add some debug prints on adv7535 and kirin_drm_drv.

bikeshed:

> diff --git a/drivers/staging/hikey9xx/gpu/hdmi/adv7535.c b/drivers/staging/hikey9xx/gpu/hdmi/adv7535.c
[]
> @@ -785,19 +786,25 @@ adv7511_detect(struct adv7511 *adv7511,
>  {
>  	enum drm_connector_status status;
>  	unsigned int val;
> +	unsigned int time = 0;

time is not a good name.  Maybe rename to loops

> @@ -820,7 +827,32 @@ adv7511_detect(struct adv7511 *adv7511,
>  	}
>  #endif
>  
> +	if (status == connector_status_disconnected) {
> +		do {
> +			ret = regmap_read(adv7511->regmap, ADV7511_REG_STATUS, &val);
> +			if (ret < 0) {
> +				DRM_ERROR("regmap_read fail, ret = %d \n", ret);
> +				return connector_status_disconnected;
> +			}
> +
> +			if (val & ADV7511_STATUS_HPD) {
> +				DRM_INFO("connected : regmap_read val = 0x%x \n", val);
> +				status = connector_status_connected;
> +			} else {
> +				DRM_INFO("disconnected : regmap_read val = 0x%x \n", val);
> +				status = connector_status_disconnected;
> +			}
> +			time ++;
> +			mdelay(20);
> +		} while (status == connector_status_disconnected && time < 10);
> +	}
> +
> +	if (time >= 10)
> +		DRM_ERROR("Read connector status timout, time = %d \n", time);

No space necessary before ++

s/timout/timeout/

No space before the newline please in any of the DRM_ERROR
output messages.


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
