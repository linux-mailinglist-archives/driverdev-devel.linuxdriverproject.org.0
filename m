Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21A352E77AD
	for <lists+driverdev-devel@lfdr.de>; Wed, 30 Dec 2020 11:13:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id F2E3A871E3;
	Wed, 30 Dec 2020 10:13:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XWpPcYlRvAQW; Wed, 30 Dec 2020 10:13:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1D48A871C4;
	Wed, 30 Dec 2020 10:13:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2548E1BF4DD
 for <devel@linuxdriverproject.org>; Wed, 30 Dec 2020 10:13:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1F6AA86A7A
 for <devel@linuxdriverproject.org>; Wed, 30 Dec 2020 10:13:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VN+aVRYuJjIL for <devel@linuxdriverproject.org>;
 Wed, 30 Dec 2020 10:13:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
 [209.85.221.54])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D302886A1A
 for <devel@driverdev.osuosl.org>; Wed, 30 Dec 2020 10:13:04 +0000 (UTC)
Received: by mail-wr1-f54.google.com with SMTP id d13so16979150wrc.13
 for <devel@driverdev.osuosl.org>; Wed, 30 Dec 2020 02:13:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=eVxSM5i76pIapJWPjbKuxmCHiHfbsJJSSitypQwb4yc=;
 b=Z5tL7BngstmdhY1rPFAHXODcLgsAk/5fHp4TLoBVTorrlAsCpFDCEqxGLx32ouhkg9
 Ggw7ScwfjueLWdeIsUyI2MTKUSUsrNN5WKDUp+Ck28UulmNoFXAyBt/jvp1cyJtmAksR
 xxKYBBUHHDsDfIuInPhfYA3p3ZI0Wu92xFeKlFLj+trUCCOnqHaSuPLuVk3GYN5yTWI2
 HxEJvbXDjF4RXgCt3QhENSmwRdv30vYt0SWrZm9hefk4bdhG43YPInIflKxK0fu2aXmH
 wy9cSVU5CqWIWcMlYnYrWJ3KZz9sKp5ElSHRTHAkhSTiryl6x2eN8FVSsy8F9umWCxLi
 hNbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=eVxSM5i76pIapJWPjbKuxmCHiHfbsJJSSitypQwb4yc=;
 b=mrqiu/1MF94FMV5MnZllGK1Lbz/pX0iHAKgdSRQiBMLsWL2aAxcZxpMieBNecq12jP
 nuARpV2rIt7FR/xCxxom2xj7xVAWnQOTK5tUBlDC9PXa5P9uGIDs/pOTmqL+VUm1/8nC
 L5hRYQ4aidXP/1JctnNLtjnmD+YA8KxgO65U+hcXWp6v8WI9msLYPnKQbZeBXp9A1Qsu
 hRZ/do/Co5wN8yGfUbPmmNDcMPxTmQmZwM2NLi/y6YtSv5yBiZiEuKvv9fEXQZR2Vrw3
 s4+jfFt05nHes5kjGoYonPTKtA7alP6PPEDU6kU1HcrC37KL0D4DSepQa1P1mlESSpYZ
 uRMw==
X-Gm-Message-State: AOAM532d/Pu1f3hIjeDBVqEkgVlNm78JbgvpBrRYPog48xREboZIsqHK
 NDLdNnVECvvW+96j64JBDYM=
X-Google-Smtp-Source: ABdhPJxefUIxqGz7wVH7Kss44qsC7ce7uVq5I2Yjroj/8zVSQjCvyEC/K5S2YffS44LycDCQ3qd7YA==
X-Received: by 2002:a5d:6983:: with SMTP id g3mr23791613wru.168.1609323183162; 
 Wed, 30 Dec 2020 02:13:03 -0800 (PST)
Received: from arch-thunder.localdomain (a109-49-46-234.cpe.netcabo.pt.
 [109.49.46.234])
 by smtp.gmail.com with ESMTPSA id x18sm74818507wrg.55.2020.12.30.02.13.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Dec 2020 02:13:02 -0800 (PST)
Date: Wed, 30 Dec 2020 10:13:00 +0000
From: Rui Miguel Silva <rmfrfs@gmail.com>
To: Zheng Yongjun <zhengyongjun3@huawei.com>
Subject: Re: [PATCH v2 -next] staging: greybus: light: Use kzalloc for
 allocating only one thing
Message-ID: <20201230101300.sqouqv3ulez6mzmy@arch-thunder.localdomain>
References: <20201230013706.28698-1-zhengyongjun3@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201230013706.28698-1-zhengyongjun3@huawei.com>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org, elder@kernel.org,
 johan@kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Yongjun,
many thanks for your patch.

On Wed, Dec 30, 2020 at 09:37:06AM +0800, Zheng Yongjun wrote:
> Use kzalloc rather than kcalloc(1,...)
> 
> The semantic patch that makes this change is as follows:
> (http://coccinelle.lip6.fr/)
> 
> // <smpl>
> @@
> @@
> 
> - kcalloc(1,
> + kzalloc(
>           ...)
> // </smpl>
> 
> Signed-off-by: Zheng Yongjun <zhengyongjun3@huawei.com>

Like Alex said, LGTM also.

Reviewed-by: Rui Miguel Silva <rmfrfs@gmail.com>

------
Cheers,
     Rui
> ---
>  drivers/staging/greybus/light.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/greybus/light.c b/drivers/staging/greybus/light.c
> index d2672b65c3f4..87d36948c610 100644
> --- a/drivers/staging/greybus/light.c
> +++ b/drivers/staging/greybus/light.c
> @@ -290,8 +290,7 @@ static int channel_attr_groups_set(struct gb_channel *channel,
>  	channel->attrs = kcalloc(size + 1, sizeof(*channel->attrs), GFP_KERNEL);
>  	if (!channel->attrs)
>  		return -ENOMEM;
> -	channel->attr_group = kcalloc(1, sizeof(*channel->attr_group),
> -				      GFP_KERNEL);
> +	channel->attr_group = kzalloc(sizeof(*channel->attr_group), GFP_KERNEL);
>  	if (!channel->attr_group)
>  		return -ENOMEM;
>  	channel->attr_groups = kcalloc(2, sizeof(*channel->attr_groups),
> -- 
> 2.22.0
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
