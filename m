Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E9E531F0A8
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Feb 2021 21:01:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AC7BD873C9;
	Thu, 18 Feb 2021 20:01:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OScZ1HTyvayw; Thu, 18 Feb 2021 20:01:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8D10C873A2;
	Thu, 18 Feb 2021 20:01:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 411791BF425
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 20:01:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3B65F86A70
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 20:01:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PHfb9umYyOKO for <devel@linuxdriverproject.org>;
 Thu, 18 Feb 2021 20:01:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0B9ED86A63
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 20:01:18 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7F04A64E0F;
 Thu, 18 Feb 2021 20:01:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613678477;
 bh=YpiNWgj10muyFSIVWtLBH3ek2+9i0lLrltUVkeVhijc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=THyuM6tWBXsTn/YMwUu8/RTbUJoAElGHPxooCeoJcm7FLz6ofitLsSt6DLBvffLlL
 nfSyFV+u6w/vXx2HjeKrRFz9AWJqnlm+hWPQjG84yhY4zq7JA0cZgH9t6WUPQg8gXj
 RdACxhTxLxeK6qlaf4L2nN6jpLdElmRYrrUWXzo0=
Date: Thu, 18 Feb 2021 21:01:13 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Kurt Manucredo <fuzzybritches@protonmail.com>
Subject: Re: [PATCH] staging: rtl8723bs: make if-statement checkpatch.pl
 conform
Message-ID: <YC7HiVest0ghJNNA@kroah.com>
References: <20210218194830.8-1-fuzzybritches@protonmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210218194830.8-1-fuzzybritches@protonmail.com>
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
Cc: devel@driverdev.osuosl.org, tiwai@suse.de, d.straghkov@ispras.ru,
 linux-kernel@vger.kernel.org, dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Feb 18, 2021 at 07:50:27PM +0000, Kurt Manucredo wrote:
> Signed-off-by: Kurt Manucredo <fuzzybritches@protonmail.com>
> ---
> 
> The preferred coding style is:
> 	if (!StaAddr)
> 	return;
> 
> thank you mr. dan carpenter
> 
>  drivers/staging/rtl8723bs/core/rtw_wlan_util.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
> index 975f2830e29e..96feced698ac 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
> @@ -2146,7 +2146,7 @@ void rtw_get_sec_iv(struct adapter *padapter, u8 *pcur_dot11txpn, u8 *StaAddr)
>  	struct security_priv *psecpriv = &padapter->securitypriv;
>  
>  	memset(pcur_dot11txpn, 0, 8);
> -	if (NULL == StaAddr)
> +	if (!StaAddr)
>  		return;
>  	psta = rtw_get_stainfo(&padapter->stapriv, StaAddr);
>  	DBG_871X("%s(): StaAddr: %02x %02x %02x %02x %02x %02x\n",
> -- 
> 2.20.1
> 
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

- This looks like a new version of a previously submitted patch, but you
  did not list below the --- line any changes from the previous version.
  Please read the section entitled "The canonical patch format" in the
  kernel file, Documentation/SubmittingPatches for what needs to be done
  here to properly describe this.

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
