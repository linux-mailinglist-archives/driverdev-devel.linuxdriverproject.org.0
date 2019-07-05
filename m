Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 532686046B
	for <lists+driverdev-devel@lfdr.de>; Fri,  5 Jul 2019 12:27:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 39383861F2;
	Fri,  5 Jul 2019 10:27:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o4NrdJoY1sIp; Fri,  5 Jul 2019 10:27:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AAFE3857C1;
	Fri,  5 Jul 2019 10:27:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 06C0D1BF35F
 for <devel@linuxdriverproject.org>; Fri,  5 Jul 2019 10:26:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 03ED487482
 for <devel@linuxdriverproject.org>; Fri,  5 Jul 2019 10:26:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7df3NPN4XYMP for <devel@linuxdriverproject.org>;
 Fri,  5 Jul 2019 10:26:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net
 [217.70.183.197])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3211C87475
 for <devel@driverdev.osuosl.org>; Fri,  5 Jul 2019 10:26:56 +0000 (UTC)
X-Originating-IP: 93.29.109.196
Received: from aptenodytes (196.109.29.93.rev.sfr.net [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 58E1A1C0005;
 Fri,  5 Jul 2019 10:26:50 +0000 (UTC)
Date: Fri, 5 Jul 2019 12:26:50 +0200
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Nishka Dasgupta <nishkadg.linux@gmail.com>
Subject: Re: [PATCH 2/2] staging: media: sunxi: Replace function
 cedrus_check_format()
Message-ID: <20190705102650.GB1645@aptenodytes>
References: <20190703081317.22795-1-nishkadg.linux@gmail.com>
 <20190703081317.22795-2-nishkadg.linux@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190703081317.22795-2-nishkadg.linux@gmail.com>
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
> Remove function cedrus_check_format as all it does is call
> cedrus_find_format.
> Rename cedrus_find_format to cedrus_check_format to maintain
> compatibility with call sites.
> Issue found with Coccinelle.

Maybe we could have a !! or a bool cast to make coccinelle happy here?

Cheers,

Paul

> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
> ---
>  drivers/staging/media/sunxi/cedrus/cedrus_video.c | 10 ++--------
>  1 file changed, 2 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> index 0ec31b9e0aea..d5cc9ed04fd2 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> @@ -55,8 +55,8 @@ static inline struct cedrus_ctx *cedrus_file2ctx(struct file *file)
>  	return container_of(file->private_data, struct cedrus_ctx, fh);
>  }
>  
> -static bool cedrus_find_format(u32 pixelformat, u32 directions,
> -			       unsigned int capabilities)
> +static bool cedrus_check_format(u32 pixelformat, u32 directions,
> +				unsigned int capabilities)
>  {
>  	struct cedrus_format *fmt;
>  	unsigned int i;
> @@ -76,12 +76,6 @@ static bool cedrus_find_format(u32 pixelformat, u32 directions,
>  	return false;
>  }
>  
> -static bool cedrus_check_format(u32 pixelformat, u32 directions,
> -				unsigned int capabilities)
> -{
> -	return cedrus_find_format(pixelformat, directions, capabilities);
> -}
> -
>  static void cedrus_prepare_format(struct v4l2_pix_format *pix_fmt)
>  {
>  	unsigned int width = pix_fmt->width;
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
