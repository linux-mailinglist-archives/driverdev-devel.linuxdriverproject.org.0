Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 181AFEE526
	for <lists+driverdev-devel@lfdr.de>; Mon,  4 Nov 2019 17:51:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B0F0820767;
	Mon,  4 Nov 2019 16:51:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yqKJyfsQOY3R; Mon,  4 Nov 2019 16:51:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 566072050B;
	Mon,  4 Nov 2019 16:51:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CCAC91BF4D6
 for <devel@linuxdriverproject.org>; Mon,  4 Nov 2019 16:51:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C83188A4E3
 for <devel@linuxdriverproject.org>; Mon,  4 Nov 2019 16:51:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id seWAx8Kbfugd for <devel@linuxdriverproject.org>;
 Mon,  4 Nov 2019 16:51:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2BA848A4E2
 for <devel@driverdev.osuosl.org>; Mon,  4 Nov 2019 16:51:51 +0000 (UTC)
Received: from localhost (host6-102.lan-isdn.imaginet.fr [195.68.6.102])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 61A772080F;
 Mon,  4 Nov 2019 16:51:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572886311;
 bh=ZmHGadF8VrETaBFi+B+Z6MDGAsQZ0t9Gj/4iezFDasU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qVUFC0x9QvBB6c7Za3K5mBIEw+ZH7xtUz3kovv0i72+I9G4zU3GDixfLyhghR7VJQ
 wQYkEojIK2stVJQFPjsEd5u6xAzGlGRwlUI3tVpbK0SpOcXjDEPsSHHCYY9QmCTNid
 Wi5VJnwkLplkT55ISaydRIrptKkjA0RgWMVbTvwA=
Date: Mon, 4 Nov 2019 17:51:48 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jules Irenge <jbi.octave@gmail.com>
Subject: Re: [PATCH] staging: rts5208: rewrite macro with GNU extension
 __auto_type
Message-ID: <20191104165148.GA2293059@kroah.com>
References: <20191104164400.9935-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191104164400.9935-1-jbi.octave@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Nov 04, 2019 at 04:44:00PM +0000, Jules Irenge wrote:
> Rewrite macro function with GNU extension __auto_type
> to remove issue detected by checkpatch tool.
> CHECK: MACRO argument reuse - possible side-effects?
> 
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  drivers/staging/rts5208/rtsx_chip.h | 92 +++++++++++++++++------------
>  1 file changed, 55 insertions(+), 37 deletions(-)
> 
> diff --git a/drivers/staging/rts5208/rtsx_chip.h b/drivers/staging/rts5208/rtsx_chip.h
> index bac65784d4a1..4b986d5c68da 100644
> --- a/drivers/staging/rts5208/rtsx_chip.h
> +++ b/drivers/staging/rts5208/rtsx_chip.h
> @@ -386,23 +386,31 @@ struct zone_entry {
>  
>  /* SD card */
>  #define CHK_SD(sd_card)			(((sd_card)->sd_type & 0xFF) == TYPE_SD)
> -#define CHK_SD_HS(sd_card)		(CHK_SD(sd_card) && \
> -					 ((sd_card)->sd_type & SD_HS))
> -#define CHK_SD_SDR50(sd_card)		(CHK_SD(sd_card) && \
> -					 ((sd_card)->sd_type & SD_SDR50))
> -#define CHK_SD_DDR50(sd_card)		(CHK_SD(sd_card) && \
> -					 ((sd_card)->sd_type & SD_DDR50))
> -#define CHK_SD_SDR104(sd_card)		(CHK_SD(sd_card) && \
> -					 ((sd_card)->sd_type & SD_SDR104))
> -#define CHK_SD_HCXC(sd_card)		(CHK_SD(sd_card) && \
> -					 ((sd_card)->sd_type & SD_HCXC))
> -#define CHK_SD_HC(sd_card)		(CHK_SD_HCXC(sd_card) && \
> -					 ((sd_card)->capacity <= 0x4000000))
> -#define CHK_SD_XC(sd_card)		(CHK_SD_HCXC(sd_card) && \
> -					 ((sd_card)->capacity > 0x4000000))
> -#define CHK_SD30_SPEED(sd_card)		(CHK_SD_SDR50(sd_card) || \
> -					 CHK_SD_DDR50(sd_card) || \
> -					 CHK_SD_SDR104(sd_card))
> +#define CHK_SD_HS(sd_card)\
> +	({__auto_type _sd = sd_card; CHK_SD(_sd) && \
> +					 (_sd->sd_type & SD_HS); })
> +#define CHK_SD_SDR50(sd_card)\
> +	({__auto_type _sd = sd_card; CHK_SD(_sd) && \
> +					 (_sd->sd_type & SD_SDR50); })
> +#define CHK_SD_DDR50(sd_card)\
> +	({__auto_type _sd = sd_card; CHK_SD(_sd) && \
> +					 (_sd->sd_type & SD_DDR50); })
> +#define CHK_SD_SDR104(sd_card)\
> +	({__auto_type _sd = sd_card; CHK_SD(_sd) && \
> +					 (_sd->sd_type & SD_SDR104); })
> +#define CHK_SD_HCXC(sd_card)\
> +	({__auto_type _sd = sd_card; CHK_SD(_sd) && \
> +					 (_sd->sd_type & SD_HCXC); })
> +#define CHK_SD_HC(sd_card)\
> +	({__auto_type _sd = sd_card; CHK_SD_HCXC(_sd) && \
> +					(_sd->capacity <= 0x4000000); })
> +#define CHK_SD_XC(sd_card)\
> +	({__auto_type _sd = sd_card; CHK_SD_HCXC(_sd) && \
> +					 (_sd->capacity > 0x4000000); })
> +#define CHK_SD30_SPEED(sd_card)\
> +	({__auto_type _sd = sd_card; CHK_SD_SDR50(_sd) || \
> +					CHK_SD_DDR50(_sd) || \
> +					CHK_SD_SDR104(_sd); })
>  
>  #define SET_SD(sd_card)			((sd_card)->sd_type = TYPE_SD)
>  #define SET_SD_HS(sd_card)		((sd_card)->sd_type |= SD_HS)
> @@ -420,18 +428,24 @@ struct zone_entry {
>  /* MMC card */
>  #define CHK_MMC(sd_card)		(((sd_card)->sd_type & 0xFF) == \
>  					 TYPE_MMC)
> -#define CHK_MMC_26M(sd_card)		(CHK_MMC(sd_card) && \
> -					 ((sd_card)->sd_type & MMC_26M))
> -#define CHK_MMC_52M(sd_card)		(CHK_MMC(sd_card) && \
> -					 ((sd_card)->sd_type & MMC_52M))
> -#define CHK_MMC_4BIT(sd_card)		(CHK_MMC(sd_card) && \
> -					 ((sd_card)->sd_type & MMC_4BIT))
> -#define CHK_MMC_8BIT(sd_card)		(CHK_MMC(sd_card) && \
> -					 ((sd_card)->sd_type & MMC_8BIT))
> -#define CHK_MMC_SECTOR_MODE(sd_card)	(CHK_MMC(sd_card) && \
> -					 ((sd_card)->sd_type & MMC_SECTOR_MODE))
> -#define CHK_MMC_DDR52(sd_card)		(CHK_MMC(sd_card) && \
> -					 ((sd_card)->sd_type & MMC_DDR52))
> +#define CHK_MMC_26M(sd_card)\
> +	({__auto_type _sd = sd_card; CHK_MMC(_sd) && \
> +					 (_sd->sd_type & MMC_26M); })

Ick, no.  These are obviously pointers, which can not be "evaluated
twice" so this whole thing is just fine.

checkpatch is just a "hint" that you might want to look at the code.
This stuff is just fine, look at how it is being used for proof of that.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
