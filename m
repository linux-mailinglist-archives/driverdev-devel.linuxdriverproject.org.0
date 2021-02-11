Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AC32D318568
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 07:53:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 52D166F62A
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 06:53:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xdY8PplMDkIx for <lists+driverdev-devel@lfdr.de>;
	Thu, 11 Feb 2021 06:53:45 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 0D9A76F601; Thu, 11 Feb 2021 06:53:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 655636F4B8;
	Thu, 11 Feb 2021 06:53:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E67541BF82F
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 06:53:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E273087382
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 06:53:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eHZUpkfYte4s for <devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 06:53:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com
 [209.85.208.48])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0116887117
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 06:53:11 +0000 (UTC)
Received: by mail-ed1-f48.google.com with SMTP id l12so5848499edt.3
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 22:53:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=NrN4FfPe5CMHaaU1dbu02FtdHBZWG5buzc/G7deMVgU=;
 b=ray3Xpbvqqfw2/L13BH10nsKdUmzDf6NL/V5NUroNiILdUUKcR8KnIrjlyapwepevO
 0bAudgtLnKfpQmFXBLBNaABqlntdajUrvBbDiTlI1J+A9YyJx9gfhQp2ERDLgw7Tpt/8
 +TGEIRHLCRpoAW9iZLUI877S42N7JECtlXezEyIttuR5caQz/1BDChI83Bl2ePeY9sA1
 cgQ9sV1GaHLql+df+gakuK5ayYdyjkqVSAT4RgXVcOnmm/qEiN8JHacIS+8WQivjMVco
 +HhjHuhSSxsL/RO/SsTh2ib1zlw2FAdB1proZZ2FS0veiumBL1OZJASKjdyuyOPYaQwQ
 jSTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=NrN4FfPe5CMHaaU1dbu02FtdHBZWG5buzc/G7deMVgU=;
 b=Y+WKPaDsP7yqlrr3XeJZyzoj+nXs7K/+MDgQ7cethU3nbeURP2EQU/+fEmC39If0Q/
 rJ2MEJx3iTdYjoEgYMkc9sIDq1eNu2WAM1XGgM+z14Uy73mt+MeXSmtPObbT4g2XNcrz
 H3bWL6kcLE9me+6OuoWa0sKjLiQz5YcsMZACXmmExF+xZeVcWTIEEUn/oOuN4dig0HQV
 A7ymkHRQqTp81QFdeZdZa/1zHn0GhBT1AuBEWDya/CCmoF4bgf5wB273Q05Pt94WFAmh
 tBo8m1atHhdnTp46VLn2CcMSuj7VmthulpFBrEuh8521PI69uaR01/Duj3yDfq76RV8z
 HSbA==
X-Gm-Message-State: AOAM532txjIqpohkAWIebO06+rVYVaqxMIBJ/Yer5tjrB+T5TnpFsBz2
 sKWNKu6Zb2qRC7dRaCoSqx5JSTZ0Cl04o/mT
X-Google-Smtp-Source: ABdhPJwqGBgF72DY+3WAno6ovOdlez4lkzBI4kD6pM5/AlzGgPzxPbioIf3FiA7SW4E4vLOxd6HlZA==
X-Received: by 2002:a05:6402:4310:: with SMTP id
 m16mr6793687edc.207.1613026390417; 
 Wed, 10 Feb 2021 22:53:10 -0800 (PST)
Received: from localhost ([49.205.77.137])
 by smtp.gmail.com with ESMTPSA id f6sm2993875edk.13.2021.02.10.22.53.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Feb 2021 22:53:10 -0800 (PST)
Date: Thu, 11 Feb 2021 12:23:05 +0530
From: Aakash Hemadri <aakashhemadri123@gmail.com>
To: Fatih YILDIRIM <yildirim.fatih@gmail.com>
Subject: Re: [PATCH] Macros with complex values should be enclosed in
 parentheses.
Message-ID: <20210211065305.llj6xr5phtnsv6ha@xps.yggdrail>
References: <20210211062543.9817-1-yildirim.fatih@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210211062543.9817-1-yildirim.fatih@gmail.com>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, gustavo@embeddedor.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 21/02/11 09:25AM, Fatih YILDIRIM wrote:
> Signed-off-by: Fatih YILDIRIM <yildirim.fatih@gmail.com>
> ---
> Hi,
> I have a coding style fix.
> By the way, I'm following the Eudyptula Challenge Linux kernel tasks
> and this is my first patch related to my task no 10.
> I hope I'm doing it the right way.
> Thanks for your understanding and kind comments.
>
>  drivers/staging/ks7010/ks_hostif.h | 24 ++++++++++++------------
>  1 file changed, 12 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/staging/ks7010/ks_hostif.h b/drivers/staging/ks7010/ks_hostif.h
> index 39138191a556..c62a494ed6bb 100644
> --- a/drivers/staging/ks7010/ks_hostif.h
> +++ b/drivers/staging/ks7010/ks_hostif.h
> @@ -498,20 +498,20 @@ struct hostif_mic_failure_request {
>  #define TX_RATE_FIXED		5
>
>  /* 11b rate */
> -#define TX_RATE_1M	(u8)(10 / 5)	/* 11b 11g basic rate */
> -#define TX_RATE_2M	(u8)(20 / 5)	/* 11b 11g basic rate */
> -#define TX_RATE_5M	(u8)(55 / 5)	/* 11g basic rate */
> -#define TX_RATE_11M	(u8)(110 / 5)	/* 11g basic rate */
> +#define TX_RATE_1M	((u8)(10 / 5))	/* 11b 11g basic rate */
> +#define TX_RATE_2M	((u8)(20 / 5))	/* 11b 11g basic rate */
> +#define TX_RATE_5M	((u8)(55 / 5))	/* 11g basic rate */
> +#define TX_RATE_11M	((u8)(110 / 5))	/* 11g basic rate */
>
>  /* 11g rate */
> -#define TX_RATE_6M	(u8)(60 / 5)	/* 11g basic rate */
> -#define TX_RATE_12M	(u8)(120 / 5)	/* 11g basic rate */
> -#define TX_RATE_24M	(u8)(240 / 5)	/* 11g basic rate */
> -#define TX_RATE_9M	(u8)(90 / 5)
> -#define TX_RATE_18M	(u8)(180 / 5)
> -#define TX_RATE_36M	(u8)(360 / 5)
> -#define TX_RATE_48M	(u8)(480 / 5)
> -#define TX_RATE_54M	(u8)(540 / 5)
> +#define TX_RATE_6M	((u8)(60 / 5))	/* 11g basic rate */
> +#define TX_RATE_12M	((u8)(120 / 5))	/* 11g basic rate */
> +#define TX_RATE_24M	((u8)(240 / 5))	/* 11g basic rate */
> +#define TX_RATE_9M	((u8)(90 / 5))
> +#define TX_RATE_18M	((u8)(180 / 5))
> +#define TX_RATE_36M	((u8)(360 / 5))
> +#define TX_RATE_48M	((u8)(480 / 5))
> +#define TX_RATE_54M	((u8)(540 / 5))
>
>  static inline bool is_11b_rate(u8 rate)
>  {
> --
> 2.20.1
>
> _______________________________________________
> devel mailing list
> devel@linuxdriverproject.org
> http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Hey Fatih

Try looking at accepted patches before you send one through
Like dan carpenter says sit on the patch for a day no matter how simple.
I think greg's bot picked up you have no commit message

Try using --annotate with git send-email to confirm your changes before
you send it.

I too made such a mistake so relax and take time before you send
Ideally send it to yourself first.
I am also a mentee :)

cheers,
aakash hemadri
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
