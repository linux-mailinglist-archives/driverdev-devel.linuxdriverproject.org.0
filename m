Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7187D277195
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Sep 2020 14:51:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B558B87502;
	Thu, 24 Sep 2020 12:51:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2FH20BdIv+fS; Thu, 24 Sep 2020 12:51:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3ED6B873A0;
	Thu, 24 Sep 2020 12:51:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 650781BF573
 for <devel@linuxdriverproject.org>; Thu, 24 Sep 2020 12:51:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 60FFB86C13
 for <devel@linuxdriverproject.org>; Thu, 24 Sep 2020 12:51:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2EetJ79Ge-9M for <devel@linuxdriverproject.org>;
 Thu, 24 Sep 2020 12:50:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com
 [209.85.166.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 59DB886BFA
 for <devel@driverdev.osuosl.org>; Thu, 24 Sep 2020 12:50:59 +0000 (UTC)
Received: by mail-io1-f66.google.com with SMTP id g7so3074289iov.13
 for <devel@driverdev.osuosl.org>; Thu, 24 Sep 2020 05:50:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=yci97FVNoqLlRiH8ruEJ8twEw2eGRL1tijxr6XUkGBI=;
 b=JHElf2PWOjGwZ2uGqH7qobKJsX+ZvpW9hBbaturH0ymHl3jqQXKYGjzEjtMjRa3HE8
 z4LTPsAm2BVQe4Fpb+b+3kkRvex1/8a8QSb4hXcdZdo61FeCdyA4ZJYldevS5XEtWH4K
 yQdu2NmvSA1oNvP2CpbjmDw4PMCl1cNaotJ0vdWvwtOtGvPKWsJKM/PhWl6R8jPgRwHV
 cvAPl56Hx5QGJ1K+1lB2iARhS0XCZM02Lm0g2y+QDu2flTcBWp/KH/IplJMl393jqB4D
 MI2JCMBT25qIeN5e93GN9vttRCrrkb0yR8TWyCshVOJ99lk4owc9yo+sUasPbPVEuFM5
 wQNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=yci97FVNoqLlRiH8ruEJ8twEw2eGRL1tijxr6XUkGBI=;
 b=On+dmGD8YJ8Voaefm97dLmWRS0Pu18GlVOeIT6g5faTjh7IKwGlWa2UwIzacMfYj6A
 KfAeGE+62lZY3+J1qtzMrQ+sE+ksth59E/FSmMcCaTdyPJ6P5xclL648CRfHfFVJ9fhy
 u3Lbtp4IOwK0rMnclXlOeXUci3ByRTpJ2CNFO95Wj8ZHys4Og8GPxQyV8erxNKnGblii
 Z3PCY9MaV3El2PMO4J2ek4Mt7k25brqV6YVS7GDRqXh/nr308EEtb0mhUypKLJnG1q9k
 LNDVja+pcOgd0pfBPV6I11w7TA+jux7lAXr77WGkkWEhLA5a7UjCjiMwU0M//6x/s7B5
 OG6w==
X-Gm-Message-State: AOAM533mt3Nx4FCJMh9ztcHq3tyyD8HTpCykQC9ImZF5otw4w0xaXMBx
 ExgkaN1Vz5AMCLJ9cW/yDf2uTQ==
X-Google-Smtp-Source: ABdhPJzaged4vDsro/WE+/3g9Zsw+yRfl5m3gs3sYiODiGd7MU1eY5SZdtkuu865SPBj3w6YjL19yQ==
X-Received: by 2002:a6b:7c07:: with SMTP id m7mr3226609iok.32.1600951858531;
 Thu, 24 Sep 2020 05:50:58 -0700 (PDT)
Received: from [172.22.22.26] (c-73-185-129-58.hsd1.mn.comcast.net.
 [73.185.129.58])
 by smtp.googlemail.com with ESMTPSA id l131sm1355977ioa.31.2020.09.24.05.50.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 24 Sep 2020 05:50:58 -0700 (PDT)
Subject: Re: [greybus-dev] [PATCH 1/3] [PATCH] staging: greybus: fix warnings
 about endianness detected by sparse
To: Coiby Xu <coiby.xu@gmail.com>, devel@driverdev.osuosl.org
References: <20200924102039.43895-1-coiby.xu@gmail.com>
From: Alex Elder <elder@linaro.org>
Message-ID: <3fda9226-6f6f-6c5f-aa02-c9047a3d2dce@linaro.org>
Date: Thu, 24 Sep 2020 07:50:57 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200924102039.43895-1-coiby.xu@gmail.com>
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
Cc: "moderated list:GREYBUS SUBSYSTEM" <greybus-dev@lists.linaro.org>,
 Alex Elder <elder@kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>, Johan Hovold <johan@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 9/24/20 5:20 AM, Coiby Xu wrote:
> This patch fix the following warnings from sparse,

You need to address Greg's comment.

But in general this looks good.  I have one comment below, which
you can address in v2.  If you (or others) disagree with it, I'm
fine with your code as-is.  Either way, you can add this:

Reviewed-by: Alex Elder <elder@linaro.org>

> $ make C=2 drivers/staging/greybus/
> drivers/staging/greybus/audio_module.c:222:25: warning: incorrect type in assignment (different base types)
> drivers/staging/greybus/audio_module.c:222:25:    expected restricted __le16 [usertype] data_cport
> drivers/staging/greybus/audio_module.c:222:25:    got unsigned short [usertype] intf_cport_id
> drivers/staging/greybus/audio_topology.c:460:40: warning: restricted __le32 degrades to integer
> drivers/staging/greybus/audio_topology.c:691:41: warning: incorrect type in assignment (different base types)

. . .

> diff --git a/drivers/staging/greybus/audio_topology.c b/drivers/staging/greybus/audio_topology.c
> index 83b38ae8908c..56bf1a4f95ad 100644
> --- a/drivers/staging/greybus/audio_topology.c
> +++ b/drivers/staging/greybus/audio_topology.c
> @@ -466,7 +466,7 @@ static int gbcodec_mixer_dapm_ctl_put(struct snd_kcontrol *kcontrol,
>  		goto exit;
>  
>  	/* update ucontrol */
> -	if (gbvalue.value.integer_value[0] != val) {
> +	if (gbvalue.value.integer_value[0] != cpu_to_le32(val)) {

It's equivalent, but I have a small preference to convert
the value from gbvalue into CPU byte order rather than
what you have here.

>  		for (wi = 0; wi < wlist->num_widgets; wi++) {
>  			widget = wlist->widgets[wi];
>  			snd_soc_dapm_mixer_update_power(widget->dapm, kcontrol,
> @@ -689,7 +689,7 @@ static int gbaudio_tplg_create_kcontrol(struct gbaudio_module_info *gb,
>  				return -ENOMEM;
>  			ctldata->ctl_id = ctl->id;
>  			ctldata->data_cport = le16_to_cpu(ctl->data_cport);
> -			ctldata->access = ctl->access;
> +			ctldata->access = le32_to_cpu(ctl->access);
>  			ctldata->vcount = ctl->count_values;
>  			ctldata->info = &ctl->info;
>  			*kctl = (struct snd_kcontrol_new)
> @@ -744,10 +744,10 @@ static int gbcodec_enum_dapm_ctl_get(struct snd_kcontrol *kcontrol,
>  		return ret;
>  	}
>  
> -	ucontrol->value.enumerated.item[0] = gbvalue.value.enumerated_item[0];
> +	ucontrol->value.enumerated.item[0] = le32_to_cpu(gbvalue.value.enumerated_item[0]);
>  	if (e->shift_l != e->shift_r)
>  		ucontrol->value.enumerated.item[1] =
> -			gbvalue.value.enumerated_item[1];
> +			le32_to_cpu(gbvalue.value.enumerated_item[1]);
>  
>  	return 0;
>  }
> @@ -801,10 +801,10 @@ static int gbcodec_enum_dapm_ctl_put(struct snd_kcontrol *kcontrol,
>  	mask = e->mask << e->shift_l;
>  
>  	if (gbvalue.value.enumerated_item[0] !=
> -	    ucontrol->value.enumerated.item[0]) {
> +	    cpu_to_le32(ucontrol->value.enumerated.item[0])) {
>  		change = 1;
>  		gbvalue.value.enumerated_item[0] =
> -			ucontrol->value.enumerated.item[0];
> +			cpu_to_le32(ucontrol->value.enumerated.item[0]);
>  	}
>  
>  	if (e->shift_l != e->shift_r) {
> @@ -813,10 +813,10 @@ static int gbcodec_enum_dapm_ctl_put(struct snd_kcontrol *kcontrol,
>  		val |= ucontrol->value.enumerated.item[1] << e->shift_r;
>  		mask |= e->mask << e->shift_r;
>  		if (gbvalue.value.enumerated_item[1] !=
> -		    ucontrol->value.enumerated.item[1]) {
> +		    cpu_to_le32(ucontrol->value.enumerated.item[1])) {
>  			change = 1;
>  			gbvalue.value.enumerated_item[1] =
> -				ucontrol->value.enumerated.item[1];
> +				cpu_to_le32(ucontrol->value.enumerated.item[1]);
>  		}
>  	}
>  
> @@ -887,7 +887,7 @@ static int gbaudio_tplg_create_mixer_ctl(struct gbaudio_module_info *gb,
>  		return -ENOMEM;
>  	ctldata->ctl_id = ctl->id;
>  	ctldata->data_cport = le16_to_cpu(ctl->data_cport);
> -	ctldata->access = ctl->access;
> +	ctldata->access = le32_to_cpu(ctl->access);
>  	ctldata->vcount = ctl->count_values;
>  	ctldata->info = &ctl->info;
>  	*kctl = (struct snd_kcontrol_new)
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
