Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F8DE1309C6
	for <lists+driverdev-devel@lfdr.de>; Sun,  5 Jan 2020 21:00:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 29F3F85BDF;
	Sun,  5 Jan 2020 20:00:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x1ZI2Pc0hj0A; Sun,  5 Jan 2020 20:00:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C723E85B36;
	Sun,  5 Jan 2020 20:00:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0321C1BF405
 for <devel@linuxdriverproject.org>; Sun,  5 Jan 2020 20:00:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id F38CC857EB
 for <devel@linuxdriverproject.org>; Sun,  5 Jan 2020 20:00:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v5pUJ+VGYIMn for <devel@linuxdriverproject.org>;
 Sun,  5 Jan 2020 20:00:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 866FA8214C
 for <devel@driverdev.osuosl.org>; Sun,  5 Jan 2020 20:00:14 +0000 (UTC)
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4904320678;
 Sun,  5 Jan 2020 20:00:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578254414;
 bh=lwYHLf05sKcCVdLUCH2JXzQ3MgAvyUcSQT+vbpbmaAo=;
 h=In-Reply-To:References:Cc:To:Subject:From:Date:From;
 b=qY3aprjtZjQVCAAxDJfvnctITRhhfl5W0ouZf0avGD0xHixzPcIDUiPz9Z/NjaKPc
 8hemFhtZHD3qiDaCJW19l7J2UHnAKmuVuMLWM8RLmuJDs8w2dtAhBcn6eJjbQbK+pt
 MFTyjSeNS4WTXxnSIOfNvJfD4viwE2pPdh2dxlBE=
MIME-Version: 1.0
In-Reply-To: <55183b0a7c466528361802fabef65a57f969d07b.1574922435.git.shubhrajyoti.datta@xilinx.com>
References: <cover.1574922435.git.shubhrajyoti.datta@xilinx.com>
 <55183b0a7c466528361802fabef65a57f969d07b.1574922435.git.shubhrajyoti.datta@xilinx.com>
To: devel@driverdev.osuosl.org, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, shubhrajyoti.datta@gmail.com
Subject: Re: [PATCH v3 07/10] clk: clock-wizard: Update the fixed factor
 divisors
From: Stephen Boyd <sboyd@kernel.org>
User-Agent: alot/0.8.1
Date: Sun, 05 Jan 2020 12:00:13 -0800
Message-Id: <20200105200014.4904320678@mail.kernel.org>
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 gregkh@linuxfoundation.org, mturquette@baylibre.com,
 Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>, robh+dt@kernel.org,
 soren.brinkmann@xilinx.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Quoting shubhrajyoti.datta@gmail.com (2019-11-27 22:36:14)
> From: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
> 
> Update the fixed factor clock registration to register the divisors.
> 
> Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
> ---
>  drivers/clk/clk-xlnx-clock-wizard.c | 17 +++++++++++------
>  1 file changed, 11 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/clk/clk-xlnx-clock-wizard.c b/drivers/clk/clk-xlnx-clock-wizard.c
> index 4c6155b..75ea745 100644
> --- a/drivers/clk/clk-xlnx-clock-wizard.c
> +++ b/drivers/clk/clk-xlnx-clock-wizard.c
> @@ -491,9 +491,11 @@ static int clk_wzrd_probe(struct platform_device *pdev)
>         u32 reg, reg_f, mult;
>         unsigned long rate;
>         const char *clk_name;
> +       void __iomem *ctrl_reg;
>         struct clk_wzrd *clk_wzrd;
>         struct resource *mem;
>         int outputs;
> +       unsigned long flags = 0;
>         struct device_node *np = pdev->dev.of_node;
>  
>         clk_wzrd = devm_kzalloc(&pdev->dev, sizeof(*clk_wzrd), GFP_KERNEL);
> @@ -564,19 +566,22 @@ static int clk_wzrd_probe(struct platform_device *pdev)
>                 goto err_disable_clk;
>         }
>  
> -       /* register div */
> -       reg = (readl(clk_wzrd->base + WZRD_CLK_CFG_REG(0)) &
> -                       WZRD_DIVCLK_DIVIDE_MASK) >> WZRD_DIVCLK_DIVIDE_SHIFT;
> +       outputs = of_property_count_strings(np, "clock-output-names");
> +       if (outputs == 1)
> +               flags = CLK_SET_RATE_PARENT;

What does the number of clk outputs have to do with the ability to
change the rate of a parent clk? The commit text doesn't inform me of
what this is for either. Please help us understand.

>         clk_name = kasprintf(GFP_KERNEL, "%s_mul_div", dev_name(&pdev->dev));
>         if (!clk_name) {
>                 ret = -ENOMEM;
>                 goto err_rm_int_clk;
>         }
>  
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
