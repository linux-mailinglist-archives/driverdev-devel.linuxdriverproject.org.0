Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D67338D5DD
	for <lists+driverdev-devel@lfdr.de>; Sat, 22 May 2021 14:54:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 558EE401F5;
	Sat, 22 May 2021 12:54:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3Oy9gyjuCC4B; Sat, 22 May 2021 12:54:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7BA0B402DC;
	Sat, 22 May 2021 12:54:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2EFF41BF3FC
 for <devel@linuxdriverproject.org>; Sat, 22 May 2021 12:54:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1E68D402D8
 for <devel@linuxdriverproject.org>; Sat, 22 May 2021 12:54:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fJmSRwiP3mo2 for <devel@linuxdriverproject.org>;
 Sat, 22 May 2021 12:54:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0EBC04029A
 for <devel@driverdev.osuosl.org>; Sat, 22 May 2021 12:54:17 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1CEA161182;
 Sat, 22 May 2021 12:54:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1621688057;
 bh=AVPW+3qqfKDvCCi1NvWBxo2rATr52e1dT7BxnweCypQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=D3oOvidM0umztiHZmmTMO9Ti5xsl0ufTmZasJ/wU07S5r4rBvT6bmDYosAzgyL3NA
 MZODydCMmiXNsZQVxjHpXEaJYe4124ZD5dFOXMLIriH9XcI1sXxtk6yUOBrjustsVH
 XgoDgi5CTevcFI1w777t1GCEXup8RtE8Kw8oIwQc=
Date: Sat, 22 May 2021 14:54:15 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: tco0427 <a29661498@gmail.com>
Subject: Re: [PATCH] Fixed a coding style issue - missing a blank line after
 declarations
Message-ID: <YKj+90566z0fZvBU@kroah.com>
References: <20210522114950.26772-1-a29661498@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210522114950.26772-1-a29661498@gmail.com>
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, May 22, 2021 at 08:49:50PM +0900, tco0427 wrote:
> ---
>  drivers/staging/rtl8723bs/core/rtw_cmd.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> index e1a8f8b47edd..40d99644ddc7 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> @@ -1337,6 +1337,7 @@ u8 traffic_status_watchdog(struct adapter *padapter, u8 from_timer)
>  static void dynamic_chk_wk_hdl(struct adapter *padapter)
>  {
>  	struct mlme_priv *pmlmepriv;
> +    
>  	pmlmepriv = &(padapter->mlmepriv);
>  
>  	if (check_fwstate(pmlmepriv, WIFI_AP_STATE) == true)
> -- 
> 2.30.1 (Apple Git-130)


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

- Your patch does not have a Signed-off-by: line.  Please read the
  kernel file, Documentation/SubmittingPatches and resend it after
  adding that line.  Note, the line needs to be in the body of the
  email, before the patch, not at the bottom of the patch or in the
  email signature.

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

- It looks like you did not use your "real" name for the patch on either
  the Signed-off-by: line, or the From: line (both of which have to
  match).  Please read the kernel file, Documentation/SubmittingPatches
  for how to do this correctly.


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
