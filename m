Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B334636ED3A
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Apr 2021 17:17:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CEBEA419D2;
	Thu, 29 Apr 2021 15:17:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JusXhLj58mMr; Thu, 29 Apr 2021 15:17:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4B1D14187D;
	Thu, 29 Apr 2021 15:17:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DB21C1BF39C
 for <devel@linuxdriverproject.org>; Thu, 29 Apr 2021 15:17:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C9507400F3
 for <devel@linuxdriverproject.org>; Thu, 29 Apr 2021 15:17:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VTZJxXhE31J9 for <devel@linuxdriverproject.org>;
 Thu, 29 Apr 2021 15:17:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DC219400CC
 for <devel@driverdev.osuosl.org>; Thu, 29 Apr 2021 15:17:01 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id DADC8613F8;
 Thu, 29 Apr 2021 15:17:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1619709421;
 bh=0TF/rgI+kIrUM4ucLgyoRQVNDZwjwMCttPCbdF1J2ts=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TNblwH+As0w11JRNen3DEa/sKtquJO7N/ed+Wi2cPt5DPo/pzApjHeB4CYlT9czKN
 RFJnIUjSlU/iXNkujkJ9GfUIBpZYvUPaxBLDLGXBQdVlv5qb6mSpE1DcETxlBJLjdH
 3g63qgtE3JXAaoo4Aq3ZJQdiRo/RBYWmOp0+Glxzsc1YjsicyiOaSi7GIhQYDFx0Ss
 xxX7tIodOuoDf+uK3PdOkr9EHdavuGSGLxTjoqehEjaUHaupkr1YkvsH7C4pSmGQvt
 kJLY88R3n7qjm+eBETbZXRLROLJk7BZhgXtoeO/pKC8+dHkhcGgjRgK0xEL1TOs1c0
 knRtXQpP0PexA==
Received: from johan by xi.lan with local (Exim 4.93.0.4)
 (envelope-from <johan@kernel.org>)
 id 1lc8Ph-0006kM-4M; Thu, 29 Apr 2021 17:17:13 +0200
Date: Thu, 29 Apr 2021 17:17:13 +0200
From: Johan Hovold <johan@kernel.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH v4 00/79] Address some issues with PM runtime at media
 subsystem
Message-ID: <YIrN+VEY9Sf+eztR@hovoldconsulting.com>
References: <cover.1619621413.git.mchehab+huawei@kernel.org>
 <YImEMN/POW5C8lG7@hovoldconsulting.com>
 <20210429121215.64a7cbdb@coco.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210429121215.64a7cbdb@coco.lan>
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
Cc: Ricardo Ribalda <ribalda@kernel.org>,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, mauro.chehab@huawei.com, linuxarm@huawei.com,
 Todor Tomov <todor.too@gmail.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Andrzej Hajda <a.hajda@samsung.com>, "Lad,
 Prabhakar" <prabhakar.csengg@gmail.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Robert Foss <robert.foss@linaro.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Dmitry Osipenko <digetx@gmail.com>, linux-stm32@st-md-mailman.stormreply.com,
 Andrzej Pietrasiewicz <andrzejtp2010@gmail.com>,
 Leon Luo <leonl@leopardimaging.com>, Dan Scally <djrscally@gmail.com>,
 linux-samsung-soc@vger.kernel.org,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Manivannan Sadhasivam <mani@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-rockchip@lists.infradead.org, Matt Ranostay <matt.ranostay@konsulko.com>,
 Andy Gross <agross@kernel.org>, Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Steve Longerbeam <slongerbeam@gmail.com>, Bingbu Cao <bingbu.cao@intel.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Shunqian Zheng <zhengsq@rock-chips.com>, Tianshu Qiu <tian.shu.qiu@intel.com>,
 NXP Linux Team <linux-imx@nxp.com>, Shawn Tu <shawnx.tu@intel.com>,
 devel@driverdev.osuosl.org, Jacopo Mondi <jacopo@jmondi.org>,
 linux-tegra@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Wenyou Yang <wenyou.yang@microchip.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, linux-arm-msm@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-renesas-soc@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>,
 Stanimir Varbanov <stanimir.varbanov@linaro.org>,
 Benoit Parrot <bparrot@ti.com>, Helen Koike <helen.koike@collabora.com>,
 Yong Zhi <yong.zhi@intel.com>, linux-mediatek@lists.infradead.org,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Sylwester Nawrocki <sylvester.nawrocki@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Daniele Alessandrelli <daniele.alessandrelli@intel.com>,
 Chiranjeevi Rapolu <chiranjeevi.rapolu@intel.com>,
 linux-arm-kernel@lists.infradead.org, Jacob Chen <jacob-chen@iotwrt.com>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Hyungwoo Yang <hyungwoo.yang@intel.com>, linux-kernel@vger.kernel.org,
 "Paul J. Murphy" <paul.j.murphy@intel.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Sowjanya Komatineni <skomatineni@nvidia.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, linux-media@vger.kernel.org,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Apr 29, 2021 at 12:18:16PM +0200, Mauro Carvalho Chehab wrote:
> Em Wed, 28 Apr 2021 17:50:08 +0200
> Johan Hovold <johan@kernel.org> escreveu:
> 
> > On Wed, Apr 28, 2021 at 04:51:21PM +0200, Mauro Carvalho Chehab wrote:
> 
> > > 1. despite its name, this is actually a PM runtime resume call,
> > >    but some developers didn't seem to realize that, as I got this
> > >    pattern on some drivers:
> > > 
> > >         pm_runtime_get_sync(&client->dev);
> > >         pm_runtime_disable(&client->dev);
> > >         pm_runtime_set_suspended(&client->dev);
> > >         pm_runtime_put_noidle(&client->dev);
> > > 
> > >    It makes no sense to resume PM just to suspend it again ;-)  
> > 
> > This is perfectly alright. Take a look at ov7740_remove() for example:
> > 
> > 	pm_runtime_get_sync(&client->dev);
> > 	pm_runtime_disable(&client->dev);
> > 	pm_runtime_set_suspended(&client->dev);
> > 	pm_runtime_put_noidle(&client->dev);
> > 	
> > 	ov7740_set_power(ov7740, 0);
> > 
> > There's an explicit power-off after balancing the PM count and this will
> > work regardless of the power state when entering this function.
> 
> Ok, but this should equally work:
> 
>  	pm_runtime_disable(&client->dev);
>  	pm_runtime_set_suspended(&client->dev);
>  	
>  	ov7740_set_power(ov7740, 0);
> 
> as there's no additional cleanup made on this particular driver
> between pm_runtime_get_sync() and pm_runtime_put_noidle().

No, that would break the driver as I pointed out to you yesterday:

	https://lore.kernel.org/r/YImG1klSPkFSaS3a@hovoldconsulting.com

If the device is already suspended when remove is called then you'll
end up with an unbalanced call to ov7740_set_power() that will try to
disable an already disabled clock.

> > So this has nothing to do with pm_runtime_get_sync() per se.
> 
> Yes, but some patches on this series are cleaning up the driver release
> logic.

You mentioned this example as an argument against using
pm_runtime_get_sync(), which I don't think makes sense.

> > > 2. Usual *_get() methods only increment their use count on success,
> > >    but pm_runtime_get_sync() increments it unconditionally. Due to
> > >    that, several drivers were mistakenly not calling
> > >    pm_runtime_put_noidle() when it fails;  
> > 
> > Sure, but pm_runtime_get_async() also works this way. You just won't be
> > notified if the async resume fails.
> 
> Granted, it makes sense along the pm_runtime kAPI.
> 
> It is inconsistent with the behavior of kobject_get*() and other
> *_get*() methods that are based or inspired on it, as, on those, the
> operations are atomic: either everything succeeds and it doesn't return
> an error, or the usage counter is not incremented and the object
> state doesn't change after the call.

Right, and I'm aware that some people have overlooked this. But its not
the end of the world since hardly any driver can handle resume failures
properly anyway. 

This is mostly just an exercise to shut up static checkers.

> > > 3. The name of the new variant is a lot clearer:
> > > 	pm_runtime_resume_and_get()
> > >     As its same clearly says that this is a PM runtime resume function,
> > >     that also increments the usage counter on success;  
> > 
> > It also introduced an inconsistency in the API and does not pair as well
> > with the pm_runtime_put variants.
> 
> Agreed. A name that would be more consistent with PM runtime would
> probably be:
> 
> 	pm_runtime_resume_if_get()

Naw, since the get part always succeeds.

It should start with pm_runtime_get, but pm_runtime_get_sync() is
unfortunately taken.

> as there are already:
> 
> 	pm_runtime_get_if_in_use()
> 	pm_runtime_get_if_active()
> 
> But any such discussions are out of the scope of this patchset ;-)

Right.

> > > 4. Consistency: we did similar changes subsystem wide with
> > >    for instance strlcpy() and strcpy() that got replaced by
> > >    strscpy(). Having all drivers using the same known-to-be-safe
> > >    methods is a good thing;  
> > 
> > It's not known to be safe; there are ways to get also this interface
> > wrong as for example this series has shown.
> 
> Very true. Yet, it is a lot simpler to use functions that won't change
> the state of the objects when returning an error, as this is by far
> the most common pattern within the Kernel.

A resume failure does change the state (and needs to be recovered from),
but I get what you're saying.

> Human brains are trained to identify certain patterns. When there's
> something using a similar pattern, but with a different behavior, 
> our brains are more subject to fail identifying problems.

Sure. But I'm not sure that having two interfaces with different
semantics to do the job is doing us any favours here. But again, that
discussion has already been had.

And I realise that this is partly also your motive here (even if the old
interface isn't going to go away).

> > > compile-tested only.
> > > Patches 1 to 7 fix some issues that already exists at the current
> > > PM runtime code;
> > > 
> > > patches 8 to 20 fix some usage_count problems that still exists
> > > at the media subsystem;
> > > 
> > > patches 21 to 78 repaces pm_runtime_get_sync() by 
> > > pm_runtime_resume_and_get();
> > > 
> > > Patch 79 (and a hunk on patch 78) documents the two exceptions
> > > where pm_runtime_get_sync() will still be used for now.

80 patches in one series (posted to lkml) is a bit excessive. Perhaps
you can break it up in a fixes part and one or more cleanups parts?

Johan
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
