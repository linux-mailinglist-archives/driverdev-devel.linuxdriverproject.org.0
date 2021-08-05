Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97FEB3E1C19
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Aug 2021 21:05:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2A5D640517;
	Thu,  5 Aug 2021 19:05:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TI1kIj-r0x8o; Thu,  5 Aug 2021 19:05:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CA9E540293;
	Thu,  5 Aug 2021 19:05:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C7C721BF361
 for <devel@linuxdriverproject.org>; Thu,  5 Aug 2021 19:05:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B38DE60A46
 for <devel@linuxdriverproject.org>; Thu,  5 Aug 2021 19:05:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=linaro.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2JSEcNI3ZcQ0 for <devel@linuxdriverproject.org>;
 Thu,  5 Aug 2021 19:05:40 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com
 [IPv6:2607:f8b0:4864:20::102f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DE14860A3B
 for <devel@driverdev.osuosl.org>; Thu,  5 Aug 2021 19:05:40 +0000 (UTC)
Received: by mail-pj1-x102f.google.com with SMTP id
 e2-20020a17090a4a02b029016f3020d867so11880127pjh.3
 for <devel@driverdev.osuosl.org>; Thu, 05 Aug 2021 12:05:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2ZFFq7OM5nVkToszzdtX9QSlNl/eY89U4a4AO5gbJ0c=;
 b=dgxIBWU0u0EHXfPQrJsNfrQ8leeNYIxMblGPZfdM3Ua7Qj+jQjx5zoz/UaSUmzqj6q
 tIX67J0aXI+Av+ptQljjWXFQeGYLxwdbj2qhFwEWL90k+N25uxQ1rDEDrKiPb4wqRVe3
 rT23r+cBkDJ9g8JijWw84nFgPxCSpV4PQn+iMphpfz4y04ObSCyLuI60Z07KnNlfZ+oj
 NY/2x7Jo2MqimtJzymKazggA5aIuIkvFjUWcsmy7w2hBG3tGQFpqsSt6Hkknt5XLIM/T
 +rW8B1o1WfkgB4tUvMQfipkFb2KUbdd/DxggqQFa/z8Ii/CpEAG2KWbvZi0Sw8VZXi/R
 Bq0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2ZFFq7OM5nVkToszzdtX9QSlNl/eY89U4a4AO5gbJ0c=;
 b=uUkCWf6ckAYp8QvP/cf2To/B0qrnxOjByVtdwSFNNdSeo51lawSTX4S0/rBnngB1+N
 Hmze9Y38EI8p5WPpv3HXtqzQYIXRQLiGcHPV05cXC3DHvAbg5VlL70zlCGCT4Si7uXPz
 gHUntKYWLYzYm9S637xa9QUcJHqnmfMDsxlbrGcyehklqVYPnf7bSvxVpLG7seqlnNfZ
 0y1tFDNhIA07oP8lZP/jORRS+Q73WyRJrhno3LbIHzjtkUu8CxR5/put4WQts8AtXeZt
 k+hrGlCrz15sF/z9KGlFWc5yNpPy0Pa5cjvCv4C7uv75sOyI1DzpZY9yGVgyIPBp3FoX
 zX2g==
X-Gm-Message-State: AOAM531Wtr2enWMU3aY9D6J9Cfidue1bXpEBlc+yBw7ccfJIhtnbZHFL
 +pQvdFoDQ/2Qd/3AQjLKszokk2+effYjkQ3ccK/yCA==
X-Google-Smtp-Source: ABdhPJxKXPQWKZYVNFugMmvukgwEvPM1+RUaAfvu87Y0aIiNAm/MX3SlelYUjvZdxUxr63cktsycKHW5sNSqYYm9sU0=
X-Received: by 2002:aa7:90c8:0:b029:32c:935f:de5f with SMTP id
 k8-20020aa790c80000b029032c935fde5fmr6578542pfk.79.1628190340250; Thu, 05 Aug
 2021 12:05:40 -0700 (PDT)
MIME-Version: 1.0
References: <a565cb1662d2f8300905a369c575e19176fd8e4c.1628148418.git.xji@analogixsemi.com>
In-Reply-To: <a565cb1662d2f8300905a369c575e19176fd8e4c.1628148418.git.xji@analogixsemi.com>
From: Robert Foss <robert.foss@linaro.org>
Date: Thu, 5 Aug 2021 21:05:29 +0200
Message-ID: <CAG3jFyuGJZ4ig6nFxXJJ0d-7ob2+=po2cxSuN29wedV5xVE+gA@mail.gmail.com>
Subject: Re: [PATCH v1 1/1] drm/bridge: anx7625: Tune K value for IVO panel
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

Thanks for submitting this.

On Thu, 5 Aug 2021 at 09:31, Xin Ji <xji@analogixsemi.com> wrote:
>
> IVO panel require less input video clock variation than video clock
> variation in DP CTS spec.
>
> This patch decreases the K value of ANX7625 which will shrink eDP Tx
> video clock variation to meet IVO panel's requirement.
>
> Signed-off-by: Xin Ji <xji@analogixsemi.com>
> ---
>  drivers/gpu/drm/bridge/analogix/anx7625.c | 17 ++++++++++++++---
>  drivers/gpu/drm/bridge/analogix/anx7625.h |  4 +++-
>  2 files changed, 17 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/bridge/analogix/anx7625.c b/drivers/gpu/drm/bridge/analogix/anx7625.c
> index a3d82377066b..ceed1c7f3f28 100644
> --- a/drivers/gpu/drm/bridge/analogix/anx7625.c
> +++ b/drivers/gpu/drm/bridge/analogix/anx7625.c
> @@ -384,6 +384,18 @@ static int anx7625_odfc_config(struct anx7625_data *ctx,
>         return ret;
>  }
>
> +static int anx7625_set_k_value(struct anx7625_data *ctx)

Pardon my ignorance, but I don't know what a K-value is. Could you add
a comment detailing
what the K-value does?

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
> @@ -470,9 +482,8 @@ static int anx7625_dsi_video_timing_config(struct anx7625_data *ctx)
>                         MIPI_PLL_N_NUM_15_8, (n >> 8) & 0xff);
>         ret |= anx7625_reg_write(ctx, ctx->i2c.rx_p1_client, MIPI_PLL_N_NUM_7_0,
>                         (n & 0xff));
> -       /* Diff */
> -       ret |= anx7625_reg_write(ctx, ctx->i2c.rx_p1_client,
> -                       MIPI_DIGITAL_ADJ_1, 0x3D);
> +       /* Diff and K value */

With a proper comment above, this comment is no longer needed.

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

LGTM with the above fix.

Reviewed-by: Robert Foss <robert.foss@linaro.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
