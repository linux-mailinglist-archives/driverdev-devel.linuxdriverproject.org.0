Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9AB5A1DE8
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Aug 2019 16:53:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E8FB788BCF;
	Thu, 29 Aug 2019 14:53:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GWo128mIHjB3; Thu, 29 Aug 2019 14:53:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3A9A9886D5;
	Thu, 29 Aug 2019 14:53:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3C5551BF855
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 14:53:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 39067871BA
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 14:53:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ILUSJVOcVt5z for <devel@linuxdriverproject.org>;
 Thu, 29 Aug 2019 14:53:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E590085EC4
 for <devel@driverdev.osuosl.org>; Thu, 29 Aug 2019 14:53:27 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id t17so4053721wmi.2
 for <devel@driverdev.osuosl.org>; Thu, 29 Aug 2019 07:53:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=rDl3XjmzWq1Bt/Mn9v6gfnxlgojJ+gdaOYg/Ia4k7aQ=;
 b=RIGowJQeoEjivCh/DN3Lv2KX6/nyX/A+Y8irhNkd+a2lHx7EikwzfiOIQpc48ZWGsV
 g5wMl+ixmo6o9IXMaEVS8OIRpDgQyTbGVVFHM+Cd0GCQ3du3BghkH1cjo2CVYzQvCdVS
 wKXJnGOIqGWwwopYDuFRNj5O6753hPd5yg88sX5gZ0QyO2C+1IaPBHxSNPhiGMiJoQe1
 GQkrxVcVszqQaL7eAp84YmPWgfXQpip3fXWrLPn93tW5H+mrGVAqy0mFv7+4JV8+lkSp
 1CaVU15mFTHAYctRFC35og30Sl/TyHwMTlELBMPRhkA6TmbDXsQnMcUeK791D8BYUQ/T
 ki+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=rDl3XjmzWq1Bt/Mn9v6gfnxlgojJ+gdaOYg/Ia4k7aQ=;
 b=R4U4nn6HMuZEwZtII4wKOWCiQCijvYvHe8M0Ks2QtvdcKpbroGp28+u2mYzReJekQZ
 ozNnH40vFaMzKYdTZkbGXxrnvgf/2JIVv9OWfI8o/01q9uUzpWIK/TMpkCx1qwCIDcpC
 oilqiS/u5htNRvajf3V9HxfKASIBCOrYFe+gB8kEgWOo/wVmdQzQkHR+5wgmpC+I4bv+
 sClL7FeGerlzRFbBpSZZnoiZMXEs88L3Fw7gLObA17FJY9sjokis6y3uhT0gdBB2gSml
 TrdZqcm+04F4lXdZlWcbCL49AG2R8r4fz4J3+cEWysBTpv+hjDPJ7sW/gSKnYcp+ZfSC
 NJww==
X-Gm-Message-State: APjAAAVAKSJgA6cBVeBqWYOsrAKhMRZhkBN/bvnnNAJQRRTVKIZpBfSN
 2oysssekq/eNY7fB17P7+WI=
X-Google-Smtp-Source: APXvYqyuColfybcl19EFArHYWnVMSMThE1XsoWoel4pqWY5H4K++iOkEOzm36CFw4522OL1h4Z3+jw==
X-Received: by 2002:a1c:4e19:: with SMTP id g25mr6193427wmh.30.1567090405896; 
 Thu, 29 Aug 2019 07:53:25 -0700 (PDT)
Received: from arch-late ([87.196.81.67])
 by smtp.gmail.com with ESMTPSA id e14sm1958252wma.37.2019.08.29.07.53.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 07:53:24 -0700 (PDT)
References: <20190829122839.GA20116@mwanda>
User-agent: mu4e 1.2.0; emacs 27.0.50
From: Rui Miguel Silva <rmfrfs@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] staging: greybus: light: fix a couple double frees
In-reply-to: <20190829122839.GA20116@mwanda>
Date: Thu, 29 Aug 2019 15:53:20 +0100
Message-ID: <m35zmgvx9b.fsf@gmail.com>
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, Alex Elder <elder@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel-janitors@vger.kernel.org, Johan Hovold <johan@kernel.org>,
 linux-kernel@vger.kernel.org, greybus-dev@lists.linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Dan,
On Thu 29 Aug 2019 at 13:28, Dan Carpenter wrote:
> The problem is in gb_lights_request_handler().  If we get a request to
> change the config then we release the light with gb_lights_light_release()
> and re-allocated it.  However, if the allocation fails part way through
> then we call gb_lights_light_release() again.  This can lead to a couple
> different double frees where we haven't cleared out the original values:
>
> 	gb_lights_light_v4l2_unregister(light);
> 	...
> 	kfree(light->channels);
> 	kfree(light->name);
>
> I also made a small change to how we set "light->channels_count = 0;".
> The original code handled this part fine and did not cause a use after
> free but it was sort of complicated to read.
>
> Fixes: 2870b52bae4c ("greybus: lights: add lights implementation")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
>

Thanks so much for this, I was looking for some time at this and
was half way to a much less elegant fix then yours.

Acked-by: Rui Miguel Silva <rmfrfs@gmail.com>

Cheers,
    Rui

> ---
>  drivers/staging/greybus/light.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/greybus/light.c b/drivers/staging/greybus/light.c
> index 010ae1e9c7fb..40680eaf3974 100644
> --- a/drivers/staging/greybus/light.c
> +++ b/drivers/staging/greybus/light.c
> @@ -1098,21 +1098,21 @@ static void gb_lights_channel_release(struct gb_channel *channel)
>  static void gb_lights_light_release(struct gb_light *light)
>  {
>  	int i;
> -	int count;
>
>  	light->ready = false;
>
> -	count = light->channels_count;
> -
>  	if (light->has_flash)
>  		gb_lights_light_v4l2_unregister(light);
> +	light->has_flash = false;
>
> -	for (i = 0; i < count; i++) {
> +	for (i = 0; i < light->channels_count; i++)
>  		gb_lights_channel_release(&light->channels[i]);
> -		light->channels_count--;
> -	}
> +	light->channels_count = 0;
> +
>  	kfree(light->channels);
> +	light->channels = NULL;
>  	kfree(light->name);
> +	light->name = NULL;
>  }
>
>  static void gb_lights_release(struct gb_lights *glights)

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
