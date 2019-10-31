Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9993AEAAA8
	for <lists+driverdev-devel@lfdr.de>; Thu, 31 Oct 2019 07:39:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0FBE5848AB;
	Thu, 31 Oct 2019 06:39:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6IC_-8sfIFLz; Thu, 31 Oct 2019 06:39:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7A5AE80CE9;
	Thu, 31 Oct 2019 06:39:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 82B131BF405
 for <devel@linuxdriverproject.org>; Thu, 31 Oct 2019 06:39:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7EE262042D
 for <devel@linuxdriverproject.org>; Thu, 31 Oct 2019 06:39:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jGdVjsmrFMfv for <devel@linuxdriverproject.org>;
 Thu, 31 Oct 2019 06:39:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail3-relais-sop.national.inria.fr
 (mail3-relais-sop.national.inria.fr [192.134.164.104])
 by silver.osuosl.org (Postfix) with ESMTPS id 1B12420418
 for <devel@driverdev.osuosl.org>; Thu, 31 Oct 2019 06:39:22 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="5.68,250,1569276000"; d="scan'208";a="325190605"
Received: from abo-45-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.45])
 by mail3-relais-sop.national.inria.fr with
 ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 31 Oct 2019 07:39:20 +0100
Date: Thu, 31 Oct 2019 07:39:20 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3 2/3] staging: rts5208: Eliminate
 the use of Camel Case in files xd.{h,c}
In-Reply-To: <20191030190514.10011-3-gabrielabittencourt00@gmail.com>
Message-ID: <alpine.DEB.2.21.1910310738570.2718@hadrien>
References: <20191030190514.10011-1-gabrielabittencourt00@gmail.com>
 <20191030190514.10011-3-gabrielabittencourt00@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
 lkcamp@lists.libreplanetbr.org, nishkadg.linux@gmail.com,
 kim.jamie.bradley@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On Wed, 30 Oct 2019, Gabriela Bittencourt wrote:

> Cleans up checks of "Avoid CamelCase" in files xd.{h,c}
>
> Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>


> ---
>  drivers/staging/rts5208/xd.c | 8 ++++----
>  drivers/staging/rts5208/xd.h | 6 +++---
>  2 files changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/staging/rts5208/xd.c b/drivers/staging/rts5208/xd.c
> index f3dc96a4c59d..0f369935fb6c 100644
> --- a/drivers/staging/rts5208/xd.c
> +++ b/drivers/staging/rts5208/xd.c
> @@ -630,13 +630,13 @@ static int reset_xd(struct rtsx_chip *chip)
>  			xd_card->zone_cnt = 32;
>  			xd_card->capacity = 1024000;
>  			break;
> -		case xD_1G_X8_512:
> +		case XD_1G_X8_512:
>  			XD_PAGE_512(xd_card);
>  			xd_card->addr_cycle = 4;
>  			xd_card->zone_cnt = 64;
>  			xd_card->capacity = 2048000;
>  			break;
> -		case xD_2G_X8_512:
> +		case XD_2G_X8_512:
>  			XD_PAGE_512(xd_card);
>  			xd_card->addr_cycle = 4;
>  			xd_card->zone_cnt = 128;
> @@ -669,10 +669,10 @@ static int reset_xd(struct rtsx_chip *chip)
>  		return STATUS_FAIL;
>  	}
>
> -	retval = xd_read_id(chip, READ_xD_ID, id_buf, 4);
> +	retval = xd_read_id(chip, READ_XD_ID, id_buf, 4);
>  	if (retval != STATUS_SUCCESS)
>  		return STATUS_FAIL;
> -	dev_dbg(rtsx_dev(chip), "READ_xD_ID: 0x%x 0x%x 0x%x 0x%x\n",
> +	dev_dbg(rtsx_dev(chip), "READ_XD_ID: 0x%x 0x%x 0x%x 0x%x\n",
>  		id_buf[0], id_buf[1], id_buf[2], id_buf[3]);
>  	if (id_buf[2] != XD_ID_CODE)
>  		return STATUS_FAIL;
> diff --git a/drivers/staging/rts5208/xd.h b/drivers/staging/rts5208/xd.h
> index 57b94129b26f..98c00f268e56 100644
> --- a/drivers/staging/rts5208/xd.h
> +++ b/drivers/staging/rts5208/xd.h
> @@ -36,7 +36,7 @@
>  #define	BLK_ERASE_1			0x60
>  #define	BLK_ERASE_2			0xD0
>  #define READ_STS			0x70
> -#define READ_xD_ID			0x9A
> +#define READ_XD_ID			0x9A
>  #define	COPY_BACK_512			0x8A
>  #define	COPY_BACK_2K			0x85
>  #define	READ1_1_2			0x30
> @@ -72,8 +72,8 @@
>  #define	XD_128M_X16_2048		0xC1
>  #define	XD_4M_X8_512_1			0xE3
>  #define	XD_4M_X8_512_2			0xE5
> -#define	xD_1G_X8_512			0xD3
> -#define	xD_2G_X8_512			0xD5
> +#define	XD_1G_X8_512			0xD3
> +#define	XD_2G_X8_512			0xD5
>
>  #define	XD_ID_CODE			0xB5
>
> --
> 2.20.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191030190514.10011-3-gabrielabittencourt00%40gmail.com.
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
