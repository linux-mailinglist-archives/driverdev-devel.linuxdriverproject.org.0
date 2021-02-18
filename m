Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BFA5C31ED91
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Feb 2021 18:47:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E54FC869C8;
	Thu, 18 Feb 2021 17:47:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FC-6Sfl_q2N7; Thu, 18 Feb 2021 17:47:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 954CF86999;
	Thu, 18 Feb 2021 17:47:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E23681BF9B9
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 17:47:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D968E6065C
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 17:47:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5YtWq5wtQdO1 for <devel@linuxdriverproject.org>;
 Thu, 18 Feb 2021 17:47:41 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id EF20960652; Thu, 18 Feb 2021 17:47:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 98FBA60652
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 17:47:40 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 49D5D64E79;
 Thu, 18 Feb 2021 17:47:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613670459;
 bh=9LOodOlDfKK937+aNt2DSiUuo0WvFvZNR/flDCS5HqQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sy0dJSOeXe0s6Zw2YQ7niEOCQ5pvu8p7QXDFI2Hpkza4Q6xkiMCpndXOYwkrY/2ka
 FDN9N4qvkY1lqV7vHzBjJSVEJXn95AjEAtEXyzDisbfxZZdPE/hXxGkMcrpR4O4GVn
 POYTooDHYo7UjG4x9dlHZzvNwJmSIlTEsd934i3s=
Date: Thu, 18 Feb 2021 18:47:36 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Suryashankar Das <suryashankardas.2002@gmail.com>
Subject: Re: [PATCH] staging: rtl8188eu: Align block comments
Message-ID: <YC6oONjckmrSP2ip@kroah.com>
References: <20210218172042.44597-1-suryashankardas.2002@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210218172042.44597-1-suryashankardas.2002@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Feb 18, 2021 at 10:50:43PM +0530, Suryashankar Das wrote:
> This patch fixes the checkpatch.pl warnings:
> WARNING: Block comments use * on subsequent lines
> WARNING: Block comments should align the * on each line
> 
> Signed-off-by: Suryashankar Das <suryashankardas.2002@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_security.c | 82 +++++++++----------
>  1 file changed, 41 insertions(+), 41 deletions(-)
> 
> diff --git a/drivers/staging/rtl8188eu/core/rtw_security.c b/drivers/staging/rtl8188eu/core/rtw_security.c
> index 46ba55a8952a..73b78740093b 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_security.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_security.c
> @@ -127,8 +127,8 @@ static __le32 getcrc32(u8 *buf, int len)
>  }
>  
>  /*
> -	Need to consider the fragment  situation
> -*/
> + *	Need to consider the fragment  situation
> + */
>  void rtw_wep_encrypt(struct adapter *padapter, struct xmit_frame *pxmitframe)
>  {
>  	int	curfragnum, length;
> @@ -465,23 +465,23 @@ static const unsigned short Sbox1[2][256] = {  /* Sbox for hash (can be in ROM)
>    }
>  };
>  
> - /*
> -**********************************************************************
> -* Routine: Phase 1 -- generate P1K, given TA, TK, IV32
> -*
> -* Inputs:
> -*     tk[]      = temporal key			 [128 bits]
> -*     ta[]      = transmitter's MAC address	    [ 48 bits]
> -*     iv32      = upper 32 bits of IV		  [ 32 bits]
> -* Output:
> -*     p1k[]     = Phase 1 key			  [ 80 bits]
> -*
> -* Note:
> -*     This function only needs to be called every 2**16 packets,
> -*     although in theory it could be called every packet.
> -*
> -**********************************************************************
> -*/
> +/*
> + **********************************************************************
> + * Routine: Phase 1 -- generate P1K, given TA, TK, IV32
> + *
> + * Inputs:
> + *     tk[]      = temporal key			 [128 bits]
> + *     ta[]      = transmitter's MAC address	    [ 48 bits]
> + *     iv32      = upper 32 bits of IV		  [ 32 bits]
> + * Output:
> + *     p1k[]     = Phase 1 key			  [ 80 bits]
> + *
> + * Note:
> + *     This function only needs to be called every 2**16 packets,
> + *     although in theory it could be called every packet.
> + *
> + **********************************************************************
> + */

For these, please convert them to the kerneldoc format, don't create a
custom one as that's not needed and would only require someone else to
go back and fix it up again.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
