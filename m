Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51A382771B9
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Sep 2020 15:01:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CE8B8874EF;
	Thu, 24 Sep 2020 13:01:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z8MfSup8uWsp; Thu, 24 Sep 2020 13:01:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D5679874D7;
	Thu, 24 Sep 2020 13:01:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 86E811BF573
 for <devel@linuxdriverproject.org>; Thu, 24 Sep 2020 13:01:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 80CFE86BCB
 for <devel@linuxdriverproject.org>; Thu, 24 Sep 2020 13:01:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0YJoU0msoGqU for <devel@linuxdriverproject.org>;
 Thu, 24 Sep 2020 13:01:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f194.google.com (mail-il1-f194.google.com
 [209.85.166.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 255AA86BE1
 for <devel@driverdev.osuosl.org>; Thu, 24 Sep 2020 13:01:12 +0000 (UTC)
Received: by mail-il1-f194.google.com with SMTP id f82so3000609ilh.8
 for <devel@driverdev.osuosl.org>; Thu, 24 Sep 2020 06:01:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=zPB7jULHIg1msvTaEkWc/XGqvJfOwCy594X3DY/QjvE=;
 b=E9iKMC1wzBPaarlgtDzjwt1puGwye2dLf3QCw5dE87ph22iQOTFPvbj0p71swE/7Ym
 6GAB/CqYTvqJT5J6Uy810Q+tUnL8PR1GHu3p63aM1gkgjpjxQIlNCiu5n8quNn7oRNSO
 j4AReEHo5TFvAIZagxSwDwEvQjMw41VKGxpy3akkBwFrY4/xC3NBuWKNrAbqYoRed7dC
 7AX2cp0VdRivFRYyECmTKZCDYNbyHKHXsXpt8YL9r36IQMuVAwsSn/MfRCSDjvAP+5Ii
 qZPORrIG9elIZ3xbc1Towl/EgD28MtYgrx1GA2KG3916r/9WPu+rLFIdOaWdUCjuRqoc
 7u8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=zPB7jULHIg1msvTaEkWc/XGqvJfOwCy594X3DY/QjvE=;
 b=U3u0oU8UHrTa2huih5x7ox0x8YFduqOEf5T0h9LWublKvUOp7MBpZD0F5huZIRvkMs
 YuI5hBvHbJ5RIZdtX9SrWeZsH5g7bhGYfOyLCB8qmjWVBcz/ZEW8UbLMp/5d5/EWd6hY
 VfT7BfVe2IuuYWQWvvFjgNQnFlztjp9m39mDo3dFAM5tOcqg0MAKBaojGLKuueoABH7p
 qthNJBsP29CrpMkYgyNsv/SOS8wskBrDQJjZay9vZxQT3VJArNIbkcR++gggQnZNPOgV
 282OAH8x9bG3zaISnMn2cm14Couz+SMmJTmeJn0dSEhf4aVAz+OF2XLulP3++ZflXwJg
 kOow==
X-Gm-Message-State: AOAM532AQAcp9G8f36BzMkTgsaYwOANv4z+c2WUzRlh4MxEUPY8XVrBo
 VtnsZpg0gGBZaynDAZ6+zuB10g==
X-Google-Smtp-Source: ABdhPJwKytinnF4jKyr8BsEenwtoJNaAp3EfRWwKAmJYb8V3sOg5GraVPWm16zthU56b8nazxGYZsQ==
X-Received: by 2002:a92:9e0f:: with SMTP id q15mr4093943ili.286.1600952471522; 
 Thu, 24 Sep 2020 06:01:11 -0700 (PDT)
Received: from [172.22.22.26] (c-73-185-129-58.hsd1.mn.comcast.net.
 [73.185.129.58])
 by smtp.googlemail.com with ESMTPSA id q5sm1613477ile.63.2020.09.24.06.01.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 24 Sep 2020 06:01:10 -0700 (PDT)
Subject: Re: [greybus-dev] [PATCH 3/3] [PATCH] staging: greybus: __u8 is
 sufficient for snd_ctl_elem_type_t and snd_ctl_elem_iface_t
To: Coiby Xu <coiby.xu@gmail.com>, devel@driverdev.osuosl.org
References: <20200924102039.43895-1-coiby.xu@gmail.com>
 <20200924102039.43895-3-coiby.xu@gmail.com>
From: Alex Elder <elder@linaro.org>
Message-ID: <772d78de-630f-4b0f-16cc-4e67b8f98907@linaro.org>
Date: Thu, 24 Sep 2020 08:01:09 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200924102039.43895-3-coiby.xu@gmail.com>
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
Cc: "moderated list:SOUND" <alsa-devel@alsa-project.org>,
 Alex Elder <elder@kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Takashi Iwai <tiwai@suse.com>, Jaroslav Kysela <perex@perex.cz>,
 "moderated list:GREYBUS SUBSYSTEM" <greybus-dev@lists.linaro.org>,
 Johan Hovold <johan@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 9/24/20 5:20 AM, Coiby Xu wrote:
> Use __8 to replace int and remove the unnecessary __bitwise type attribute.
> 
> Found by sparse,

Greg's right, don't change the public header.

You could try this in the Greybus code to eliminate the warning,
but I haven't tried it (and for all I know it's not a good idea):

	uinfo->type = (__force snd_ctl_elem_type_t)info->type;

					-Alex

> $ make C=2 drivers/staging/greybus/
> drivers/staging/greybus/audio_topology.c:185:24: warning: cast to restricted snd_ctl_elem_type_t
> drivers/staging/greybus/audio_topology.c:679:14: warning: restricted snd_ctl_elem_iface_t degrades to integer
> drivers/staging/greybus/audio_topology.c:906:14: warning: restricted snd_ctl_elem_iface_t degrades to integer
> 
> Signed-off-by: Coiby Xu <coiby.xu@gmail.com>
> ---
>  drivers/staging/greybus/audio_topology.c | 2 +-
>  include/uapi/sound/asound.h              | 4 ++--
>  2 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/greybus/audio_topology.c b/drivers/staging/greybus/audio_topology.c
> index 56bf1a4f95ad..f6023ff390c2 100644
> --- a/drivers/staging/greybus/audio_topology.c
> +++ b/drivers/staging/greybus/audio_topology.c
> @@ -182,7 +182,7 @@ static int gbcodec_mixer_ctl_info(struct snd_kcontrol *kcontrol,
>  	/* update uinfo */
>  	uinfo->access = data->access;
>  	uinfo->count = data->vcount;
> -	uinfo->type = (snd_ctl_elem_type_t)info->type;
> +	uinfo->type = info->type;
>  
>  	switch (info->type) {
>  	case GB_AUDIO_CTL_ELEM_TYPE_BOOLEAN:
> diff --git a/include/uapi/sound/asound.h b/include/uapi/sound/asound.h
> index 535a7229e1d9..8e71a95644ab 100644
> --- a/include/uapi/sound/asound.h
> +++ b/include/uapi/sound/asound.h
> @@ -950,7 +950,7 @@ struct snd_ctl_card_info {
>  	unsigned char components[128];	/* card components / fine identification, delimited with one space (AC97 etc..) */
>  };
>  
> -typedef int __bitwise snd_ctl_elem_type_t;
> +typedef __u8 snd_ctl_elem_type_t;
>  #define	SNDRV_CTL_ELEM_TYPE_NONE	((__force snd_ctl_elem_type_t) 0) /* invalid */
>  #define	SNDRV_CTL_ELEM_TYPE_BOOLEAN	((__force snd_ctl_elem_type_t) 1) /* boolean type */
>  #define	SNDRV_CTL_ELEM_TYPE_INTEGER	((__force snd_ctl_elem_type_t) 2) /* integer type */
> @@ -960,7 +960,7 @@ typedef int __bitwise snd_ctl_elem_type_t;
>  #define	SNDRV_CTL_ELEM_TYPE_INTEGER64	((__force snd_ctl_elem_type_t) 6) /* 64-bit integer type */
>  #define	SNDRV_CTL_ELEM_TYPE_LAST	SNDRV_CTL_ELEM_TYPE_INTEGER64
>  
> -typedef int __bitwise snd_ctl_elem_iface_t;
> +typedef __u8 snd_ctl_elem_iface_t;
>  #define	SNDRV_CTL_ELEM_IFACE_CARD	((__force snd_ctl_elem_iface_t) 0) /* global control */
>  #define	SNDRV_CTL_ELEM_IFACE_HWDEP	((__force snd_ctl_elem_iface_t) 1) /* hardware dependent device */
>  #define	SNDRV_CTL_ELEM_IFACE_MIXER	((__force snd_ctl_elem_iface_t) 2) /* virtual mixer device */
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
