Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AA08C31EE3D
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Feb 2021 19:29:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 31D0E868B4;
	Thu, 18 Feb 2021 18:29:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UNA2wO5w76Bm; Thu, 18 Feb 2021 18:29:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 99DA08625F;
	Thu, 18 Feb 2021 18:29:46 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A7E491BF33A
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 18 Feb 2021 18:29:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A113387351
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 18 Feb 2021 18:29:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wxnRyDDKVr9F
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 18 Feb 2021 18:29:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com
 [209.85.214.169])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0E0F187349
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 18 Feb 2021 18:29:44 +0000 (UTC)
Received: by mail-pl1-f169.google.com with SMTP id a24so1698836plm.11
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 18 Feb 2021 10:29:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:subject:to:message-id:in-reply-to:references:mime-version;
 bh=MWOzSkwpWhDdpE2dkjPkQG+1sa2FX0n46Lp8hXOM6es=;
 b=XflAOJq9bREhpnXO3WosRsmK6B9gHxTDw8Rlq/vJCo2aFQiufw/GSDPWyDjx1tNb4E
 TDm57Cwh6l5WAMT2RxqRXAVJpqG84Mpc+Za0lr/T+xV6fX1XCCeePsnhj72Q/uULOK+G
 kjV0IEsycAdqAi9hHz/iTCtrLx1VcriD5/27fFu1UXS6zPoHS+pgqe/W0CBb2HNywSXL
 pzq1S8sLSZt7LLuIO908hiPZSBZa1kp1gu2QS06yXXvYsFyNskaVxDbxSXdVR8gVsy96
 wh6Lts1JGXv/0Hu2ucZ8DGknTIFBcHJxHuZdDm8/DTLRf8zkohbS+K343/Si3KWDvxFf
 31bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:subject:to:message-id:in-reply-to
 :references:mime-version;
 bh=MWOzSkwpWhDdpE2dkjPkQG+1sa2FX0n46Lp8hXOM6es=;
 b=bAxub77/F846eTV6w9eRRGHWqJTdNlAaQM+X3k46UPrkCL0qAJOfDtUjwQfu3rtnA1
 iz4FVrB0b/EHJKh7PvqoEZksxyAHaMa+pew731dLl6bwVGTcDfQK1iCfEcK3dYMueAjF
 1ObYjyOB1z0I7Dw8mTjSn1aVG6jY2kh9vdo1OuyV7TO270Jao66YzhkA8eX4JR5Ze3r+
 gzTL5wG5VBUyI1vahoz0/8q0svqWgObLtZqMKn54PCQBPV3LFX2O+ftNzrZtAKm9R6Yr
 S74REUYyZjUrIkvieMro6lCWL677mWNkGnBe8pPUDXy7akHcJB91xOrvaBSQxAD/vST4
 a8Xg==
X-Gm-Message-State: AOAM532tJ+8tQUpbNrOBU5eYhfmM0D0T4xG8MGHqmpRMD7QZp3n9BPsq
 yJHGCBSiy+K4Jr/r1QKzRYgvzFuznhVc
X-Google-Smtp-Source: ABdhPJwCtaHUAtTjHJILirCCH8enZdWN9dTBzndin0ALQwlk1gPiAcMmbiLXzjbpZ5cDUxbyb2mFVw==
X-Received: by 2002:a17:902:10a:b029:e2:e8f7:2988 with SMTP id
 10-20020a170902010ab02900e2e8f72988mr5181737plb.4.1613672983272; 
 Thu, 18 Feb 2021 10:29:43 -0800 (PST)
Received: from chill ([2405:201:7000:69ad:34c5:7e1d:737:8f71])
 by smtp.gmail.com with ESMTPSA id t15sm6104282pjy.37.2021.02.18.10.29.41
 for <driverdev-devel@linuxdriverproject.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Feb 2021 10:29:42 -0800 (PST)
Date: Thu, 18 Feb 2021 23:59:34 +0530
From: roz <oroz3x@gmail.com>
Subject: Re: [PATCH v4] ks7010: enclose non-trivial defines in parentheses
To: driverdev-devel@linuxdriverproject.org
Message-Id: <A1MQOQ.EDMUBBX5O0OU1@gmail.com>
In-Reply-To: <20210215132701.42748-1-oroz3x@gmail.com>
References: <20210215132701.42748-1-oroz3x@gmail.com>
X-Mailer: geary/3.38.0
MIME-Version: 1.0
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,

I wanted to check the status on the following patch.
I wanted the result for eudyptula task 10 submission.
It would be great if i can check if the mail is being
processed or rejected. I appologise for any troubles.


On Mon, Feb 15, 2021 at 6:57 pm, shivang upadhyay <oroz3x@gmail.com> 
wrote:
> 
> Checkpatch complains that parentheses are missing:
> "Macros with complex values should be enclosed in parentheses".
> Fixed that.
> 
> Signed-off-by: shivang upadhyay <oroz3x@gmail.com>
> ---
> 
> Previous versions of the patch were rejected due to lack of
> discription in patch emails.
> 
>  drivers/staging/ks7010/ks_hostif.h | 24 ++++++++++++------------
>  1 file changed, 12 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/staging/ks7010/ks_hostif.h 
> b/drivers/staging/ks7010/ks_hostif.h
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
> 2.27.0
> 


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
