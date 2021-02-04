Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E89AF30F34D
	for <lists+driverdev-devel@lfdr.de>; Thu,  4 Feb 2021 13:42:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C26BF86BCB;
	Thu,  4 Feb 2021 12:42:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bHkJdndnZ9Kg; Thu,  4 Feb 2021 12:42:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7393286B27;
	Thu,  4 Feb 2021 12:42:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F31A41BF3BD
 for <devel@linuxdriverproject.org>; Thu,  4 Feb 2021 12:42:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id ECC98861CE
 for <devel@linuxdriverproject.org>; Thu,  4 Feb 2021 12:42:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sDj7MKyJJtDY for <devel@linuxdriverproject.org>;
 Thu,  4 Feb 2021 12:42:25 +0000 (UTC)
X-Greylist: delayed 00:07:39 by SQLgrey-1.7.6
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com
 [209.85.217.41])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3F446861AA
 for <devel@driverdev.osuosl.org>; Thu,  4 Feb 2021 12:42:25 +0000 (UTC)
Received: by mail-vs1-f41.google.com with SMTP id k9so1669024vsr.3
 for <devel@driverdev.osuosl.org>; Thu, 04 Feb 2021 04:42:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cJd9FKa1a551Lyef6CfNIDn2oz8BtNjwZF6tWhdERIY=;
 b=Xzw+OgQoMx4trTdOG7xobK372anzs7OyIMUdScK7DPaq+0hgLQQ1NFI4Qx2Tuok4J6
 hAkqvhjsZh+LCLA0a0er2430U3EVnT7T5bdWQvCtekJ53Lhoac45JBKPCr8zLXCyqnY7
 xlXP068fErj3w2dS0S9kwb6OCNpntevlsAVnk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cJd9FKa1a551Lyef6CfNIDn2oz8BtNjwZF6tWhdERIY=;
 b=P3pXwNyyfvYkHawWGjpYyvCQ5I03TYE5McEZFz46bwolReGYSbHplZ2j6BCry6rNhp
 SE9as/aQ89vEjPgMCPlfE/ygMiVCdpua4d9VanoCbUBxh/NO9IiGE4JvTphyKFuMhUvI
 XeQp7LC4vPcxXQJaAixfwR52HMassi9Ewu12vERt5nnWNyqWCWL7IU6nlQqDj9B50/kq
 UxDjP+zWCqSiKU/dtaJh3GBuT/i9P8D9/je0SV4368dqXJ0OD4MHmeftN5PQELWY/7nl
 +Xmy9HAXNe57bioPUD/0H9ELncCiH2PSClnVTAjukBSZGfNkdXSK3GIaynurr/A2qUi/
 6Nkg==
X-Gm-Message-State: AOAM532Y7UFp2s5dh8DP9xvfBTjAWHfJXfrTKbcoQJnmt6+8pAiIXF3F
 NDoh4gBVtXDPPu/j2TAxpv3+2EFmBYI0qsk91AVWUgXNIXchKg==
X-Google-Smtp-Source: ABdhPJzGdlYykvQ6K2WLJtushykS2XRoEspc46YEBzHBjnOeFCMTRStUy8XPadrULy6Vqn8znu7NjaabkXzJbd3THdE=
X-Received: by 2002:a67:8945:: with SMTP id l66mr4678569vsd.48.1612442084863; 
 Thu, 04 Feb 2021 04:34:44 -0800 (PST)
MIME-Version: 1.0
References: <20210128111549.GA8174@zhaomy-pc>
 <CAG3jFysU4epjS3A85ZojrJn3TAC78O_jx5p_4SWsCdRBrQ5GXQ@mail.gmail.com>
In-Reply-To: <CAG3jFysU4epjS3A85ZojrJn3TAC78O_jx5p_4SWsCdRBrQ5GXQ@mail.gmail.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Thu, 4 Feb 2021 20:34:33 +0800
Message-ID: <CANMq1KAuUTqgM2mDR5WN6Ad+cATFXLPE+5rstyhfNE9Lc716+g@mail.gmail.com>
Subject: Re: [PATCH] drm/bridge: anx7625: enable DSI EOTP
To: Robert Foss <robert.foss@linaro.org>
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
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Vasily Khoruzhick <anarsoul@gmail.com>, Andrzej Hajda <a.hajda@samsung.com>,
 Boris Brezillon <boris.brezillon@collabora.com>, Torsten Duwe <duwe@lst.de>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Hsin-Yi Wang <hsinyi@chromium.org>,
 Sam Ravnborg <sam@ravnborg.org>, Xin Ji <xji@analogixsemi.com>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Feb 4, 2021 at 8:07 PM Robert Foss <robert.foss@linaro.org> wrote:
>
> Hi Xin,
>
> Thanks for the patch.
>
> On Thu, 28 Jan 2021 at 12:17, Xin Ji <xji@analogixsemi.com> wrote:
> >
> > Enable DSI EOTP feature for fixing some panel screen constance
> > shift issue.
> > Removing MIPI flag MIPI_DSI_MODE_EOT_PACKET to enable DSI EOTP.
>
> I don't think I quite understand how removing the
> MIPI_DSI_MODE_EOT_PACKET flag will cause DSI EOTP to be enabled. Could
> you extrapolate on this in the commit message?

That confused me as well, but it turns out that's how the flag is defined:
```
/* disable EoT packets in HS mode */
#define MIPI_DSI_MODE_EOT_PACKET BIT(9)
```
(https://elixir.bootlin.com/linux/latest/source/include/drm/drm_mipi_dsi.h#L129)

I'm almost tempted to put together a mass patch to rename all of these flags...

>
> >
> > Signed-off-by: Xin Ji <xji@analogixsemi.com>
> > ---
> >  drivers/gpu/drm/bridge/analogix/anx7625.c | 1 -
> >  1 file changed, 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/bridge/analogix/anx7625.c b/drivers/gpu/drm/bridge/analogix/anx7625.c
> > index 65cc059..e31eeb1b 100644
> > --- a/drivers/gpu/drm/bridge/analogix/anx7625.c
> > +++ b/drivers/gpu/drm/bridge/analogix/anx7625.c
> > @@ -1334,7 +1334,6 @@ static int anx7625_attach_dsi(struct anx7625_data *ctx)
> >         dsi->format = MIPI_DSI_FMT_RGB888;
> >         dsi->mode_flags = MIPI_DSI_MODE_VIDEO   |
> >                 MIPI_DSI_MODE_VIDEO_SYNC_PULSE  |
> > -               MIPI_DSI_MODE_EOT_PACKET        |
> >                 MIPI_DSI_MODE_VIDEO_HSE;
> >
> >         if (mipi_dsi_attach(dsi) < 0) {
> > --
> > 2.7.4
> >
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
