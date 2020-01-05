Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D8CA1309BF
	for <lists+driverdev-devel@lfdr.de>; Sun,  5 Jan 2020 20:56:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3237685B00;
	Sun,  5 Jan 2020 19:56:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4Y0l1Y5XRZi4; Sun,  5 Jan 2020 19:56:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1023D85693;
	Sun,  5 Jan 2020 19:56:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 64C841BF405
 for <devel@linuxdriverproject.org>; Sun,  5 Jan 2020 19:56:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 61F8285693
 for <devel@linuxdriverproject.org>; Sun,  5 Jan 2020 19:56:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qokT6g+0JTwi for <devel@linuxdriverproject.org>;
 Sun,  5 Jan 2020 19:56:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D74CB855E1
 for <devel@driverdev.osuosl.org>; Sun,  5 Jan 2020 19:56:10 +0000 (UTC)
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8F17320678;
 Sun,  5 Jan 2020 19:56:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578254170;
 bh=7t14hCA0XP+MmY5EzlL7gorT0FZ/Fb5lWXrgUegaoiw=;
 h=In-Reply-To:References:Cc:To:Subject:From:Date:From;
 b=TvaJCIOY2xoO4b9U18aVip2O69DWnnW/lVnrj/tYcqMV/Q6fLIYHE6aZu1m35h8a7
 sjNEnFg2OGJZ3337lOgONBWYb44lfYcezHBW1mQuuBLhhBFz8ebCFs/wy4ncp1tRw4
 DsYZ5vY3+Uaebud2bgeFcjRCXmCSe0HJF7sEQsOQ=
MIME-Version: 1.0
In-Reply-To: <4b69f5ba64b68b388ab1e1a0c5896536b063da74.1574922435.git.shubhrajyoti.datta@xilinx.com>
References: <cover.1574922435.git.shubhrajyoti.datta@xilinx.com>
 <4b69f5ba64b68b388ab1e1a0c5896536b063da74.1574922435.git.shubhrajyoti.datta@xilinx.com>
To: devel@driverdev.osuosl.org, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, shubhrajyoti.datta@gmail.com
Subject: Re: [PATCH v3 06/10] clk: clock-wizard: Remove the hardcoding of the
 clock outputs
From: Stephen Boyd <sboyd@kernel.org>
User-Agent: alot/0.8.1
Date: Sun, 05 Jan 2020 11:56:09 -0800
Message-Id: <20200105195610.8F17320678@mail.kernel.org>
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

Quoting shubhrajyoti.datta@gmail.com (2019-11-27 22:36:13)
> diff --git a/drivers/clk/clk-xlnx-clock-wizard.c b/drivers/clk/clk-xlnx-clock-wizard.c
> index bc0354a..4c6155b 100644
> --- a/drivers/clk/clk-xlnx-clock-wizard.c
> +++ b/drivers/clk/clk-xlnx-clock-wizard.c
> @@ -493,6 +493,7 @@ static int clk_wzrd_probe(struct platform_device *pdev)
>         const char *clk_name;
>         struct clk_wzrd *clk_wzrd;
>         struct resource *mem;
> +       int outputs;
>         struct device_node *np = pdev->dev.of_node;
>  
>         clk_wzrd = devm_kzalloc(&pdev->dev, sizeof(*clk_wzrd), GFP_KERNEL);
> @@ -583,7 +584,7 @@ static int clk_wzrd_probe(struct platform_device *pdev)
>         }
>  
>         /* register div per output */
> -       for (i = WZRD_NUM_OUTPUTS - 1; i >= 0 ; i--) {
> +       for (i = outputs - 1; i >= 0 ; i--) {

Where is 'outputs' assigned in this patch?

>                 const char *clkout_name;
>  
>                 if (of_property_read_string_index(np, "clock-output-names", i,
> @@ -614,7 +615,7 @@ static int clk_wzrd_probe(struct platform_device *pdev)
>                 if (IS_ERR(clk_wzrd->clkout[i])) {
>                         int j;
>  
> -                       for (j = i + 1; j < WZRD_NUM_OUTPUTS; j++)
> +                       for (j = i + 1; j < outputs; j++)
>                                 clk_unregister(clk_wzrd->clkout[j]);
>                         dev_err(&pdev->dev,
>                                 "unable to register divider clock\n");
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
