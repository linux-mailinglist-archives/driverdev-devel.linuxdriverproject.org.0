Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EBB7A130CB9
	for <lists+driverdev-devel@lfdr.de>; Mon,  6 Jan 2020 05:17:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2BAB120475;
	Mon,  6 Jan 2020 04:17:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XVy-d2qWShyt; Mon,  6 Jan 2020 04:17:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 90BD320434;
	Mon,  6 Jan 2020 04:17:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 967821BF2C7
 for <devel@linuxdriverproject.org>; Mon,  6 Jan 2020 04:17:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9290A20423
 for <devel@linuxdriverproject.org>; Mon,  6 Jan 2020 04:17:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id APYD33oGS5SS for <devel@linuxdriverproject.org>;
 Mon,  6 Jan 2020 04:17:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com
 [209.85.208.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 5E22120421
 for <devel@driverdev.osuosl.org>; Mon,  6 Jan 2020 04:17:29 +0000 (UTC)
Received: by mail-ed1-f65.google.com with SMTP id c26so46385351eds.8
 for <devel@driverdev.osuosl.org>; Sun, 05 Jan 2020 20:17:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NM4cO7yx6XHdWkikFjcDmehOMtjxSh2FAaet+Jaova8=;
 b=flUVars/F3OZbs1fd3Xo4NX+NdYi1GzRjlkAfssV8o73ZLfhUhSAFWX7ic15uGaFSK
 1/iw1VTwqJhgM6Ze6NYcH/2chJJKw4SEDpqwhX8tW4dEkG5hO9YtP1cjNj0khmkvf3ow
 ia3j4yquQawETubpeFmIXil8yekYP1yQmHAgiMEdN4PI2TvyXMxDFfe/r0Jhzub/txkq
 BFEISeSvPO2RQ5PJhmyHKIRa7ZFlyD6f8GzxGl1AsLU9TgxgKx96jCgwFXzvx3xXaflJ
 GxEvkE7HpOD+72FF6cFjh0BhzPWZ2DyXjw4FftC61WR62E3TRSt1l7FdAjtu11ipXO6o
 W+8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NM4cO7yx6XHdWkikFjcDmehOMtjxSh2FAaet+Jaova8=;
 b=Zx6cAYLcJmNqmj3yZKvO6BDs1lHdIwAhdh2sNIJ0XelZ3S42AO27h3CagjkoIvtb09
 x6J2XLa7seqc21JbVTjoXYeh8XcIB+IdNS1sQgBnbVreIPTABg/Oa4+pexo5D/iVTQAb
 MQ1jFqtcdNAhvzL1j4LMk/Q68wQSWZaq8kAoeEYculIj4zh26hweS7AYCSBi6LHJCNx1
 3Ol4U1rKXsd13sIh4A5utg2robyVbeoxjxFNipJfkvG1Uhj0NYtWugUqzvEmw9E4KWuP
 qFZRUJ2pneCSDRUfftVjpHb3X5dKcyx9sie+hfKf40dFCoqJYVVWACRi3y1ydBbeoWAz
 he6w==
X-Gm-Message-State: APjAAAWD2aMY3F2V1Wn3TERiHC8/tNmpjT76gZ55+dz3lrQI24Rs6BCo
 Ab89YDyu7Dp+r1jL5l4738KJKfJK2C/LS8B61Hg=
X-Google-Smtp-Source: APXvYqyL0u361qZHtYP5NXawXdgFVviSEzFvt2t+iyc4L3etqBxubixvgUGBf2C08rJKMqTlkvE+MGfhYtfKGSUrSwE=
X-Received: by 2002:a05:6402:12d1:: with SMTP id
 k17mr105414587edx.291.1578284247470; 
 Sun, 05 Jan 2020 20:17:27 -0800 (PST)
MIME-Version: 1.0
References: <cover.1574922435.git.shubhrajyoti.datta@xilinx.com>
 <55183b0a7c466528361802fabef65a57f969d07b.1574922435.git.shubhrajyoti.datta@xilinx.com>
 <20200105200014.4904320678@mail.kernel.org>
In-Reply-To: <20200105200014.4904320678@mail.kernel.org>
From: Shubhrajyoti Datta <shubhrajyoti.datta@gmail.com>
Date: Mon, 6 Jan 2020 09:47:16 +0530
Message-ID: <CAKfKVtGZGw7FydE+3PJxbYW_JHB3hi_Mr144A+gvUfX24ffaDg@mail.gmail.com>
Subject: Re: [PATCH v3 07/10] clk: clock-wizard: Update the fixed factor
 divisors
To: Stephen Boyd <sboyd@kernel.org>
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
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mike Turquette <mturquette@baylibre.com>,
 Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-clk@vger.kernel.org,
 =?UTF-8?Q?S=C3=B6ren_Brinkmann?= <soren.brinkmann@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Jan 6, 2020 at 1:30 AM Stephen Boyd <sboyd@kernel.org> wrote:
>
> Quoting shubhrajyoti.datta@gmail.com (2019-11-27 22:36:14)
> > From: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
> >
> > Update the fixed factor clock registration to register the divisors.
> >
> > Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
> > ---
> >  drivers/clk/clk-xlnx-clock-wizard.c | 17 +++++++++++------
> >  1 file changed, 11 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/clk/clk-xlnx-clock-wizard.c b/drivers/clk/clk-xlnx-clock-wizard.c
> > index 4c6155b..75ea745 100644
> > --- a/drivers/clk/clk-xlnx-clock-wizard.c
> > +++ b/drivers/clk/clk-xlnx-clock-wizard.c
> > @@ -491,9 +491,11 @@ static int clk_wzrd_probe(struct platform_device *pdev)
> >         u32 reg, reg_f, mult;
> >         unsigned long rate;
> >         const char *clk_name;
> > +       void __iomem *ctrl_reg;
> >         struct clk_wzrd *clk_wzrd;
> >         struct resource *mem;
> >         int outputs;
> > +       unsigned long flags = 0;
> >         struct device_node *np = pdev->dev.of_node;
> >
> >         clk_wzrd = devm_kzalloc(&pdev->dev, sizeof(*clk_wzrd), GFP_KERNEL);
> > @@ -564,19 +566,22 @@ static int clk_wzrd_probe(struct platform_device *pdev)
> >                 goto err_disable_clk;
> >         }
> >
> > -       /* register div */
> > -       reg = (readl(clk_wzrd->base + WZRD_CLK_CFG_REG(0)) &
> > -                       WZRD_DIVCLK_DIVIDE_MASK) >> WZRD_DIVCLK_DIVIDE_SHIFT;
> > +       outputs = of_property_count_strings(np, "clock-output-names");
> > +       if (outputs == 1)
> > +               flags = CLK_SET_RATE_PARENT;
>
> What does the number of clk outputs have to do with the ability to
> change the rate of a parent clk? The commit text doesn't inform me of
> what this is for either. Please help us understand.

If there are multiple clocks then changing the rate of the parent
changes the rate of all the
outputs so we donot allow changing the rate of the parent if there are
multiple clocks.
If there is only one output then that is not an issue.

I will update the description in the next version.
>
> >         clk_name = kasprintf(GFP_KERNEL, "%s_mul_div", dev_name(&pdev->dev));
> >         if (!clk_name) {
> >                 ret = -ENOMEM;
> >                 goto err_rm_int_clk;
> >         }
> >
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
