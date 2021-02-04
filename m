Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BDCE30F2F0
	for <lists+driverdev-devel@lfdr.de>; Thu,  4 Feb 2021 13:11:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E414F85D00;
	Thu,  4 Feb 2021 12:11:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VWCU3OkEFTmB; Thu,  4 Feb 2021 12:11:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 80374856FE;
	Thu,  4 Feb 2021 12:11:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8F1381BF3BD
 for <devel@linuxdriverproject.org>; Thu,  4 Feb 2021 12:11:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2E8D520427
 for <devel@linuxdriverproject.org>; Thu,  4 Feb 2021 12:11:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ri8gUNoQpZkx for <devel@linuxdriverproject.org>;
 Thu,  4 Feb 2021 12:11:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com
 [209.85.167.180])
 by silver.osuosl.org (Postfix) with ESMTPS id B101D2041B
 for <devel@driverdev.osuosl.org>; Thu,  4 Feb 2021 12:11:43 +0000 (UTC)
Received: by mail-oi1-f180.google.com with SMTP id k25so3406359oik.13
 for <devel@driverdev.osuosl.org>; Thu, 04 Feb 2021 04:11:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3gCwnJ3I9TFynlXEE8EgeDSc39OV8tdTTKcZtSs6Ob4=;
 b=pMVNR9XQ5X8T87rmsm48JCoslRIqG0EnlWBjAb6WHAvZOeIxyj2TRJh9wRqraexw/g
 ziQJ35MJ8oLcyIL8gD73cX9x0S3QP3ZHCsXx1d9apIGe3IP2QhCrsODgomRmEuF/BM/s
 TNiQTIGJWqXuqvTeF8rUedp93b/6llTNJfLExHC8WCB/2nLPdtBDEzD/KoXxLR2diMwW
 cTtzZ8waYaNGVVS0S52ML3lY5B8vxdKUH8BHnp8l6/zclOWgJOio+28qUntlf8pp+Z+L
 xn1NRzQ4BguP4n7giKheAxDsLeSPx5BnXRz9nbMgO81daLgjLIeuHQOF9gfltTISKdTl
 8xxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3gCwnJ3I9TFynlXEE8EgeDSc39OV8tdTTKcZtSs6Ob4=;
 b=bWLWe04fmNBT8ETIdSPNzVf4mVKs+Ci7hyV2CxPJdR09nU6g/pT+ORrqu7PfKPhgVc
 NoBUAZbI7bzolCxSU+J3H/Q8PuJFNX3iM6P4U9XoNKt+2IercdQqzhTz08ST5PiDzBgI
 Qkwrur+2/9IO2EJpUOghTNoezbRR30KVIsWucQi1406DORg+FD/wLdLzOCy1lrNkJkKA
 7Zre3eaYsV7REwI8RvaEgwt3lyBPYM1FZcxt3vUpeFfvWTUUjFo+Y6uG6vzTVw5r9PpQ
 8Nfd+qa/qhcLbEaU1z+VA6ggx8IiBYiIxrQFdvRLCcqVbJZRrUMAoUqgo6viUz6UwwuT
 NzEw==
X-Gm-Message-State: AOAM532asHMdD7RxEOIMsasQdVkUAe5rTKJl42obGH9E9/yTh7WEJnTG
 /JnnUUYGdx+w7Ln7O0UTZAs0nYlAZegByWrfrTlalwdKuZoHrQ==
X-Google-Smtp-Source: ABdhPJwzDbuoQicSrDC63yyRE+e3cv4bXJqhpUMqxqgXg7BPyh+dk863cUQABNYOGRT+4bP925wm4mKt33lqmX4ll5A=
X-Received: by 2002:a17:90a:4ecb:: with SMTP id
 v11mr8360759pjl.75.1612440327917; 
 Thu, 04 Feb 2021 04:05:27 -0800 (PST)
MIME-Version: 1.0
References: <20210128111549.GA8174@zhaomy-pc>
In-Reply-To: <20210128111549.GA8174@zhaomy-pc>
From: Robert Foss <robert.foss@linaro.org>
Date: Thu, 4 Feb 2021 13:05:16 +0100
Message-ID: <CAG3jFysU4epjS3A85ZojrJn3TAC78O_jx5p_4SWsCdRBrQ5GXQ@mail.gmail.com>
Subject: Re: [PATCH] drm/bridge: anx7625: enable DSI EOTP
To: Xin Ji <xji@analogixsemi.com>
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
Cc: devel@driverdev.osuosl.org, Nicolas Boichat <drinkcat@google.com>,
 Jernej Skrabec <jernej.skrabec@siol.net>, Sheng Pan <span@analogixsemi.com>,
 Jonas Karlman <jonas@kwiboo.se>, David Airlie <airlied@linux.ie>,
 Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org,
 Vasily Khoruzhick <anarsoul@gmail.com>, Andrzej Hajda <a.hajda@samsung.com>,
 Boris Brezillon <boris.brezillon@collabora.com>, Torsten Duwe <duwe@lst.de>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Hsin-Yi Wang <hsinyi@chromium.org>,
 Sam Ravnborg <sam@ravnborg.org>, Dan Carpenter <dan.carpenter@oracle.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Xin,

Thanks for the patch.

On Thu, 28 Jan 2021 at 12:17, Xin Ji <xji@analogixsemi.com> wrote:
>
> Enable DSI EOTP feature for fixing some panel screen constance
> shift issue.
> Removing MIPI flag MIPI_DSI_MODE_EOT_PACKET to enable DSI EOTP.

I don't think I quite understand how removing the
MIPI_DSI_MODE_EOT_PACKET flag will cause DSI EOTP to be enabled. Could
you extrapolate on this in the commit message?

>
> Signed-off-by: Xin Ji <xji@analogixsemi.com>
> ---
>  drivers/gpu/drm/bridge/analogix/anx7625.c | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/bridge/analogix/anx7625.c b/drivers/gpu/drm/bridge/analogix/anx7625.c
> index 65cc059..e31eeb1b 100644
> --- a/drivers/gpu/drm/bridge/analogix/anx7625.c
> +++ b/drivers/gpu/drm/bridge/analogix/anx7625.c
> @@ -1334,7 +1334,6 @@ static int anx7625_attach_dsi(struct anx7625_data *ctx)
>         dsi->format = MIPI_DSI_FMT_RGB888;
>         dsi->mode_flags = MIPI_DSI_MODE_VIDEO   |
>                 MIPI_DSI_MODE_VIDEO_SYNC_PULSE  |
> -               MIPI_DSI_MODE_EOT_PACKET        |
>                 MIPI_DSI_MODE_VIDEO_HSE;
>
>         if (mipi_dsi_attach(dsi) < 0) {
> --
> 2.7.4
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
