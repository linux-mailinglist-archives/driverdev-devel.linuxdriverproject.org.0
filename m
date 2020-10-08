Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FCF4286CA6
	for <lists+driverdev-devel@lfdr.de>; Thu,  8 Oct 2020 04:14:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A7CC186E72;
	Thu,  8 Oct 2020 02:14:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IOl1J3q-UfrH; Thu,  8 Oct 2020 02:14:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 121BF86E67;
	Thu,  8 Oct 2020 02:14:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 38E891BF377
 for <devel@linuxdriverproject.org>; Thu,  8 Oct 2020 02:14:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1AEB12E0F1
 for <devel@linuxdriverproject.org>; Thu,  8 Oct 2020 02:14:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IsJAjfl15K+n for <devel@linuxdriverproject.org>;
 Thu,  8 Oct 2020 02:14:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 24EB820445
 for <devel@driverdev.osuosl.org>; Thu,  8 Oct 2020 02:14:15 +0000 (UTC)
Received: from kernel.org (unknown [104.132.1.79])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 93371207C3;
 Thu,  8 Oct 2020 02:14:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1602123254;
 bh=5NnMCs9Gn6aXCfsggof2l9ofu41kL4XS684cUamFvok=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=GYe/Brq4F+yN8ElnfRIXV9um6Qdya1US8aVhD705SKAtmSQkr+H5rto7d3uKW5ZIz
 HaHuWP1V/ChCSEOzaQ1eredWcD1QuXj1bIbYT0x30Y0AUW80+F4x0TAMpZ1aqLdwKr
 GTqIGMb3U+87E0/OCmQDXIIlerNo1uhrN3hYcrmQ=
MIME-Version: 1.0
In-Reply-To: <BYAPR02MB5863905CA4E7F129C9E2FF3FAA390@BYAPR02MB5863.namprd02.prod.outlook.com>
References: <1598621996-31040-1-git-send-email-shubhrajyoti.datta@xilinx.com>
 <1598621996-31040-6-git-send-email-shubhrajyoti.datta@xilinx.com>
 <160072305811.310579.18192761455478284239@swboyd.mtv.corp.google.com>
 <BYAPR02MB5863905CA4E7F129C9E2FF3FAA390@BYAPR02MB5863.namprd02.prod.outlook.com>
Subject: RE: [PATCH v6 5/8] clk: clock-wizard: Add support for fractional
 support
From: Stephen Boyd <sboyd@kernel.org>
To: Shubhrajyoti Datta <shubhraj@xilinx.com>, linux-clk@vger.kernel.org
Date: Wed, 07 Oct 2020 19:14:13 -0700
Message-ID: <160212325326.310579.3725169808160868922@swboyd.mtv.corp.google.com>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 gregkh@linuxfoundation.org, mturquette@baylibre.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Quoting Shubhrajyoti Datta (2020-09-23 23:23:11)
> 
> > -----Original Message-----
> > From: Stephen Boyd <sboyd@kernel.org>
> > Sent: Tuesday, September 22, 2020 2:48 AM
> > > +}
> > > +
> > > +static long clk_wzrd_round_rate_f(struct clk_hw *hw, unsigned long
> > rate,
> > > +                                 unsigned long *prate) {
> > > +       return rate;
> > 
> > Can every rate be supported? This function is supposed to tell the clk
> > framework what rate will be achieved if we call clk_set_rate() with 'rate'
> > passed to this function. Almost always returning 'rate' is not the case.
> > 
> 
> We can support rate upto 3 decimal places to prevent truncation here we are 
> Returning rate.

So all rates can be supported?

> > > @@ -413,8 +543,18 @@ static int clk_wzrd_probe(struct platform_device
> > *pdev)
> > >                         ret = -EINVAL;
> > >                         goto err_rm_int_clks;
> > >                 }
> > > -               clk_wzrd->clkout[i] = clk_wzrd_register_divider(&pdev->dev,
> > > -                                                               clkout_name,
> > > +               if (!i)
> > > +                       clk_wzrd->clkout[i] = clk_wzrd_register_divf
> > > +                               (&pdev->dev, clkout_name,
> > > +                               clk_name, 0,
> > > +                               clk_wzrd->base, (WZRD_CLK_CFG_REG(2) + i * 12),
> > > +                               WZRD_CLKOUT_DIVIDE_SHIFT,
> > > +                               WZRD_CLKOUT_DIVIDE_WIDTH,
> > > +                               CLK_DIVIDER_ONE_BASED |
> > CLK_DIVIDER_ALLOW_ZERO,
> > > +                               NULL, &clkwzrd_lock);
> > > +               else
> > > +                       clk_wzrd->clkout[i] = clk_wzrd_register_divider
> > > +                               (&pdev->dev, clkout_name,
> > >                                 clk_name, 0,
> > >                                 clk_wzrd->base, (WZRD_CLK_CFG_REG(2) + i * 12),
> > >                                 WZRD_CLKOUT_DIVIDE_SHIFT,
> > >
> > 
> > I wonder if a do-while loop with flags set to ONE_BASED and ALLOW_ZERO
> > could work and then flags gets overwritten to be just DIVIDE_SHIFT? Then
> > we don't have to duplicate the registration line.
> 
> I did not understand this comment in one case I am registering  for the fractional operations
> In another we are using the integral operations

Yes and the case depends on the value of i being zero or non-zero. So
can it be converted to a do while loop and the if condition dropped?
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
