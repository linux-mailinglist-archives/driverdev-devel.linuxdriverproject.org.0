Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D4D3A2DCF40
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Dec 2020 11:12:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id F11A72E295;
	Thu, 17 Dec 2020 10:12:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e-TNr++RzDSa; Thu, 17 Dec 2020 10:12:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A0A2B2E289;
	Thu, 17 Dec 2020 10:12:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C33611BF865
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 10:12:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BC867843FE
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 10:12:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HaCcl2AgNzlb for <devel@linuxdriverproject.org>;
 Thu, 17 Dec 2020 10:12:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1D30F842B2
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 10:12:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1608199934;
 bh=PfWP2jLdI1/NZWMHoUW5uRuEhXlIDaojx0Lzc3GC8YE=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=of2D6+Pfh249Hbaxdt1mjyeyluljubP6Cu4vTcG78IG2xysRGKWj5411bpmml7Ofy
 UdWZC0xRVuUW980AUUd8g+WvC7dF4/hxa2NxPChfFiLf8orc+HaTq5vu9H2Pk85eNG
 9fOOK2qZvqbT30CyBwVly4w5t1sSnZ+Grug4F9dUX2lTELiD8RvA/JE49nGKCqaO55
 j+zHVdpRn62J0hkFFGbJUeoyydkSidOelwSmuIXSGQ/KKG56a/Ln3VYo/jutHuIFYd
 Vuzr0Y4fMqr3/IBl4NGGahe+x064rN5mKDLSncAhHVfpiWjYv4tUOqz4H/+gAoMu1a
 bFOO0O97+88iA==
MIME-Version: 1.0
In-Reply-To: <CAMhs-H_6x7rTLPd8sABvzBqNJE2WeRJUGxG5VoqW4EvGy1hhPA@mail.gmail.com>
References: <20201122095556.21597-1-sergio.paracuellos@gmail.com>
 <20201122095556.21597-4-sergio.paracuellos@gmail.com>
 <160819619591.1580929.9915856168932644762@swboyd.mtv.corp.google.com>
 <CAMhs-H_6x7rTLPd8sABvzBqNJE2WeRJUGxG5VoqW4EvGy1hhPA@mail.gmail.com>
Subject: Re: [PATCH v4 3/6] clk: ralink: add clock driver for mt7621 SoC
From: Stephen Boyd <sboyd@kernel.org>
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Thu, 17 Dec 2020 02:12:12 -0800
Message-ID: <160819993289.1580929.17666667936736079931@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
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
Cc: Weijie Gao <hackpascal@gmail.com>,
 STAGING SUBSYSTEM <devel@driverdev.osuosl.org>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Greg KH <gregkh@linuxfoundation.org>,
 Michael Turquette <mturquette@baylibre.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, evicetree@vger.kernel.org,
 MIPS <linux-mips@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 John Crispin <john@phrozen.org>, NeilBrown <neil@brown.name>,
 COMMON CLK FRAMEWORK <linux-clk@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Quoting Sergio Paracuellos (2020-12-17 01:54:18)
> 
> On Thu, Dec 17, 2020 at 10:09 AM Stephen Boyd <sboyd@kernel.org> wrote:
> >
> > Quoting Sergio Paracuellos (2020-11-22 01:55:53)
> > > diff --git a/drivers/clk/ralink/Makefile b/drivers/clk/ralink/Makefile
> > > new file mode 100644
> > > index 000000000000..cf6f9216379d
> > > --- /dev/null
> > > +++ b/drivers/clk/ralink/Makefile
> > > @@ -0,0 +1,2 @@
> > > +# SPDX-License-Identifier: GPL-2.0
> > > +obj-$(CONFIG_CLK_MT7621) += clk-mt7621.o
> > > diff --git a/drivers/clk/ralink/clk-mt7621.c b/drivers/clk/ralink/clk-mt7621.c
> > > new file mode 100644
> > > index 000000000000..4e929f13fe7c
> > > --- /dev/null
> > > +++ b/drivers/clk/ralink/clk-mt7621.c
> > > @@ -0,0 +1,435 @@
> > > +// SPDX-License-Identifier: GPL-2.0
> > > +/*
> > > + * Mediatek MT7621 Clock Driver
> > > + * Author: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> > > + */
> > > +
> > > +#include <linux/bitops.h>
> > > +#include <linux/clk-provider.h>
> > > +#include <linux/mfd/syscon.h>
> > > +#include <linux/module.h>
> > > +#include <linux/slab.h>
> > > +#include <linux/regmap.h>
> > > +#include <asm/mach-ralink/ralink_regs.h>
> >
> > Is it possible to drop this include? Doing so would make this portable
> > and compilable on more architectures so us cross compilers can check
> > build stuff and make changes easily.
> 
> No, this is not possible. This old arch makes some global functions
> there to properly access different registers in the palmbus. It is not
> also well documented so it is really difficult to make something
> better with this.
> This is needed to use 'rt_memc_r32'
> (arch/mips/include/asm/mach-ralink/ralink_regs.h) for reading
> MEMC_REG_CPU_PLL.
> 
> This is a not documented register and is not in the syscon related
> part and we need it to derive the clock frequency for the XTAL clock.

Ok.

> > > +static int mt7621_gate_ops_init(struct device_node *np,
> > > +                                struct mt7621_gate *sclk)
> > > +{
> > > +       struct clk_init_data init = {
> > > +               .flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
> >
> > Why ignore unused? Are they CLK_IS_CRITICAL? Can they be enabled at
> > driver probe instead of here? Or left out of the kernel entirely if they
> > shouldn't be turned off?
> 
> Because all the platform drivers are not changed to use this gates yet
> and all gates are enabled by default (related registers are set to all
> ones),  kernel disables all the stuff because they are not being
> referenced, but yes, you are right, I think I can call
> clk_prepare_enable for all of them at init time and avoid this
> 'CLK_IGNORE_UNUSED' flag to don't break anything of the current other
> upstream code.

Does something crash if they're turned off? We have CLK_IS_CRITICAL for
that. The CLK_IGNORE_UNUSED flag is sort of deprecated now.

> > > +
> > > +#define CLK_BASE(_name, _parent, _recalc) {                            \
> > > +       .init = &(struct clk_init_data) {                               \
> > > +               .name = _name,                                          \
> > > +               .ops = &(const struct clk_ops) {                        \
> > > +                       .recalc_rate = _recalc,                         \
> > > +               },                                                      \
> > > +               .parent_names = (const char *const[]) { _parent },      \
> >
> > Please use clk_parent_data instead
> 
> parent can also be NULL here and num_parents zero, but I will search
> what do you really mean with this 'clk_parent_data' :).

Heh, 'git grep clk_parent_data -- drivers/clk/' should give some clues.

> > > +free_clk_prov:
> > > +       kfree(clk_prov);
> > > +}
> > > +
> > > +CLK_OF_DECLARE(mt7621_clk, "mediatek,mt7621-clk", mt7621_clk_init);
> >
> > Any reason to use this vs. a platform driver?
> 
> We need clocks available in 'plat_time_init' before setting up the
> timer for the GIC, so to maintain all the clock driver in a simple
> file and using only one device tree node and no separate the gates
> into another platform driver, I think this is the only way to go, but
> please correct me if I am wrong.

We can register the few clks like that early with
CLK_OF_DECLARE_DRIVER() and then have a platform driver register the
rest of the clks that aren't required early. This lets us hook into the
driver framework better while still getting those few clks to turn on
early enough for the timers.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
