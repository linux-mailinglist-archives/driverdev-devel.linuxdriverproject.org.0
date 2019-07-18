Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 452686CA3A
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Jul 2019 09:48:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E722286A3C;
	Thu, 18 Jul 2019 07:48:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rwsD7t91VwHz; Thu, 18 Jul 2019 07:48:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 316BC86A36;
	Thu, 18 Jul 2019 07:48:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C932B1BF366
 for <devel@linuxdriverproject.org>; Thu, 18 Jul 2019 07:48:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 90AB8204CB
 for <devel@linuxdriverproject.org>; Thu, 18 Jul 2019 07:48:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y5Ly-CVzserA for <devel@linuxdriverproject.org>;
 Thu, 18 Jul 2019 07:48:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net
 [217.70.183.200])
 by silver.osuosl.org (Postfix) with ESMTPS id 0D57420387
 for <devel@driverdev.osuosl.org>; Thu, 18 Jul 2019 07:48:04 +0000 (UTC)
X-Originating-IP: 86.250.200.211
Received: from aptenodytes (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id E97D820007;
 Thu, 18 Jul 2019 07:47:58 +0000 (UTC)
Date: Thu, 18 Jul 2019 09:47:58 +0200
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Nishka Dasgupta <nishkadg.linux@gmail.com>
Subject: Re: [PATCH] staging: media: sunxi: Add bool cast to value
Message-ID: <20190718074758.GD26951@aptenodytes>
References: <20190717142315.3119-1-nishkadg.linux@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190717142315.3119-1-nishkadg.linux@gmail.com>
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

On Wed 17 Jul 19, 19:53, Nishka Dasgupta wrote:
> Typecast as bool the return value of cedrus_find_format in
> cedrus_check_format as the return value of cedrus_check_format is always
> treated like a boolean value.

Thanks for the patch! Could we also add !! to the returned pointer so that
we are sure that the function returns either false or true, but never a
non-zero value that is not true?

Cheers,

Paul

> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
> ---
>  drivers/staging/media/sunxi/cedrus/cedrus_video.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> index e2b530b1a956..f00a048a0a01 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> @@ -86,7 +86,7 @@ static struct cedrus_format *cedrus_find_format(u32 pixelformat, u32 directions,
>  static bool cedrus_check_format(u32 pixelformat, u32 directions,
>  				unsigned int capabilities)
>  {
> -	return cedrus_find_format(pixelformat, directions, capabilities);
> +	return (bool)cedrus_find_format(pixelformat, directions, capabilities);
>  }
>  
>  static void cedrus_prepare_format(struct v4l2_pix_format *pix_fmt)
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
