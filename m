Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 35EDC69BBE
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Jul 2019 21:55:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 16FBF86D08;
	Mon, 15 Jul 2019 19:55:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g2OJAWGa5DiD; Mon, 15 Jul 2019 19:55:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D55D886812;
	Mon, 15 Jul 2019 19:55:42 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DA89A1BF393
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 19:55:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D6B6787541
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 19:55:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tQPWHrUvsPLz
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 19:55:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6267087524
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 19:55:40 +0000 (UTC)
Received: from localhost (unknown [88.128.80.139])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 850D720659;
 Mon, 15 Jul 2019 19:55:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563220540;
 bh=9nXe+yEypGWj8DLLZmCf4rxjTWShBgoYFzsTBzPRDzw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CY1J45f1tBeQGz8EFgRs1uOGLtMPpCdp5+5hBOpf4EuPYeQQhR2CxTv5hH/Lc4i4V
 xPazIMH5QRCC4sHhR+dYhzdfx50vTu+FcN6P6aJBF7cAbXqJ0EH+b9tgBz+mdqFN4s
 rCZIpfnhm95H8eYlG6tKysrK6JDx1SCYpDW6zdAk=
Date: Mon, 15 Jul 2019 21:40:52 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: christianluciano.m@gmail.com
Subject: Re: [PATCH] staging: rtl8712: Fix Alignment CHECK
Message-ID: <20190715194052.GB26092@kroah.com>
References: <20190713214720.11683-1-christianluciano.m@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190713214720.11683-1-christianluciano.m@gmail.com>
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
Cc: florian.c.schilhabel@googlemail.com, driverdev-devel@linuxdriverproject.org,
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Jul 13, 2019 at 06:47:20PM -0300, christianluciano.m@gmail.com wrote:
> From: Christian Luciano Moreno <christianluciano.m@gmail.com>
> 
> Fix alignment check reported by checkpatch.
> 
> Signed-off-by: Christian Luciano Moreno <christianluciano.m@gmail.com>
> ---
>  drivers/staging/rtl8712/recv_linux.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8712/recv_linux.c b/drivers/staging/rtl8712/recv_linux.c
> index 4e20cbafa9fb..97c980a039bd 100644
> --- a/drivers/staging/rtl8712/recv_linux.c
> +++ b/drivers/staging/rtl8712/recv_linux.c
> @@ -61,7 +61,7 @@ int r8712_os_recvbuf_resource_alloc(struct _adapter *padapter,
>  
>  /*free os related resource in struct recv_buf*/
>  int r8712_os_recvbuf_resource_free(struct _adapter *padapter,
> -			     struct recv_buf *precvbuf)
> +				   struct recv_buf *precvbuf)
>  {
>  	if (precvbuf->pskb)
>  		dev_kfree_skb_any(precvbuf->pskb);
> -- 
> 2.22.0

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

- You sent multiple patches, yet no indication of which ones should be
  applied in which order.  Greg could just guess, but if you are
  receiving this email, he guessed wrong and the patches didn't apply.
  Please read the section entitled "The canonical patch format" in the
  kernel file, Documentation/SubmittingPatches for a description of how
  to do this so that Greg has a chance to apply these correctly.

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
