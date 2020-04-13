Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E39651A6673
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Apr 2020 14:50:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D020F85E14;
	Mon, 13 Apr 2020 12:50:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Hp-5CitfX4Dw; Mon, 13 Apr 2020 12:50:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5BA6081437;
	Mon, 13 Apr 2020 12:50:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DD0441BF3EB
 for <devel@linuxdriverproject.org>; Mon, 13 Apr 2020 12:50:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D9729814A3
 for <devel@linuxdriverproject.org>; Mon, 13 Apr 2020 12:50:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hS6FH-3EiXry for <devel@linuxdriverproject.org>;
 Mon, 13 Apr 2020 12:50:24 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DDF828601B
 for <devel@driverdev.osuosl.org>; Mon, 13 Apr 2020 12:50:17 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3664F2073E;
 Mon, 13 Apr 2020 12:50:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586782217;
 bh=Rayx+MRYCQEtj89eA+kyobt0P8lMJiZzafHkc2EDbQw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=aMoMyywzHZmjaH6IWib62vFVj99zzfia6ejQsc7H18hNH6FjKuJEjXj18MAuqYboP
 NxJ11byYyrPjOVzy/jmK8BpEl2wXZ68g8lw8IQWBaA3RcHOI/fvYJIxi4B7lb9AX8q
 rZYdoYnnCRbscuuW35AW3wRqc9CPYMhaHoLb96hQ=
Date: Mon, 13 Apr 2020 14:50:15 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Camylla Goncalves Cantanheide <c.cantanheide@gmail.com>
Subject: Re: [PATCH 1/2] staging: rtl8192u: Refactoring setKey function
Message-ID: <20200413125015.GA3077651@kroah.com>
References: <20200413030129.861-1-c.cantanheide@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200413030129.861-1-c.cantanheide@gmail.com>
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
 lkcamp@lists.libreplanetbr.org, nishkadg.linux@gmail.com,
 navid.emamdoost@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Apr 13, 2020 at 03:01:28AM +0000, Camylla Goncalves Cantanheide wrote:
> Changes of the local variable value and
> modification in the seletive repetition structure.
> 
> Signed-off-by: Camylla Goncalves Cantanheide <c.cantanheide@gmail.com>
> ---
>  drivers/staging/rtl8192u/r8192U_core.c | 52 ++++++++++++--------------
>  1 file changed, 24 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
> index 9b8d85a4855d..87c02aee3854 100644
> --- a/drivers/staging/rtl8192u/r8192U_core.c
> +++ b/drivers/staging/rtl8192u/r8192U_core.c
> @@ -4880,7 +4880,7 @@ void EnableHWSecurityConfig8192(struct net_device *dev)
>  void setKey(struct net_device *dev, u8 entryno, u8 keyindex, u16 keytype,
>  	    u8 *macaddr, u8 defaultkey, u32 *keycontent)
>  {
> -	u32 target_command = 0;
> +	u32 target_command = CAM_CONTENT_COUNT * entryno |  BIT(31) | BIT(16);
>  	u32 target_content = 0;
>  	u16 us_config = 0;
>  	u8 i;
> @@ -4890,39 +4890,35 @@ void setKey(struct net_device *dev, u8 entryno, u8 keyindex, u16 keytype,
>  
>  	RT_TRACE(COMP_SEC,
>  		 "====>to %s, dev:%p, EntryNo:%d, KeyIndex:%d, KeyType:%d, MacAddr%pM\n",
> -        	 __func__, dev, entryno, keyindex, keytype, macaddr);
> +		 __func__, dev, entryno, keyindex, keytype, macaddr);
>  
>  	if (defaultkey)
>  		us_config |= BIT(15) | (keytype << 2);
>  	else
>  		us_config |= BIT(15) | (keytype << 2) | keyindex;
>  
> -	for (i = 0; i < CAM_CONTENT_COUNT; i++) {
> -		target_command  = i + CAM_CONTENT_COUNT * entryno;
> -		target_command |= BIT(31) | BIT(16);
> -
> -		if (i == 0) { /* MAC|Config */
> -			target_content = (u32)(*(macaddr + 0)) << 16 |
> -					(u32)(*(macaddr + 1)) << 24 |
> -					(u32)us_config;
> -
> -			write_nic_dword(dev, WCAMI, target_content);
> -			write_nic_dword(dev, RWCAM, target_command);
> -		} else if (i == 1) { /* MAC */
> -			target_content = (u32)(*(macaddr + 2))	 |
> -					(u32)(*(macaddr + 3)) <<  8 |
> -					(u32)(*(macaddr + 4)) << 16 |
> -					(u32)(*(macaddr + 5)) << 24;
> -			write_nic_dword(dev, WCAMI, target_content);
> -			write_nic_dword(dev, RWCAM, target_command);
> -		} else {
> -			/* Key Material */
> -			if (keycontent) {
> -				write_nic_dword(dev, WCAMI,
> -						*(keycontent + i - 2));
> -				write_nic_dword(dev, RWCAM, target_command);
> -                	}
> -		}
> +	target_content = macaddr[0] << 16 |
> +			 macaddr[0] << 24 |
> +			(u32)us_config;
> +
> +	write_nic_dword(dev, WCAMI, target_content);
> +	write_nic_dword(dev, RWCAM, target_command++);
> +
> +	/* MAC */
> +	target_content = macaddr[2]	  |
> +			 macaddr[3] <<  8 |
> +			 macaddr[4] << 16 |
> +			 macaddr[5] << 24;
> +	write_nic_dword(dev, WCAMI, target_content);
> +	write_nic_dword(dev, RWCAM, target_command++);
> +
> +	/* Key Material */
> +	if (!keycontent)
> +		return;
> +
> +	for (i = 2; i < CAM_CONTENT_COUNT; i++) {
> +		write_nic_dword(dev, WCAMI, *keycontent++);
> +		write_nic_dword(dev, RWCAM, target_command++);
>  	}
>  }
>  
> -- 
> 2.20.1
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
