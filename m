Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F0213482DE
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Jun 2019 14:46:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E4DFC849CD;
	Mon, 17 Jun 2019 12:46:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6zW-KfLezBis; Mon, 17 Jun 2019 12:46:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 67F77848FA;
	Mon, 17 Jun 2019 12:46:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AFF8D1BF2A7
 for <devel@linuxdriverproject.org>; Mon, 17 Jun 2019 12:46:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id ABE2320449
 for <devel@linuxdriverproject.org>; Mon, 17 Jun 2019 12:46:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mPDSi+dMHmi5 for <devel@linuxdriverproject.org>;
 Mon, 17 Jun 2019 12:46:48 +0000 (UTC)
X-Greylist: delayed 00:05:45 by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 0FE8120116
 for <devel@driverdev.osuosl.org>; Mon, 17 Jun 2019 12:46:48 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id c2so9798450wrm.8
 for <devel@driverdev.osuosl.org>; Mon, 17 Jun 2019 05:46:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WOOxpm7ozZave7X/hBH3gYwbNXHHvhxtj5pINcFfpmM=;
 b=gzjXdC3SyBjROxKdZINhmdO+YOBW7w31ZU3bhz19+zQh6bKN9So0wH9jBV6ITP3QUn
 ++GtUH3piNFnSVVsYe0do04ZpfDbpYv26fFZeVjgXw4FxfZMuesrcH65TQFpGFp8T2Mp
 WjsMvhOjYwEJgwznc9B2blDBrgh5Im/R0KZukg1QIvyOQ6bKIAIomK2vt2EHNT694ecI
 Ki1oy53r5lVNwvL9uYiGc8r3yraGmX7LD06ibLUeaFxuzIjDYoAPXMzGUibsgvm4o1gH
 I+5Fztidy7Qtl2+7beYTnPuFR0ckvioG+IkKs0zm660+0nvPLoG7vkjcvr9q3kD4cMfL
 tFqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WOOxpm7ozZave7X/hBH3gYwbNXHHvhxtj5pINcFfpmM=;
 b=LZo+qZV1L6NdZbL1YiY3IiFnX+phuRu29kLIaet68oFHIsepx/0EFwQJEDNFkJSmP1
 STVlZVbCfib0H2zn3JhD0kJcIvz5Ktzw4FCoEIr3qC8kTSlxxkzhRCi5SDmro63RkFPp
 hc/GENEkJq8AVuznG0C+Q8+v71YcUDixRtaZIxWz3FxoeFR2SHigGSdEOuR/SVu6lWnn
 5m0FM4y5FM+DlY3Vd59/6qTU1d5OkS0PTrlW685hNMIXBv2Fw7Q9Fl4vX+Y2xdIh0rKW
 tCBidvvzHcLslFYAsXtjoNUf2F1EvL8HIJudvpDOxQuNwqPKmQ/5ttN22t2H6PX4cL6s
 4qwA==
X-Gm-Message-State: APjAAAWe9EX10N5ZkblDPpqLozFZpccXuRdBWHODtS/UKdfdCsrQyBFF
 1tji+fo7zDOACUUUD7uI3ndkL7WOdZGrAsVUDOFxkw==
X-Google-Smtp-Source: APXvYqzpuPnI+gsxO4zp+HzWS3tA15wt/2tfOqTOkMZ8lgfnUBjUyQc5aSZTXucpdJWE7KyO86xEbW+pmWZ5wCwQiQ0=
X-Received: by 2002:a5d:4ec1:: with SMTP id s1mr23708512wrv.19.1560775262236; 
 Mon, 17 Jun 2019 05:41:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190617111718.2277220-1-arnd@arndb.de>
In-Reply-To: <20190617111718.2277220-1-arnd@arndb.de>
From: Maxime Jourdan <mjourdan@baylibre.com>
Date: Mon, 17 Jun 2019 14:40:51 +0200
Message-ID: <CAMO6nazK5uo3deCqKEAGqB4TfEp9W1u2bkWaMNg_DMtSw=E2YQ@mail.gmail.com>
Subject: Re: [PATCH 1/3] media: meson: include linux/kthread.h
To: Arnd Bergmann <arnd@arndb.de>
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
Cc: devel@driverdev.osuosl.org, Kevin Hilman <khilman@baylibre.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-media@lists.freedesktop.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, linux-amlogic@lists.infradead.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello Arnd,
On Mon, Jun 17, 2019 at 1:17 PM Arnd Bergmann <arnd@arndb.de> wrote:
>
> Without this header, we get a compilation error in some configurations:
>
> drivers/staging/media/meson/vdec/vdec.c: In function 'vdec_recycle_thread':
> drivers/staging/media/meson/vdec/vdec.c:59:10: error: implicit declaration of function 'kthread_should_stop' [-Werror=implicit-function-declaration]
>
> Fixes: 3e7f51bd9607 ("media: meson: add v4l2 m2m video decoder driver")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/staging/media/meson/vdec/vdec.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/staging/media/meson/vdec/vdec.c b/drivers/staging/media/meson/vdec/vdec.c
> index 0a1a04fd5d13..eb335a0f2bdd 100644
> --- a/drivers/staging/media/meson/vdec/vdec.c
> +++ b/drivers/staging/media/meson/vdec/vdec.c
> @@ -8,6 +8,7 @@
>  #include <linux/clk.h>
>  #include <linux/io.h>
>  #include <linux/module.h>
> +#include <linux/kthread.h>
>  #include <linux/platform_device.h>
>  #include <linux/mfd/syscon.h>
>  #include <linux/slab.h>
> --
> 2.20.0
>

Thanks for the patch, a similar one has already been sent by Yue
Haibing and is sitting in media/master at the moment [0]. My apologies
for this oversight.

Regards,
Maxime

[0] https://git.linuxtv.org/media_tree.git/commit/?id=3510c68d32bf3a188c077b5fb87339379f4e6b43
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
