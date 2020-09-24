Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 143092771AA
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Sep 2020 14:54:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 737DE86C22;
	Thu, 24 Sep 2020 12:54:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yqY-rGMIAJa0; Thu, 24 Sep 2020 12:54:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E6DC686BE6;
	Thu, 24 Sep 2020 12:54:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E1C261BF573
 for <devel@linuxdriverproject.org>; Thu, 24 Sep 2020 12:54:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DE701874C5
 for <devel@linuxdriverproject.org>; Thu, 24 Sep 2020 12:54:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lluAqx3XT1ji for <devel@linuxdriverproject.org>;
 Thu, 24 Sep 2020 12:54:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com
 [209.85.166.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 17CDB874C4
 for <devel@driverdev.osuosl.org>; Thu, 24 Sep 2020 12:54:15 +0000 (UTC)
Received: by mail-io1-f66.google.com with SMTP id z25so3103458iol.10
 for <devel@driverdev.osuosl.org>; Thu, 24 Sep 2020 05:54:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=O6qc5V6tfCA1Jw0Tr5d5kTXhGEVTE6N82d1Qd3A5Yhc=;
 b=Nle+JmIcHP0/Fe2F6JmdcyNj+CYk5TEak1DbAHElVeCkJzzdN+Xz9UvMCjrUgNDggC
 iKcB/lAz8697WZJ427vPIrOUU0u6XKO+zwODXXd9Xhx2hGIAr7D+nfuv6XwhH+IB19+Y
 Qc2P3LFixSfOhOtW0JPJDtdQUyhGJ/LF7B02I1uuasCYHCN1l4u4U6F4yCbVYna4YPAn
 bTy/oiwCaHIHNFhaxgSLAxU1W+C1Hc/qriW2SvNxmywHRr+WUR2CE/S4nOirtUO70yCz
 9FraFgKhtJQZd6mXgYegghvRbIRgMyYkpyLVS3PH9huTFLWq1PHzM0VR2svauFG78Ja2
 9h2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=O6qc5V6tfCA1Jw0Tr5d5kTXhGEVTE6N82d1Qd3A5Yhc=;
 b=h2j4WjhMv6wlj7OSHTWJ7P8NwoLarS7NN7LcJJxPxfxsHxTxAWznGWOTiY2X1GEcZl
 RyRn50DYsYpwmfNDMaTkP14/N4sdFQzAzlMpjrAC5duD5uiZ6yOyv1cJwW6AxOQH5ngI
 7vKaGYLOP3GkXXm0e8X7Ux6hF3J6I9cplrBVIgLHzNVCh0XMDfLZyAW0NMLb1utwk2cF
 WRpwJk6UcZKUV2h3L5p2Mjh2JowvCKhit3MuJd63KBawVU+vlZK9q+2R/+wPau/DKc56
 cuZMpeVdEzF0Myc0iYPSETd+JRx8jucdMNXuTFfxFg1CSqro9k6MF53loVxWoY+rGTYU
 QVeA==
X-Gm-Message-State: AOAM533RsZhWeP22U4LdY5ZigVM+VKNsavvaqUYxB2evXN9OQHRq2n2r
 LkfvhhZbb/5Bi7fk337xJ7fUPQ==
X-Google-Smtp-Source: ABdhPJw3O6MeQi0jSsnnLGvcmNgXVXHSenqXHcAAg9Pu4Fagrb5pmK5cHc+OeaOyuCYtb1j8aAir/w==
X-Received: by 2002:a05:6602:2013:: with SMTP id
 y19mr3154035iod.148.1600952054344; 
 Thu, 24 Sep 2020 05:54:14 -0700 (PDT)
Received: from [172.22.22.26] (c-73-185-129-58.hsd1.mn.comcast.net.
 [73.185.129.58])
 by smtp.googlemail.com with ESMTPSA id i10sm1372395ioi.39.2020.09.24.05.54.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 24 Sep 2020 05:54:11 -0700 (PDT)
Subject: Re: [greybus-dev] [PATCH 2/3] staging: greybus: codecs: use
 SNDRV_PCM_FMTBIT_S16_LE for format bitmask
To: Coiby Xu <coiby.xu@gmail.com>, devel@driverdev.osuosl.org
References: <20200924102039.43895-1-coiby.xu@gmail.com>
 <20200924102039.43895-2-coiby.xu@gmail.com>
From: Alex Elder <elder@linaro.org>
Message-ID: <c197ba96-0dfb-7bad-28b2-d225a9159e35@linaro.org>
Date: Thu, 24 Sep 2020 07:54:10 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200924102039.43895-2-coiby.xu@gmail.com>
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
 Alex Elder <elder@kernel.org>, Johan Hovold <johan@kernel.org>,
 open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 9/24/20 5:20 AM, Coiby Xu wrote:
> snd_soc_pcm_stream.formats should use the bitmask SNDRV_PCM_FMTBIT_*
> instead of the sequential integers SNDRV_PCM_FORMAT_* as explained by
> commit e712bfca1ac1f63f622f87c2f33b57608f2a4d19
> ("ASoC: codecs: use SNDRV_PCM_FMTBIT_* for format bitmask").
> 
> Found by sparse,

Looks good.

Reviewed-by: Alex Elder <elder@linaro.org>

> 
> $ make C=2 drivers/staging/greybus/
> drivers/staging/greybus/audio_codec.c:691:36: warning: incorrect type in initializer (different base types)
> drivers/staging/greybus/audio_codec.c:691:36:    expected unsigned long long [usertype] formats
> drivers/staging/greybus/audio_codec.c:691:36:    got restricted snd_pcm_format_t [usertype]
> drivers/staging/greybus/audio_codec.c:701:36: warning: incorrect type in initializer (different base types)
> drivers/staging/greybus/audio_codec.c:701:36:    expected unsigned long long [usertype] formats
> drivers/staging/greybus/audio_codec.c:701:36:    got restricted snd_pcm_format_t [usertype]
> 
> Signed-off-by: Coiby Xu <coiby.xu@gmail.com>
> ---
>  drivers/staging/greybus/audio_codec.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/greybus/audio_codec.c b/drivers/staging/greybus/audio_codec.c
> index 74538f8c5fa4..494aa823e998 100644
> --- a/drivers/staging/greybus/audio_codec.c
> +++ b/drivers/staging/greybus/audio_codec.c
> @@ -688,7 +688,7 @@ static struct snd_soc_dai_driver gbaudio_dai[] = {
>  		.playback = {
>  			.stream_name = "I2S 0 Playback",
>  			.rates = SNDRV_PCM_RATE_48000,
> -			.formats = SNDRV_PCM_FORMAT_S16_LE,
> +			.formats = SNDRV_PCM_FMTBIT_S16_LE,
>  			.rate_max = 48000,
>  			.rate_min = 48000,
>  			.channels_min = 1,
> @@ -698,7 +698,7 @@ static struct snd_soc_dai_driver gbaudio_dai[] = {
>  		.capture = {
>  			.stream_name = "I2S 0 Capture",
>  			.rates = SNDRV_PCM_RATE_48000,
> -			.formats = SNDRV_PCM_FORMAT_S16_LE,
> +			.formats = SNDRV_PCM_FMTBIT_S16_LE,
>  			.rate_max = 48000,
>  			.rate_min = 48000,
>  			.channels_min = 1,
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
