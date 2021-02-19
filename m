Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 906CA31F4F7
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 07:03:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1E9D487431;
	Fri, 19 Feb 2021 06:03:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8+o83PfaoXPK; Fri, 19 Feb 2021 06:03:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 07F7F87427;
	Fri, 19 Feb 2021 06:03:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2A2391BF20B
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 06:03:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2639786B77
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 06:03:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kz5Rq-cM7FHs for <devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 06:03:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D23EE86B63
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 06:03:36 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id A9A7364EC0;
 Fri, 19 Feb 2021 06:03:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613714616;
 bh=M/NSt/uVyYCFS6X/5+ex0ePXM2G5FYgRdFgYQlDGBf0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eXgfd+z34G2W/MkbpQM/DcljD3tm1k5cr7/frOMDPpkx3KLvSmHJsA9MMrGjQry/d
 2/gCAH60G6NLK/tdiL4KzzR+v1fKWZQXPXocwnQh3lG3dBtJJ0NkCcQh/IGwO+W5dm
 X3ZwGG4En5l3dTlWFYFfVtfCua2zt4JAxW2c+3DQ=
Date: Fri, 19 Feb 2021 07:03:33 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Sean Behan <codebam@riseup.net>
Subject: Re: [PATCH] staging: emxx_udc: remove unused variable driver_desc
Message-ID: <YC9UtQ743HBMIp6f@kroah.com>
References: <20210219034109.13036-1-codebam@riseup.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210219034109.13036-1-codebam@riseup.net>
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

On Thu, Feb 18, 2021 at 10:41:07PM -0500, Sean Behan wrote:
> Signed-off-by: Sean Behan <codebam@riseup.net>
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

- You did not specify a description of why the patch is needed, or
  possibly, any description at all, in the email body.  Please read the
  section entitled "The canonical patch format" in the kernel file,
  Documentation/SubmittingPatches for what is needed in order to
  properly describe the change.

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
