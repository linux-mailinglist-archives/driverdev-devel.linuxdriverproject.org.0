Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EFF42CB4CB
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Dec 2020 07:03:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E38A887819;
	Wed,  2 Dec 2020 06:03:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8VSX-ArUBOWt; Wed,  2 Dec 2020 06:03:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0902287813;
	Wed,  2 Dec 2020 06:03:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 986F11BF616
 for <devel@linuxdriverproject.org>; Wed,  2 Dec 2020 06:03:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8B7CF2E204
 for <devel@linuxdriverproject.org>; Wed,  2 Dec 2020 06:03:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y-zaeMfk6535 for <devel@linuxdriverproject.org>;
 Wed,  2 Dec 2020 06:03:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 6748E2E203
 for <devel@driverdev.osuosl.org>; Wed,  2 Dec 2020 06:03:51 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id f1so64284plt.12
 for <devel@driverdev.osuosl.org>; Tue, 01 Dec 2020 22:03:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=sdg6m13JCDegZRe+NmQ9epCCrqdVuQ58ZPfdb2g7nwk=;
 b=pCJA7Ta3XJljluS9z7yOcbr2jUsDThZD9M6lRMzlsYVGvFOkg0wP3wWBlshqdNcCUj
 5uZvn95iyp309exveaPBLaEodgH692I7dBiok0BwlFyBzxW+KxVBKBsaJ3YAqmT67zP+
 vT7IV6YGmGZXgrQL1P+KbMMk6BkHeNmyXgmsLs8wEBYPoHSWIIV0zS+oIMq3EZ18VhHl
 v/jVjHYd64fR99K99JDgwRDqJ8llL6f+7U5Vea88QnSVhKT9CDR5uMs8nAOZPE5v31wN
 8E6sSyJ5FNYSKCxnTg66FyMyGZaitBT0IHC39PlWgV35Rae1pxdg2a75c0p5lOK7kqV3
 FibQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=sdg6m13JCDegZRe+NmQ9epCCrqdVuQ58ZPfdb2g7nwk=;
 b=sBopCePk14exQbehg0he7g8RqYhnh99xp92lQTGxOfAlUe2rBu3zLpqRtYQlp9ufZd
 TiHWNeCD9ipFnYml49bqhyI7tHH8qp19dmJ3lqlro1tjXiC5ubPuOeUOsiw+b4KnkBb3
 F4nkyOZO7udEk5jHIMuTJ03GlVBhCAjiTn18BRJNoSUN20Ih6917nmPdj57paCUTKIQ5
 ZJwIFyGCKXrnyVbQDMJIpY2I2A4F4+1ZqV4W9z8Y7mQZXfluDvB7l0guyGIDpZiL/N88
 Vk/duJfbeNF0UgEC7uDWDfjXU1ayXOAqIdjxpbAU9p66B7VKHASp7vw2qdhVwv1goS8v
 4woA==
X-Gm-Message-State: AOAM533rscN2LQQ6jNH4edunU65OM8tiukFjpRDJif62//ut7i+QtqR1
 Df5im37BvQCFEc3TpXyPNEE=
X-Google-Smtp-Source: ABdhPJzZ+izHWO3gM6iPbafcGZ1JHYrclBHjBVqhKWL05Il/SE7A6c1xDfh20W3Ydj+C/+H6a3Wb5g==
X-Received: by 2002:a17:902:bf0b:b029:d8:f677:30f2 with SMTP id
 bi11-20020a170902bf0bb02900d8f67730f2mr1209361plb.25.1606889030866; 
 Tue, 01 Dec 2020 22:03:50 -0800 (PST)
Received: from dtor-ws ([2620:15c:202:201:a6ae:11ff:fe11:fcc3])
 by smtp.gmail.com with ESMTPSA id x16sm600470pjh.39.2020.12.01.22.03.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Dec 2020 22:03:50 -0800 (PST)
Date: Tue, 1 Dec 2020 22:03:47 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH v5 08/11] input: raspberrypi-ts: Release firmware handle
 when not needed
Message-ID: <20201202060347.GA2034289@dtor-ws>
References: <20201123183833.18750-1-nsaenzjulienne@suse.de>
 <20201123183833.18750-9-nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201123183833.18750-9-nsaenzjulienne@suse.de>
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
Cc: devel@driverdev.osuosl.org, linux-pwm@vger.kernel.org, f.fainelli@gmail.com,
 devicetree@vger.kernel.org, sboyd@kernel.org, gregkh@linuxfoundation.org,
 linus.walleij@linaro.org, linux-input@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 andy.shevchenko@gmail.com, bcm-kernel-feedback-list@broadcom.com,
 wahrenst@gmx.net, p.zabel@pengutronix.de, u.kleine-koenig@pengutronix.de,
 bgolaszewski@baylibre.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Nicolas,

On Mon, Nov 23, 2020 at 07:38:29PM +0100, Nicolas Saenz Julienne wrote:
> Use devm_rpi_firmware_get() so as to make sure we release RPi's firmware
> interface when unbinding the device.

I do not believe this comment is correct any longer. Otherwise:

Acked-by: Dmitry Torokhov <dmitry.torokhov@gmail.com>

> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> 
> ---
> 
> Changes since v3:
>  - Release firmware handle in probe function
> 
> Changes since v2:
>  - Use devm_rpi_firmware_get(), instead of remove function
> 
>  drivers/input/touchscreen/raspberrypi-ts.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/input/touchscreen/raspberrypi-ts.c b/drivers/input/touchscreen/raspberrypi-ts.c
> index ef6aaed217cf..5000f5fd9ec3 100644
> --- a/drivers/input/touchscreen/raspberrypi-ts.c
> +++ b/drivers/input/touchscreen/raspberrypi-ts.c
> @@ -160,7 +160,7 @@ static int rpi_ts_probe(struct platform_device *pdev)
>  	touchbuf = (u32)ts->fw_regs_phys;
>  	error = rpi_firmware_property(fw, RPI_FIRMWARE_FRAMEBUFFER_SET_TOUCHBUF,
>  				      &touchbuf, sizeof(touchbuf));
> -
> +	rpi_firmware_put(fw);
>  	if (error || touchbuf != 0) {
>  		dev_warn(dev, "Failed to set touchbuf, %d\n", error);
>  		return error;
> -- 
> 2.29.2
> 

-- 
Dmitry
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
