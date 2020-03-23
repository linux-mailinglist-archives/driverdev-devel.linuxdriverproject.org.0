Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D82818F0F2
	for <lists+driverdev-devel@lfdr.de>; Mon, 23 Mar 2020 09:36:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B29E0885DB;
	Mon, 23 Mar 2020 08:36:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8G1aReJzCght; Mon, 23 Mar 2020 08:36:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0312188489;
	Mon, 23 Mar 2020 08:36:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F356D1BF2C9
 for <devel@linuxdriverproject.org>; Mon, 23 Mar 2020 08:36:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EEDC188489
 for <devel@linuxdriverproject.org>; Mon, 23 Mar 2020 08:36:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O0KoiSGZjW-f for <devel@linuxdriverproject.org>;
 Mon, 23 Mar 2020 08:36:30 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.134])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A2FDA880F4
 for <devel@driverdev.osuosl.org>; Mon, 23 Mar 2020 08:36:29 +0000 (UTC)
Received: from mail.cetitecgmbh.com ([87.190.42.90]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MW9zm-1ijk251ruU-00Xedg for <devel@driverdev.osuosl.org>; Mon, 23 Mar
 2020 09:36:27 +0100
Received: from pflvmailgateway.corp.cetitec.com (unknown [127.0.0.1])
 by mail.cetitecgmbh.com (Postfix) with ESMTP id 0162364FE83
 for <devel@driverdev.osuosl.org>; Mon, 23 Mar 2020 08:36:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at cetitec.com
Received: from mail.cetitecgmbh.com ([127.0.0.1])
 by pflvmailgateway.corp.cetitec.com (pflvmailgateway.corp.cetitec.com
 [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uHe0jPVEpI0u for <devel@driverdev.osuosl.org>;
 Mon, 23 Mar 2020 09:36:26 +0100 (CET)
Received: from pfwsexchange.corp.cetitec.com (unknown [10.10.1.99])
 by mail.cetitecgmbh.com (Postfix) with ESMTPS id 8BA0F64C60C
 for <devel@driverdev.osuosl.org>; Mon, 23 Mar 2020 09:36:26 +0100 (CET)
Received: from pflmari.corp.cetitec.com (10.8.5.4) by
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Mon, 23 Mar 2020 09:36:26 +0100
Received: by pflmari.corp.cetitec.com (Postfix, from userid 1000)
 id C3AA1804FB; Mon, 23 Mar 2020 09:36:10 +0100 (CET)
Date: Mon, 23 Mar 2020 09:36:10 +0100
From: Alex Riesen <alexander.riesen@cetitec.com>
To: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v3 05/11] media: adv748x: add support for HDMI audio
Message-ID: <20200323083610.GB4298@pflmari>
Mail-Followup-To: Alex Riesen <alexander.riesen@cetitec.com>,
 Stephen Boyd <sboyd@kernel.org>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 devel@driverdev.osuosl.org, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org,
 linux-clk <linux-clk@vger.kernel.org>
References: <cover.1584720678.git.alexander.riesen@cetitec.com>
 <82828e89ccf4173de4e5e52dcecacc4d5168315c.1584720678.git.alexander.riesen@cetitec.com>
 <158475297119.125146.8177273856843293558@swboyd.mtv.corp.google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <158475297119.125146.8177273856843293558@swboyd.mtv.corp.google.com>
X-Originating-IP: [10.8.5.4]
X-ClientProxiedBy: PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) To
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99)
X-EsetResult: clean, is OK
X-EsetId: 37303A290D7F536A6D7066
X-Provags-ID: V03:K1:q88mjf+bj/9paSLJtHI2vX1pDiagsbiqv17X64NNjIFwkAHSI7K
 8r90qUesNL5Xg8AmvfLJW5361dpcAsQ41kqQkylKoMdPQL4KHZXA7YiZzbpiYzu5VjZHe4C
 4CmalO/OdU6cRhkYDo3n8tsz1ehhn3s5Zaq4a78BEZ03ixfIhjD8hrEyDTcV3GzNUcsri5l
 yVXtX4sVQLA7dEGVm32Fw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:h7VIOza5hGs=:mYlGTRkXjpn2+vPv0E5Xvw
 DETEH9Drg9At7TUAEANxi8u7oO07eTTEsuLAObtkuRYxhkQ32fguHC2t9AcGkeKL7E3PDW3hc
 zmV/C2Zd3wxqyuV9mqO4CdWHxHo5LR38uTSTC2AajJv+Q9ra4a/CxkkvPYdEv/lTdCAzoX2WP
 Tb6QSjr2a7ZiTB3blPEryPegRt/UtS7Jm9jtaGboqwC+2nLGuJRld0b6k6SaTVDAYoM/UjFDq
 PGgt8h31ikiZStUQTEt3bLlE9fzXaDE9jDtfp6Gv+tvLJOxc+hev0nsIHivhC7oU7/Xc6lp1J
 1LCHmIPB59JWxjN+uPs21BLWgKEku5f4B5w+8ZOi5bavZcTGvNRZLvpF4hcGlFaNhiQ+JXUv6
 oI1bKQOxw4XjzuO9Cmr5kZkw+CBHzR5RvfiVn4pXXV+6SWhZNGg+a6VamvEF/CL6yllxOsTxE
 sRAbfMws52QjbpN77wg0dFRr3VY73FGoym+k8RxaGroFbhY6pMrviw4ZtcChVZTA0FUMH4Vt5
 CDce07QG8kjUslfMLr3E6JFQY0WoPUGDNM2axG3r2K1CGsmAug/vhaygCGIFRAGb35gtKCjlM
 sM7ZA4MvE/583u5Fp8KZzJuCFca1Kpe/NhKsKnake0YK1+MUDT0JXtQPJy+qeoXiZx1exA5L9
 0UKOP273DcanQzGhKEQSQvdXN+DVQxOIb42klQ6v5lWxZCklWnPVsATfGXerbkJEt2YIGjRqZ
 h4P5rDQdP+l5c6NTzNeI6Ur8H7Rxnl6ZzptXUizoICR69e47Hk7j3ripiMAuyt3VrWYQoETwq
 Z7mb4u82iHCiuuMCKNpf3CAwB+DnqcB7aQ4hWFNGORJl+WB5PALJEEyE1OlWsW5kAaGiOGW
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
Cc: Mark Rutland <mark.rutland@arm.com>, devel@driverdev.osuosl.org,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 devicetree@vger.kernel.org, Kieran Bingham <kieran.bingham@ideasonboard.com>,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Hans
 Verkuil <hverkuil-cisco@xs4all.nl>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Stephen Boyd, Sat, Mar 21, 2020 02:09:31 +0100:
> Quoting Alex Riesen (2020-03-20 09:12:00)
> > diff --git a/drivers/media/i2c/adv748x/adv748x-dai.c b/drivers/media/i2c/adv748x/adv748x-dai.c
> > new file mode 100644
> > index 000000000000..6fce7d000423
> > --- /dev/null
> > +++ b/drivers/media/i2c/adv748x/adv748x-dai.c
> > @@ -0,0 +1,265 @@
> > +// SPDX-License-Identifier: GPL-2.0+
> > +/*
> > + * Driver for Analog Devices ADV748X HDMI receiver with AFE
> > + * The implementation of DAI.
> > + */
> > +
> > +#include "adv748x.h"
> > +
> > +#include <linux/clk.h>
> 
> Is this include used? Please try to make a clk provider or a clk
> consumer and not both unless necessary.

Yes, they're both used: I use clk_get_rate to get the frequency of the clock to validate
the master clock frequency configuration.

> > +int adv748x_dai_init(struct adv748x_dai *dai)
> > +{
> > +       int ret;
> > +       struct adv748x_state *state = adv748x_dai_to_state(dai);
> > +
> > +       dai->mclk_name = kasprintf(GFP_KERNEL, "%s.%s-i2s-mclk",
> > +                                  state->dev->driver->name,
> > +                                  dev_name(state->dev));
> > +       if (!dai->mclk_name) {
> > +               ret = -ENOMEM;
> > +               adv_err(state, "No memory for MCLK\n");
> > +               goto fail;
> > +       }
> > +       dai->mclk = clk_register_fixed_rate(state->dev,
> 
> Please register with clk_hw_register_fixed_rate() instead.

Ok, I see the clk_register_fixed_rate isn't even commented...
I shall change it to used clk_hw_register_fixed_rate.

But could you please point me at some documentation, example, or just add a
few words to explain the preference?

BTW, the clock which the driver attempts to provide can actually be switched
on and off (it output pad can be even tristated). As the device is connected
by I2C to the how, I seems to be unable to use the existing gated clock
implementation because of the mmio register it requires. Or am I wrong?

> > +                                           dai->mclk_name,
> > +                                           NULL /* parent_name */,
> > +                                           0 /* flags */,
> > +                                           12288000 /* rate */);
> 
> Not sure these comments are useful.

You're right. Removed.

> > +       dai->drv.name = ADV748X_DAI_NAME;
> > +       dai->drv.ops = &adv748x_dai_ops;
> > +       dai->drv.capture = (struct snd_soc_pcm_stream){
> 
> Can this be const?

It can. Fixed.

> Please drop extra newline at end of file.

Done.

Thanks a lot for the review and commentary!

Regards,
Alex
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
