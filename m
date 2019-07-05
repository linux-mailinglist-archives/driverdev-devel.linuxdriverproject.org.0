Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 07A6460468
	for <lists+driverdev-devel@lfdr.de>; Fri,  5 Jul 2019 12:26:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 878D4226B7;
	Fri,  5 Jul 2019 10:26:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sme+rVOqJ9JA; Fri,  5 Jul 2019 10:26:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B5BA02265B;
	Fri,  5 Jul 2019 10:26:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E8D411BF35F
 for <devel@linuxdriverproject.org>; Fri,  5 Jul 2019 10:26:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E602987F48
 for <devel@linuxdriverproject.org>; Fri,  5 Jul 2019 10:26:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PESGOx+xjjWx for <devel@linuxdriverproject.org>;
 Fri,  5 Jul 2019 10:26:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from relay10.mail.gandi.net (relay10.mail.gandi.net [217.70.178.230])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2ED3787E9D
 for <devel@driverdev.osuosl.org>; Fri,  5 Jul 2019 10:26:19 +0000 (UTC)
Received: from aptenodytes (196.109.29.93.rev.sfr.net [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 637FD24000D;
 Fri,  5 Jul 2019 10:26:04 +0000 (UTC)
Date: Fri, 5 Jul 2019 12:26:03 +0200
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Nishka Dasgupta <nishkadg.linux@gmail.com>
Subject: Re: [PATCH 1/2] staging: media: sunxi: Change return type of
 cedrus_find_format()
Message-ID: <20190705102603.GA1645@aptenodytes>
References: <20190703081317.22795-1-nishkadg.linux@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190703081317.22795-1-nishkadg.linux@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: devel@driverdev.osuosl.org, maxime.ripard@bootlin.com,
 gregkh@linuxfoundation.org, wens@csie.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,

On Wed 03 Jul 19, 13:43, Nishka Dasgupta wrote:
> Change return type of cedrus_find_format to bool as it is only called
> once, by a function whose return value is bool, and the return value of
> cedrus_find_format is returned as-is at the call-site.
> Issue found with Coccinelle.

The purpose of this function (although definitely under-used at this point),
was to return the pointer to the element structure, not to indicate whether
the format format is part of the list or not.

In spite of that, this change reduces the use case for the function, so I do
not think it is beneficial, sorry.

Cheers,

Paul

> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
> ---
>  drivers/staging/media/sunxi/cedrus/cedrus_video.c | 11 ++++-------
>  1 file changed, 4 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> index 9673874ece10..0ec31b9e0aea 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> @@ -55,8 +55,8 @@ static inline struct cedrus_ctx *cedrus_file2ctx(struct file *file)
>  	return container_of(file->private_data, struct cedrus_ctx, fh);
>  }
>  
> -static struct cedrus_format *cedrus_find_format(u32 pixelformat, u32 directions,
> -						unsigned int capabilities)
> +static bool cedrus_find_format(u32 pixelformat, u32 directions,
> +			       unsigned int capabilities)
>  {
>  	struct cedrus_format *fmt;
>  	unsigned int i;
> @@ -70,13 +70,10 @@ static struct cedrus_format *cedrus_find_format(u32 pixelformat, u32 directions,
>  
>  		if (fmt->pixelformat == pixelformat &&
>  		    (fmt->directions & directions) != 0)
> -			break;
> +			return true;
>  	}
>  
> -	if (i == CEDRUS_FORMATS_COUNT)
> -		return NULL;
> -
> -	return &cedrus_formats[i];
> +	return false;
>  }
>  
>  static bool cedrus_check_format(u32 pixelformat, u32 directions,
> -- 
> 2.19.1
> 

-- 
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
