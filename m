Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F34E149059C
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Jan 2022 11:02:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 18D22608D8;
	Mon, 17 Jan 2022 10:02:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MGaOhJ1e0g_b; Mon, 17 Jan 2022 10:02:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 16EFD6080B;
	Mon, 17 Jan 2022 10:02:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B814A1BF33B
 for <devel@linuxdriverproject.org>; Mon, 17 Jan 2022 10:01:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A614F80BEA
 for <devel@linuxdriverproject.org>; Mon, 17 Jan 2022 10:01:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=chromium.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8rvTmIUAoBir for <devel@linuxdriverproject.org>;
 Mon, 17 Jan 2022 10:01:57 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-io1-xd30.google.com (mail-io1-xd30.google.com
 [IPv6:2607:f8b0:4864:20::d30])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 95E3780DA6
 for <devel@driverdev.osuosl.org>; Mon, 17 Jan 2022 10:01:57 +0000 (UTC)
Received: by mail-io1-xd30.google.com with SMTP id o9so10509769iob.3
 for <devel@driverdev.osuosl.org>; Mon, 17 Jan 2022 02:01:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=z9lyJAGqBofRWo1qK7fgotoHTB1vgALbZgFQ2+TVR5Y=;
 b=JuVKl79n/s23IizN3xfCg3JeY7hrC5wEZ2x4dgs6UIjrKGOKqIXzOLnpogXm7vh6If
 guRkJjUNSEe1rCp1FpjVIdWkhPXjJLlEA835HeaPhC0rALd4NrFOV2z7vINZhm6EPYHZ
 IPayOp/VG01aeYtKg40rHqvNAELu9SBPBkg3I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=z9lyJAGqBofRWo1qK7fgotoHTB1vgALbZgFQ2+TVR5Y=;
 b=WIAHikx8RqnQJd6qsp01Oij/pxmHvS16sM7V6wHCJi+UiBEa1HqPCNG8xB6axZ4HvT
 G0MG78h44yxPpBzH97fnyvKqTmeJgNizAa9MGpHFQasS4LyPmkvJRxkGSzKnOjaD+TVF
 mtEuO3TVqs8Q3X1e9Arjt5RAg0ODn59mgZOJpaR4ZPsrk8d3eO4xx+bxftC+v+RCLQbq
 Tq7OhkTkdCMdogEAqE+rJbxXBVcyUgWrhUPWVv8+eH9oFpAb9S7IYxyZ8vzcj2P5pLAJ
 Ju3s7WHQHaGK1tnS5TcHiCD6zs6yltAfXlbSTa07wYr7850zyZwfY7r0Yf57lnMBWKdC
 YsbQ==
X-Gm-Message-State: AOAM5336rH48VumEldK8wMlxCcmmnsFr6Sda4lAKPplNhIiMtMih/Evi
 1Lb5lZRv4nGkrdwHYSLP9yOU7qR1D+aps7VpEoUW5A==
X-Google-Smtp-Source: ABdhPJwJ9zat7Em6wxplug+Yiv5wzgO+WyvU9/pTxXHBiFvKKNnQxxBiG2M3jcSdX5PNBZ7t0jz+f7m3tpctKzZHlIc=
X-Received: by 2002:a05:6602:490:: with SMTP id
 y16mr9854850iov.162.1642413716553; 
 Mon, 17 Jan 2022 02:01:56 -0800 (PST)
MIME-Version: 1.0
References: <1f36f8bf0a48fb2bba17bacec23700e58c1d407d.1641891874.git.xji@analogixsemi.com>
In-Reply-To: <1f36f8bf0a48fb2bba17bacec23700e58c1d407d.1641891874.git.xji@analogixsemi.com>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Mon, 17 Jan 2022 18:01:30 +0800
Message-ID: <CAJMQK-gjUtJ4Lo35iR5Y2Pi=Dm7mX=O05BwoTpwxbFEuDVvfvA@mail.gmail.com>
Subject: Re: [PATCH v3 1/1] drm/bridge: anx7625: send DPCD command to
 downstream
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
 Daniel Vetter <daniel@ffwll.ch>, Jonas Karlman <jonas@kwiboo.se>,
 David Airlie <airlied@linux.ie>, Bernie Liang <bliang@analogixsemi.com>,
 dri-devel@lists.freedesktop.org, Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel@vger.kernel.org, Robert Foss <robert.foss@linaro.org>,
 Vasily Khoruzhick <anarsoul@gmail.com>,
 Boris Brezillon <boris.brezillon@collabora.com>, Torsten Duwe <duwe@lst.de>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Sam Ravnborg <sam@ravnborg.org>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jan 11, 2022 at 5:06 PM Xin Ji <xji@analogixsemi.com> wrote:
>
> Send DPCD command to downstream before anx7625 power down,
> let downstream monitor enter into standby mode.
>
> Signed-off-by: Xin Ji <xji@analogixsemi.com>
> ---
>  drivers/gpu/drm/bridge/analogix/anx7625.c | 42 +++++++++++++++++++----
>  1 file changed, 35 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/bridge/analogix/anx7625.c b/drivers/gpu/drm/bridge/analogix/anx7625.c
> index 33383f83255d..0b858c78abe8 100644
> --- a/drivers/gpu/drm/bridge/analogix/anx7625.c
> +++ b/drivers/gpu/drm/bridge/analogix/anx7625.c
> @@ -129,6 +129,23 @@ static int anx7625_reg_write(struct anx7625_data *ctx,
>         return ret;
>  }
>
> +static int anx7625_reg_block_write(struct anx7625_data *ctx,
> +                                  struct i2c_client *client,
> +                                  u8 reg_addr, u8 len, u8 *buf)
> +{
> +       int ret;
> +       struct device *dev = &client->dev;
> +
> +       i2c_access_workaround(ctx, client);
> +
> +       ret = i2c_smbus_write_i2c_block_data(client, reg_addr, len, buf);
> +       if (ret < 0)
> +               dev_err(dev, "write i2c block failed id=%x\n:%x",
> +                       client->addr, reg_addr);
> +
> +       return ret;
> +}
> +
>  static int anx7625_write_or(struct anx7625_data *ctx,
>                             struct i2c_client *client,
>                             u8 offset, u8 mask)
> @@ -214,8 +231,8 @@ static int wait_aux_op_finish(struct anx7625_data *ctx)
>         return 0;
>  }
>
> -static int anx7625_aux_dpcd_read(struct anx7625_data *ctx,
> -                                u32 address, u8 len, u8 *buf)
> +static int anx7625_aux_dpcd_trans(struct anx7625_data *ctx, u8 op,
> +                                 u32 address, u8 len, u8 *buf)
>  {
>         struct device *dev = &ctx->client->dev;
>         int ret;
> @@ -231,8 +248,7 @@ static int anx7625_aux_dpcd_read(struct anx7625_data *ctx,
>         addrm = (address >> 8) & 0xFF;
>         addrh = (address >> 16) & 0xFF;
>
> -       cmd = DPCD_CMD(len, DPCD_READ);
> -       cmd = ((len - 1) << 4) | 0x09;
> +       cmd = DPCD_CMD(len, op);
>
>         /* Set command and length */
>         ret = anx7625_reg_write(ctx, ctx->i2c.rx_p0_client,
> @@ -246,6 +262,9 @@ static int anx7625_aux_dpcd_read(struct anx7625_data *ctx,
>         ret |= anx7625_reg_write(ctx, ctx->i2c.rx_p0_client,
>                                  AP_AUX_ADDR_19_16, addrh);
>
> +       if (op == DPCD_WRITE)
> +               ret |= anx7625_reg_block_write(ctx, ctx->i2c.rx_p0_client,
> +                                              AP_AUX_BUFF_START, len, buf);
>         /* Enable aux access */
>         ret |= anx7625_write_or(ctx, ctx->i2c.rx_p0_client,
>                                 AP_AUX_CTRL_STATUS, AP_AUX_CTRL_OP_EN);
> @@ -255,14 +274,17 @@ static int anx7625_aux_dpcd_read(struct anx7625_data *ctx,
>                 return -EIO;
>         }
>
> -       usleep_range(2000, 2100);
> -
>         ret = wait_aux_op_finish(ctx);
>         if (ret) {
>                 dev_err(dev, "aux IO error: wait aux op finish.\n");
>                 return ret;
>         }
>
> +       /* Write done */
> +       if (op == DPCD_WRITE)
> +               return 0;
> +
> +       /* Read done, read out dpcd data */
>         ret = anx7625_reg_block_read(ctx, ctx->i2c.rx_p0_client,
>                                      AP_AUX_BUFF_START, len, buf);
>         if (ret < 0) {
> @@ -845,7 +867,7 @@ static int anx7625_hdcp_enable(struct anx7625_data *ctx)
>         }
>
>         /* Read downstream capability */
> -       anx7625_aux_dpcd_read(ctx, 0x68028, 1, &bcap);
> +       anx7625_aux_dpcd_trans(ctx, DPCD_READ, 0x68028, 1, &bcap);
>         if (!(bcap & 0x01)) {
>                 pr_warn("downstream not support HDCP 1.4, cap(%x).\n", bcap);
>                 return 0;
> @@ -918,6 +940,7 @@ static void anx7625_dp_stop(struct anx7625_data *ctx)
>  {
>         struct device *dev = &ctx->client->dev;
>         int ret;
> +       u8 data;
>
>         DRM_DEV_DEBUG_DRIVER(dev, "stop dp output\n");
>
> @@ -929,6 +952,11 @@ static void anx7625_dp_stop(struct anx7625_data *ctx)
>         ret |= anx7625_write_and(ctx, ctx->i2c.tx_p2_client, 0x08, 0x7f);
>
>         ret |= anx7625_video_mute_control(ctx, 1);
> +
> +       dev_dbg(dev, "notify downstream enter into standby\n");
> +       /* Downstream monitor enter into standby mode */
> +       data = 2;
> +       ret |= anx7625_aux_dpcd_trans(ctx, DPCD_WRITE, 0x000600, 1, &data);

Is DPCD_READ/WRITE used for the same purpose as
DP_AUX_NATIVE_WRITE/READ? If so, maybe you can just use
DP_AUX_NATIVE_WRITE/READ and we don't need to define these values
again in the driver?

>         if (ret < 0)
>                 DRM_DEV_ERROR(dev, "IO error : mute video fail\n");
>
> --
> 2.25.1
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
