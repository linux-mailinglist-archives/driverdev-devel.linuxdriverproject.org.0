Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 46BED2AFCB4
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 Nov 2020 02:45:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AF81786D1D;
	Thu, 12 Nov 2020 01:45:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KXqWagr-duml; Thu, 12 Nov 2020 01:45:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1B8EE8693B;
	Thu, 12 Nov 2020 01:45:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B227C1BF377
 for <devel@linuxdriverproject.org>; Thu, 12 Nov 2020 01:45:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AE8CB86930
 for <devel@linuxdriverproject.org>; Thu, 12 Nov 2020 01:45:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2aA8c6LyBU-B for <devel@linuxdriverproject.org>;
 Thu, 12 Nov 2020 01:45:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 021EF866B0
 for <devel@driverdev.osuosl.org>; Thu, 12 Nov 2020 01:45:47 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id e7so2984966pfn.12
 for <devel@driverdev.osuosl.org>; Wed, 11 Nov 2020 17:45:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=nOQD+47l1Vj9tZi/oOhEDued5DuJRPNMgWRyqUdj0hA=;
 b=RMJgpf9aRvHsm7kXTPn6A4QHZjITSTMgFpSPAsMIDsD9Vq2FGlymCQ2Uy9WLTcLgud
 qcvZWqtPn4jtyWomXgZOZuaGMlO2WRVM66OJ58RyU+8tB4/Z6t+5kyb1la/bFNvIQPNy
 +gfGfVHSsGC88lwyTHYBVOldd5dkmJ8zNnfGN4wdGKkvtA5U/ZgbYHYAtXazC6yUv6G6
 18AKV5PhQRuc9McMOPXFn4enN6RsZ6bzrUeznvRv50DulrL8Df1nad3nFKi4ygo6hi1F
 vr6MAnGzpjH0q2duju6VUxCCWNB57QbzNbWKojxTfKCMb8p803FeYeAomZ9dfOGjw0HX
 nzmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=nOQD+47l1Vj9tZi/oOhEDued5DuJRPNMgWRyqUdj0hA=;
 b=j9JSAIgIAnW9w85ObP/+V+662RlI0E2iB1uhA50PWky4133ToXFDdw1fsBoNmAF5PX
 t7TYMK7oQWXizsYuF6jorKxf1jphpRZl9Nw8nDNPFk1PVpU9TMlPTQsBVm0BPy0GKFkz
 VViHJbOWGSgNwoLtQAffbZXXDgRmoLJuEFFZYK9bZOsyaxuTgcRKCnElqZhHmm0JDdA1
 rvMVxReGAl/7scRwXniASmc3gbi9vkJvv8jYZfeMm1zs2+IMITKvRM68AH2pI4k4/WLj
 W/HXEudkj5fpqR103PTzAIGJCkcO04LjVqUD0DD0dv7tf4y3CFojNP+Yd7/Yjc+Y8P70
 IAuQ==
X-Gm-Message-State: AOAM532VWf7L4zxr/OLUrHKp8rgDWKA4F3iT+V1sEg9WarLblFH/i4Kl
 PcNou9Oq3Hj2iKfGrbpjl7M=
X-Google-Smtp-Source: ABdhPJw49jebosLeBcZ1ZsqKR3LnVI8Mxnm8v5sWdo+ropNNGLFnXAlwpDz5nWxUdwGFQZE5kJbwXQ==
X-Received: by 2002:a17:90a:fd0d:: with SMTP id
 cv13mr4600504pjb.124.1605145546448; 
 Wed, 11 Nov 2020 17:45:46 -0800 (PST)
Received: from dtor-ws ([2620:15c:202:201:a6ae:11ff:fe11:fcc3])
 by smtp.gmail.com with ESMTPSA id d11sm3944079pjm.18.2020.11.11.17.45.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Nov 2020 17:45:45 -0800 (PST)
Date: Wed, 11 Nov 2020 17:45:42 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH v3 07/11] input: raspberrypi-ts: Release firmware handle
 when not needed
Message-ID: <20201112014542.GA1003057@dtor-ws>
References: <20201104103938.1286-1-nsaenzjulienne@suse.de>
 <20201104103938.1286-8-nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201104103938.1286-8-nsaenzjulienne@suse.de>
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

On Wed, Nov 04, 2020 at 11:39:33AM +0100, Nicolas Saenz Julienne wrote:
> Use devm_rpi_firmware_get() so as to make sure we release RPi's firmware
> interface when unbinding the device.

Unless I am mistaken this driver does not really need the firmware
structure past rpi_ts_probe(), and will be fine if it disappears earlier
than unbind time.

Thanks.

> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> 
> ---
> 
> Changes since v2:
>  - Use devm_rpi_firmware_get(), instead of remove function
> 
>  drivers/input/touchscreen/raspberrypi-ts.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/input/touchscreen/raspberrypi-ts.c b/drivers/input/touchscreen/raspberrypi-ts.c
> index ef6aaed217cf..efed0efa91d9 100644
> --- a/drivers/input/touchscreen/raspberrypi-ts.c
> +++ b/drivers/input/touchscreen/raspberrypi-ts.c
> @@ -134,7 +134,7 @@ static int rpi_ts_probe(struct platform_device *pdev)
>  		return -ENOENT;
>  	}
>  
> -	fw = rpi_firmware_get(fw_node);
> +	fw = devm_rpi_firmware_get(&pdev->dev, fw_node);
>  	of_node_put(fw_node);
>  	if (!fw)
>  		return -EPROBE_DEFER;
> -- 
> 2.29.1
> 

-- 
Dmitry
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
