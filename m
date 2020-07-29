Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B8BE9232159
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Jul 2020 17:14:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A630088298;
	Wed, 29 Jul 2020 15:14:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id svOD6zsUgMmn; Wed, 29 Jul 2020 15:14:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 710F987EB4;
	Wed, 29 Jul 2020 15:14:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CB7811BF576
 for <devel@linuxdriverproject.org>; Wed, 29 Jul 2020 15:14:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C867485755
 for <devel@linuxdriverproject.org>; Wed, 29 Jul 2020 15:14:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I1jRKUzmCee8 for <devel@linuxdriverproject.org>;
 Wed, 29 Jul 2020 15:14:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com
 [209.85.216.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 528F48522E
 for <devel@driverdev.osuosl.org>; Wed, 29 Jul 2020 15:14:01 +0000 (UTC)
Received: by mail-pj1-f68.google.com with SMTP id f9so2171463pju.4
 for <devel@driverdev.osuosl.org>; Wed, 29 Jul 2020 08:14:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uTiBwXbJ/NNgJMQGMIY8FxAJr7nGPTOl3ItEnVx+egg=;
 b=lU9aW1zQB2JvPFxKWebURugB6JMTmheNYXpi4oSgi+iWb7P6NXSesvfW2GV74FvmNZ
 61Lq6UAxEgFgGGZke2HbAiBwrmy/J9OYahuobaIXWV7hxzj1hukW1k12Uc7FOEQ+YjN3
 qXvhBH+SfBWXvi3GKZDxT+Zweb/WX1cn9S3jxEmJvCZnvTWqgr1MtTcAJS0gdzAy2MYZ
 GxNwxKeoInCJETaUfTemth95M3EyxhFyx5GTbcSutbCm0vV64Vywy/+nHO00UOGjBhiB
 2f3Lnedu2UMzXb0ytjyFGpEYEAq7TVnoAJPReP4Z6Ny2fhykJRJVEdKXnt9K8ZE8QjMb
 IOTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uTiBwXbJ/NNgJMQGMIY8FxAJr7nGPTOl3ItEnVx+egg=;
 b=A3GQ8WqXp2NMvd117NbTwSjuwzBrN7AqoycjhbnJ+XyrdnBAg8phJYaYBqIkQlhWja
 BbYh3/CW+//eyg5Ey/kT+kYX46l06MghCljJQSoKdusApRl2XHQT4sdXIlxBwx419Cca
 VJ3ZANR1gp0/5cl5rN9HkzrwUVwyR+juiAxqJXLa/NMIGn8xbjF2KSaTFM6EigFPhsZ+
 XvdJF1Rx5IfQZucfFeN9IFlAcAT0jeKh346/i5T325P7hYr2MbJkAcZbhON81IsqW4Zk
 LeH+wa3JBT4po2poUY9985xD5sZIZW22s+C8Eo6l32Z3Xi/WuWOLMimgBlJw8AjqweWu
 tWnQ==
X-Gm-Message-State: AOAM530d2FVvyam994LlbO2oeIM/UZeZS4sRcUsCoR0JdlxQphDVFyqf
 BPLOOQUQbuTgD25IOcd8g/kJuel1XzScYRsD8uo=
X-Google-Smtp-Source: ABdhPJxAwR2uw6M4ZO71A974LNQoSM/gUFMLZ3l/bZyau+lndlozCjIpYqC7GMkpaDXUzvHdsZDGseJSqaJXfcLd4rc=
X-Received: by 2002:a17:90a:390f:: with SMTP id
 y15mr2723618pjb.181.1596035640864; 
 Wed, 29 Jul 2020 08:14:00 -0700 (PDT)
MIME-Version: 1.0
References: <20200729135636.9220-1-cengiz@kernel.wtf>
In-Reply-To: <20200729135636.9220-1-cengiz@kernel.wtf>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Wed, 29 Jul 2020 18:13:44 +0300
Message-ID: <CAHp75VfM3OapAkYJ-sN-MG2yuGDqaqDjc6p0gXT9cHYgnH+5LQ@mail.gmail.com>
Subject: Re: [PATCH] staging: atomisp: move null check to earlier point
To: Cengiz Can <cengiz@kernel.wtf>
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jul 29, 2020 at 5:00 PM Cengiz Can <cengiz@kernel.wtf> wrote:
>
> `find_gmin_subdev` function that returns a pointer to `struct
> gmin_subdev` can return NULL.
>
> In `gmin_v2p8_ctrl` there's a call to this function but the possibility
> of a NULL was not checked before its being dereferenced. ie:
>
> ```
> /* Acquired here --------v */
> struct gmin_subdev *gs = find_gmin_subdev(subdev);
> int ret;
> int value;
>
> /*  v------Dereferenced here */
> if (gs->v2p8_gpio >= 0) {
>         pr_info("atomisp_gmin_platform: 2.8v power on GPIO %d\n",
>                 gs->v2p8_gpio);
>         ret = gpio_request(gs->v2p8_gpio, "camera_v2p8");
>         if (!ret)
>                 ret = gpio_direction_output(gs->v2p8_gpio, 0);
>         if (ret)
>                 pr_err("V2P8 GPIO initialization failed\n");
> }
> ```
>
> I have moved the NULL check before deref point.

"Move the NULL check..."
See Submitting Patches documentation how to avoid "This patch", "I", "we", etc.

> diff --git a/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c b/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c
> index 0df46a1af5f0..8e9c5016f299 100644
> --- a/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c
> +++ b/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c
> @@ -871,6 +871,11 @@ static int gmin_v2p8_ctrl(struct v4l2_subdev *subdev, int on)
>         int ret;
>         int value;
>
> +       if (!gs) {
> +               pr_err("Unable to find gmin subdevice\n");

> +               return -EINVAL;

And here is a change of semantics...

> +       }

...

> -       if (!gs || gs->v2p8_on == on)
> +       if (gs->v2p8_on == on)
>                 return 0;

...compared to above.

-- 
With Best Regards,
Andy Shevchenko
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
