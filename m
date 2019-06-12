Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F05742276
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Jun 2019 12:29:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0D21A22654;
	Wed, 12 Jun 2019 10:29:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 30RGmjMnaghb; Wed, 12 Jun 2019 10:29:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8F231204E3;
	Wed, 12 Jun 2019 10:29:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C23231BF2B6
 for <devel@linuxdriverproject.org>; Wed, 12 Jun 2019 10:29:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BFCF985933
 for <devel@linuxdriverproject.org>; Wed, 12 Jun 2019 10:29:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hZXUy5RpeRhA for <devel@linuxdriverproject.org>;
 Wed, 12 Jun 2019 10:29:39 +0000 (UTC)
X-Greylist: delayed 00:07:40 by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7E47F84FD2
 for <devel@driverdev.osuosl.org>; Wed, 12 Jun 2019 10:29:39 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id x15so5993408wmj.3
 for <devel@driverdev.osuosl.org>; Wed, 12 Jun 2019 03:29:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AFoHMSEj9tVrWcEUPH5FAzB19SGdLo79LhrgprT3fB0=;
 b=rulL1S3rudmYvANWuk91UMefuzuee5m+1kiBg/S4z4W6rohQIQJvVef0Ga8/kNwqJP
 kQbz+GWJXFvKOlUq8wHsIOsVwPqBI6yU4JVUxy8FcXHzelpiTu0d9AnpLnqKnk6brVeP
 0fI7UN+JLLjazssXG03F2xYy4RGi8lRQZddXYhMMtpv3pOhX4qKtG2S8uhFGlc+GLnT6
 pvwprNWkUYEuVh6VpDMyqPFBM3B4d4BM96DCh7LGjxch5bvcQL2oQCAMKcd+OcUFDS/9
 lerJBd9pWHPVwxh6CPJHbt3h+bxG3bzij0XlNY2uclYVY1/q+J8iyOw8VXcY4XYFT3kO
 9meA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AFoHMSEj9tVrWcEUPH5FAzB19SGdLo79LhrgprT3fB0=;
 b=Ovm206aebCg284UaGbyl+RrCfiNg6+ndoEAwC0wFMLM8PhwJIZ166pce8e8ycfBpQ6
 6VdLNqW/5ZBGvU4rbUax60+/V731T29vk/kASWgeLfzXmcCzlmuhlH8pJuEkDiNKBC2S
 7Wg0Qc7RpBZQA2HLfxk/j1U4nBK0kvcLJEDSrnS+wg+5Wuscm9tGNP/Mz2KIzqJNWSFO
 2TS8ifgCCq5aXqIxGl069DIbVUqgHG/5U3QOGI3xemKYfNPYdKzOCu3C/fFdGpQGgngd
 3c55XLYS++mP8tMWiRP2znfNAbwCt2rx4FTa9XUx8QpYTm5I/L3XPpvD0tUJrJtnUojp
 wTrg==
X-Gm-Message-State: APjAAAXilMuE8ZQhYQfDRuut1JD8rWFJmvAzfksKYWPiXl8Cv+31GqP2
 UwMHaKiqcSXoYJ3/hG8ZCFEDDW8FOkJOIGvXuHuJlQ==
X-Google-Smtp-Source: APXvYqz6AjVcZoYHA6CdaGJpxS+2mtUzECSit9/BS1GTOdIOLeI2k4WuyT2w1sPbw2Vab/weDhNLTVi2+YFEotGwynw=
X-Received: by 2002:a1c:ed07:: with SMTP id l7mr19968400wmh.148.1560334917880; 
 Wed, 12 Jun 2019 03:21:57 -0700 (PDT)
MIME-Version: 1.0
References: <20190612100536.22368-1-yuehaibing@huawei.com>
In-Reply-To: <20190612100536.22368-1-yuehaibing@huawei.com>
From: Maxime Jourdan <mjourdan@baylibre.com>
Date: Wed, 12 Jun 2019 12:21:47 +0200
Message-ID: <CAMO6nayiXiOkHSxgZU+oyPdSo5ugcV6XaCdy7P1Riutv+c7XRQ@mail.gmail.com>
Subject: Re: [PATCH -next] media: meson: vdec: Add missing kthread.h
To: YueHaibing <yuehaibing@huawei.com>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, linux-media@lists.freedesktop.org,
 Kevin Hilman <khilman@baylibre.com>, linux-amlogic@lists.infradead.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jun 12, 2019 at 12:05 PM YueHaibing <yuehaibing@huawei.com> wrote:
>
> Fix building error:
>
> drivers/staging/media/meson/vdec/vdec.c: In function vdec_recycle_thread:
> drivers/staging/media/meson/vdec/vdec.c:59:10: error: implicit declaration
>  of function kthread_should_stop;
>  did you mean thread_saved_sp? [-Werror=implicit-function-declaration]
>
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Fixes: 3e7f51bd9607 ("media: meson: add v4l2 m2m video decoder driver")
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---
>  drivers/staging/media/meson/vdec/vdec.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/staging/media/meson/vdec/vdec.c b/drivers/staging/media/meson/vdec/vdec.c
> index 4e4f9d6..0a1a04f 100644
> --- a/drivers/staging/media/meson/vdec/vdec.c
> +++ b/drivers/staging/media/meson/vdec/vdec.c
> @@ -12,6 +12,7 @@
>  #include <linux/mfd/syscon.h>
>  #include <linux/slab.h>
>  #include <linux/interrupt.h>
> +#include <linux/kthread.h>
>  #include <media/v4l2-ioctl.h>
>  #include <media/v4l2-event.h>
>  #include <media/v4l2-ctrls.h>
> --
> 2.7.4
>
>

Thanks for the patch, sorry that this one slipped through.

Acked-by: Maxime Jourdan <mjourdan@baylibre.com>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
