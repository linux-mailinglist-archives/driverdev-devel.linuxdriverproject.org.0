Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D8B32D27BC
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Dec 2020 10:34:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B7F6A86D6E;
	Tue,  8 Dec 2020 09:34:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cVAb1FlLhft6; Tue,  8 Dec 2020 09:34:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2C8B986D95;
	Tue,  8 Dec 2020 09:34:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 71DA31BF255
 for <devel@linuxdriverproject.org>; Tue,  8 Dec 2020 09:34:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 66CE520401
 for <devel@linuxdriverproject.org>; Tue,  8 Dec 2020 09:34:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id llEK-CCcPdvn for <devel@linuxdriverproject.org>;
 Tue,  8 Dec 2020 09:34:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
 [209.85.208.193])
 by silver.osuosl.org (Postfix) with ESMTPS id E6B62203A5
 for <devel@driverdev.osuosl.org>; Tue,  8 Dec 2020 09:34:26 +0000 (UTC)
Received: by mail-lj1-f193.google.com with SMTP id q8so18284507ljc.12
 for <devel@driverdev.osuosl.org>; Tue, 08 Dec 2020 01:34:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=n46FeDvrQgslntB/QvyVhRFq+v4FH13erjugPCMtV1w=;
 b=iZtX/tw1Y/6rr5duHTjwhTFTY8EFBdtFshOVB0kL/vKBi3RAwYfCQlLcFPIyr7RzWX
 EmkwwVGCuW4UqBr5kDrRo2QugEopy1cGlJa4nGe7T/P9bZUYGML0hWYfKxQ0VI5cdui6
 Xxr2viyETaAHYn09YXpqpm15+TX/Gqlzmm+Gi0mLiEdAvbhf2lzW3a56pPVN1CKmZNsM
 UnMG+iYfecNhHQjh0dSoYGRV84T7rvPxAkzoYHtHuHPr80qJaXjZD2AAVz5Xfbp7i2w2
 +VvxG4pOCzRts2Hb0drotCefUAojdOgCkKR+2Lt1XbdaQBCAR8efHGK+J/mm4azDxigF
 trgg==
X-Gm-Message-State: AOAM530rzWd1mE7i48BOg6AleNXU5j7C2mPbKnaDwoB+DjRLtcq+sa45
 /Uowx074W+w0ONlVpmfzHECwGmfdLy+IfQ==
X-Google-Smtp-Source: ABdhPJy02FhKhfSnq0GfVhtpL9g3uz6VqfvBEbr919u7Jtx3QetFzJxS0YPPKSyOlaXDZZGUZhCqMA==
X-Received: by 2002:a2e:7119:: with SMTP id m25mr679541ljc.229.1607420065262; 
 Tue, 08 Dec 2020 01:34:25 -0800 (PST)
Received: from xi.terra (c-beaee455.07-184-6d6c6d4.bbcust.telenor.se.
 [85.228.174.190])
 by smtp.gmail.com with ESMTPSA id g69sm739199lfd.161.2020.12.08.01.34.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Dec 2020 01:34:24 -0800 (PST)
Received: from johan by xi.terra with local (Exim 4.93.0.4)
 (envelope-from <johan@kernel.org>)
 id 1kmZOg-0002UD-GE; Tue, 08 Dec 2020 10:35:02 +0100
Date: Tue, 8 Dec 2020 10:35:02 +0100
From: Johan Hovold <johan@kernel.org>
To: Wang Hai <wanghai38@huawei.com>
Subject: Re: [PATCH] staging: greybus: audio: Fix possible leak free widgets
 in gbaudio_dapm_free_controls
Message-ID: <X89IxvbYWjuyaQDT@localhost>
References: <20201205103827.31244-1-wanghai38@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201205103827.31244-1-wanghai38@huawei.com>
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
Cc: devel@driverdev.osuosl.org, elder@kernel.org, vaibhav.sr@gmail.com,
 gregkh@linuxfoundation.org, johan@kernel.org, aibhav.sr@gmail.com,
 linux-kernel@vger.kernel.org, greybus-dev@lists.linaro.org,
 dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Dec 05, 2020 at 06:38:27PM +0800, Wang Hai wrote:
> In gbaudio_dapm_free_controls(), if one of the widgets is not found, an error
> will be returned directly, which will cause the rest to be unable to be freed,
> resulting in leak.
> 
> This patch fixes the bug. If if one of them is not found, just skip and free the others.

Apart from the typo, please break your lines at 72 columns or so (not
needed for the Fixes tag).

> Fixes: 510e340efe0c ("staging: greybus: audio: Add helper APIs for dynamic audio module")
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: Wang Hai <wanghai38@huawei.com>
> ---
>  drivers/staging/greybus/audio_helper.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/greybus/audio_helper.c b/drivers/staging/greybus/audio_helper.c
> index 237531ba60f3..3011b8abce38 100644
> --- a/drivers/staging/greybus/audio_helper.c
> +++ b/drivers/staging/greybus/audio_helper.c
> @@ -135,7 +135,8 @@ int gbaudio_dapm_free_controls(struct snd_soc_dapm_context *dapm,
>  		if (!w) {
>  			dev_err(dapm->dev, "%s: widget not found\n",
>  				widget->name);
> -			return -EINVAL;
> +			widget++;
> +			continue;
>  		}
>  		widget++;
>  #ifdef CONFIG_DEBUG_FS

Not sure if we can ever have the widget lookup fail, but at least this
looks consistent now.

Reviewed-by: Johan Hovold <johan@kernel.org>

Johan
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
