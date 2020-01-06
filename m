Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 84E23130D69
	for <lists+driverdev-devel@lfdr.de>; Mon,  6 Jan 2020 07:10:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 22CA384D7A;
	Mon,  6 Jan 2020 06:10:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2Qe9PIgMTIh2; Mon,  6 Jan 2020 06:10:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6C8BA84CE6;
	Mon,  6 Jan 2020 06:10:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 832A61BF3C6
 for <devel@linuxdriverproject.org>; Mon,  6 Jan 2020 06:10:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7B968835D3
 for <devel@linuxdriverproject.org>; Mon,  6 Jan 2020 06:10:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P8giCsOEBrTU for <devel@linuxdriverproject.org>;
 Mon,  6 Jan 2020 06:10:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C994E81A6E
 for <devel@driverdev.osuosl.org>; Mon,  6 Jan 2020 06:10:44 +0000 (UTC)
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7A73C215A4;
 Mon,  6 Jan 2020 06:10:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578291044;
 bh=ZLlqqWBlKVxZBM46vkMXR3qwYQgrp6O7ODVurBNLFmo=;
 h=In-Reply-To:References:Cc:To:Subject:From:Date:From;
 b=EEELYTIL1gOJvIxAD6BYemDgcrMo6kByWMY8UhjX+82wBIPN8bLJPGdlZGCxTxnn5
 PvHKWQU0Z86MDJI9Gk1ksAwsV52EB++6NEhJpKgggLtYMzQsJ+0HZRdDgE1+LKxo8T
 hFe8gLo6KMd/g+8z2Ex6s4ZJnfR0tVPunr06EuDg=
MIME-Version: 1.0
In-Reply-To: <CAKfKVtGZGw7FydE+3PJxbYW_JHB3hi_Mr144A+gvUfX24ffaDg@mail.gmail.com>
References: <cover.1574922435.git.shubhrajyoti.datta@xilinx.com>
 <55183b0a7c466528361802fabef65a57f969d07b.1574922435.git.shubhrajyoti.datta@xilinx.com>
 <20200105200014.4904320678@mail.kernel.org>
 <CAKfKVtGZGw7FydE+3PJxbYW_JHB3hi_Mr144A+gvUfX24ffaDg@mail.gmail.com>
To: Shubhrajyoti Datta <shubhrajyoti.datta@gmail.com>
Subject: Re: [PATCH v3 07/10] clk: clock-wizard: Update the fixed factor
 divisors
From: Stephen Boyd <sboyd@kernel.org>
User-Agent: alot/0.8.1
Date: Sun, 05 Jan 2020 22:10:43 -0800
Message-Id: <20200106061044.7A73C215A4@mail.kernel.org>
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
Cc: devel@driverdev.osuosl.org, Mark Rutland <mark.rutland@arm.com>,
 list@osuosl.org,
 OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS <devicetree@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mike Turquette <mturquette@baylibre.com>,
 Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 open@osuosl.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Quoting Shubhrajyoti Datta (2020-01-05 20:17:16)
> On Mon, Jan 6, 2020 at 1:30 AM Stephen Boyd <sboyd@kernel.org> wrote:
> >
> > Quoting shubhrajyoti.datta@gmail.com (2019-11-27 22:36:14)
> > > From: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
> > >
> > > Update the fixed factor clock registration to register the divisors.
> > >
> > > Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
> > > ---
> > >  drivers/clk/clk-xlnx-clock-wizard.c | 17 +++++++++++------
> > >  1 file changed, 11 insertions(+), 6 deletions(-)
> > >
> > > diff --git a/drivers/clk/clk-xlnx-clock-wizard.c b/drivers/clk/clk-xlnx-clock-wizard.c
> > > index 4c6155b..75ea745 100644
> > > --- a/drivers/clk/clk-xlnx-clock-wizard.c
> > > +++ b/drivers/clk/clk-xlnx-clock-wizard.c
> > > @@ -491,9 +491,11 @@ static int clk_wzrd_probe(struct platform_device *pdev)
> > >         u32 reg, reg_f, mult;
> > >         unsigned long rate;
> > >         const char *clk_name;
> > > +       void __iomem *ctrl_reg;
> > >         struct clk_wzrd *clk_wzrd;
> > >         struct resource *mem;
> > >         int outputs;
> > > +       unsigned long flags = 0;
> > >         struct device_node *np = pdev->dev.of_node;
> > >
> > >         clk_wzrd = devm_kzalloc(&pdev->dev, sizeof(*clk_wzrd), GFP_KERNEL);
> > > @@ -564,19 +566,22 @@ static int clk_wzrd_probe(struct platform_device *pdev)
> > >                 goto err_disable_clk;
> > >         }
> > >
> > > -       /* register div */
> > > -       reg = (readl(clk_wzrd->base + WZRD_CLK_CFG_REG(0)) &
> > > -                       WZRD_DIVCLK_DIVIDE_MASK) >> WZRD_DIVCLK_DIVIDE_SHIFT;
> > > +       outputs = of_property_count_strings(np, "clock-output-names");
> > > +       if (outputs == 1)
> > > +               flags = CLK_SET_RATE_PARENT;
> >
> > What does the number of clk outputs have to do with the ability to
> > change the rate of a parent clk? The commit text doesn't inform me of
> > what this is for either. Please help us understand.
> 
> If there are multiple clocks then changing the rate of the parent
> changes the rate of all the
> outputs so we donot allow changing the rate of the parent if there are
> multiple clocks.
> If there is only one output then that is not an issue.

Maybe your downstream consumers should use the rate locking APIs instead
of having this restriction in the provider driver? Look at
clk_set_rate_exclusive() and associated APIs.

> 
> I will update the description in the next version.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
