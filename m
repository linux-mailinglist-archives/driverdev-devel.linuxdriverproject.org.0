Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1813436E88D
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Apr 2021 12:18:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 66DB06F6E0;
	Thu, 29 Apr 2021 10:18:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XXvtbJS3qGy6; Thu, 29 Apr 2021 10:18:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0FCA4608C6;
	Thu, 29 Apr 2021 10:18:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5D48F1BF3E3
 for <devel@linuxdriverproject.org>; Thu, 29 Apr 2021 10:18:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4B134608C6
 for <devel@linuxdriverproject.org>; Thu, 29 Apr 2021 10:18:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3LnJ2c3mFCpi for <devel@linuxdriverproject.org>;
 Thu, 29 Apr 2021 10:18:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 05C576079D
 for <devel@driverdev.osuosl.org>; Thu, 29 Apr 2021 10:18:34 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 42BDC61453;
 Thu, 29 Apr 2021 10:18:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1619691514;
 bh=DM4HV2lnx+GNXVL2Vu40xN6FyVMsrdNcY1mWzrPWhwk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Pr9yW9qY3yfN8RysVDFykRvqbdtpg/mq8Z8ntseE+Apk90jB4exflFSQEUBBScELm
 a7ld4IIgvO4R6eWiSidptTL4lwtBCWonz6TbAcNnnqoa6UyWst1z2S2I8VEVUcmpmV
 nOlA88vuZpSNIDERZynyGtFrV/G9CA2ydJch8het8EHNRS9pDSGyojVeQv7Zf36I15
 nwNvmspeKTVHp5C5y6Ja++sVKcVISX7zsPP7MK/QQyFLiNnd3A7M4kFMo7E9Z0LUdf
 UoRV6BlmzWqX0fnvJ3BmZ3dIXNZVJYIyCWUDCawrYqctcpCH6pyQiPangvHLt+Iuah
 aPrgiYw8bEG+Q==
Date: Thu, 29 Apr 2021 12:18:16 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Johan Hovold <johan@kernel.org>
Subject: Re: [PATCH v4 00/79] Address some issues with PM runtime at media
 subsystem
Message-ID: <20210429121215.64a7cbdb@coco.lan>
In-Reply-To: <YImEMN/POW5C8lG7@hovoldconsulting.com>
References: <cover.1619621413.git.mchehab+huawei@kernel.org>
 <YImEMN/POW5C8lG7@hovoldconsulting.com>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-redhat-linux-gnu)
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

Em Wed, 28 Apr 2021 17:50:08 +0200
Johan Hovold <johan@kernel.org> escreveu:

> On Wed, Apr 28, 2021 at 04:51:21PM +0200, Mauro Carvalho Chehab wrote:

> > 1. despite its name, this is actually a PM runtime resume call,
> >    but some developers didn't seem to realize that, as I got this
> >    pattern on some drivers:
> > 
> >         pm_runtime_get_sync(&client->dev);
> >         pm_runtime_disable(&client->dev);
> >         pm_runtime_set_suspended(&client->dev);
> >         pm_runtime_put_noidle(&client->dev);
> > 
> >    It makes no sense to resume PM just to suspend it again ;-)  
> 
> This is perfectly alright. Take a look at ov7740_remove() for example:
> 
> 	pm_runtime_get_sync(&client->dev);
> 	pm_runtime_disable(&client->dev);
> 	pm_runtime_set_suspended(&client->dev);
> 	pm_runtime_put_noidle(&client->dev);
> 	
> 	ov7740_set_power(ov7740, 0);
> 
> There's an explicit power-off after balancing the PM count and this will
> work regardless of the power state when entering this function.

Ok, but this should equally work:

 	pm_runtime_disable(&client->dev);
 	pm_runtime_set_suspended(&client->dev);
 	
 	ov7740_set_power(ov7740, 0);

as there's no additional cleanup made on this particular driver
between pm_runtime_get_sync() and pm_runtime_put_noidle().

> So this has nothing to do with pm_runtime_get_sync() per se.

Yes, but some patches on this series are cleaning up the driver release
logic.

> 
> > 2. Usual *_get() methods only increment their use count on success,
> >    but pm_runtime_get_sync() increments it unconditionally. Due to
> >    that, several drivers were mistakenly not calling
> >    pm_runtime_put_noidle() when it fails;  
> 
> Sure, but pm_runtime_get_async() also works this way. You just won't be
> notified if the async resume fails.

Granted, it makes sense along the pm_runtime kAPI.

It is inconsistent with the behavior of kobject_get*() and other
*_get*() methods that are based or inspired on it, as, on those, the
operations are atomic: either everything succeeds and it doesn't return
an error, or the usage counter is not incremented and the object
state doesn't change after the call.

> > 3. The name of the new variant is a lot clearer:
> > 	pm_runtime_resume_and_get()
> >     As its same clearly says that this is a PM runtime resume function,
> >     that also increments the usage counter on success;  
> 
> It also introduced an inconsistency in the API and does not pair as well
> with the pm_runtime_put variants.

Agreed. A name that would be more consistent with PM runtime would
probably be:

	pm_runtime_resume_if_get()

as there are already:

	pm_runtime_get_if_in_use()
	pm_runtime_get_if_active()

But any such discussions are out of the scope of this patchset ;-)

> 
> > 4. Consistency: we did similar changes subsystem wide with
> >    for instance strlcpy() and strcpy() that got replaced by
> >    strscpy(). Having all drivers using the same known-to-be-safe
> >    methods is a good thing;  
> 
> It's not known to be safe; there are ways to get also this interface
> wrong as for example this series has shown.

Very true. Yet, it is a lot simpler to use functions that won't change
the state of the objects when returning an error, as this is by far
the most common pattern within the Kernel.

Human brains are trained to identify certain patterns. When there's
something using a similar pattern, but with a different behavior, 
our brains are more subject to fail identifying problems.

> > 5. Prevent newer drivers to copy-and-paste a code that it would
> >    be easier to break if they don't truly understand what's behind
> >    the scenes.  
> 
> Cargo-cult programming always runs that risk.

True.

> > This series replace places  pm_runtime_get_sync(), by calling
> > pm_runtime_resume_and_get() instead.
> > 
> > This should help to avoid future mistakes like that, as people
> > tend to use the existing drivers as examples for newer ones.  
> 
> The only valid point about and use for pm_runtime_resume_and_get() is to
> avoid leaking a PM usage count reference in the unlikely case that
> resume fails (something which hardly any driver implements recovery
> from anyway).
> 
> It's a convenience wrapper that saves you from writing one extra line in
> some cases (depending on how you implement runtime-pm support) and not a
> silver bullet against bugs.
>  
> > compile-tested only.
> > 
> > Patches 1 to 7 fix some issues that already exists at the current
> > PM runtime code;
> > 
> > patches 8 to 20 fix some usage_count problems that still exists
> > at the media subsystem;
> > 
> > patches 21 to 78 repaces pm_runtime_get_sync() by 
> > pm_runtime_resume_and_get();
> > 
> > Patch 79 (and a hunk on patch 78) documents the two exceptions
> > where pm_runtime_get_sync() will still be used for now.
> > 
> > ---
> > 
> > v4:
> >     - Added a couple of additional fixes at existing PM runtime code;
> >     - Some patches are now more conservative in order to avoid causing
> >      regressions.
> > v3:
> >     - fix a compilation error;
> > v2:
> >     - addressed pointed issues and fixed a few other PM issues.  
> 
> This really doesn't say much more than "changed stuff" so kinda hard to
> track if review feedback has been taken into account for example.

I addressed all review feedback I got (as far as I'm aware), and added
all received reviewed-by/acked-by.

Yeah, I could have written a more comprehensive changes description
there.

Thanks,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
