Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D82852CEA01
	for <lists+driverdev-devel@lfdr.de>; Fri,  4 Dec 2020 09:40:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 171EB87C46;
	Fri,  4 Dec 2020 08:40:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J1ZPnMIP9gtI; Fri,  4 Dec 2020 08:40:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7A9F387C3B;
	Fri,  4 Dec 2020 08:40:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D871C1BF34D
 for <devel@linuxdriverproject.org>; Fri,  4 Dec 2020 08:40:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D232420493
 for <devel@linuxdriverproject.org>; Fri,  4 Dec 2020 08:40:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DzXtXj8gn0Dh for <devel@linuxdriverproject.org>;
 Fri,  4 Dec 2020 08:40:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
 [209.85.208.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 3015C20477
 for <devel@driverdev.osuosl.org>; Fri,  4 Dec 2020 08:40:10 +0000 (UTC)
Received: by mail-lj1-f193.google.com with SMTP id z1so5680880ljn.4
 for <devel@driverdev.osuosl.org>; Fri, 04 Dec 2020 00:40:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Yiu8+tXTBsSe5C/YobYcYIjj+kze1oiRLa7kn7MZ3yI=;
 b=hcYotQAYo6Ef+4adBonkHNoOQk4LuAs97nKD2gBYUYTjBCmlXkJBYhus2ozeSo5V/J
 iJBab8VTDORUTnT6roaevLm7ZVKnaQWGlzjv6OKRCSTB/X8a9P1Mxh8fx8BWRHPOkz0s
 FZ5TVCXMjjGqEK7NkEmJg442Y8DLqOUxZirpePVJ0GDUxiz1AqY4ULQHX4LyduizeNjC
 WJxyN50apRIUep+dp7PBCXr1Sr48nh9yldictkqr5PQH0DpKIEAVwnWH44ExSu7ACN4b
 yK2ydJuKWMYTHu3kLJd9v+SIKpSTTTD7X5szwQWi9pVlhSG14Sokzba7uv5dgyK/NZTj
 CYWg==
X-Gm-Message-State: AOAM531K3LkIYHZ1zEizuuecrtUQ9CrO4ybJx8GlNyK5J3qzJYzUslSn
 0auusjnlK1Uw487BZ6vTqII=
X-Google-Smtp-Source: ABdhPJwS5qFQ/psaUnmGAsXqz3qI0zifCh+9HilqTaB7ZSeLltQnMtnjfev1SDanVLsQifCMjicNgA==
X-Received: by 2002:a2e:97c1:: with SMTP id m1mr3095064ljj.278.1607071208414; 
 Fri, 04 Dec 2020 00:40:08 -0800 (PST)
Received: from xi.terra (c-beaee455.07-184-6d6c6d4.bbcust.telenor.se.
 [85.228.174.190])
 by smtp.gmail.com with ESMTPSA id q26sm1444609lfd.260.2020.12.04.00.40.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Dec 2020 00:40:07 -0800 (PST)
Received: from johan by xi.terra with local (Exim 4.93.0.4)
 (envelope-from <johan@kernel.org>)
 id 1kl6ds-0001aJ-JQ; Fri, 04 Dec 2020 09:40:41 +0100
Date: Fri, 4 Dec 2020 09:40:40 +0100
From: Johan Hovold <johan@kernel.org>
To: Wang Hai <wanghai38@huawei.com>, Vaibhav Agarwal <vaibhav.sr@gmail.com>
Subject: Re: [PATCH] staging: greybus: audio: Add missing unlock in
 gbaudio_dapm_free_controls()
Message-ID: <X8n2CL58pQ/077rQ@localhost>
References: <20201204021350.28182-1-wanghai38@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201204021350.28182-1-wanghai38@huawei.com>
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
Cc: devel@driverdev.osuosl.org, elder@kernel.org, gregkh@linuxfoundation.org,
 johan@kernel.org, aibhav.sr@gmail.com, linux-kernel@vger.kernel.org,
 greybus-dev@lists.linaro.org, dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Dec 04, 2020 at 10:13:50AM +0800, Wang Hai wrote:
> Add the missing unlock before return from function
> gbaudio_dapm_free_controls() in the error handling case.
> 
> Fixes: 510e340efe0c ("staging: greybus: audio: Add helper APIs for dynamic audio module")
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: Wang Hai <wanghai38@huawei.com>
> ---
>  drivers/staging/greybus/audio_helper.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/staging/greybus/audio_helper.c b/drivers/staging/greybus/audio_helper.c
> index 237531ba60f3..293675dbea10 100644
> --- a/drivers/staging/greybus/audio_helper.c
> +++ b/drivers/staging/greybus/audio_helper.c
> @@ -135,6 +135,7 @@ int gbaudio_dapm_free_controls(struct snd_soc_dapm_context *dapm,
>  		if (!w) {
>  			dev_err(dapm->dev, "%s: widget not found\n",
>  				widget->name);
> +			mutex_unlock(&dapm->card->dapm_mutex);
>  			return -EINVAL;
>  		}
>  		widget++;

This superficially looks correct, but there seems to be another bug in
this function. It can be used free an array of widgets, but if one of
them isn't found we just leak the rest. Perhaps that return should
rather be "widget++; continue;".

Vaibhav?

Johan
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
