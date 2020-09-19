Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6521A271060
	for <lists+driverdev-devel@lfdr.de>; Sat, 19 Sep 2020 21:50:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 60D9D871FF;
	Sat, 19 Sep 2020 19:50:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JFn7zCkgSBxH; Sat, 19 Sep 2020 19:50:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DD828871F3;
	Sat, 19 Sep 2020 19:50:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 93BA71BF303
 for <devel@linuxdriverproject.org>; Sat, 19 Sep 2020 19:50:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8FC3087265
 for <devel@linuxdriverproject.org>; Sat, 19 Sep 2020 19:50:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wFFkWLhPokDU for <devel@linuxdriverproject.org>;
 Sat, 19 Sep 2020 19:50:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 829A187239
 for <devel@driverdev.osuosl.org>; Sat, 19 Sep 2020 19:50:47 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id k15so8867605wrn.10
 for <devel@driverdev.osuosl.org>; Sat, 19 Sep 2020 12:50:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=JcVDmb1HHV/znVzm4kdq0UX6hTsOZELRii0JoTOZ9ew=;
 b=iQEgzahuQCccMTCQd7xXrsKyPTXK2pBEdS21cAmowqFOsmMJkkfw9sdU5tZTskWXXM
 /GqHvIAHM8TX/hz6B0dihWu2ltZMy4ijYtkTE9dTZfomkE4ToqU905VhYTLztoURPYJ/
 VLkpwAg3ms774LxZcoL0Ph3LqA/dXapmwdSHD2WPvF9Qm+ObxE6u2ls+Ct3Ez+zHTveK
 aF2paraN+HDaOGp4QMQZT+vtjjb4BUFGYV1x2ajZoxwSmonDBrdvCh0gYxf2NBJ/uOKB
 vs7ZvUht/N8T8ifg7ZS6or2krg8DJoacW4KWrlH9ZP3btjI3Q0Ca1cvtnbu9ppy5aUWn
 UP5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=JcVDmb1HHV/znVzm4kdq0UX6hTsOZELRii0JoTOZ9ew=;
 b=ACG7/CYGXXuD8lp4LWBNudOlSntXC0CMZK+BovwWPTBl3Q/PUVOaAeXC/GWrOE7Jpu
 bm9Xr1QfXlQEyvUk/A61nZ7IAs9iByuvpiIX4BpnukqWlpyEwxSdcBW9Ilp0T5wKhvQd
 3+5vZcGa0mlZL3sy58QKeh8aT1wB0uLDfv9LYf22WfQ08wHcDF6hfkx/dpRyJ7JGg3+C
 NsUIs4wANWFn/vFw4cIk3KCUjUawNeECNCR9wvUMmZLoXVqCeQsyg7wrXA3g/TwIrl1X
 lFTYTuDBPWMoD6r5XPc65rK1ju4vfLcVZVDivg49zQkMDyr5YrW9Rci+YOls2UMcmlF4
 d81Q==
X-Gm-Message-State: AOAM531TD9HnDCj7/OcYvdl5N48d7WKEXdO3JHNJOAGG09QnUCAk5Drm
 4PnWfS20qmE0FqahyfUbBl0=
X-Google-Smtp-Source: ABdhPJzMb1RFm1f+lZbN60pF813Rr1opTK3wLHJ6o8cnICAiVwrcfUG8feuzYKTDKSXJHnuL5gvj/w==
X-Received: by 2002:a5d:608f:: with SMTP id w15mr21313274wrt.244.1600545045891; 
 Sat, 19 Sep 2020 12:50:45 -0700 (PDT)
Received: from [192.168.0.18]
 (cpc83661-brig20-2-0-cust443.3-3.cable.virginm.net. [82.28.105.188])
 by smtp.gmail.com with ESMTPSA id b11sm12196537wrt.38.2020.09.19.12.50.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 19 Sep 2020 12:50:45 -0700 (PDT)
Subject: Re: [PATCH v2] staging: media: atomisp: Fix error path in
 lm3554_probe()
To: dan.carpenter@oracle.com
References: <20200903173843.GF8299@kadam>
 <20200903182502.709300-1-alex.dewar90@gmail.com>
From: Alex Dewar <alex.dewar90@gmail.com>
Message-ID: <1109bb4e-ef17-0633-275f-2a279437fdc6@gmail.com>
Date: Sat, 19 Sep 2020 20:50:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200903182502.709300-1-alex.dewar90@gmail.com>
Content-Language: en-US
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
Cc: devel@driverdev.osuosl.org, Alan Cox <alan@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2020-09-03 19:24, Alex Dewar wrote:
> The error path for lm3554_probe() contains a number of bugs, including:
>   * resource leaks
>   * jumping to error labels out of sequence
>   * not setting the return value appropriately
Ping?
>
> Fix it up and give the labels more memorable names.
>
> This issue has existed since the code was originally contributed in
> commit a49d25364dfb ("staging/atomisp: Add support for the Intel IPU v2"),
> although the code was subsequently removed altogether and then
> reinstated with commit ad85094b293e ("Revert "media: staging: atomisp: Remove driver"").
>
> Addresses-Coverity: 1496802 ("Resource leaks")
> Fixes: a49d25364dfb ("staging/atomisp: Add support for the Intel IPU v2")
> Signed-off-by: Alex Dewar <alex.dewar90@gmail.com>
> ---
>   .../media/atomisp/i2c/atomisp-lm3554.c        | 53 +++++++++++--------
>   1 file changed, 30 insertions(+), 23 deletions(-)
>
> diff --git a/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c b/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c
> index 7ca7378b1859..cca10a4c2db0 100644
> --- a/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c
> +++ b/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c
> @@ -833,7 +833,6 @@ static void *lm3554_platform_data_func(struct i2c_client *client)
>   
>   static int lm3554_probe(struct i2c_client *client)
>   {
> -	int err = 0;
>   	struct lm3554 *flash;
>   	unsigned int i;
>   	int ret;
> @@ -843,36 +842,38 @@ static int lm3554_probe(struct i2c_client *client)
>   		return -ENOMEM;
>   
>   	flash->pdata = lm3554_platform_data_func(client);
> -	if (IS_ERR(flash->pdata))
> -		return PTR_ERR(flash->pdata);
> +	if (IS_ERR(flash->pdata)) {
> +		ret = PTR_ERR(flash->pdata);
> +		goto err_free_flash;
> +	}
>   
>   	v4l2_i2c_subdev_init(&flash->sd, client, &lm3554_ops);
>   	flash->sd.internal_ops = &lm3554_internal_ops;
>   	flash->sd.flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
>   	flash->mode = ATOMISP_FLASH_MODE_OFF;
>   	flash->timeout = LM3554_MAX_TIMEOUT / LM3554_TIMEOUT_STEPSIZE - 1;
> -	ret =
> -	    v4l2_ctrl_handler_init(&flash->ctrl_handler,
> -				   ARRAY_SIZE(lm3554_controls));
> +	ret = v4l2_ctrl_handler_init(&flash->ctrl_handler,
> +				     ARRAY_SIZE(lm3554_controls));
>   	if (ret) {
> -		dev_err(&client->dev, "error initialize a ctrl_handler.\n");
> -		goto fail2;
> +		dev_err(&client->dev, "error initializing ctrl_handler");
> +		goto err_unregister_sd;
>   	}
>   
>   	for (i = 0; i < ARRAY_SIZE(lm3554_controls); i++)
>   		v4l2_ctrl_new_custom(&flash->ctrl_handler, &lm3554_controls[i],
>   				     NULL);
>   
> -	if (flash->ctrl_handler.error) {
> -		dev_err(&client->dev, "ctrl_handler error.\n");
> -		goto fail2;
> +	ret = flash->ctrl_handler.error;
> +	if (ret) {
> +		dev_err(&client->dev, "ctrl_handler error");
> +		goto err_free_ctrl_handler;
>   	}
>   
>   	flash->sd.ctrl_handler = &flash->ctrl_handler;
> -	err = media_entity_pads_init(&flash->sd.entity, 0, NULL);
> -	if (err) {
> -		dev_err(&client->dev, "error initialize a media entity.\n");
> -		goto fail1;
> +	ret = media_entity_pads_init(&flash->sd.entity, 0, NULL);
> +	if (ret) {
> +		dev_err(&client->dev, "error initializing media entity");
> +		goto err_free_ctrl_handler;
>   	}
>   
>   	flash->sd.entity.function = MEDIA_ENT_F_FLASH;
> @@ -881,20 +882,26 @@ static int lm3554_probe(struct i2c_client *client)
>   
>   	timer_setup(&flash->flash_off_delay, lm3554_flash_off_delay, 0);
>   
> -	err = lm3554_gpio_init(client);
> -	if (err) {
> +	ret = lm3554_gpio_init(client);
> +	if (ret) {
>   		dev_err(&client->dev, "gpio request/direction_output fail");
> -		goto fail2;
> +		goto err_del_timer;
>   	}
> -	return atomisp_register_i2c_module(&flash->sd, NULL, LED_FLASH);
> -fail2:
> +
> +	ret = atomisp_register_i2c_module(&flash->sd, NULL, LED_FLASH);
> +	if (!ret)
> +		return 0;
> +
> +err_del_timer:
> +	del_timer_sync(&flash->flash_off_delay);
>   	media_entity_cleanup(&flash->sd.entity);
> +err_free_ctrl_handler:
>   	v4l2_ctrl_handler_free(&flash->ctrl_handler);
> -fail1:
> +err_unregister_sd:
>   	v4l2_device_unregister_subdev(&flash->sd);
> +err_free_flash:
>   	kfree(flash);
> -
> -	return err;
> +	return ret;
>   }
>   
>   static int lm3554_remove(struct i2c_client *client)

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
