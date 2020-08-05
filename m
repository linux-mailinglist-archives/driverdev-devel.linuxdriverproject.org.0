Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E736323CB54
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Aug 2020 16:05:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DA67F22718;
	Wed,  5 Aug 2020 14:05:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GrGU-UPmXHVB; Wed,  5 Aug 2020 14:05:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CA2382268C;
	Wed,  5 Aug 2020 14:04:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D5BE71BF281
 for <devel@linuxdriverproject.org>; Wed,  5 Aug 2020 14:04:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D2716864E6
 for <devel@linuxdriverproject.org>; Wed,  5 Aug 2020 14:04:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id byvSopZJjgy6 for <devel@linuxdriverproject.org>;
 Wed,  5 Aug 2020 14:04:52 +0000 (UTC)
X-Greylist: delayed 00:22:13 by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id ADE9E86403
 for <devel@driverdev.osuosl.org>; Wed,  5 Aug 2020 14:04:52 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id 128so933400pgd.5
 for <devel@driverdev.osuosl.org>; Wed, 05 Aug 2020 07:04:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ieee.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=UQ34G3pqxLqTbbjhaVdGSStK5ucy52wKTiNEc0i7lhs=;
 b=PuC70Dil5kmmPaOLMl/aYQlfiLU0EEkgjfHlzUUiM5DsfTsP6PxHijfQLU1f3QxfMo
 ZuhKLGakHhnflv92hPj8PowvU+tBRAd0NxfrFE5pCi3se9RD3Myq8/qCWMHC5jAbUq8H
 GUjOUBvoRytVvB1sN4WoeoiIatc4FnaJdtkCQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=UQ34G3pqxLqTbbjhaVdGSStK5ucy52wKTiNEc0i7lhs=;
 b=uEOxPy60tW6N0RkUk5Hjwb9Bu5XOP2LykRpur75w4yps6BEzkF+DTag9Wkua20XjNv
 NbTqrYOfrOoW5qtfKs7MWv9qWa0v2KltjaxpNAr26KPu33IIp/2pddDOQ9bu0HL2vVyS
 O7PjxxQmFkfdni7qeIUpJWftICZ36E/5LipugzEu7Oo6BTCeGB8N6duWO7okaGcdJkqN
 rVVQYihB33FE+ZQPD/32hzhWTAMloeVweNGqg0OxGODklfOY9mFxrW5tH60CbyAxHGzB
 4DBroBEWoGokmI++WeDdz2vH37SgM6AK3KU47bQdiR96ndUUA2gZ6AiEtKM6zos5R+jn
 IVgg==
X-Gm-Message-State: AOAM53365N6AyQDdFcpxtB4bs42fWvtMPxD8jOa87ittkaf1RwQyS2dd
 ev9QsLnjKdHdk942+ogo9rqrldnYSoA=
X-Google-Smtp-Source: ABdhPJx+IM6LnPvTZbXFzHv/G8qW8EUFY/JlJTEKddie4rWI6431YxeTK9FVVZ8BKUQTn+5tLLxi8Q==
X-Received: by 2002:a92:1b5b:: with SMTP id b88mr4070447ilb.104.1596634517699; 
 Wed, 05 Aug 2020 06:35:17 -0700 (PDT)
Received: from [172.22.22.26] (c-73-185-129-58.hsd1.mn.comcast.net.
 [73.185.129.58])
 by smtp.googlemail.com with ESMTPSA id j81sm1068864iof.13.2020.08.05.06.35.16
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 05 Aug 2020 06:35:16 -0700 (PDT)
Subject: Re: issue with uninitialized value used in a comparison in
 gbcodec_mixer_dapm_ctl_put
To: Colin Ian King <colin.king@canonical.com>, Johan Hovold
 <johan@kernel.org>, Alex Elder <elder@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Vaibhav Agarwal <vaibhav.sr@gmail.com>, Mark Greer <mgreer@animalcreek.com>,
 greybus-dev@lists.linaro.org,
 "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>
References: <7da6363c-9423-2b9f-029a-395cc8a932d7@canonical.com>
From: Alex Elder <elder@ieee.org>
Message-ID: <07ad3809-de73-9a66-0e4f-3a49f395a98a@ieee.org>
Date: Wed, 5 Aug 2020 08:35:15 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <7da6363c-9423-2b9f-029a-395cc8a932d7@canonical.com>
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 7/30/20 11:02 AM, Colin Ian King wrote:
> Hi,
> 
> Static analysis with Coverity has detected an uninitialized value being
> used in a comparison.  The error was detected on a recent change to
> drivers/staging/greybus/audio_topology.c however the issue actually
> dates back to the original commit:
> 
> commit 6339d2322c47f4b8ebabf9daf0130328ed72648b
> Author: Vaibhav Agarwal <vaibhav.agarwal@linaro.org>
> Date:   Wed Jan 13 14:07:51 2016 -0700
> 
>     greybus: audio: Add topology parser for GB codec
> 
> The analysis is as follows:
> 
> 425 static int gbcodec_mixer_dapm_ctl_put(struct snd_kcontrol *kcontrol,
> 426                                      struct snd_ctl_elem_value
> *ucontrol)
> 427 {
> 428        int ret, wi, max, connect;
> 429        unsigned int mask, val;
> 430        struct gb_audio_ctl_elem_info *info;
> 431        struct gbaudio_ctl_pvt *data;
> 
>    1. var_decl: Declaring variable gbvalue without initializer.
> 432        struct gb_audio_ctl_elem_value gbvalue;
> 433        struct gbaudio_module_info *module;
> 434        struct snd_soc_dapm_widget_list *wlist =
> snd_kcontrol_chip(kcontrol);
> 435        struct snd_soc_dapm_widget *widget = wlist->widgets[0];
> 436        struct device *codec_dev = widget->dapm->dev;
> 437        struct gbaudio_codec_info *gb = dev_get_drvdata(codec_dev);
> 438        struct gb_bundle *bundle;
> 439
> 
>    2. Condition 0 /* __builtin_types_compatible_p() */, taking false branch.
>    3. Condition 1 /* __builtin_types_compatible_p() */, taking true branch.
>    4. Falling through to end of if statement.
>    5. Condition !!branch, taking false branch.
>    6. Condition ({...; !!branch;}), taking false branch.
> 
> 440        dev_dbg(codec_dev, "Entered %s:%s\n", __func__,
> kcontrol->id.name);
> 441        module = find_gb_module(gb, kcontrol->id.name);
> 
>    7. Condition !module, taking false branch.
> 442        if (!module)
> 443                return -EINVAL;
> 444
> 445        data = (struct gbaudio_ctl_pvt *)kcontrol->private_value;
> 446        info = (struct gb_audio_ctl_elem_info *)data->info;
> 
>    8. Condition 0 /* !!(!__builtin_types_compatible_p() &&
> !__builtin_types_compatible_p()) */, taking false branch.
> 447        bundle = to_gb_bundle(module->dev);
> 448
> 
>    9. Condition data->vcount == 2, taking true branch.
> 449        if (data->vcount == 2)
> 450                dev_warn(widget->dapm->dev,
> 451                         "GB: Control '%s' is stereo, which is not
> supported\n",
> 452                         kcontrol->id.name);
> 453
> 454        max = le32_to_cpu(info->value.integer.max);
> 455        mask = (1 << fls(max)) - 1;
> 456        val = ucontrol->value.integer.value[0] & mask;
> 
>    10. Condition !!val, taking true branch.
> 457        connect = !!val;
> 458
> 459        /* update ucontrol */
> 
> Uninitialized scalar variable (UNINIT)
>    11. uninit_use: Using uninitialized value gbvalue.value.integer_value[0].
> 460        if (gbvalue.value.integer_value[0] != val) {
> 
> The gbvalue.value.integer_value[0] read is bogus since gbvalue was
> declared on the stack but was not initialized.  There seems to be no
> where that sets this data. I'm assuming most of the time that the
> comparison works because the garbage value is different from val and so
> the code in the if stanza is executed.
> 
> Anyhow, I'm unsure what the original intent of the code was, so I've not
> attempted to fix this.

I think the fix is to add a call to this:

        ret = gb_audio_gb_get_control(module->mgmt_connection, data->ctl_id,
                                      GB_AUDIO_INVALID_INDEX, &gbvalue);

before the field within gbvalue is used.

Looking at gbcodec_mixer_dapm_ctl_get() defined just above that, it
seems that the call to gb_audio_gb_get_control() should be preceded
by a call to gb_pm_runtime_get_sync().  And given that duplication,
I suggest this call and the PM runtime wrapper functions should be
placed in a new helper function.

I know that Vaibhav said he would be fixing this, so I guess my
comments are directed at him.  Thanks for sending the patch Colin.

					-Alex


> Colin
> 
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
