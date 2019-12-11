Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8462711A96C
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Dec 2019 11:59:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0B50A86C8F;
	Wed, 11 Dec 2019 10:59:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KV2heSRF2o2D; Wed, 11 Dec 2019 10:59:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DB8B986AD2;
	Wed, 11 Dec 2019 10:59:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AF20F1BF20D
 for <devel@linuxdriverproject.org>; Wed, 11 Dec 2019 10:59:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id ABA788853B
 for <devel@linuxdriverproject.org>; Wed, 11 Dec 2019 10:59:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nl-GJCYJHcqG for <devel@linuxdriverproject.org>;
 Wed, 11 Dec 2019 10:59:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E5CC988538
 for <devel@driverdev.osuosl.org>; Wed, 11 Dec 2019 10:59:14 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id g17so23540221wro.2
 for <devel@driverdev.osuosl.org>; Wed, 11 Dec 2019 02:59:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ZJ6q3Z6ceKXrm+SRlu2SJJixCZ2doGfehevk1AA5ByM=;
 b=K1ojBJTpeL2Wboiq1cJE1Qq1n1g2bh/8V9dHPWgDVEGYy3w7g72D4KX55XVKKdXmbK
 twQeRiS4RHTOb+jek8lMpidtbUZHZ56k/3uCiXXG5/+Hkw/rxpi9nXFgX2fFiuSZt9gx
 33t0fTYw2WNQcXFMUfbK17IUcJIqUG/f7ENFXDkP/+HZFFhEV/HUUyHXlqyaRHTlZqP+
 W1hQAb3DcSM8/OMvm51Xzaphnh3Jfeo+cHO0F9nvSfAt5q5JciBAe7LhcaGyG570Cgc+
 6ckP1RX5m9u+nWZ060GCRdifB5D99LuUhnhQKM7RWCVZCXEGwohrxalOaTxi1DYQbRQS
 L75Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ZJ6q3Z6ceKXrm+SRlu2SJJixCZ2doGfehevk1AA5ByM=;
 b=DK1492DC8g1GAyzJstI0i3LLsSXE79Kq+/qb6/JyObKyCH+l5R5guVM9D1IvUTRuYY
 YUaVp5TEN5FqoM61q98JT90v5q8AUSA0yflrWmwMRWKmxG/rLzqYFvXw6pVFLFaDgKjn
 tNJRsthb8/AXr+fJL00GjupGAFTEJASL/mU4gszfem0cy4YkeDn1gYwCi48IgWWYOS1V
 8QjiG1nygqapDUPM63pSlQsX6IQ7Me4ND47Ovakrg3p0YH4iZ593p20eo7HqPdwdjGFm
 BEPUNO3B2DBaO+FXDq4Jg2vb7ZngWN1PzRSS3NFyEWfUMnfA7BWxUol1DkpFq8dkGWs/
 oHSw==
X-Gm-Message-State: APjAAAVdj1OZXr3J28yInSkW9yjFR4W5CPI8u+gGJTFIDtJxaW/pQ5wd
 /lC9fOgNSdmNUHfUUHx5In4=
X-Google-Smtp-Source: APXvYqzYgisCayrNKaxODP8N7xFYdT2hZz1hxEtmhPqbWlMtOUVzxlgJNwPz8lQm54UI/lwzuPutcw==
X-Received: by 2002:adf:dc86:: with SMTP id r6mr3304746wrj.68.1576061953285;
 Wed, 11 Dec 2019 02:59:13 -0800 (PST)
Received: from arch-thunder.localdomain (a109-49-46-234.cpe.netcabo.pt.
 [109.49.46.234])
 by smtp.gmail.com with ESMTPSA id o19sm1215640wmc.18.2019.12.11.02.59.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 02:59:12 -0800 (PST)
Date: Wed, 11 Dec 2019 10:59:08 +0000
From: Rui Miguel Silva <rmfrfs@gmail.com>
To: Chuhong Yuan <hslester96@gmail.com>
Subject: Re: [PATCH] media: imx7-mipi-csis: Add the missed
 v4l2_async_notifier_cleanup in remove
Message-ID: <20191211105908.dw4lnuble3ejlnil@arch-thunder.localdomain>
References: <20191209085828.16183-1-hslester96@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191209085828.16183-1-hslester96@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Chuhong,
Thanks for the patch.

On Mon, Dec 09, 2019 at 04:58:28PM +0800, Chuhong Yuan wrote:
> All drivers in imx call v4l2_async_notifier_cleanup() after unregistering
> the notifier except this driver.
> This should be a miss and we need to add the call to fix it.
> 
> Signed-off-by: Chuhong Yuan <hslester96@gmail.com>

Reviewed-by: Rui Miguel Silva <rmfrfs@gmail.com>

------
Cheers,
     Rui
> ---
>  drivers/staging/media/imx/imx7-mipi-csis.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/staging/media/imx/imx7-mipi-csis.c b/drivers/staging/media/imx/imx7-mipi-csis.c
> index 99166afca071..2bfa85bb84e7 100644
> --- a/drivers/staging/media/imx/imx7-mipi-csis.c
> +++ b/drivers/staging/media/imx/imx7-mipi-csis.c
> @@ -1105,6 +1105,7 @@ static int mipi_csis_remove(struct platform_device *pdev)
>  	mipi_csis_debugfs_exit(state);
>  	v4l2_async_unregister_subdev(&state->mipi_sd);
>  	v4l2_async_notifier_unregister(&state->subdev_notifier);
> +	v4l2_async_notifier_cleanup(&state->subdev_notifier);
>  
>  	pm_runtime_disable(&pdev->dev);
>  	mipi_csis_pm_suspend(&pdev->dev, true);
> -- 
> 2.24.0
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
