Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 594A664F5B
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Jul 2019 01:49:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A76E286BA8;
	Wed, 10 Jul 2019 23:49:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Qt5Iv5FZVshY; Wed, 10 Jul 2019 23:49:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 786E086A0B;
	Wed, 10 Jul 2019 23:49:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C52211BF47A
 for <devel@linuxdriverproject.org>; Wed, 10 Jul 2019 23:49:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C1B5D20402
 for <devel@linuxdriverproject.org>; Wed, 10 Jul 2019 23:49:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eyP+cbE9iRe2 for <devel@linuxdriverproject.org>;
 Wed, 10 Jul 2019 23:49:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 1EFBE2039B
 for <devel@driverdev.osuosl.org>; Wed, 10 Jul 2019 23:49:50 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id p184so1828330pfp.7
 for <devel@driverdev.osuosl.org>; Wed, 10 Jul 2019 16:49:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=bdXtqqxh12gfpIhfLW0BOHj1xamqr81xRsaaifvH1jA=;
 b=SnvyKqxvl+fvKR0+PjUifcGbb6pSDIrbMTS58kDSV8YT7OXiNbKXsVeJVg2HK188+L
 tChVd0+x6RADEjmenfa3I6KpEJkhlJ+YQ07qBMOAMK94FtgGzJS6EL1/vSG7oGkRf5mD
 E0Jl2k7JaQsBZO/L2agq/mEEglBbL6AMdHKkj4eH6gV5zEf5SNnX7myIX6yWWEgv6jOL
 poPt6Yhesg7askDUTQvE3uX+Yixbofm+fDHz6KIRYKS+yFArbBKxyxW5Vz7SFr6MkB/I
 8IAR+T/l15J7CiPl5709TQMnpfkLBNYYhPQafv0JjITR+hlj60KN1RJeovT3P+8ErufZ
 31Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=bdXtqqxh12gfpIhfLW0BOHj1xamqr81xRsaaifvH1jA=;
 b=FPzPboMeIDGTDhD4sSYDh/+DGuzJOOh4EJF8DSmwhN4/GrulW1C3E8FxiFoIjOyeCG
 xsw86FHDs8DbDtwl1J190AO+bbyFuLXUHbFZWZPC54JAa9FHOSIbgHV/MsVgyxlTyd+1
 3S0Pxy6vgOTTNkaXIsl8GnpcszuuCaaRPWn5+6QWKiJRBA8yz1D3kAf4WoaqIQbqo0+V
 at9qpdggiH8DBN4pzzV+XveCYh6QUrnEkjlJwwyzpRVhdaEvJ6VJipt5lUvIqpeR8xZm
 bKSFZ6X+373kd1WcXVePorzFZ1Y/IdMrt7yzoztU6ZYA6hamO+rCc4mR2Y6YHlk4SHXo
 Flcg==
X-Gm-Message-State: APjAAAWpEyg6PMROcb7E/d61ikOMWIGfn/AZ4d09bzFkWMJhBJyPtjdo
 JtqLExF0UC8PjPtYips1jkc=
X-Google-Smtp-Source: APXvYqwRtOjO9X0OoS+6qzfe5qy8hqnHZVMH+ftWzgtOftn4Yt50WnEvvRSdLx7+oyw3gG7AjcEwsw==
X-Received: by 2002:a65:4841:: with SMTP id i1mr998306pgs.316.1562802589521;
 Wed, 10 Jul 2019 16:49:49 -0700 (PDT)
Received: from nishad (p3261240-ipngn21201hodogaya.kanagawa.ocn.ne.jp.
 [153.202.122.240])
 by smtp.gmail.com with ESMTPSA id x128sm7650140pfd.17.2019.07.10.16.49.46
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 10 Jul 2019 16:49:49 -0700 (PDT)
Date: Thu, 11 Jul 2019 05:19:42 +0530
From: Nishad Kamdar <nishadkamdar@gmail.com>
To: Phil Reid <preid@electromag.com.au>, gregkh@linuxfoundation.org,
 thomas.petazzoni@free-electrons.com, devel@driverdev.osuosl.org,
 linux-fbdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
 nsaenzjulienne@suse.de
Subject: Re: BUG: Staging: fbtft: Switch to the gpio descriptor interface
Message-ID: <20190710234940.GB29252@nishad>
References: <3ca02376-631b-d159-7070-7c50403126de@electromag.com.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3ca02376-631b-d159-7070-7c50403126de@electromag.com.au>
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jul 10, 2019 at 04:31:09PM +0800, Phil Reid wrote:
> G'day Nishad,
> 
> I'm just wondering if the commit
> c440eee1a7a1d0f "Staging: fbtft: Switch to the gpio descriptor interface"
> was tested on anything.
> 
> I've had to apply the following patch to get my display functioning again.
> 
> in particular the devm_gpiod_get_index using dev->driver->name for the gpio lookup seems
> wrong.
> 
> Also I've had to invert the polarity of the reset-gpios in the DT file for the display to function.
> 
> this code:
> 	gpiod_set_value_cansleep(par->gpio.reset, 0);
> 	usleep_range(20, 40);
> 	gpiod_set_value_cansleep(par->gpio.reset, 1);
> 
> could be read as deasserting the reset line and then asserting it.
> So I've had to specify and active high reset line in the DT.
> 
> Regards
> Phil
> 
Hello Phil,

This patch was only compiled successfully.

It hasn't been tested on any hardware.

Sorry for the mistake.

Thanks and regards,
Nishad

> 
> 
> 
> diff --git a/drivers/staging/fbtft/fbtft-core.c b/drivers/staging/fbtft/fbtft-core.c
> index 9b07bad..6fe7cb5 100644
> --- a/drivers/staging/fbtft/fbtft-core.c
> +++ b/drivers/staging/fbtft/fbtft-core.c
> @@ -79,18 +79,16 @@ static int fbtft_request_one_gpio(struct fbtft_par *par,
>  	struct device_node *node = dev->of_node;
>  	int ret = 0;
> 
> -	if (of_find_property(node, name, NULL)) {
> -		*gpiop = devm_gpiod_get_index(dev, dev->driver->name, index,
> -					      GPIOD_OUT_HIGH);
> -		if (IS_ERR(*gpiop)) {
> -			ret = PTR_ERR(*gpiop);
> -			dev_err(dev,
> -				"Failed to request %s GPIO:%d\n", name, ret);
> -			return ret;
> -		}
> -		fbtft_par_dbg(DEBUG_REQUEST_GPIOS, par, "%s: '%s' GPIO\n",
> -			      __func__, name);
> +	*gpiop = devm_gpiod_get_index_optional(dev, name, index,
> +				      GPIOD_OUT_HIGH);
> +	if (IS_ERR(*gpiop)) {
> +		ret = PTR_ERR(*gpiop);
> +		dev_err(dev,
> +			"Failed to request %s GPIO: (%d)\n", name, ret);
> +		return ret;
>  	}
> +	fbtft_par_dbg(DEBUG_REQUEST_GPIOS, par, "%s: '%s' GPIO\n",
> +		      __func__, name);
> 
>  	return ret;
>  }
> @@ -103,34 +101,34 @@ static int fbtft_request_gpios_dt(struct fbtft_par *par)
>  	if (!par->info->device->of_node)
>  		return -EINVAL;
> 
> -	ret = fbtft_request_one_gpio(par, "reset-gpios", 0, &par->gpio.reset);
> +	ret = fbtft_request_one_gpio(par, "reset", 0, &par->gpio.reset);
>  	if (ret)
>  		return ret;
> -	ret = fbtft_request_one_gpio(par, "dc-gpios", 0, &par->gpio.dc);
> +	ret = fbtft_request_one_gpio(par, "dc", 0, &par->gpio.dc);
>  	if (ret)
>  		return ret;
> -	ret = fbtft_request_one_gpio(par, "rd-gpios", 0, &par->gpio.rd);
> +	ret = fbtft_request_one_gpio(par, "rd", 0, &par->gpio.rd);
>  	if (ret)
>  		return ret;
> -	ret = fbtft_request_one_gpio(par, "wr-gpios", 0, &par->gpio.wr);
> +	ret = fbtft_request_one_gpio(par, "wr", 0, &par->gpio.wr);
>  	if (ret)
>  		return ret;
> -	ret = fbtft_request_one_gpio(par, "cs-gpios", 0, &par->gpio.cs);
> +	ret = fbtft_request_one_gpio(par, "cs", 0, &par->gpio.cs);
>  	if (ret)
>  		return ret;
> -	ret = fbtft_request_one_gpio(par, "latch-gpios", 0, &par->gpio.latch);
> +	ret = fbtft_request_one_gpio(par, "latch", 0, &par->gpio.latch);
>  	if (ret)
>  		return ret;
>  	for (i = 0; i < 16; i++) {
> -		ret = fbtft_request_one_gpio(par, "db-gpios", i,
> +		ret = fbtft_request_one_gpio(par, "db", i,
>  					     &par->gpio.db[i]);
>  		if (ret)
>  			return ret;
> -		ret = fbtft_request_one_gpio(par, "led-gpios", i,
> +		ret = fbtft_request_one_gpio(par, "led", i,
>  					     &par->gpio.led[i]);
>  		if (ret)
>  			return ret;
> -		ret = fbtft_request_one_gpio(par, "aux-gpios", i,
> +		ret = fbtft_request_one_gpio(par, "aux", i,
>  					     &par->gpio.aux[i]);
>  		if (ret)
>  			return ret;
> 
> 
> 
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
