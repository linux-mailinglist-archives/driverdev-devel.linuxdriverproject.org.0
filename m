Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 21070213661
	for <lists+driverdev-devel@lfdr.de>; Fri,  3 Jul 2020 10:29:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 558F3265E8;
	Fri,  3 Jul 2020 08:29:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id idDkhBK1j0d4; Fri,  3 Jul 2020 08:29:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E61B8204D7;
	Fri,  3 Jul 2020 08:29:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6B94B1BF4E7
 for <devel@linuxdriverproject.org>; Fri,  3 Jul 2020 08:29:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6798489769
 for <devel@linuxdriverproject.org>; Fri,  3 Jul 2020 08:29:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Dzg69xRwvnjF for <devel@linuxdriverproject.org>;
 Fri,  3 Jul 2020 08:29:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D629889767
 for <devel@driverdev.osuosl.org>; Fri,  3 Jul 2020 08:29:40 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 135B32070C;
 Fri,  3 Jul 2020 08:29:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1593764980;
 bh=8mmFmW6cUt+EbHQpKYu02Q4WprFtOJ0ua5Nssd8Jh4E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=P5z4ksxbRmk955dydovHqKknEpTfroEE8ghw9KRRrFGPMq+Wvy7YJEuu4doF0bUhm
 bGCS99vPdnfnKEuJ6tikeMWpIHU50/yIkdOLzPhL0HlgTAbZ/eMEZ3L8pSWEJoph80
 BmvfmGyJSqovHi8qRLhBL4WOGjkmQQJnMBmJeLKk=
Date: Fri, 3 Jul 2020 10:29:44 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: B K Karthik <bkkarthik@pesu.pes.edu>
Subject: Re: [PATCH] staging: rtl8188eu: include: rtl8188e_xmit.h: fixed
 multiple blank space coding style issues
Message-ID: <20200703082944.GA2399223@kroah.com>
References: <20200702111556.uswbq7umpigltvfk@pesu-pes-edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200702111556.uswbq7umpigltvfk@pesu-pes-edu>
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
Cc: devel@driverdev.osuosl.org, Kees Cook <keescook@chromium.org>,
 linux-kernel@vger.kernel.org, Dan Carpenter <dan.carpenter@oracle.com>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jul 02, 2020 at 07:15:56AM -0400, B K Karthik wrote:
> added blank spaces to improve code readability. (coding style issue)
> 
> Signed-off-by: B K Karthik <karthik.bk2000@live.com>
> ---
>  drivers/staging/rtl8188eu/include/rtl8188e_xmit.h | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/rtl8188eu/include/rtl8188e_xmit.h b/drivers/staging/rtl8188eu/include/rtl8188e_xmit.h
> index 49884cceb349..c115007d883d 100644
> --- a/drivers/staging/rtl8188eu/include/rtl8188e_xmit.h
> +++ b/drivers/staging/rtl8188eu/include/rtl8188e_xmit.h
> @@ -30,11 +30,11 @@
>  #define SET_EARLYMODE_LEN2_1(__pAddr, __Value)			\
>  	SET_BITS_TO_LE_4BYTE(__pAddr, 28, 4, __Value)
>  #define SET_EARLYMODE_LEN2_2(__pAddr, __Value)			\
> -	SET_BITS_TO_LE_4BYTE(__pAddr+4, 0, 8, __Value)
> +	SET_BITS_TO_LE_4BYTE(__pAddr + 4, 0, 8, __Value)
>  #define SET_EARLYMODE_LEN3(__pAddr, __Value)			\
> -	SET_BITS_TO_LE_4BYTE(__pAddr+4, 8, 12, __Value)
> +	SET_BITS_TO_LE_4BYTE(__pAddr + 4, 8, 12, __Value)
>  #define SET_EARLYMODE_LEN4(__pAddr, __Value)			\
> -	SET_BITS_TO_LE_4BYTE(__pAddr+4, 20, 12, __Value)
> +	SET_BITS_TO_LE_4BYTE(__pAddr + 4, 20, 12, __Value)
> 
>  /*  */
>  /* defined for TX DESC Operation */
> @@ -100,7 +100,7 @@ enum TXDESC_SC {
> 
>  #define txdesc_set_ccx_sw_88e(txdesc, value) \
>  	do { \
> -		((struct txdesc_88e *)(txdesc))->sw1 = (((value)>>8) & 0x0f); \
> +		((struct txdesc_88e *)(txdesc))->sw1 = (((value) >> 8) & 0x0f); \
>  		((struct txdesc_88e *)(txdesc))->sw0 = ((value) & 0xff); \
>  	} while (0)
> 
> @@ -138,9 +138,9 @@ struct txrpt_ccx_88e {
>  	u8 sw0;
>  };
> 
> -#define txrpt_ccx_sw_88e(txrpt_ccx) ((txrpt_ccx)->sw0 + ((txrpt_ccx)->sw1<<8))
> +#define txrpt_ccx_sw_88e(txrpt_ccx) ((txrpt_ccx)->sw0 + ((txrpt_ccx)->sw1 << 8))
>  #define txrpt_ccx_qtime_88e(txrpt_ccx)			\
> -	((txrpt_ccx)->ccx_qtime0+((txrpt_ccx)->ccx_qtime1<<8))
> +	((txrpt_ccx)->ccx_qtime0+((txrpt_ccx)->ccx_qtime1 << 8))
> 
>  void rtl8188e_fill_fake_txdesc(struct adapter *padapter, u8 *pDesc,
>  			       u32 BufferLen, u8 IsPsPoll, u8 IsBTQosNull);
> --
> 2.20.1
> 


I asked you to resend all patches as a patch series, not just resend the
patches you previously sent me in random order.  Also, this one has
changed from the first time you sent it, so it needs to be a v2 patch,
right?

Again, all patches from you are now dropped from my queue, please fix up
and resend as asked for.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
