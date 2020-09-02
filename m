Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BB90425B38A
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Sep 2020 20:15:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7451786A77;
	Wed,  2 Sep 2020 18:15:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id upy83nJck89z; Wed,  2 Sep 2020 18:15:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 52C1A86998;
	Wed,  2 Sep 2020 18:15:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5CAE81BF2A2
 for <devel@linuxdriverproject.org>; Wed,  2 Sep 2020 18:15:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 44E3F22FB9
 for <devel@linuxdriverproject.org>; Wed,  2 Sep 2020 18:15:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 41QQ5KT3weBN for <devel@linuxdriverproject.org>;
 Wed,  2 Sep 2020 18:15:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 02DCF22DE3
 for <devel@driverdev.osuosl.org>; Wed,  2 Sep 2020 18:15:49 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id 17so81590pfw.9
 for <devel@driverdev.osuosl.org>; Wed, 02 Sep 2020 11:15:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Vtl3n48D2RamTfu02tHfFlcVBwihiAAmXZsJlHdich8=;
 b=YHRR4fkOh6Yc/m9THnxBi/mTq4tR5Mj5/dkq5wm0RE7xXY9Uq1bDAIWBVjye3/ead4
 1JnCUs9J7Fy2kTJHMiMyBm0fr/eRsVaDP9Bs2DRgqmwB7xE9q1az316JY3pt7cLj2xpl
 +7wGvElgd5loHqkMZLvUJ8AU+8QuDBMWImTHp1fzU0dHj1M5vEfcmRc0HYY34vjXDAHP
 n6md8OPXT+UPj/NRfZtmuK+cGwdq6I3kkNBh0qLXgAWXDtVtlwCufkB45Iqy7qrp9pGa
 MXpezNLMUHkiNvSZf33JfV4/sBhRldlA3NizjYh37MF6qtofb4+kmM1dA66/p09LQxuO
 yH8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Vtl3n48D2RamTfu02tHfFlcVBwihiAAmXZsJlHdich8=;
 b=rO+qgQPcyo1ue3LqDyJgT4ixHb7HVIpPCKxSyfpcc/Fine7qLXvQqMX5as6QqWTnbA
 3Vs+ZFZo6bABIr/WOU86Q03bt2GqjbQVCdq/AGP3Yb2hW/pwPy0wP9IYrnhy2gRvz6UU
 7qXjN4s63osjQiJCrqjjvOc59HyS6ktaK8kcgsBtRA51inE7Kg6AOD1KzG5azSs3Ni7F
 I5gOJyjYvqYtZ+827j1aRwevHT4IwPa6Pmolo6bf1+Pi2mP5aM2+0rcpkSRNSvRI4Tae
 WH1jIr2/iBLwTzjWmjWRS/gXDym8JSBaI8uVCJk4dk2CUAGINCZMF4hZHf67Yh/ojnU+
 QWeQ==
X-Gm-Message-State: AOAM532u3UuA6qJH3GPc+wdvRxoMt0grTSD2MKC0gu3e1nYZVLSw21tk
 I8naYEHZtYOpFrNKqbTIrLCLd5Z1OS1Gf+eF6II=
X-Google-Smtp-Source: ABdhPJzlZehTjcert4vrrM30ECovJgH0g82qxJamlR2zHduAeUjGBJSha5UnR68gTOC6oXzqQgW5PLyscX+TP2ijGjE=
X-Received: by 2002:a63:c543:: with SMTP id g3mr2899557pgd.203.1599070549499; 
 Wed, 02 Sep 2020 11:15:49 -0700 (PDT)
MIME-Version: 1.0
References: <20200902165852.201155-1-colin.king@canonical.com>
In-Reply-To: <20200902165852.201155-1-colin.king@canonical.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Wed, 2 Sep 2020 21:15:31 +0300
Message-ID: <CAHp75Vda5jRqmgsCV=Z5e5NdwHiebBy_Xdb6dq2D7L-mqqsC_g@mail.gmail.com>
Subject: Re: [PATCH][next] staging: media: atomisp: fix memory leak of object
 flash
To: Colin King <colin.king@canonical.com>
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, kernel-janitors@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Sep 2, 2020 at 8:02 PM Colin King <colin.king@canonical.com> wrote:
>
> From: Colin Ian King <colin.king@canonical.com>
>
> In the case where the call to lm3554_platform_data_func returns an
> error there is a memory leak on the error return path of object
> flash.  Fix this by adding an error return path that will free
> flash and rename labels fail2 to fail3 and fail1 to fail2.
>

Wouldn't be proper fix to move to devm_kmalloc() and return
dev_err_probe() where appropriate?

> Fixes: 9289cdf39992 ("staging: media: atomisp: Convert to GPIO descriptors")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> ---
>  .../media/atomisp/i2c/atomisp-lm3554.c        | 19 +++++++++++--------
>  1 file changed, 11 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c b/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c
> index 7ca7378b1859..5516c98f63bc 100644
> --- a/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c
> +++ b/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c
> @@ -843,8 +843,10 @@ static int lm3554_probe(struct i2c_client *client)
>                 return -ENOMEM;
>
>         flash->pdata = lm3554_platform_data_func(client);
> -       if (IS_ERR(flash->pdata))
> -               return PTR_ERR(flash->pdata);
> +       if (IS_ERR(flash->pdata)) {
> +               err = PTR_ERR(flash->pdata);
> +               goto fail1;
> +       }
>
>         v4l2_i2c_subdev_init(&flash->sd, client, &lm3554_ops);
>         flash->sd.internal_ops = &lm3554_internal_ops;
> @@ -856,7 +858,7 @@ static int lm3554_probe(struct i2c_client *client)
>                                    ARRAY_SIZE(lm3554_controls));
>         if (ret) {
>                 dev_err(&client->dev, "error initialize a ctrl_handler.\n");
> -               goto fail2;
> +               goto fail3;
>         }
>
>         for (i = 0; i < ARRAY_SIZE(lm3554_controls); i++)
> @@ -865,14 +867,14 @@ static int lm3554_probe(struct i2c_client *client)
>
>         if (flash->ctrl_handler.error) {
>                 dev_err(&client->dev, "ctrl_handler error.\n");
> -               goto fail2;
> +               goto fail3;
>         }
>
>         flash->sd.ctrl_handler = &flash->ctrl_handler;
>         err = media_entity_pads_init(&flash->sd.entity, 0, NULL);
>         if (err) {
>                 dev_err(&client->dev, "error initialize a media entity.\n");
> -               goto fail1;
> +               goto fail2;
>         }
>
>         flash->sd.entity.function = MEDIA_ENT_F_FLASH;
> @@ -884,14 +886,15 @@ static int lm3554_probe(struct i2c_client *client)
>         err = lm3554_gpio_init(client);
>         if (err) {
>                 dev_err(&client->dev, "gpio request/direction_output fail");
> -               goto fail2;
> +               goto fail3;
>         }
>         return atomisp_register_i2c_module(&flash->sd, NULL, LED_FLASH);
> -fail2:
> +fail3:
>         media_entity_cleanup(&flash->sd.entity);
>         v4l2_ctrl_handler_free(&flash->ctrl_handler);
> -fail1:
> +fail2:
>         v4l2_device_unregister_subdev(&flash->sd);
> +fail1:
>         kfree(flash);
>
>         return err;
> --
> 2.27.0
>


-- 
With Best Regards,
Andy Shevchenko
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
