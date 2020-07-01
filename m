Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C03A42104F2
	for <lists+driverdev-devel@lfdr.de>; Wed,  1 Jul 2020 09:24:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 03C5D301C8;
	Wed,  1 Jul 2020 07:24:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H-kYPJ2bGHQE; Wed,  1 Jul 2020 07:24:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8E290301BF;
	Wed,  1 Jul 2020 07:24:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 100191BF59A
 for <devel@linuxdriverproject.org>; Wed,  1 Jul 2020 07:24:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0C9118ABC6
 for <devel@linuxdriverproject.org>; Wed,  1 Jul 2020 07:24:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mKPhelTHUBcS for <devel@linuxdriverproject.org>;
 Wed,  1 Jul 2020 07:24:21 +0000 (UTC)
X-Greylist: delayed 00:17:44 by SQLgrey-1.7.6
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [85.220.165.71])
 by hemlock.osuosl.org (Postfix) with ESMTPS id ADA618ABC4
 for <devel@driverdev.osuosl.org>; Wed,  1 Jul 2020 07:24:21 +0000 (UTC)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1jqWpC-00022p-6y; Wed, 01 Jul 2020 09:06:30 +0200
Received: from mtr by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1jqWpB-0007vN-7U; Wed, 01 Jul 2020 09:06:29 +0200
Date: Wed, 1 Jul 2020 09:06:29 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] media: allegro: Fix some NULL vs IS_ERR() checks in probe
Message-ID: <20200701070629.GA16164@pengutronix.de>
Mail-Followup-To: Michael Tretter <m.tretter@pengutronix.de>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
 kernel-janitors@vger.kernel.org
References: <20200619143007.GC267142@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200619143007.GC267142@mwanda>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:05:04 up 132 days, 14:35, 107 users,  load average: 0.07, 0.20,
 0.16
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: mtr@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: devel@driverdev.osuosl.org
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
Cc: devel@driverdev.osuosl.org, kernel-janitors@vger.kernel.org,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, 19 Jun 2020 17:30:07 +0300, Dan Carpenter wrote:
> The devm_ioremap() function doesn't return error pointers, it returns
> NULL on error.
> 
> Fixes: f20387dfd065 ("media: allegro: add Allegro DVT video IP core driver")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>

Reviewed-by: Michael Tretter <m.tretter@pengutronix.de>

> ---
>  drivers/staging/media/allegro-dvt/allegro-core.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/media/allegro-dvt/allegro-core.c b/drivers/staging/media/allegro-dvt/allegro-core.c
> index 70f133a842dd..3ed66aae741d 100644
> --- a/drivers/staging/media/allegro-dvt/allegro-core.c
> +++ b/drivers/staging/media/allegro-dvt/allegro-core.c
> @@ -3065,9 +3065,9 @@ static int allegro_probe(struct platform_device *pdev)
>  		return -EINVAL;
>  	}
>  	regs = devm_ioremap(&pdev->dev, res->start, resource_size(res));
> -	if (IS_ERR(regs)) {
> +	if (!regs) {
>  		dev_err(&pdev->dev, "failed to map registers\n");
> -		return PTR_ERR(regs);
> +		return -ENOMEM;
>  	}
>  	dev->regmap = devm_regmap_init_mmio(&pdev->dev, regs,
>  					    &allegro_regmap_config);
> @@ -3085,9 +3085,9 @@ static int allegro_probe(struct platform_device *pdev)
>  	sram_regs = devm_ioremap(&pdev->dev,
>  				 sram_res->start,
>  				 resource_size(sram_res));
> -	if (IS_ERR(sram_regs)) {
> +	if (!sram_regs) {
>  		dev_err(&pdev->dev, "failed to map sram\n");
> -		return PTR_ERR(sram_regs);
> +		return -ENOMEM;
>  	}
>  	dev->sram = devm_regmap_init_mmio(&pdev->dev, sram_regs,
>  					  &allegro_sram_config);
> -- 
> 2.27.0
> 
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
