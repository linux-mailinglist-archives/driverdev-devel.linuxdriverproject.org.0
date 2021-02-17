Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AD20E31D558
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Feb 2021 07:23:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3BEC485F5F;
	Wed, 17 Feb 2021 06:23:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GNr3vREe8MS7; Wed, 17 Feb 2021 06:23:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F092E85F2D;
	Wed, 17 Feb 2021 06:23:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5F1A81BF834
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 06:23:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5B2476F480
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 06:23:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EJLfhUOokl-P for <devel@linuxdriverproject.org>;
 Wed, 17 Feb 2021 06:23:41 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 8A8636F5C6; Wed, 17 Feb 2021 06:23:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4A4136F59D
 for <devel@driverdev.osuosl.org>; Wed, 17 Feb 2021 06:23:40 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id B59E164DA8;
 Wed, 17 Feb 2021 06:23:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613543019;
 bh=yX/7/3bFLSm2Jk5E6YO64C5LOVj96jDGfspBFl7zRF4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=klrxJlIpxsW64P9YIT9jIgtPLYIstnGXot33SibeaeTTFGEUTvNB6lilRKIFgQHNy
 wRngNQ6uFePWXWVXjpXQUyuGbD32a6FVfT3SAK6gD7A41HHn9OZqYeXpe4/2kMBJRf
 zZXG5qgTKVQkjUPrEWAXTs09oQ5uLQgZiKD22W5Q=
Date: Wed, 17 Feb 2021 07:23:36 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Sean Behan <codebam@riseup.net>
Subject: Re: [PATCH] remove unused variable driver_desc
Message-ID: <YCy2aIText4lGmPF@kroah.com>
References: <20210217035953.192959-1-codebam@riseup.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210217035953.192959-1-codebam@riseup.net>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, nathan@kernel.org,
 Kumar Kartikeya Dwivedi <memxor@gmail.com>,
 Colin Ian King <colin.king@canonical.com>, Alex Dewar <alex.dewar90@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Feb 16, 2021 at 10:59:51PM -0500, Sean Behan wrote:
> ---
>  drivers/staging/emxx_udc/emxx_udc.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
> index 3536c03ff523..741147a4f0fe 100644
> --- a/drivers/staging/emxx_udc/emxx_udc.c
> +++ b/drivers/staging/emxx_udc/emxx_udc.c
> @@ -38,7 +38,6 @@ static struct gpio_desc *vbus_gpio;
>  static int vbus_irq;
>  
>  static const char	driver_name[] = "emxx_udc";
> -static const char	driver_desc[] = DRIVER_DESC;
>  
>  /*===========================================================================*/
>  /* Prototype */
> -- 
> 2.29.2


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
