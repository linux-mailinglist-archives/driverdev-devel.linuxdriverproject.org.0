Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2439B1E7A51
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 May 2020 12:16:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 46F1F88414;
	Fri, 29 May 2020 10:16:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DfFE8NS+9y3e; Fri, 29 May 2020 10:16:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E1C9D883EC;
	Fri, 29 May 2020 10:16:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DB94A1BF2FE
 for <devel@linuxdriverproject.org>; Fri, 29 May 2020 10:16:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CE4A42039D
 for <devel@linuxdriverproject.org>; Fri, 29 May 2020 10:16:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zk3Gz7wLXrcM for <devel@linuxdriverproject.org>;
 Fri, 29 May 2020 10:16:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
 [209.85.208.193])
 by silver.osuosl.org (Postfix) with ESMTPS id E04DC2039C
 for <devel@driverdev.osuosl.org>; Fri, 29 May 2020 10:16:14 +0000 (UTC)
Received: by mail-lj1-f193.google.com with SMTP id b6so1954696ljj.1
 for <devel@driverdev.osuosl.org>; Fri, 29 May 2020 03:16:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Qb23YrFge2bev6B+pdY5MYpRbBAt1YLbxMOSUywPdHk=;
 b=uFc/NqBs0pDOyo7jakU7l1i6TF5vZ9WI/9H91V1F93fMDTyzVvOcEJozV2+e5oByw3
 roCuHdtp+sugBkn6zS+2Y7wueNNahTOPHZHLW7CU2G+n9ccTnPnZUMalJzZLxzXHYG4q
 95TX8jw56yOUe1BItHYX/FFGxy4ryt2c7ziXjkDgkfrnOYr8Zd3vZAXeWNURigmuyExe
 QH4rNWI+FrtD6zjxiINxVxoxeGzhDhJ7/L/7TPeVVaK8cqTZk1MVtmJ3fXFlKY81pxJX
 J03Gnofsw8crJYBEN51t5pt+1VyAcU/Ik06sTjnBAe1tuVowwcRmjf+46O09RVmSztdT
 qPSA==
X-Gm-Message-State: AOAM533rlLjAKpVMIesOQv1gfTbKpF0uxV+LV1fYWnd+VYTVt1I9vUu3
 YHIb3CVJSrWTJ7eaVxYG1Pg=
X-Google-Smtp-Source: ABdhPJyb49lJcndlDqUtkrSajYOpqC0lpLBM00Du0tW1RABChW4sreguvSnQJV4+HR28+sDilaHYIw==
X-Received: by 2002:a05:651c:39b:: with SMTP id
 e27mr3886282ljp.253.1590747373144; 
 Fri, 29 May 2020 03:16:13 -0700 (PDT)
Received: from xi.terra (c-beaee455.07-184-6d6c6d4.bbcust.telenor.se.
 [85.228.174.190])
 by smtp.gmail.com with ESMTPSA id h26sm2236339lja.0.2020.05.29.03.16.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 May 2020 03:16:12 -0700 (PDT)
Received: from johan by xi.terra with local (Exim 4.93.0.4)
 (envelope-from <johan@kernel.org>)
 id 1jec3c-0004TR-D6; Fri, 29 May 2020 12:16:08 +0200
Date: Fri, 29 May 2020 12:16:08 +0200
From: Johan Hovold <johan@kernel.org>
To: Alexandru Ardelean <alexandru.ardelean@analog.com>
Subject: Re: [PATCH 4/5] iio: light: lm3533-als: remove explicit parent
 assignment
Message-ID: <20200529101608.GC19480@localhost>
References: <20200522082208.383631-1-alexandru.ardelean@analog.com>
 <20200522082208.383631-4-alexandru.ardelean@analog.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200522082208.383631-4-alexandru.ardelean@analog.com>
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
Cc: milo.kim@ti.com, tomislav.denis@avl.com, dan@dlrobertson.com,
 heiko@sntech.de, linux-aspeed@lists.ozlabs.org, linux-iio@vger.kernel.org,
 linus.walleij@linaro.org, eajames@linux.ibm.com,
 platform-driver-x86@vger.kernel.org, paul@crapouillou.net,
 lorenzo.bianconi83@gmail.com, songqiang1304521@gmail.com,
 srinivas.pandruvada@linux.intel.com, linux-stm32@st-md-mailman.stormreply.com,
 devel@driverdev.osuosl.org, linux-samsung-soc@vger.kernel.org,
 khilman@baylibre.com, tduszyns@gmail.com, krzk@kernel.org,
 linux-rockchip@lists.infradead.org, wens@csie.org, kgene@kernel.org,
 bcm-kernel-feedback-list@broadcom.com, agross@kernel.org,
 linux-input@vger.kernel.org, orsonzhai@gmail.com, alexandre.torgue@st.com,
 linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 s.hauer@pengutronix.de, jikos@kernel.org, vilhelm.gray@gmail.com,
 mripard@kernel.org, vz@mleia.com, hdegoede@redhat.com,
 linux-mediatek@lists.infradead.org, ak@it-klinger.de, matthias.bgg@gmail.com,
 linux-amlogic@lists.infradead.org, fabrice.gasnier@st.com,
 linux-arm-kernel@lists.infradead.org, sbranden@broadcom.com,
 shawnguo@kernel.org, dmitry.torokhov@gmail.com, coproscefalo@gmail.com,
 linux-kernel@vger.kernel.org, rjui@broadcom.com, slemieux.tyco@gmail.com,
 bjorn.andersson@linaro.org, mcoquelin.stm32@gmail.com, zhang.lyra@gmail.com,
 baolin.wang7@gmail.com, ktsai@capellamicro.com, syednwaris@gmail.com,
 peda@axentia.se, jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, May 22, 2020 at 11:22:07AM +0300, Alexandru Ardelean wrote:
> This assignment is the more peculiar of the bunch as it assigns the parent
> of the platform-device's device (i.e. pdev->dev.parent) as the IIO device's
> parent.
>
> It's unclear whether this is intentional or not.
> Hence it is in it's own patch.

Yeah, we have a few mfd drivers whose child drivers registers their
class devices directly under the parent mfd device rather than the
corresponding child platform device.

Since it's done consistently I think you need to update them all if you
really want to change this. 

And it may not be worth it since at least in theory someone could now be
relying on this topology.

> Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
> ---
>  drivers/iio/light/lm3533-als.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/iio/light/lm3533-als.c b/drivers/iio/light/lm3533-als.c
> index bc196c212881..0f380ec8d30c 100644
> --- a/drivers/iio/light/lm3533-als.c
> +++ b/drivers/iio/light/lm3533-als.c
> @@ -852,7 +852,6 @@ static int lm3533_als_probe(struct platform_device *pdev)
>  	indio_dev->channels = lm3533_als_channels;
>  	indio_dev->num_channels = ARRAY_SIZE(lm3533_als_channels);
>  	indio_dev->name = dev_name(&pdev->dev);
> -	indio_dev->dev.parent = pdev->dev.parent;
>  	indio_dev->modes = INDIO_DIRECT_MODE;
>  
>  	als = iio_priv(indio_dev);

Johan
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
