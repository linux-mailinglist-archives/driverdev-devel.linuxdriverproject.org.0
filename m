Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B62E224D921
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Aug 2020 17:55:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C90CE88093;
	Fri, 21 Aug 2020 15:55:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Mp0leJ82BKqV; Fri, 21 Aug 2020 15:55:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id ACAFB87F4A;
	Fri, 21 Aug 2020 15:55:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1651E1BF9BD
 for <devel@linuxdriverproject.org>; Fri, 21 Aug 2020 15:55:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0DC7187F7F
 for <devel@linuxdriverproject.org>; Fri, 21 Aug 2020 15:55:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EYOo4Rko37hY for <devel@linuxdriverproject.org>;
 Fri, 21 Aug 2020 15:55:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from asavdk4.altibox.net (asavdk4.altibox.net [109.247.116.15])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CE31F87F4A
 for <devel@driverdev.osuosl.org>; Fri, 21 Aug 2020 15:55:17 +0000 (UTC)
Received: from ravnborg.org (unknown [188.228.123.71])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id 8848480516;
 Fri, 21 Aug 2020 17:55:06 +0200 (CEST)
Date: Fri, 21 Aug 2020 17:55:05 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH 00/49] DRM driver for Hikey 970
Message-ID: <20200821155505.GA300361@ravnborg.org>
References: <cover.1597833138.git.mchehab+huawei@kernel.org>
 <20200819152120.GA106437@ravnborg.org>
 <20200819174027.70b39ee9@coco.lan>
 <20200819173558.GA3733@ravnborg.org>
 <20200821155801.0b820fc6@coco.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200821155801.0b820fc6@coco.lan>
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=aP3eV41m c=1 sm=1 tr=0
 a=S6zTFyMACwkrwXSdXUNehg==:117 a=S6zTFyMACwkrwXSdXUNehg==:17
 a=kj9zAlcOel0A:10 a=D19gQVrFAAAA:8 a=edBkpzIAjiy-cUzT3AwA:9
 a=CjuIK1q_8ugA:10 a=W4TVW4IDbPiebHqcZpNg:22
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

Thanks for the detailed feedabck.
Two comments in the following.

	Sam

> 
> > > +	ctx->dss_pri_clk = devm_clk_get(dev, "clk_edc0");
> > > +	if (!ctx->dss_pri_clk) {
> > > +		DRM_ERROR("failed to parse dss_pri_clk\n");
> > > +	return -ENODEV;
> > > +	}
> ...
> 
> > I had expected some of these could fail with a PROBE_DEFER.
> > Consider to use the newly introduced dev_probe_err()
> 
> Yeah, getting clock lines can fail. I was unable to find dev_probe_err(),
> at least on Kernel 5.9-rc1. I saw this comment:
> 
> 	https://lkml.org/lkml/2020/3/6/356
> 
> It sounds it didn't reach upstream. Anyway, I add error handling for the
> the clk_get calls:
> 
> 	ctx->dss_pri_clk = devm_clk_get(dev, "clk_edc0");
> 	ret = PTR_ERR_OR_ZERO(ctx->dss_pri_clk);
> 	if (ret == -EPROBE_DEFER) {
> 		return ret;
> 	} else if (ret) {
> 		DRM_ERROR("failed to parse dss_pri_clk: %d\n", ret);
> 		return ret;
> 	}
> 
> This should be able to detect deferred probe, plus to warn
> about other errors.

I got the name wrong. It is named dev_err_probe(), and was introduced in -rc1.
 
> > Can the panel stuff be moved out and utilise drm_panel?
> 
> I saw the code at drm_panel. The real issue here is that I can't
> test anything related to panel support, as I lack any hardware
> for testing. So, there's a high chance I may end breaking
> something while trying to do that.

I will try to take a look again when you post next revision.
Maybe we should update it and risk that is not works, so whenever
someone try to fix it they do so on top of an up-to-date implmentation.
Lets se and decide later.


	Sam
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
