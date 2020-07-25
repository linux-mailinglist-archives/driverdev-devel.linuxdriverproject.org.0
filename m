Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D109B22D544
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 Jul 2020 07:49:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 11DA086B93;
	Sat, 25 Jul 2020 05:49:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VVnzNvfnk9mm; Sat, 25 Jul 2020 05:49:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5F57E85087;
	Sat, 25 Jul 2020 05:49:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E99051BF831
 for <devel@linuxdriverproject.org>; Sat, 25 Jul 2020 05:49:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E323820554
 for <devel@linuxdriverproject.org>; Sat, 25 Jul 2020 05:49:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s3RVqnFJaw4c for <devel@linuxdriverproject.org>;
 Sat, 25 Jul 2020 05:49:50 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id B6D6720519
 for <devel@driverdev.osuosl.org>; Sat, 25 Jul 2020 05:49:50 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E609020714;
 Sat, 25 Jul 2020 05:49:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1595656190;
 bh=nOYXXEP7ABDnjaiGUOsvjhAy8YRdlYndBnZUptslPoo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GtaNPTrQeFwft78Huw39jbds7hL7YAvwbsQKQgO0+Gi5orXnRlFzbgxVHHMcVHRhc
 Gucc74goV+vxUx9exQd48BZd7xUnvabXhd3dJ5DabGczF+KoMgR5CJS3Pe9cAnGjE9
 W781mr82d0QNhScUYcbW2y/xzuwFGnYoGkSsIgyQ=
Date: Sat, 25 Jul 2020 07:49:50 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Anant Thazhemadam <anant.thazhemadam@gmail.com>
Subject: Re: [PATCH] Fix coding style issues
Message-ID: <20200725054950.GB1045868@kroah.com>
References: <20200724202523.16829-1-anant.thazhemadam@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200724202523.16829-1-anant.thazhemadam@gmail.com>
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
Cc: Merwin Trever Ferrao <merwintf@gmail.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, Anoop S <anoop.skumar1507@gmail.com>,
 Joe Perches <joe@perches.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Jul 25, 2020 at 01:55:19AM +0530, Anant Thazhemadam wrote:
> Coding style issues found were rectified
> 
> Signed-off-by: Anant Thazhemadam <anant.thazhemadam@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_security.c | 92 ++++++++++---------
>  1 file changed, 47 insertions(+), 45 deletions(-)
> 
> diff --git a/drivers/staging/rtl8188eu/core/rtw_security.c b/drivers/staging/rtl8188eu/core/rtw_security.c
> index 21f6652dd69f..3111f4a899ee 100644
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
>  void rtw_wep_encrypt(struct adapter *padapter, u8 *pxmitframe)
>  {
>  	int	curfragnum, length;
> @@ -429,9 +429,9 @@ static const unsigned short Sbox1[2][256] = {  /* Sbox for hash (can be in ROM)
>  	0x2DB6, 0x3C22, 0x1592, 0xC920, 0x8749, 0xAAFF, 0x5078, 0xA57A,
>  	0x038F, 0x59F8, 0x0980, 0x1A17, 0x65DA, 0xD731, 0x84C6, 0xD0B8,
>  	0x82C3, 0x29B0, 0x5A77, 0x1E11, 0x7BCB, 0xA8FC, 0x6DD6, 0x2C3A,
> -  },
> +},
>  
> -  {  /* second half of table is unsigned char-reversed version of first! */
> +{  /* second half of table is unsigned char-reversed version of first! */
>  	0xA5C6, 0x84F8, 0x99EE, 0x8DF6, 0x0DFF, 0xBDD6, 0xB1DE, 0x5491,
>  	0x5060, 0x0302, 0xA9CE, 0x7D56, 0x19E7, 0x62B5, 0xE64D, 0x9AEC,
>  	0x458F, 0x9D1F, 0x4089, 0x87FA, 0x15EF, 0xEBB2, 0xC98E, 0x0BFB,
> @@ -464,26 +464,26 @@ static const unsigned short Sbox1[2][256] = {  /* Sbox for hash (can be in ROM)
>  	0xB62D, 0x223C, 0x9215, 0x20C9, 0x4987, 0xFFAA, 0x7850, 0x7AA5,
>  	0x8F03, 0xF859, 0x8009, 0x171A, 0xDA65, 0x31D7, 0xC684, 0xB8D0,
>  	0xC382, 0xB029, 0x775A, 0x111E, 0xCB7B, 0xFCA8, 0xD66D, 0x3A2C,
> -  }
> +}
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
>  static void phase1(u16 *p1k, const u8 *tk, const u8 *ta, u32 iv32)
>  {
>  	int  i;
> @@ -507,28 +507,28 @@ static void phase1(u16 *p1k, const u8 *tk, const u8 *ta, u32 iv32)
>  }
>  
>  /*
> -**********************************************************************
> -* Routine: Phase 2 -- generate RC4KEY, given TK, P1K, IV16
> -*
> -* Inputs:
> -*     tk[]      = Temporal key			 [128 bits]
> -*     p1k[]     = Phase 1 output key		   [ 80 bits]
> -*     iv16      = low 16 bits of IV counter	    [ 16 bits]
> -* Output:
> -*     rc4key[]  = the key used to encrypt the packet   [128 bits]
> -*
> -* Note:
> -*     The value {TA, IV32, IV16} for Phase1/Phase2 must be unique
> -*     across all packets using the same key TK value. Then, for a
> -*     given value of TK[], this TKIP48 construction guarantees that
> -*     the final RC4KEY value is unique across all packets.
> -*
> -* Suggested implementation optimization: if PPK[] is "overlaid"
> -*     appropriately on RC4KEY[], there is no need for the final
> -*     for loop below that copies the PPK[] result into RC4KEY[].
> -*
> -**********************************************************************
> -*/
> + **********************************************************************
> + * Routine: Phase 2 -- generate RC4KEY, given TK, P1K, IV16
> + *
> + * Inputs:
> + *     tk[]      = Temporal key			 [128 bits]
> + *     p1k[]     = Phase 1 output key		   [ 80 bits]
> + *     iv16      = low 16 bits of IV counter	    [ 16 bits]
> + * Output:
> + *     rc4key[]  = the key used to encrypt the packet   [128 bits]
> + *
> + * Note:
> + *     The value {TA, IV32, IV16} for Phase1/Phase2 must be unique
> + *     across all packets using the same key TK value. Then, for a
> + *     given value of TK[], this TKIP48 construction guarantees that
> + *     the final RC4KEY value is unique across all packets.
> + *
> + * Suggested implementation optimization: if PPK[] is "overlaid"
> + *     appropriately on RC4KEY[], there is no need for the final
> + *     for loop below that copies the PPK[] result into RC4KEY[].
> + *
> + **********************************************************************
> + */
>  static void phase2(u8 *rc4key, const u8 *tk, const u16 *p1k, u16 iv16)
>  {
>  	int  i;
> @@ -718,7 +718,9 @@ u32 rtw_tkip_decrypt(struct adapter *padapter, u8 *precvframe)
>  				res = _FAIL;
>  			}
>  		} else {
> -			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("%s: stainfo==NULL!!!\n",__func__));
> +			RT_TRACE(_module_rtl871x_security_c_, _drv_err_,
> +				 ("%s: stainfo==NULL!!!\n", __func__)
> +				);
>  			res = _FAIL;
>  		}
>  	}
> -- 
> 2.25.1
> 

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

- Your patch did many different things all at once, making it difficult
  to review.  All Linux kernel patches need to only do one thing at a
  time.  If you need to do multiple things (such as clean up all coding
  style issues in a file/driver), do it in a sequence of patches, each
  one doing only one thing.  This will make it easier to review the
  patches to ensure that they are correct, and to help alleviate any
  merge issues that larger patches can cause.

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
