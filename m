Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 74F93318919
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 12:12:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2EF1C86E19;
	Thu, 11 Feb 2021 11:12:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AoidXX-qkB0z; Thu, 11 Feb 2021 11:12:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2AE7586B71;
	Thu, 11 Feb 2021 11:12:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DE0291BF3EB
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 11:12:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CD700600D1
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 11:12:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fWEWICgksaNz for <devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 11:12:21 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 23CB76F53B; Thu, 11 Feb 2021 11:12:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E742A600D1
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 11:12:19 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id D299764DA8;
 Thu, 11 Feb 2021 11:12:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613041939;
 bh=AfWh3LS8RGgPFEcFw9yxWHIBiMZsD+b4vCHxRz9Uoqk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Mx5ujdB+2m2dHARodSMiqRArbBubV1FEfEU2WjoDvbfmOGLhqnQjHFWVCl5yVBorY
 Zpzaiyib1vNNLVa3ZoGyGkt6/pOIWIXuZPmkikjjjrI0mWTaZbZZf2I43UvxH2BgkA
 2gCx6mjYansczUPTaUvqaTDgr1xHKTMjRi8gYA3w=
Date: Thu, 11 Feb 2021 12:12:14 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: karthik alapati <mail@karthek.com>
Subject: Re: [PATCH] staging: rtl8723bs: fix function comments to follow
 kernel-doc
Message-ID: <YCURDrcCcAmVOIbL@kroah.com>
References: <YCQvl3+KviQNh2JI@karthik-strix-linux.karthek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YCQvl3+KviQNh2JI@karthik-strix-linux.karthek.com>
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
Cc: devel@driverdev.osuosl.org, Stephen Rothwell <sfr@canb.auug.org.au>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Feb 11, 2021 at 12:40:15AM +0530, karthik alapati wrote:
> fix checkpatch.pl warning for "block comments should align the
>  * on each line" and make function comments follow kernel-doc
> 
> Signed-off-by: karthik alapati <mail@karthek.com>
> ---
>  .../staging/rtl8723bs/hal/rtl8723b_phycfg.c   | 185 +++++++-----------
>  1 file changed, 73 insertions(+), 112 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c b/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
> index cf23414d7..1fd504181 100644
> --- a/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
> +++ b/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
> @@ -20,16 +20,11 @@
>  #define MAX_DOZE_WAITING_TIMES_9x 64
>  
>  /**
> -* Function:	phy_CalculateBitShift
> -*
> -* OverView:	Get shifted position of the BitMask
> -*
> -* Input:
> -*		u32 	BitMask,
> -*
> -* Output:	none
> -* Return:		u32 	Return the shift bit bit position of the mask
> -*/
> + *	phy_CalculateBitShift - Get shifted position of the BitMask.
> + *	@BitMask: Bitmask.
> + *
> + *	Return:	Return the shift bit position of the mask
> + */

Why indent these comments by a tab?  A single space is fine.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
