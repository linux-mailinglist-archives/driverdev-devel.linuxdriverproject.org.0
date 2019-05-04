Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E415E1395A
	for <lists+driverdev-devel@lfdr.de>; Sat,  4 May 2019 12:43:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DDBCF88335;
	Sat,  4 May 2019 10:43:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XVuyYs4MB0Mi; Sat,  4 May 2019 10:43:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5B92D87FCC;
	Sat,  4 May 2019 10:43:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5381D1BF20B
 for <devel@linuxdriverproject.org>; Sat,  4 May 2019 10:43:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 48365231AB
 for <devel@linuxdriverproject.org>; Sat,  4 May 2019 10:43:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gxdyYdm+I6vM for <devel@linuxdriverproject.org>;
 Sat,  4 May 2019 10:43:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com
 [209.85.167.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 6E95F2314A
 for <devel@driverdev.osuosl.org>; Sat,  4 May 2019 10:43:47 +0000 (UTC)
Received: by mail-oi1-f195.google.com with SMTP id u3so513939oic.12
 for <devel@driverdev.osuosl.org>; Sat, 04 May 2019 03:43:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jP4HbLDkknhP4A9EDJa5u2q42TL/gPI6IzJv6fDFbOE=;
 b=QxVjpKX4PVr06tzfYCHVDnwasOj8Lay1fQHuq7MDHynAVFS1ghYDIn9Epz8T7hksdl
 +Sn6K4p1MCxfb0Sjol0zvoAqsv0sYvL/8kBiHCdOyHmHRM2lwgZCJwf7VgcENDcgrR+2
 /V3yVEVrmHPz1xsXnCWkShf0F/Uk6Xrd3RUK0PKCW5D1AotrYrTMbKPLosAww7GsY7yY
 wJmmWdsdevwn3IDuJcYjWu5fEGgwfWxBjv22eUzl3xgfE0GUtuDBW7sYqjj04XmIYath
 /xX1t1eVkuxSVLnC0Pfq/6ZwtaCuMGDzETzGUrd17jjbamU8lnQzgSRxhQCobguc0J26
 uzeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jP4HbLDkknhP4A9EDJa5u2q42TL/gPI6IzJv6fDFbOE=;
 b=HVnx6isxPLfadVTqkJIWZIuR+1rJeSmpCE65mevWSO/kJPZGpLs0tAeC6+/p5T07X/
 1qs/R+VI5wWhEH98bxNzEKH79FxShOVBWSEFLEXW6/KNAFErptLdc0B6TNlNnWe3tuI9
 iK5SFVNitDaHkQpAJIavLO+H3UbwNIroK2XqwX6TiUrDNTxjiQEk4P4Y2aunmX60LXtZ
 mbzvEXhY8M6OCfSVRGrVDDKpre50VEsMOTcIGGxXyDnqWySRhkXE2X9Trk7/bcDonAFg
 RJz61D+87qHDubcMSdI7zs4K0dfQImLVEP+1JhWzFmzWjk8QhpKdDWeCGXhILO1bQP3T
 1tnA==
X-Gm-Message-State: APjAAAXw/JxkMCUQ9NhpbzTy+qM9fwqWiMLHgXOukANc2q2kH3DTzMl3
 1GqXGeFbex9ccgqBvGe40jva8Utq9TplY/FaOfE=
X-Google-Smtp-Source: APXvYqwCrRtjDLEJreXyuy076r7vAv19fwipMMdtgaVutPfe+ZBelYYYdLgoyxQ3nllr1qxbJe0rltNF0vUGorWhUNA=
X-Received: by 2002:aca:305:: with SMTP id 5mr2011759oid.117.1556966626650;
 Sat, 04 May 2019 03:43:46 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1556919363.git.melissa.srw@gmail.com>
 <7f7d36348bca1de25bd70350b7c665be6441250f.1556919363.git.melissa.srw@gmail.com>
In-Reply-To: <7f7d36348bca1de25bd70350b7c665be6441250f.1556919363.git.melissa.srw@gmail.com>
From: Alexandru Ardelean <ardeleanalex@gmail.com>
Date: Sat, 4 May 2019 13:43:34 +0300
Message-ID: <CA+U=Dso6zSLzhhdiZcc+P4-2zcabxnoMd2539HmofTXrtYoKDQ@mail.gmail.com>
Subject: Re: [PATCH 2/4] staging: iio: ad7150: use FIELD_GET and GENMASK
To: Melissa Wen <melissa.srw@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Lars-Peter Clausen <lars@metafoo.de>,
 Stefan Popa <stefan.popa@analog.com>,
 Michael Hennerich <Michael.Hennerich@analog.com>, linux-iio@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Barry Song <21cnbao@gmail.com>, LKML <linux-kernel@vger.kernel.org>,
 kernel-usp@googlegroups.com, Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Hartmut Knaack <knaack.h@gmx.de>,
 Alexandru Ardelean <alexandru.ardelean@analog.com>,
 Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, May 4, 2019 at 1:25 AM Melissa Wen <melissa.srw@gmail.com> wrote:
>
> Use the bitfield macro FIELD_GET, and GENMASK to do the shift and mask in
> one go. This makes the code more readable than explicit masking followed
> by a shift.
>

This looks neat.
I'd have to remember to ack it from my work email.

One minor comment inline, which would be the object of a new patch.

> Signed-off-by: Melissa Wen <melissa.srw@gmail.com>
> ---
>  drivers/staging/iio/cdc/ad7150.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/staging/iio/cdc/ad7150.c b/drivers/staging/iio/cdc/ad7150.c
> index 24601ba7db88..4ba46fb6ac02 100644
> --- a/drivers/staging/iio/cdc/ad7150.c
> +++ b/drivers/staging/iio/cdc/ad7150.c
> @@ -5,6 +5,7 @@
>   * Copyright 2010-2011 Analog Devices Inc.
>   */
>
> +#include <linux/bitfield.h>
>  #include <linux/interrupt.h>
>  #include <linux/device.h>
>  #include <linux/kernel.h>
> @@ -44,6 +45,9 @@
>  #define AD7150_SN0_REG                         0x16
>  #define AD7150_ID_REG                          0x17
>
> +/* AD7150 masks */
> +#define AD7150_THRESHTYPE_MSK                  GENMASK(6, 5)
> +
>  /**
>   * struct ad7150_chip_info - instance specific chip data
>   * @client: i2c client for this device
> @@ -136,7 +140,7 @@ static int ad7150_read_event_config(struct iio_dev *indio_dev,
>         if (ret < 0)
>                 return ret;
>
> -       threshtype = (ret >> 5) & 0x03;
> +       threshtype = FIELD_GET(AD7150_THRESHTYPE_MSK, ret);
>         adaptive = !!(ret & 0x80);

Why not also do something similar for the `adaptive` value ?

>
>         switch (type) {
> --
> 2.20.1
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
