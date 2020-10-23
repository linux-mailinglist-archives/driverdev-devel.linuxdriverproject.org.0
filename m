Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C95A12970BB
	for <lists+driverdev-devel@lfdr.de>; Fri, 23 Oct 2020 15:37:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AD45986DBB;
	Fri, 23 Oct 2020 13:37:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3-ZPz51qe4x7; Fri, 23 Oct 2020 13:37:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5C1C686E66;
	Fri, 23 Oct 2020 13:37:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C5C2F1BF383
 for <devel@linuxdriverproject.org>; Fri, 23 Oct 2020 13:37:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BD0CA87886
 for <devel@linuxdriverproject.org>; Fri, 23 Oct 2020 13:37:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RTX3NjUcfS9I for <devel@linuxdriverproject.org>;
 Fri, 23 Oct 2020 13:37:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-vs1-f65.google.com (mail-vs1-f65.google.com
 [209.85.217.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1DC7D87885
 for <devel@driverdev.osuosl.org>; Fri, 23 Oct 2020 13:37:24 +0000 (UTC)
Received: by mail-vs1-f65.google.com with SMTP id e3so860111vsr.8
 for <devel@driverdev.osuosl.org>; Fri, 23 Oct 2020 06:37:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Zc7t+lOzY7cTGJnijbB9ZWGm7Y121IIAMh0AQlwU3pA=;
 b=YdHU1o5OjK8fiIdbmhMO+IyNC8TEW8YOMBNOvHEY2cYnrBk8/gyhlYYIjqHjd0NJ7N
 Q6JBWCM+gB37AP1jOXbf9Qs6KcHuJqiJ3/FVRG29uZZ8jNuBpdaQ5Kmh+w25khqb98O7
 fuaszBb44mle10AmhDlAgsLQDc7XXCO0ws3mJyf5n05zELyfTPtRGhaM1i8oM7amc2Fc
 DjnSs/nDUeaxSyqWD/mF0nMOPxn1l7Z028HeK7L9fJPPANXe3r3b8yJt+YSKnXOTX5eS
 GLq4LFVkP1G723OStpmTnkAxGBLBZSlWGC7QGzkxDC4GiKD75t2DgvwWH/qbfNQK0Ovd
 dYUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Zc7t+lOzY7cTGJnijbB9ZWGm7Y121IIAMh0AQlwU3pA=;
 b=BgNJOqTY9OMZsvmXQHIyKbCOU4l8AsHysjN1rEIY84PplPhq9LsvYYJnNytK/Rqmyp
 diAUVT+vg0jtjlDvZzEZYXxRJJ6vHUhQ9Y99dhNEssFxv+Y9hKjRsRGCyosoLFoeD3ci
 gXsU7Rsh8Pu/grmFx1LW/StnplAG3SRnD1F0bHECDuG7WrYgW+DOhzkLYNcEttKWtT4D
 Bl5kZGxguEhhu/BxZ1dmHRHdlWGTyg2YtKPzOcidxzVvzuKwYDafz/Dy5Y9jKu9fJyHO
 JpI1YT+rMcmaRbBtZOZ++Xq3A3en2rv0WoPrtFUwSKHCNtuPJCw9MxBoBzfQvmVhBZ6J
 Es+w==
X-Gm-Message-State: AOAM531vb8JyS6rauunfsd1zQss/eLHLLdTUgWrW52TPkC+TPfGE552i
 lYoriMGryftwDPThRIHho88t735071+Tb92gkqI=
X-Google-Smtp-Source: ABdhPJzARGEDC4xlej7yvuuABhHcmbQVxvjDThXOHqDeOTG4DEZsLZNb6d3iTK/9tJ5SYw2WGPPvdSR0KQcyvZVXMYk=
X-Received: by 2002:a67:cc2:: with SMTP id 185mr1422202vsm.42.1603460243020;
 Fri, 23 Oct 2020 06:37:23 -0700 (PDT)
MIME-Version: 1.0
References: <20201012132404.113031-1-jingxiangfeng@huawei.com>
In-Reply-To: <20201012132404.113031-1-jingxiangfeng@huawei.com>
From: Sven Van Asbroeck <thesven73@gmail.com>
Date: Fri, 23 Oct 2020 09:37:12 -0400
Message-ID: <CAGngYiXY95R5=fUPQ2aBXOQsPXrkp8E4TTmU_75pQZN9OuiUUA@mail.gmail.com>
Subject: Re: [PATCH] staging: fieldbus: anybuss: jump to correct label in an
 error path
To: Jing Xiangfeng <jingxiangfeng@huawei.com>
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
Cc: devel@driverdev.osuosl.org, Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Jing, thank you for your patch.

Reviewed-by: Sven Van Asbroeck <TheSven73@gmail.com>

On Mon, Oct 12, 2020 at 9:17 AM Jing Xiangfeng <jingxiangfeng@huawei.com> wrote:
>
> In current code, controller_probe() misses to call ida_simple_remove()
> in an error path. Jump to correct label to fix it.
>
> Fixes: 17614978ed34 ("staging: fieldbus: anybus-s: support the Arcx anybus controller")
> Signed-off-by: Jing Xiangfeng <jingxiangfeng@huawei.com>
> ---
>  drivers/staging/fieldbus/anybuss/arcx-anybus.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/fieldbus/anybuss/arcx-anybus.c b/drivers/staging/fieldbus/anybuss/arcx-anybus.c
> index 5b8d0bae9ff3..b5fded15e8a6 100644
> --- a/drivers/staging/fieldbus/anybuss/arcx-anybus.c
> +++ b/drivers/staging/fieldbus/anybuss/arcx-anybus.c
> @@ -293,7 +293,7 @@ static int controller_probe(struct platform_device *pdev)
>         regulator = devm_regulator_register(dev, &can_power_desc, &config);
>         if (IS_ERR(regulator)) {
>                 err = PTR_ERR(regulator);
> -               goto out_reset;
> +               goto out_ida;
>         }
>         /* make controller info visible to userspace */
>         cd->class_dev = kzalloc(sizeof(*cd->class_dev), GFP_KERNEL);
> --
> 2.17.1
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
