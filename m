Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96D8031000C
	for <lists+driverdev-devel@lfdr.de>; Thu,  4 Feb 2021 23:25:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0DF6687287;
	Thu,  4 Feb 2021 22:25:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vZaleaUCvF21; Thu,  4 Feb 2021 22:25:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 903898726F;
	Thu,  4 Feb 2021 22:25:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0CCF01BF32C
 for <devel@linuxdriverproject.org>; Thu,  4 Feb 2021 22:25:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 067A586D33
 for <devel@linuxdriverproject.org>; Thu,  4 Feb 2021 22:25:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B4YJoCQMNCaY for <devel@linuxdriverproject.org>;
 Thu,  4 Feb 2021 22:25:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com
 [209.85.217.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1619086D32
 for <devel@driverdev.osuosl.org>; Thu,  4 Feb 2021 22:25:15 +0000 (UTC)
Received: by mail-vs1-f43.google.com with SMTP id v19so2588541vsf.9
 for <devel@driverdev.osuosl.org>; Thu, 04 Feb 2021 14:25:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=31jUhQb4QgBdzmAxm7WR6grUlNAOknQ+++TxEZo30Ts=;
 b=AEZu9A+PtNGkoSHnMDnQwaWORrLt+lZB4uI7bD12xs19pXOqzYGftocfVpVi11/2nP
 vGMjloHYJP6gHbtTCqiJdG43ZiNRd4E9FAPpeKv8FzMPLwiDADgf6jzi9rOvvrBvPfa3
 iNF6k3j71vTvOITaT7d/322ce5rE0H+3Oh0Go=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=31jUhQb4QgBdzmAxm7WR6grUlNAOknQ+++TxEZo30Ts=;
 b=QYK+zIFo9PehV3w29ZuYtqQ63QthQl/h0Wx9t8yLuVmcc/MRgFFRtVrcjTkIe6lr8n
 ckpykE32JnTILT9Cz48ar2vmRDtX8XKz8Gi8Flt3bmsZKXHGCaPiNxc/iQLK39SKc7MO
 BK7weKDNjGkdaIxmx+y52YG/yUcIyilZ9VxEn6kj81+8jALgW7z3R8t+s5deNHWZ6IDZ
 7GhmVyj/Jp6X8/2ZK1BhQhjtcQCPS942/Sn0oBU3LkDsqBIcCRv+QLEwts6HmMhaFhvy
 +DKUFamG4NoR2AacQFR2JgGIhMpCrNy/1iPefJFqqO1J547a1ipOjlc6gFlGeki/1qni
 A+Cw==
X-Gm-Message-State: AOAM5321PR37m9T8dfk52dzd04ado1+0nXnl/UnVSrfGA7fElZY4ujiz
 UqJCcECdUjvFkY9BWN0NDH5Fy/ruhTvfBd1wVCExDg==
X-Google-Smtp-Source: ABdhPJyMpXvwQyrCOQjc4jvN2lm7zHDjPIYpmEmeanwteLDdiY63Jm6FlPAvp99+wgnb/9zVDISwMQgWlH5CvnpGXkc=
X-Received: by 2002:a67:6b46:: with SMTP id g67mr1153931vsc.60.1612477514078; 
 Thu, 04 Feb 2021 14:25:14 -0800 (PST)
MIME-Version: 1.0
References: <20210128111549.GA8174@zhaomy-pc>
 <CAG3jFysU4epjS3A85ZojrJn3TAC78O_jx5p_4SWsCdRBrQ5GXQ@mail.gmail.com>
 <CGME20210204123452eucas1p1eb8fd9dc5b62b036ebd9e9208e796cb9@eucas1p1.samsung.com>
 <CANMq1KAuUTqgM2mDR5WN6Ad+cATFXLPE+5rstyhfNE9Lc716+g@mail.gmail.com>
 <b680fef2-7c8a-183b-443a-6b2b9fe595d7@samsung.com>
In-Reply-To: <b680fef2-7c8a-183b-443a-6b2b9fe595d7@samsung.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Fri, 5 Feb 2021 06:25:02 +0800
Message-ID: <CANMq1KAVMhFAdy_s4R-h1yzNWXRgWgZ4s9kQL11LDze3+Qv5_w@mail.gmail.com>
Subject: Re: [PATCH] drm/bridge: anx7625: enable DSI EOTP
To: Andrzej Hajda <a.hajda@samsung.com>
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
 Jernej Skrabec <jernej.skrabec@siol.net>, Jonas Karlman <jonas@kwiboo.se>,
 David Airlie <airlied@linux.ie>, dri-devel <dri-devel@lists.freedesktop.org>,
 Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Robert Foss <robert.foss@linaro.org>, Vasily Khoruzhick <anarsoul@gmail.com>,
 Boris Brezillon <boris.brezillon@collabora.com>, Torsten Duwe <duwe@lst.de>,
 Sheng Pan <span@analogixsemi.com>, Hsin-Yi Wang <hsinyi@chromium.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>, Sam Ravnborg <sam@ravnborg.org>,
 Xin Ji <xji@analogixsemi.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Feb 4, 2021 at 8:59 PM Andrzej Hajda <a.hajda@samsung.com> wrote:
>
>
> W dniu 04.02.2021 o 13:34, Nicolas Boichat pisze:
> > On Thu, Feb 4, 2021 at 8:07 PM Robert Foss <robert.foss@linaro.org> wrote:
> >> Hi Xin,
> >>
> >> Thanks for the patch.
> >>
> >> On Thu, 28 Jan 2021 at 12:17, Xin Ji <xji@analogixsemi.com> wrote:
> >>> Enable DSI EOTP feature for fixing some panel screen constance
> >>> shift issue.
> >>> Removing MIPI flag MIPI_DSI_MODE_EOT_PACKET to enable DSI EOTP.
> >> I don't think I quite understand how removing the
> >> MIPI_DSI_MODE_EOT_PACKET flag will cause DSI EOTP to be enabled. Could
> >> you extrapolate on this in the commit message?
> > That confused me as well, but it turns out that's how the flag is defined:
> > ```
> > /* disable EoT packets in HS mode */
> > #define MIPI_DSI_MODE_EOT_PACKET BIT(9)
> > ```
> > (https://protect2.fireeye.com/v1/url?k=5bd95ebd-044267fb-5bd8d5f2-0cc47a3003e8-ce9db8ea264d6901&q=1&e=900556dc-d199-4c18-9432-5c3465a98eae&u=https%3A%2F%2Felixir.bootlin.com%2Flinux%2Flatest%2Fsource%2Finclude%2Fdrm%2Fdrm_mipi_dsi.h%23L129)
> >
> > I'm almost tempted to put together a mass patch to rename all of these flags...
>
>
> Yes that would be good, many of these flags were just copy pasted from
> some hw datasheet, without good analysis how to adapt them to the framework.

I'll look into it (but that shouldn't block this patch).

>
>
> Regards
>
> Andrzej
>
>
> >
> >>> Signed-off-by: Xin Ji <xji@analogixsemi.com>
> >>> ---
> >>>   drivers/gpu/drm/bridge/analogix/anx7625.c | 1 -
> >>>   1 file changed, 1 deletion(-)
> >>>
> >>> diff --git a/drivers/gpu/drm/bridge/analogix/anx7625.c b/drivers/gpu/drm/bridge/analogix/anx7625.c
> >>> index 65cc059..e31eeb1b 100644
> >>> --- a/drivers/gpu/drm/bridge/analogix/anx7625.c
> >>> +++ b/drivers/gpu/drm/bridge/analogix/anx7625.c
> >>> @@ -1334,7 +1334,6 @@ static int anx7625_attach_dsi(struct anx7625_data *ctx)
> >>>          dsi->format = MIPI_DSI_FMT_RGB888;
> >>>          dsi->mode_flags = MIPI_DSI_MODE_VIDEO   |
> >>>                  MIPI_DSI_MODE_VIDEO_SYNC_PULSE  |
> >>> -               MIPI_DSI_MODE_EOT_PACKET        |
> >>>                  MIPI_DSI_MODE_VIDEO_HSE;
> >>>
> >>>          if (mipi_dsi_attach(dsi) < 0) {
> >>> --
> >>> 2.7.4
> >>>
> > _______________________________________________
> > dri-devel mailing list
> > dri-devel@lists.freedesktop.org
> > https://protect2.fireeye.com/v1/url?k=457f3f39-1ae4067f-457eb476-0cc47a3003e8-b702072da729d8c9&q=1&e=900556dc-d199-4c18-9432-5c3465a98eae&u=https%3A%2F%2Flists.freedesktop.org%2Fmailman%2Flistinfo%2Fdri-devel
> >
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
