Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B458530F31B
	for <lists+driverdev-devel@lfdr.de>; Thu,  4 Feb 2021 13:28:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1830D861F1;
	Thu,  4 Feb 2021 12:28:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SSavQBebAnAL; Thu,  4 Feb 2021 12:28:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C2ADB861AA;
	Thu,  4 Feb 2021 12:28:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 367FE1BF3BD
 for <devel@linuxdriverproject.org>; Thu,  4 Feb 2021 12:28:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2973020476
 for <devel@linuxdriverproject.org>; Thu,  4 Feb 2021 12:28:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aS2aA93sf4Zo for <devel@linuxdriverproject.org>;
 Thu,  4 Feb 2021 12:28:41 +0000 (UTC)
X-Greylist: delayed 00:23:13 by SQLgrey-1.7.6
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com
 [209.85.216.45])
 by silver.osuosl.org (Postfix) with ESMTPS id 588432042B
 for <devel@driverdev.osuosl.org>; Thu,  4 Feb 2021 12:28:41 +0000 (UTC)
Received: by mail-pj1-f45.google.com with SMTP id d2so1700071pjs.4
 for <devel@driverdev.osuosl.org>; Thu, 04 Feb 2021 04:28:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rwJuigtXZN4H8LH97KvEX01KgdYdPsaGxRjAB9+CZ0M=;
 b=M4lnzGnLIjoB1QblxKZYrcWYHjCnlO9Z7EYFDR4Tf2CFAfzm5GCBN2XnvmtVjgbHiD
 MseYcE57KxwQaLzEBywDZGyUAmV/BeSnxb8FKJVzqemnzpkva4RKGHfKzmdUSi0bilja
 DsGLJh6BkSwNUoyjP8CJUuOJMlhZ4RybBLHGA+RGNWi+DhGAfftGgU+4Xj2VSGHiZ0px
 ChRLpy3M1abwbjEbbbQYDVu7ah31n/YzW2uGaFwpoa6LmZ0HIPrD+NpB58ym+PVGUNkG
 dBsxFFiHl4JMhCgqFzeQ4PZvhUz3+BsPg03vf7+OBK7Aodyt/8pqpkbqEXUsQWTMc5Ay
 t8fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rwJuigtXZN4H8LH97KvEX01KgdYdPsaGxRjAB9+CZ0M=;
 b=LGE32WMkmoI8CDDmNL5K4dkGkx76YAyomWCK9jGqVEDd3MoSecVPTmIpx6DrE/D3r1
 zxEAokE3M3c/9sxcjFsJFbfFXpF0zJaxRbPZyK0su9YIL8Q1g6B3K3NIhMZSwPxV9lMM
 OV2sPADF0sdVNHdBs44pfS8cARrBGQSkBO/MG4HQfHKKyF8AEtgCQ02YAJYSOzeI6EYP
 Nat2yl0vSmRnd+Z1o24Vvx+3L6Eg/0v7Z2ySpo/cKYMxzXQHQY5GUJzt871IXw4fKJyo
 qrtmdHsUTJ72Yo32Pc+jccYD0pLQV2mDxDOlWiGcD0gQC9ckd6JGlcVYMj8SOidf0fdN
 csUw==
X-Gm-Message-State: AOAM533CKs+ib7HFuJmibabzKPdSP5ryCot1Ag8yXenOPAUgquVzXfSt
 ZRhdXQi3KWWvfu4F4tfaIjzx+5QewJgaHy7DrUulCQ==
X-Google-Smtp-Source: ABdhPJyfBP7u1ZXbobDvu7HK4oR+5/fraMGa2jIKVYVtLc/FPEFhdNdXoTwpgFhddT6Hj6tnFHkEKhbtjNOtDsg/HF0=
X-Received: by 2002:a17:90a:4ecb:: with SMTP id
 v11mr8453346pjl.75.1612441720976; 
 Thu, 04 Feb 2021 04:28:40 -0800 (PST)
MIME-Version: 1.0
References: <cover.1611802321.git.xji@analogixsemi.com>
 <23b62a447364a9047f0b1b144557e8d95f6ad7f7.1611802321.git.xji@analogixsemi.com>
In-Reply-To: <23b62a447364a9047f0b1b144557e8d95f6ad7f7.1611802321.git.xji@analogixsemi.com>
From: Robert Foss <robert.foss@linaro.org>
Date: Thu, 4 Feb 2021 13:28:30 +0100
Message-ID: <CAG3jFyuAixFQ0L_2zw_8Ze3cF11PFMm-sN6ZQR7=opEjWV1nNw@mail.gmail.com>
Subject: Re: [PATCH v4 2/3] drm/bridge: anx7625: fix not correct return value
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

On Thu, 28 Jan 2021 at 04:12, Xin Ji <xji@analogixsemi.com> wrote:
>
> At some time, the original code may return non zero value, force return 0
> if operation finished

Missing "." at end of line.

Other than that, this patch looks fine. Feel free to add my r-b.
Reviewed-by: Robert Foss <robert.foss@linaro.org>

>
> Signed-off-by: Xin Ji <xji@analogixsemi.com>
> ---
>  drivers/gpu/drm/bridge/analogix/anx7625.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/bridge/analogix/anx7625.c b/drivers/gpu/drm/bridge/analogix/anx7625.c
> index 65cc059..04536cc 100644
> --- a/drivers/gpu/drm/bridge/analogix/anx7625.c
> +++ b/drivers/gpu/drm/bridge/analogix/anx7625.c
> @@ -189,10 +189,10 @@ static int wait_aux_op_finish(struct anx7625_data *ctx)
>                                AP_AUX_CTRL_STATUS);
>         if (val < 0 || (val & 0x0F)) {
>                 DRM_DEV_ERROR(dev, "aux status %02x\n", val);
> -               val = -EIO;
> +               return -EIO;
>         }
>
> -       return val;
> +       return 0;
>  }
>
>  static int anx7625_video_mute_control(struct anx7625_data *ctx,
> --
> 2.7.4
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
