Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6555D279F33
	for <lists+driverdev-devel@lfdr.de>; Sun, 27 Sep 2020 09:17:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5F48D85F4B;
	Sun, 27 Sep 2020 07:17:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uPTPBs56mLh8; Sun, 27 Sep 2020 07:17:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 05CB785D68;
	Sun, 27 Sep 2020 07:17:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2F00D1BF406
 for <devel@linuxdriverproject.org>; Sun, 27 Sep 2020 07:17:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2BBEB85D68
 for <devel@linuxdriverproject.org>; Sun, 27 Sep 2020 07:17:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6fXUyS6Ni3sG for <devel@linuxdriverproject.org>;
 Sun, 27 Sep 2020 07:17:05 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A7FFA844BD
 for <devel@driverdev.osuosl.org>; Sun, 27 Sep 2020 07:17:05 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 77BD623899;
 Sun, 27 Sep 2020 07:17:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1601191025;
 bh=HX9DYilVdjl81SYZGde2+NORXROnPG5rTXaPPd4GuIw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=T4BbFboXHIGplvJ3nAg22giLM6xhnFh7uQbdn+fAc6g1J67xgNmriccekjjShtklO
 IIFD8iJAUX81KD4jIIba9fe580J7Y4wNshP1X7FMTbd62TCHjgOsk334Jb1qOB6oRW
 +cpJHRzXQQ0b5muh7g5FN/NbHZUiSKQ7DVYFTiLc=
Date: Sun, 27 Sep 2020 09:17:01 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Ryan Kosta <ryanpkosta@gmail.com>
Subject: Re: [PATCH] fix double next comment in drivers/staging/nvec/nvec.c
Message-ID: <20200927071701.GA713623@kroah.com>
References: <20200927063937.14614-1-ryanpkosta@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200927063937.14614-1-ryanpkosta@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, marvin24@gmx.de,
 p.zabel@pengutronix.de, linux-tegra@vger.kernel.org, ac100@lists.launchpad.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Sep 26, 2020 at 11:39:37PM -0700, Ryan Kosta wrote:
> Signed-off-by: Ryan Kosta <ryanpkosta@gmail.com>
> ---
>  drivers/staging/nvec/nvec.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/nvec/nvec.c b/drivers/staging/nvec/nvec.c
> index 360ec040774..a80996b2f5c 100644
> --- a/drivers/staging/nvec/nvec.c
> +++ b/drivers/staging/nvec/nvec.c
> @@ -289,7 +289,7 @@ EXPORT_SYMBOL(nvec_write_async);
>   * interrupt handlers.
>   *
>   * Returns: 0 on success, a negative error code on failure.
> - * The response message is returned in @msg. Shall be freed with
> + * The response message is returned in @msg. Shall be freed
>   * with nvec_msg_free() once no longer used.
>   *
>   */
> -- 
> 2.20.1


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
