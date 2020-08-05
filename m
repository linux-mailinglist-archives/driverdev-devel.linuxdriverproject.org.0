Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E51E23CAD5
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Aug 2020 15:05:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 91AAA88223;
	Wed,  5 Aug 2020 13:05:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0G55LnSlxj8y; Wed,  5 Aug 2020 13:05:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 040C88815D;
	Wed,  5 Aug 2020 13:05:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6F0491BF861
 for <devel@linuxdriverproject.org>; Wed,  5 Aug 2020 13:05:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 685738815D
 for <devel@linuxdriverproject.org>; Wed,  5 Aug 2020 13:05:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hNKmAJu8psZm for <devel@linuxdriverproject.org>;
 Wed,  5 Aug 2020 13:05:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f193.google.com (mail-il1-f193.google.com
 [209.85.166.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E289A8814B
 for <devel@driverdev.osuosl.org>; Wed,  5 Aug 2020 13:05:14 +0000 (UTC)
Received: by mail-il1-f193.google.com with SMTP id i138so31334629ild.9
 for <devel@driverdev.osuosl.org>; Wed, 05 Aug 2020 06:05:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=wzax1JoI9zRG5UqAp2s+JfDhNvSfuH/tKXpfiaAlnEc=;
 b=DVJOqyZE9aXM1N+pfiDtYjX3fYyUcoPNlyB0YkcYDwJBmZgzFrdfWonlYEyaOL5giJ
 ZePKRZCkC3SW9XJENgZgB1Y41LR1KE70JQUb/cvOtsw6VrjMWoNzBdw/3edomY9xa1SS
 Z0kPKqHhEpuK16s23XYP5fHbjF9BeVjUSoF4KNfkRXtSreZ3XE4Raq64oMlE+VncQxkG
 rijeaFFwnTaK+xqK+/kPzOjzvDkohlendgCOh0CBg4Vk8vC/YdqgngVQq6jgrY6vleE4
 5X+BOeFY+9hoqCuQnxphvVelaCyYLthSwTXf2nI0omcaVq1TvpBBKqvr7L/wTK7f72YB
 LX1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=wzax1JoI9zRG5UqAp2s+JfDhNvSfuH/tKXpfiaAlnEc=;
 b=iTJUIB0PHgMzNgT7MzDtH1xc7uWDOJOVVk5nhiUCCyOQZ7OvMvThXY++zc56nZt3v1
 3/PRrZPAbpeSz0vtvaNMBZLpkat4mG/eQ2Q4bHGs6dXNBAV4oqVMQvF0jjCTZ3ey+2Ju
 KHjougykRnTr0RoJ32Nlt5aXrq4Nl9vRm1dfL7iC1jVWK5yAvWD68UYI7UWRyCPATHI6
 Iw0GNirB6J8jyyjGysNiAFKQwCv4+r5rkeIvTorw7oUScO41021cUJC/B5wK+ODniKb5
 mIkG9LGBRAvpXuf9WyPtN/2Ag38DHjzrXIwmHFFrFKDrptWsXTAa2LyFcPe+XSm1hZAs
 Qirg==
X-Gm-Message-State: AOAM5328h6lRzdBnIMNnVwJLYEQgTisBPeGeT6mDRCaSLtbm2OtyODIc
 fJ+zORxxYhu8ZOGjbxGnCp3I5w==
X-Google-Smtp-Source: ABdhPJxp6OK2QdRf+UwsBi/lMaDPcEVuBouzFlXVW62OTS1hOEXu47t2qPN6mIV2jZjdLcSglOlSeA==
X-Received: by 2002:a92:660e:: with SMTP id a14mr3990516ilc.262.1596632713672; 
 Wed, 05 Aug 2020 06:05:13 -0700 (PDT)
Received: from [172.22.22.26] (c-73-185-129-58.hsd1.mn.comcast.net.
 [73.185.129.58])
 by smtp.googlemail.com with ESMTPSA id k18sm1003543ioh.50.2020.08.05.06.05.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 05 Aug 2020 06:05:12 -0700 (PDT)
Subject: Re: [greybus-dev] [PATCH v4 1/7] staging: greybus: audio: Update
 snd_jack FW usage as per new APIs
To: Vaibhav Agarwal <vaibhav.sr@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alex Elder <elder@kernel.org>, Johan Hovold <johan@kernel.org>,
 Mark Greer <mgreer@animalcreek.com>
References: <cover.1594290158.git.vaibhav.sr@gmail.com>
 <896b8e24d990f2bca5aafaebd26e37095042951e.1594290158.git.vaibhav.sr@gmail.com>
From: Alex Elder <elder@linaro.org>
Message-ID: <7cbc0daa-993f-ffc9-78f4-b1e62fd54304@linaro.org>
Date: Wed, 5 Aug 2020 08:05:11 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <896b8e24d990f2bca5aafaebd26e37095042951e.1594290158.git.vaibhav.sr@gmail.com>
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
Cc: devel@driverdev.osuosl.org, greybus-dev@lists.linaro.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org, Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 7/9/20 5:27 AM, Vaibhav Agarwal wrote:
> snd_soc_jack APIs are modified in recent kernel versions. This patch
> updates the codec driver to resolve the compilation errors related to
> jack framework.

Greg has already accepted this series so I won't review this now.  But
I still wanted to provide this comment.

It would be helpful in the future to provide a little more information
about the nature of the changes to these APIs.  As a reviewer I had to
go track them down to get a little more context about what you are doing
here.  So you could say something like:

  Audio jacks are now registered at the card level rather than being
  associated with a CODEC.  The new card-based API allows a jack's pins
  to be supplied when the jack is first registered.  See: 970939964c26
  ("ASoC: Allow to register jacks at the card level")

In other words, don't just say "the APIs changed," say "here is how
the APIs have changed."  This kind of introduction can be very helpful
and time saving for your reviewers.

					-Alex

> Signed-off-by: Vaibhav Agarwal <vaibhav.sr@gmail.com>
> Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
>  drivers/staging/greybus/audio_codec.c | 54 +++++++++++++++++++++------
>  1 file changed, 42 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/staging/greybus/audio_codec.c b/drivers/staging/greybus/audio_codec.c
> index 08746c85dea6..5d3a5e6a8fe6 100644
> --- a/drivers/staging/greybus/audio_codec.c
> +++ b/drivers/staging/greybus/audio_codec.c
> @@ -709,17 +709,26 @@ static struct snd_soc_dai_driver gbaudio_dai[] = {
>  };
>  
>  static int gbaudio_init_jack(struct gbaudio_module_info *module,
> -			     struct snd_soc_codec *codec)
> +			     struct snd_soc_card *card)
>  {
>  	int ret;
> +	struct snd_soc_jack_pin *headset, *button;
>  
>  	if (!module->jack_mask)
>  		return 0;
>  
>  	snprintf(module->jack_name, NAME_SIZE, "GB %d Headset Jack",
>  		 module->dev_id);
> -	ret = snd_soc_jack_new(codec, module->jack_name, module->jack_mask,
> -			       &module->headset_jack);
> +
> +	headset = devm_kzalloc(module->dev, sizeof(*headset), GFP_KERNEL);
> +	if (!headset)
> +		return -ENOMEM;
> +
> +	headset->pin = module->jack_name;
> +	headset->mask = module->jack_mask;
> +
> +	ret = snd_soc_card_jack_new(card, module->jack_name, module->jack_mask,
> +				    &module->headset_jack, headset, 1);
>  	if (ret) {
>  		dev_err(module->dev, "Failed to create new jack\n");
>  		return ret;
> @@ -730,11 +739,21 @@ static int gbaudio_init_jack(struct gbaudio_module_info *module,
>  
>  	snprintf(module->button_name, NAME_SIZE, "GB %d Button Jack",
>  		 module->dev_id);
> -	ret = snd_soc_jack_new(codec, module->button_name, module->button_mask,
> -			       &module->button_jack);
> +	button = devm_kzalloc(module->dev, sizeof(*button), GFP_KERNEL);
> +	if (!button) {
> +		ret = -ENOMEM;
> +		goto free_headset;
> +	}
> +
> +	button->pin = module->button_name;
> +	button->mask = module->button_mask;
> +
> +	ret = snd_soc_card_jack_new(card, module->button_name,
> +				    module->button_mask, &module->button_jack,
> +				    button, 1);
>  	if (ret) {
>  		dev_err(module->dev, "Failed to create button jack\n");
> -		return ret;
> +		goto free_headset;
>  	}
>  
>  	/*
> @@ -750,7 +769,7 @@ static int gbaudio_init_jack(struct gbaudio_module_info *module,
>  				       KEY_MEDIA);
>  		if (ret) {
>  			dev_err(module->dev, "Failed to set BTN_0\n");
> -			return ret;
> +			goto free_button;
>  		}
>  	}
>  
> @@ -759,7 +778,7 @@ static int gbaudio_init_jack(struct gbaudio_module_info *module,
>  				       KEY_VOICECOMMAND);
>  		if (ret) {
>  			dev_err(module->dev, "Failed to set BTN_1\n");
> -			return ret;
> +			goto free_button;
>  		}
>  	}
>  
> @@ -768,7 +787,7 @@ static int gbaudio_init_jack(struct gbaudio_module_info *module,
>  				       KEY_VOLUMEUP);
>  		if (ret) {
>  			dev_err(module->dev, "Failed to set BTN_2\n");
> -			return ret;
> +			goto free_button;
>  		}
>  	}
>  
> @@ -777,7 +796,7 @@ static int gbaudio_init_jack(struct gbaudio_module_info *module,
>  				       KEY_VOLUMEDOWN);
>  		if (ret) {
>  			dev_err(module->dev, "Failed to set BTN_0\n");
> -			return ret;
> +			goto free_button;
>  		}
>  	}
>  
> @@ -788,6 +807,16 @@ static int gbaudio_init_jack(struct gbaudio_module_info *module,
>  	*/
>  
>  	return 0;
> +
> +free_button:
> +	snd_device_free(card->snd_card, module->button_jack.jack);
> +	list_del(&module->button_jack.list);
> +
> +free_headset:
> +	snd_device_free(card->snd_card, module->headset_jack.jack);
> +	list_del(&module->headset_jack.list);
> +
> +	return ret;
>  }
>  
>  int gbaudio_register_module(struct gbaudio_module_info *module)
> @@ -815,7 +844,7 @@ int gbaudio_register_module(struct gbaudio_module_info *module)
>  		return -EINVAL;
>  	}
>  
> -	ret = gbaudio_init_jack(module, codec);
> +	ret = gbaudio_init_jack(module, component->card);
>  	if (ret) {
>  		up_write(&card->controls_rwsem);
>  		return ret;
> @@ -942,7 +971,8 @@ void gbaudio_unregister_module(struct gbaudio_module_info *module)
>  
>  #ifdef CONFIG_SND_JACK
>  	/* free jack devices for this module from codec->jack_list */
> -	list_for_each_entry_safe(jack, next_j, &codec->jack_list, list) {
> +	list_for_each_entry_safe(jack, next_j, &component->card->jack_list,
> +				 list) {
>  		if (jack == &module->headset_jack)
>  			mask = GBCODEC_JACK_MASK;
>  		else if (jack == &module->button_jack)
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
