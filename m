Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 09F86343CF1
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Mar 2021 10:37:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 42BEE6060B;
	Mon, 22 Mar 2021 09:37:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oVDKqgsOhrud; Mon, 22 Mar 2021 09:37:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9D484605AA;
	Mon, 22 Mar 2021 09:37:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2021B1BF27E
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 09:37:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0D6BB828F5
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 09:37:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=linaro.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Rj5fpKE_tHcm for <devel@linuxdriverproject.org>;
 Mon, 22 Mar 2021 09:37:08 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com
 [IPv6:2607:f8b0:4864:20::630])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 55BA082C6B
 for <devel@driverdev.osuosl.org>; Mon, 22 Mar 2021 09:37:08 +0000 (UTC)
Received: by mail-pl1-x630.google.com with SMTP id w11so6238917ply.6
 for <devel@driverdev.osuosl.org>; Mon, 22 Mar 2021 02:37:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NwUM0uQxUqhm1YVIReKtCkfGLNGPmzKidaPgCqb8BBE=;
 b=gXbh9UMfvUZZiaSKPj0kATlaIUUP7yHi/S4AuIprB1LM1sL3NBD2ibBMw5jhAHgzf9
 Ql66huAzH35AmvpUP3mfQgwNfNL4TYfMotCgXSF/Uk6vSmPfRCWofSCmilHmrg/ie2nw
 GmoBoItlOUdNUdEPYcCY1V1z+lYshyYviRoX6H21LLNR/KFNbds2/uFFKQHdWSrZiRD2
 X78CC9qcZ03bvcUXRclDKKICbYzm4Ey36b7kzC4uf8qqmpmec0/sd3I1yWCrQlmQ47LU
 ca/0OgJgC1owGu3qKZtNtgf1p+Dss+gCs0PkDbm1m6gfFT3auF4SjXPv3rJy6Za2Xgbv
 wQRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NwUM0uQxUqhm1YVIReKtCkfGLNGPmzKidaPgCqb8BBE=;
 b=og41Ge1js8irwVmWgjuqKWCQFpoR4yJ1WrujiJZ4O8fe+q3kTjb1GGqBXjIjkR/x3Q
 fEIbgjNPh3NEZWj0lLKKksylaBCvtJeg5X8Ahn8a5xYBjY8xXrmHtRkT+RLTdyStTAbZ
 11rZYPgdahDDInhq8Wd+pcHP8i3UvDrt4T7LHJuvzlyz3n4xfKg+HQF2v6dQzh9wh+y9
 nw+d1nCql7OWU/iSgsLyJhEt721TGWECHAL/THwOQ4wmZW0qSoIk1cBj+C+d1w5a6JVU
 hRPr8a/girOAVbSeBZzT0lFJNRQuDYbOHXjQCzqBwPxeNLBHtAMNdUJdW8+iJrPzSR6d
 9wcA==
X-Gm-Message-State: AOAM533XlXvJApBcEueovUtoQkXRqkxLkG97Mt1/AUaOAmcNPVlM4Z1n
 csh/SJF82CDrrRXwrfQCc6QJxKoor5oF0RgW+ecYqg==
X-Google-Smtp-Source: ABdhPJwsG4deEbsCFps8vjx+pZ/Q1xmfX79FHPiSz5iek499vlHWh/Zc0A69Qb6RKbutmQfpNMo+NtJTRMLS0jJut+k=
X-Received: by 2002:a17:902:7d8d:b029:e6:4061:b767 with SMTP id
 a13-20020a1709027d8db02900e64061b767mr26216108plm.32.1616405827745; Mon, 22
 Mar 2021 02:37:07 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1616135353.git.xji@analogixsemi.com>
 <ff689dae07ba1440b96f4804468d9c4203d22d68.1616135353.git.xji@analogixsemi.com>
In-Reply-To: <ff689dae07ba1440b96f4804468d9c4203d22d68.1616135353.git.xji@analogixsemi.com>
From: Robert Foss <robert.foss@linaro.org>
Date: Mon, 22 Mar 2021 10:36:56 +0100
Message-ID: <CAG3jFysRwmx5mN5kHh-L0N2Az_csitr0ckovxJvCAFsfo96ZXA@mail.gmail.com>
Subject: Re: [PATCH v6 2/5] drm/bridge: anx7625: fix not correct return value
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
 Bernie Liang <bliang@analogixsemi.com>,
 Neil Armstrong <narmstrong@baylibre.com>, Zhen Li <zhenli@analogixsemi.com>,
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

This patch looks good to me.

Reviewed-by: Robert Foss <robert.foss@linaro.org>

On Fri, 19 Mar 2021 at 07:33, Xin Ji <xji@analogixsemi.com> wrote:
>
> At some time, the original code may return non zero value, force return 0
> if operation finished.
>
> Signed-off-by: Xin Ji <xji@analogixsemi.com>
> ---
>  drivers/gpu/drm/bridge/analogix/anx7625.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/bridge/analogix/anx7625.c b/drivers/gpu/drm/bridge/analogix/anx7625.c
> index 65cc05982f82..04536cc7afe7 100644
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
> 2.25.1
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
