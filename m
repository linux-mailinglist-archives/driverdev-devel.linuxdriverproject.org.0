Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7D3F3FC971
	for <lists+driverdev-devel@lfdr.de>; Tue, 31 Aug 2021 16:12:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 601E14026D;
	Tue, 31 Aug 2021 14:12:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CfCJR3LIcPcv; Tue, 31 Aug 2021 14:12:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1C5B940106;
	Tue, 31 Aug 2021 14:12:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0BC551BF32C
 for <devel@linuxdriverproject.org>; Tue, 31 Aug 2021 14:12:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EF1EC402E0
 for <devel@linuxdriverproject.org>; Tue, 31 Aug 2021 14:12:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=linaro.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9uxxc5CqlIpS for <devel@linuxdriverproject.org>;
 Tue, 31 Aug 2021 14:12:01 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com
 [IPv6:2607:f8b0:4864:20::1029])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CCDE8402C6
 for <devel@driverdev.osuosl.org>; Tue, 31 Aug 2021 14:12:01 +0000 (UTC)
Received: by mail-pj1-x1029.google.com with SMTP id
 u13-20020a17090abb0db0290177e1d9b3f7so2108385pjr.1
 for <devel@driverdev.osuosl.org>; Tue, 31 Aug 2021 07:12:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DwBG0kbYLoprwx2xDskuGjAg4KxbwGBk3fVvkOflJfY=;
 b=n4plaO9ZqXTMabwQQad7OQWiFxsARGV7/IksaEq0V+fk0Zar3ZT8MUTLoE2UWcX4MU
 zrVz9ULgAArOMtdajOyS0NRgdYmASL0E3tULikziScQjHqXjdDxNJe8F3UuhQ5DCFetJ
 SEjUA0AznWEznLoyb4A+/Bp9ZQWGW+j2Wi4KjQWGqZ/+PuIH8uulXO87Q40BX/X/C9Ji
 VCkkkixVthgv0kfgThJ3bvFwJ2rmHkmipXXtLzc4YtwSC1Eot/27pCBts9+zBhgCXaZb
 YfbUSJPuTMOYkdYUSs1GXJ3NX3d2DI4yxeCMPM+avwPD8BP70QqkWLTTS/lNdppx7Rkm
 mVlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DwBG0kbYLoprwx2xDskuGjAg4KxbwGBk3fVvkOflJfY=;
 b=sRyMvVWhzUeSNQLoIxiIQDHIyS9r/JrvNyeOS60oiIujK33YbW6Ri2cbrfpixcJttZ
 n31WEXZNXwGnKwXTrCMU59Y1PDIuWU8u8u0jvWACJpdgEIPl9/LjLbFxud64/i1cTqK9
 HJ88zMcAnfLZ2GVFElLyYS3tCiW+bBgPy1MudOMW16aRlWfJJ6iGPJQr2wtx4W5Pd9J2
 DDiWQap9nStaRO8GAP8aAv+Q+fI1z6Y1Qa3c1lIZB8TCxf/eVpRiwfUkAh9kG257nRZA
 dSNc8wB1yzBfCFz3s1R9eoBI9rZip9Nh1DqBVZxzIpa8uZ/Rzywg6PW3Yip8jD2Dw5nM
 ci1Q==
X-Gm-Message-State: AOAM532+u8zfwpsQR4soI9LJl+pK1ZjgTmOmMtzS/jcqYhNB3M9P0lYU
 1WQFZf5cCPDcgq+meMDQFkfTDh3nRTyYo4tycqzV7sIohZs=
X-Google-Smtp-Source: ABdhPJx5yHJTTzBrXq2AUYXsGcTAO5IKtUmnDI+oVOLx/pegeMs0loQRWMfDgCq3QQK52OVn5wqzTEChmIVQ8Q2ox7A=
X-Received: by 2002:a17:902:a513:b029:11a:9be6:f1b9 with SMTP id
 s19-20020a170902a513b029011a9be6f1b9mr4831914plq.55.1630419120987; Tue, 31
 Aug 2021 07:12:00 -0700 (PDT)
MIME-Version: 1.0
References: <20210819060110.3427256-1-xji@analogixsemi.com>
In-Reply-To: <20210819060110.3427256-1-xji@analogixsemi.com>
From: Robert Foss <robert.foss@linaro.org>
Date: Tue, 31 Aug 2021 16:11:49 +0200
Message-ID: <CAG3jFytk21cSVKiFcu859CBvUW593XQw5_D97Uydsf798jyWDg@mail.gmail.com>
Subject: Re: [PATCH v2] drm/bridge: anx7625: enable DSI EOTP
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
 Jonas Karlman <jonas@kwiboo.se>, David Airlie <airlied@linux.ie>,
 Bernie Liang <bliang@analogixsemi.com>, Qilin Wen <qwen@analogixsemi.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
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

On Thu, 19 Aug 2021 at 08:01, Xin Ji <xji@analogixsemi.com> wrote:
>
> Enable DSI EOTP feature for fixing some panel screen constant shift issue.
> Removing MIPI flag MIPI_DSI_MODE_NO_EOT_PACKET to enable DSI EOTP.
>
> Reviewed-by: Robert Foss <robert.foss@linaro.org>
> Signed-off-by: Xin Ji <xji@analogixsemi.com>
> ---
>  drivers/gpu/drm/bridge/analogix/anx7625.c | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/bridge/analogix/anx7625.c b/drivers/gpu/drm/bridge/analogix/anx7625.c
> index abc8db77bfd3..1a871f6b6822 100644
> --- a/drivers/gpu/drm/bridge/analogix/anx7625.c
> +++ b/drivers/gpu/drm/bridge/analogix/anx7625.c
> @@ -1335,7 +1335,6 @@ static int anx7625_attach_dsi(struct anx7625_data *ctx)
>         dsi->format = MIPI_DSI_FMT_RGB888;
>         dsi->mode_flags = MIPI_DSI_MODE_VIDEO   |
>                 MIPI_DSI_MODE_VIDEO_SYNC_PULSE  |
> -               MIPI_DSI_MODE_NO_EOT_PACKET     |
>                 MIPI_DSI_MODE_VIDEO_HSE;
>
>         if (mipi_dsi_attach(dsi) < 0) {

Applied to drm-misc-next
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
