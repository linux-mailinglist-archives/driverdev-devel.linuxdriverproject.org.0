Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id ACA55319AFC
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Feb 2021 09:03:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 15B7A6F613
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Feb 2021 08:03:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id txWqsI9m0me4 for <lists+driverdev-devel@lfdr.de>;
	Fri, 12 Feb 2021 08:03:09 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 47B696F6FC; Fri, 12 Feb 2021 08:03:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 523F86F574;
	Fri, 12 Feb 2021 08:02:49 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E7C261BF9B2
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 12 Feb 2021 08:02:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E4AA986ACA
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 12 Feb 2021 08:02:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bPJ043qt95O8
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 12 Feb 2021 08:02:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 34ACA86B09
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 12 Feb 2021 08:02:32 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 66E9C60235;
 Fri, 12 Feb 2021 08:02:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613116952;
 bh=94yuXZN/0myQvsYU2RPfafDcSSYpKwalpnyiOnEtQIA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WjHpAh4d+jDil0LAMf+eOamTQ77lxht9D2+SfB58k4uHqC+H6u34EHQz2UKwKLPJs
 xNRMLfkbR7iYL746ZXU/6Es03m50JW+urymh9rEHT6YcqaSObPq+OXqjNqeSgWRF4Q
 6D+jKNWz9hmhs4TkL2HdGPStPmKhWFiB764ywdtA=
Date: Fri, 12 Feb 2021 09:02:29 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: shivang upadhyay <oroz3x@gmail.com>
Subject: Re: [PATCH] ks7010: removed checkpatch.pl format errors
Message-ID: <YCY2FTmycppYXY0O@kroah.com>
References: <20210212075845.14180-1-oroz3x@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210212075845.14180-1-oroz3x@gmail.com>
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
Cc: driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Feb 12, 2021 at 01:28:45PM +0530, shivang upadhyay wrote:
> Signed-off-by: shivang upadhyay <oroz3x@gmail.com>
> ---
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
> 2.27.0
> 
> _______________________________________________
> devel mailing list
> devel@linuxdriverproject.org
> http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Hi,

This is the friendly patch-bot of Greg Kroah-Hartman.  You have sent him
a patch that has triggered this response.  He used to manually respond
to these common problems, but in order to save his sanity (he kept
writing the same thing over and over, yet to different people), I was
created.  Hopefully you will not take offence and will fix the problem
in your patch and resubmit it so that it can be accepted into the Linux
kernel tree.

You are receiving this message because of the following common error(s)
as indicated below:

- You did not specify a description of why the patch is needed, or
  possibly, any description at all, in the email body.  Please read the
  section entitled "The canonical patch format" in the kernel file,
  Documentation/SubmittingPatches for what is needed in order to
  properly describe the change.

- You did not write a descriptive Subject: for the patch, allowing Greg,
  and everyone else, to know what this patch is all about.  Please read
  the section entitled "The canonical patch format" in the kernel file,
  Documentation/SubmittingPatches for what a proper Subject: line should
  look like.

- You sent a patch that has been sent multiple times in the past few
  days, and is identical to ones that has been recently rejected.
  Please always look at the mailing list traffic to determine if you are
  duplicating other people's work.

If you wish to discuss this problem further, or you have questions about
how to resolve this issue, please feel free to respond to this email and
Greg will reply once he has dug out from the pending patches received
from other developers.

thanks,

greg k-h's patch email bot
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
