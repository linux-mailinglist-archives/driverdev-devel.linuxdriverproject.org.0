Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B29FD23CAC7
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Aug 2020 14:58:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B5FAD881F9;
	Wed,  5 Aug 2020 12:58:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OGJAg7aVpc2A; Wed,  5 Aug 2020 12:58:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1CD0287E9C;
	Wed,  5 Aug 2020 12:58:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0BF411BF34E
 for <devel@linuxdriverproject.org>; Wed,  5 Aug 2020 12:58:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 04D572052B
 for <devel@linuxdriverproject.org>; Wed,  5 Aug 2020 12:58:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wKhYmwGbN+l7 for <devel@linuxdriverproject.org>;
 Wed,  5 Aug 2020 12:58:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f68.google.com (mail-io1-f68.google.com
 [209.85.166.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 73E4C214FD
 for <devel@driverdev.osuosl.org>; Wed,  5 Aug 2020 12:58:09 +0000 (UTC)
Received: by mail-io1-f68.google.com with SMTP id j8so33413665ioe.9
 for <devel@driverdev.osuosl.org>; Wed, 05 Aug 2020 05:58:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=LFybYJP0K+xpoNJr8Cd8LznlTLy8/ls0ruKF8gVrCrc=;
 b=XGBhzGghZj17zgNv/PX3ePTOX90VbQbHien8EpuiclPdgGDihzBtlhioQKZHo8/tNS
 UscvgxL7YUUw19Q6vo7J3nJf+NVPXRCBQv10ZDT6WOgBEV/STUh33iwil3Z3ofI7Sj93
 jR4AJ3Rc15T4OCx7BDESaalXbDcgDO1ZcHLGQlAtY6vF6iFIzIlel+8BqHK6qiohe4Oz
 7GEQwblrT0rrP1Bp56YpzNF3V49UgAKMccsbZVOoRuF7apRfgPlzvRMiPaLLb8scNPD6
 Xrh7hQFmVF5BtI+Ra1bjXXSMckPMHV9fT+Mtvpvm1jPA1/NmW6MVFB2j2/b3733AycxF
 8L4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=LFybYJP0K+xpoNJr8Cd8LznlTLy8/ls0ruKF8gVrCrc=;
 b=LPkdl0u+NZGs524UqMmS6FUG1kgelnfHMk/LMeMcnHZvamLvX2k7wn9fzxeUeWzCxl
 bUs2Ip1b8eecXmcI1TmUMWAx4Uq/hgvDD3ScGRC14+upzMoqnNFo5Uj8+saPmPb1sP7W
 9DUybdPg3e10uLxDlYIH5FSJzLAbC1v9GawaRoSLWIRpU5bEjh4ui1lvD/0aXaqynpTK
 sWVqIBrWPTZpjJtfzY6Qd807I/9wzMOACQ6v78wSnN6egWSW8STHOMk8LZ5GfzWFe2VV
 bIABKNxqqvmDiBas0B5sxrrJLG7qmXQhdk4KqoNxNxgyVgaLx/mQOlRPfFkWz514oeBe
 /rgw==
X-Gm-Message-State: AOAM532JxMvyqhcZ6UyLwEJ0iRiKBenbnQMxWdG+8SNu2qAmKU2J0Dal
 9Oz9TGNSthDisod2lOTxhGVD3Q==
X-Google-Smtp-Source: ABdhPJyrOWxqgs9tWgFajQY3gEAPaM/Qdc8BZUVmTFaz01Vj8R+YcF2s8wH3ny7m1URSfY+Oel+fbQ==
X-Received: by 2002:a05:6638:bc2:: with SMTP id
 g2mr4208605jad.21.1596632288715; 
 Wed, 05 Aug 2020 05:58:08 -0700 (PDT)
Received: from [172.22.22.26] (c-73-185-129-58.hsd1.mn.comcast.net.
 [73.185.129.58])
 by smtp.googlemail.com with ESMTPSA id m2sm1140711ilc.26.2020.08.05.05.58.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 05 Aug 2020 05:58:07 -0700 (PDT)
Subject: Re: [greybus-dev] [PATCH] staging: greybus: audio: Uninitialized
 variable in gbaudio_remove_controls()
To: Dan Carpenter <dan.carpenter@oracle.com>, Johan Hovold
 <johan@kernel.org>, Vaibhav Agarwal <vaibhav.sr@gmail.com>
References: <20200804101601.GA392148@mwanda>
From: Alex Elder <elder@linaro.org>
Message-ID: <655f7d92-308e-6c33-e517-2142f767d114@linaro.org>
Date: Wed, 5 Aug 2020 07:58:06 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200804101601.GA392148@mwanda>
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
 Alex Elder <elder@kernel.org>, kernel-janitors@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 8/4/20 5:16 AM, Dan Carpenter wrote:
> The "err" variable is not meaningful so there is no need to print it.
> It's uninitialized on the first iteration through the loop.
> 
> Fixes: 510e340efe0c ("staging: greybus: audio: Add helper APIs for dynamic audio modules")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>

This is a good fix, thanks.

Reviewed-by: Alex Elder <elder@linaro.org>

> ---
>  drivers/staging/greybus/audio_helper.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/greybus/audio_helper.c b/drivers/staging/greybus/audio_helper.c
> index 8b100a71f02e..237531ba60f3 100644
> --- a/drivers/staging/greybus/audio_helper.c
> +++ b/drivers/staging/greybus/audio_helper.c
> @@ -173,8 +173,7 @@ static int gbaudio_remove_controls(struct snd_card *card, struct device *dev,
>  		id.index = control->index;
>  		kctl = snd_ctl_find_id(card, &id);
>  		if (!kctl) {
> -			dev_err(dev, "%d: Failed to find %s\n", err,
> -				control->name);
> +			dev_err(dev, "Failed to find %s\n", control->name);
>  			continue;
>  		}
>  		err = snd_ctl_remove(card, kctl);
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
