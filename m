Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4721D2E8F62
	for <lists+driverdev-devel@lfdr.de>; Mon,  4 Jan 2021 03:18:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C12088704B;
	Mon,  4 Jan 2021 02:18:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lMA9QBA2D01j; Mon,  4 Jan 2021 02:18:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 97C178704C;
	Mon,  4 Jan 2021 02:18:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 754931BF373
 for <devel@linuxdriverproject.org>; Mon,  4 Jan 2021 02:18:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6CFB484CBC
 for <devel@linuxdriverproject.org>; Mon,  4 Jan 2021 02:18:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vn6KvDic1HxL for <devel@linuxdriverproject.org>;
 Mon,  4 Jan 2021 02:18:50 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com
 [209.85.166.47])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7FC3884AF1
 for <devel@driverdev.osuosl.org>; Mon,  4 Jan 2021 02:18:50 +0000 (UTC)
Received: by mail-io1-f47.google.com with SMTP id q137so23662348iod.9
 for <devel@driverdev.osuosl.org>; Sun, 03 Jan 2021 18:18:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ieee.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=T3zwU8+9vJsSFH0cocgNEnbGtFiXyYPpUvK1pfeu9Jc=;
 b=WqeDyl/nli5DAewksl0V1NW/pGU3lRo+D2PFuR8B4T46KzPamegn4w0VyATtDlnd+V
 Yno8V/2kcHk0h04rwg1P2ctdu6+0h7/1PVGuPhok0wdl8ZzaNKWBNjH02ZM4T1H9pUer
 43zEdlo5kU7hg9kdZYx4wZn4lPEXFXLxygeto=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=T3zwU8+9vJsSFH0cocgNEnbGtFiXyYPpUvK1pfeu9Jc=;
 b=E9uSB11wQSFW2jKw8+IROffJeJHYyZU+lQ0S1SQQm/hUeqJj9wVlrqP0sQOlYTMZ7Z
 YdqJukwFfbNwBT1atSmjXQo9Xy7sRJx5kt1/vNrQVkl+NqY7mgPKUSWp8XIjw6ee/hrI
 pQjN9zQivFKvWbevKEfs+F6IlnoRTKF8KxlnnH3mZlgADVtqzhCtFZa5mneUMSnVO6Qk
 RzSvCZEtIt6U1M3Fg5q/zwWPzUBXzK4CelCznRT8hS6TXIP7Vu0AMmXBj6aW4LkPUUSM
 PwCCNvUJV5vQL6PktuLz7SUUIV/LF6kWwtWbCEcFSM3tFlP+5G0NasmUbyQOxOJHDFBu
 o8Zw==
X-Gm-Message-State: AOAM5303wetjSE0tfhhW165Pl8jLD7O1FsDNz6tjmeaFZD5rj+WSDovs
 V1anU5oF2hZzGqUa8E66vGxhlw==
X-Google-Smtp-Source: ABdhPJwg0Hrrg9PhM5yO6+Fu8jRBIBmLhEazmMJKlBF2BhnkB9zwbcgdNmjZP04ZahA7xnDp0HgZLg==
X-Received: by 2002:a6b:7d42:: with SMTP id d2mr57793459ioq.176.1609726729750; 
 Sun, 03 Jan 2021 18:18:49 -0800 (PST)
Received: from [172.22.22.4] (c-73-185-129-58.hsd1.mn.comcast.net.
 [73.185.129.58])
 by smtp.googlemail.com with ESMTPSA id y12sm42527985ilk.32.2021.01.03.18.18.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 03 Jan 2021 18:18:49 -0800 (PST)
Subject: Re: [PATCH] staging: greybus: fix stack size warning with UBSAN
To: Arnd Bergmann <arnd@kernel.org>, Vaibhav Agarwal <vaibhav.sr@gmail.com>,
 Mark Greer <mgreer@animalcreek.com>, Johan Hovold <johan@kernel.org>,
 Alex Elder <elder@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Nick Desaulniers <ndesaulniers@google.com>
References: <20210103223541.2790855-1-arnd@kernel.org>
From: Alex Elder <elder@ieee.org>
Message-ID: <d9c341c9-9005-b425-9dd8-e797869bbcb0@ieee.org>
Date: Sun, 3 Jan 2021 20:18:47 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210103223541.2790855-1-arnd@kernel.org>
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
Cc: devel@driverdev.osuosl.org, Arnd Bergmann <arnd@arndb.de>,
 clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
 Coiby Xu <coiby.xu@gmail.com>, greybus-dev@lists.linaro.org,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 1/3/21 4:35 PM, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> clang warns about excessive stack usage in this driver when
> UBSAN is enabled:
> 
> drivers/staging/greybus/audio_topology.c:977:12: error: stack frame size of 1836 bytes in function 'gbaudio_tplg_create_widget' [-Werror,-Wframe-larger-than=]
> 
> Rework this code to no longer use compound literals for
> initializing the structure in each case, but instead keep
> the common bits in a preallocated constant array and copy
> them as needed.

This is good, but I have a few comments.

You took out the default case, and it seems you are using
a w->type value bigger than the initialization array to
determine validity.  But there are more values defined in
the snd_soc_dapm_type enumerated type than are explicitly
listed as cases in the switch statement.  So the switch
statement no longer treats some types as invalid (such
as snd_soc_dapm_demux).  Am I missing something?

You are setting explicit names, such as "spk", "hp",
"mic", etc. in the initialization array.  But you
update the name after (struct) assigning from the
array.  I have no real objection I guess, but why
bother?  Why not just use null pointers in the
initialization array?

You change a semicolon to a comma in one spot, and you
should not have.  I'll point that out below.

I like that you got rid of the type casts, which were
apparently unnecessary.

You dropped the break in the final case in the switch
statement, but in an earlier discussion I think we
concluded that wasn't a problem.

I guess the main thing is the first thing mentioned.


Thanks.

					-Alex

> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>   drivers/staging/greybus/audio_topology.c | 106 ++++++++++-------------
>   1 file changed, 47 insertions(+), 59 deletions(-)
> 
> diff --git a/drivers/staging/greybus/audio_topology.c b/drivers/staging/greybus/audio_topology.c
> index 96b8b29fe899..c03873915c20 100644
> --- a/drivers/staging/greybus/audio_topology.c
> +++ b/drivers/staging/greybus/audio_topology.c
> @@ -974,6 +974,44 @@ static int gbaudio_widget_event(struct snd_soc_dapm_widget *w,
>   	return ret;
>   }
>   
> +static const struct snd_soc_dapm_widget gbaudio_widgets[] = {
> +	[snd_soc_dapm_spk]	= SND_SOC_DAPM_SPK("spk", gbcodec_event_spk),
> +	[snd_soc_dapm_hp]	= SND_SOC_DAPM_HP("hp", gbcodec_event_hp),
> +	[snd_soc_dapm_mic]	= SND_SOC_DAPM_MIC("mic", gbcodec_event_int_mic),

. . .

> @@ -1050,78 +1088,28 @@ static int gbaudio_tplg_create_widget(struct gbaudio_module_info *module,
>   	strlcpy(temp_name, w->name, NAME_SIZE);
>   	snprintf(w->name, NAME_SIZE, "GB %d %s", module->dev_id, temp_name);
>   
> +	if (w->type > ARRAY_SIZE(gbaudio_widgets)) {
> +		ret = -EINVAL;
> +		goto error;
> +	}
> +	*dw = gbaudio_widgets[w->type];
> +	dw->name = w->name;
> +
>   	switch (w->type) {
>   	case snd_soc_dapm_spk:
> -		*dw = (struct snd_soc_dapm_widget)
> -			SND_SOC_DAPM_SPK(w->name, gbcodec_event_spk);
>   		module->op_devices |= GBAUDIO_DEVICE_OUT_SPEAKER;
>   		break;
>   	case snd_soc_dapm_hp:
> -		*dw = (struct snd_soc_dapm_widget)
> -			SND_SOC_DAPM_HP(w->name, gbcodec_event_hp);
>   		module->op_devices |= (GBAUDIO_DEVICE_OUT_WIRED_HEADSET
> -					| GBAUDIO_DEVICE_OUT_WIRED_HEADPHONE);
> +					| GBAUDIO_DEVICE_OUT_WIRED_HEADPHONE),

Please fix this (above) to preserve the original semicolon.

>   		module->ip_devices |= GBAUDIO_DEVICE_IN_WIRED_HEADSET;
>   		break;
>   	case snd_soc_dapm_mic:
> -		*dw = (struct snd_soc_dapm_widget)
> -			SND_SOC_DAPM_MIC(w->name, gbcodec_event_int_mic);
>   		module->ip_devices |= GBAUDIO_DEVICE_IN_BUILTIN_MIC;
>   		break;

. . .
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
