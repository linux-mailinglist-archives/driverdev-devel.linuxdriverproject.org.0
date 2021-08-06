Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F6DE3E2793
	for <lists+driverdev-devel@lfdr.de>; Fri,  6 Aug 2021 11:42:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 54DBE405C2;
	Fri,  6 Aug 2021 09:42:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rmDjqtfL4G5s; Fri,  6 Aug 2021 09:42:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9191F4042F;
	Fri,  6 Aug 2021 09:42:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 07E381BF3B0
 for <devel@linuxdriverproject.org>; Fri,  6 Aug 2021 09:42:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E3E274042F
 for <devel@linuxdriverproject.org>; Fri,  6 Aug 2021 09:42:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kGMhfhp47u0e for <devel@linuxdriverproject.org>;
 Fri,  6 Aug 2021 09:42:38 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com
 [IPv6:2607:f8b0:4864:20::1036])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EDCBE40426
 for <devel@driverdev.osuosl.org>; Fri,  6 Aug 2021 09:42:37 +0000 (UTC)
Received: by mail-pj1-x1036.google.com with SMTP id
 t7-20020a17090a5d87b029017807007f23so18693296pji.5
 for <devel@driverdev.osuosl.org>; Fri, 06 Aug 2021 02:42:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4HPNOHJF+FggNfCJseeN2/kUR7mznmygd2VV7qNoCFg=;
 b=SXu8xId+7S96lozM+9jNDTE8KKNGlgx6uPoKWwz+WwXMvz1d0rTofjoV4SQCFfBnSZ
 LTuYpkQ0CveluxulWfcAhp7m4fWmgzDpBIdavDKgZxUWtxzkDRb3q8BfjRwEcApD9YHh
 yJGyg9XNka6qwhtKSbTE7OZ0NRcPB3y6hgI4TbrUCKYm6diWoiNap6rtWPQQ/SmhTcUm
 BSlATxLy43GGhqInxcGTKxazNRM1Zg//uB/Jj7C4m/JnBpihK0FRyTFLTkq6UjMmbYXo
 m3jUv43U/G6Dkbjs3xy3kvWsunCj/DdxViD6qYM+wt+FTFCXB+AR2t9X2xTnai+47F9a
 0Nrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4HPNOHJF+FggNfCJseeN2/kUR7mznmygd2VV7qNoCFg=;
 b=o9B+pOxpGtKTBJ1ASTzip0YwF0ulp3ocLrAarObZNB5s6vyDNiy6Ec0Ee4xq1P6bOW
 D/byevVT5z9SuaUhkVHej0bE0LH7fLVAjHdfens3R0u9zjVCzgyYOziz1miP/Qg6bqYV
 bDYovd6UJ3Mq3FjJfHYEujsOF/fXRbcwa9XcKHE7q7vyurlw2LhTDkZHHNKbyvpKt1KF
 MB31zoD/LZmAbLAtdj2LawTpht8iQKWoNK6T/RU35M2//IvnLc44B1rWgwB69um+gwrQ
 yY9UFWcGaIXNiNXSGVs99+x2bP8kXNYNHu0oDJYQGKy8Yc0J8NVEbOAzaMKR8RDU6Nxk
 K4kA==
X-Gm-Message-State: AOAM532AXygbFcI89EuhFtNfn9cxUi5++ykA73oGijKIv3nQEE4UAn4s
 V6INJuNQxdMIh+SEVtjEGbS7F2KCe4lp8yk1O7e5lA==
X-Google-Smtp-Source: ABdhPJx+BDp+a/3ncBTlo6vu6+TXRvbaFZ9ImUS/1LbApSXQDKjL8eqWP8K5L9x04aHKdfGndP9XdWO+I9CX1KGMutQ=
X-Received: by 2002:aa7:90c8:0:b029:32c:935f:de5f with SMTP id
 k8-20020aa790c80000b029032c935fde5fmr9660331pfk.79.1628242957366; Fri, 06 Aug
 2021 02:42:37 -0700 (PDT)
MIME-Version: 1.0
References: <a02c0a414bd3d0f67bf7d77c10415196743f1c0d.1628242192.git.xji@analogixsemi.com>
In-Reply-To: <a02c0a414bd3d0f67bf7d77c10415196743f1c0d.1628242192.git.xji@analogixsemi.com>
From: Robert Foss <robert.foss@linaro.org>
Date: Fri, 6 Aug 2021 11:42:26 +0200
Message-ID: <CAG3jFyvTsG1ZjqS+3yqspW+DCPX4zrs02tdmqC9n9mQxmvsJEQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/1] drm/bridge: anx7625: Tune K value for IVO panel
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

Hey Xin,

Thanks for implementing the suggestion so quickly.

Can you send this version of the patch out as v2? Versioning is
important and both tools and processes break if different versions
aren't submitted in different emails.

On Fri, 6 Aug 2021 at 11:35, Xin Ji <xji@analogixsemi.com> wrote:
>
> IVO panel require less input video clock variation than video clock
> variation in DP CTS spec.
>
> This patch decreases the K value of ANX7625 which will shrink eDP Tx
> video clock variation to meet IVO panel's requirement.
>
> Acked-by: Sam Ravnborg <sam@ravnborg.org>
> Signed-off-by: Xin Ji <xji@analogixsemi.com>
> ---
>  drivers/gpu/drm/bridge/analogix/anx7625.c | 24 ++++++++++++++++++++---
>  drivers/gpu/drm/bridge/analogix/anx7625.h |  4 +++-
>  2 files changed, 24 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/bridge/analogix/anx7625.c b/drivers/gpu/drm/bridge/analogix/anx7625.c
> index a3d82377066b..9b9e3984dd38 100644
> --- a/drivers/gpu/drm/bridge/analogix/anx7625.c
> +++ b/drivers/gpu/drm/bridge/analogix/anx7625.c
> @@ -384,6 +384,25 @@ static int anx7625_odfc_config(struct anx7625_data *ctx,
>         return ret;
>  }
>
> +/*
> + * The MIPI source video data exist large variation (e.g. 59Hz ~ 61Hz),
> + * anx7625 defined K ratio for matching MIPI input video clock and
> + * DP output video clock. Increase K value can match bigger video data
> + * variation. IVO panel has small variation than DP CTS spec, need
> + * decrease the K value.
> + */
> +static int anx7625_set_k_value(struct anx7625_data *ctx)
> +{
> +       struct edid *edid = (struct edid *)ctx->slimport_edid_p.edid_raw_data;
> +
> +       if (edid->mfg_id[0] == IVO_MID0 && edid->mfg_id[1] == IVO_MID1)
> +               return anx7625_reg_write(ctx, ctx->i2c.rx_p1_client,
> +                                        MIPI_DIGITAL_ADJ_1, 0x3B);
> +
> +       return anx7625_reg_write(ctx, ctx->i2c.rx_p1_client,
> +                                MIPI_DIGITAL_ADJ_1, 0x3D);
> +}
> +
>  static int anx7625_dsi_video_timing_config(struct anx7625_data *ctx)
>  {
>         struct device *dev = &ctx->client->dev;
> @@ -470,9 +489,8 @@ static int anx7625_dsi_video_timing_config(struct anx7625_data *ctx)
>                         MIPI_PLL_N_NUM_15_8, (n >> 8) & 0xff);
>         ret |= anx7625_reg_write(ctx, ctx->i2c.rx_p1_client, MIPI_PLL_N_NUM_7_0,
>                         (n & 0xff));
> -       /* Diff */
> -       ret |= anx7625_reg_write(ctx, ctx->i2c.rx_p1_client,
> -                       MIPI_DIGITAL_ADJ_1, 0x3D);
> +
> +       anx7625_set_k_value(ctx);
>
>         ret |= anx7625_odfc_config(ctx, post_divider - 1);
>
> diff --git a/drivers/gpu/drm/bridge/analogix/anx7625.h b/drivers/gpu/drm/bridge/analogix/anx7625.h
> index 034c3840028f..6dcf64c703f9 100644
> --- a/drivers/gpu/drm/bridge/analogix/anx7625.h
> +++ b/drivers/gpu/drm/bridge/analogix/anx7625.h
> @@ -210,7 +210,9 @@
>  #define  MIPI_VIDEO_STABLE_CNT           0x0A
>
>  #define  MIPI_LANE_CTRL_10               0x0F
> -#define  MIPI_DIGITAL_ADJ_1   0x1B
> +#define  MIPI_DIGITAL_ADJ_1     0x1B
> +#define  IVO_MID0               0x26
> +#define  IVO_MID1               0xCF
>
>  #define  MIPI_PLL_M_NUM_23_16   0x1E
>  #define  MIPI_PLL_M_NUM_15_8    0x1F
> --
> 2.25.1
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
