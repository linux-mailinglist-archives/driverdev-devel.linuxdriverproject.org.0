Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F7572D54F2
	for <lists+driverdev-devel@lfdr.de>; Thu, 10 Dec 2020 08:58:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8235D86EC8;
	Thu, 10 Dec 2020 07:58:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7HHzpmsA5TNC; Thu, 10 Dec 2020 07:58:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D4FB686E6F;
	Thu, 10 Dec 2020 07:58:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DD76D1BF335
 for <devel@linuxdriverproject.org>; Thu, 10 Dec 2020 07:58:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CE92D87568
 for <devel@linuxdriverproject.org>; Thu, 10 Dec 2020 07:58:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W3MootX8rs-N for <devel@linuxdriverproject.org>;
 Thu, 10 Dec 2020 07:57:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 227BA87560
 for <devel@driverdev.osuosl.org>; Thu, 10 Dec 2020 07:57:58 +0000 (UTC)
Date: Thu, 10 Dec 2020 08:57:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1607587077;
 bh=l7FddddRY9V0TSIoGNnex9GDRQXNMvihk6mFVOYILH0=;
 h=From:To:Cc:Subject:References:In-Reply-To:From;
 b=w/Xx7GIVONCXXu0YeKLApd8VQAwRJu7LugJsd87hwboCmD7DgUHnKEAtvA1n3N/3l
 Q/G+Y/FpvqkFabtesYWDP3R7XuVV+3ePg8+4P8XwNZiUsk2lHV8/NzVVzk3duZRnDc
 rEaEaT8OwDlk+EHj6ze/HDpCjYGV+aobxHwCP290=
From: Greg KH <gregkh@linuxfoundation.org>
To: Triplehx3 <ginge264@gmail.com>
Subject: Re: [PATCH] Staging: ralink-gdma: ralink-gdma: Fix a blank line
 coding style issue
Message-ID: <X9HVAUdq0cEC63BP@kroah.com>
References: <20201210013228.9371-1-ginge264@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201210013228.9371-1-ginge264@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Dec 10, 2020 at 01:32:28AM +0000, Triplehx3 wrote:
> Fix a coding style issue as identified by checkpatch.pl
> 
> Signed-off-by: Triplehx3 <ginge264@gmail.com>
> ---
>  drivers/staging/ralink-gdma/ralink-gdma.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/staging/ralink-gdma/ralink-gdma.c b/drivers/staging/ralink-gdma/ralink-gdma.c
> index 655df317d0ee..a6181a167814 100644
> --- a/drivers/staging/ralink-gdma/ralink-gdma.c
> +++ b/drivers/staging/ralink-gdma/ralink-gdma.c
> @@ -122,6 +122,7 @@ struct gdma_dma_dev {
>  	struct gdma_data *data;
>  	void __iomem *base;
>  	struct tasklet_struct task;
> +
>  	volatile unsigned long chan_issued;
>  	atomic_t cnt;
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
