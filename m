Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 80AA820A0CB
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Jun 2020 16:26:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DBFFE23358;
	Thu, 25 Jun 2020 14:26:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1XtiR1KBLKqr; Thu, 25 Jun 2020 14:26:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A90DC22D2D;
	Thu, 25 Jun 2020 14:26:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6FAE81BF41C
 for <devel@linuxdriverproject.org>; Thu, 25 Jun 2020 14:26:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6C365866C4
 for <devel@linuxdriverproject.org>; Thu, 25 Jun 2020 14:26:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AIP0qMLR26Em for <devel@linuxdriverproject.org>;
 Thu, 25 Jun 2020 14:26:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D57B885A00
 for <devel@driverdev.osuosl.org>; Thu, 25 Jun 2020 14:26:45 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 086EB20702;
 Thu, 25 Jun 2020 14:26:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1593095205;
 bh=OLLnHySUy0BM1cVv/LC0dnyHLT7FW+gZqcpkz6E+X34=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=2Lu/wh0cSuAUjB4Ks210wmCD+zAXCtg6qS4F85+7L2advLpnJCckW5v1tnVofugU/
 hPFt1k2+Y3geYz3e9oh/nvtu6179kWVjlTx4Wpz0+ll6I15M9tJzas0hEKRYndz1qe
 JGWRDj6EPUr8tf1y6RFprc+oHzxpuqJxw0EqxNVI=
Date: Thu, 25 Jun 2020 16:26:41 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: B K Karthik <bkkarthik@pesu.pes.edu>
Subject: Re: [PATCH] staging: nvec: changed coding style, line should not end
 with a (
Message-ID: <20200625142641.GA3836036@kroah.com>
References: <20200625135051.msl37vuz5fbgiuz4@pesu-pes-edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200625135051.msl37vuz5fbgiuz4@pesu-pes-edu>
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
 Philipp Zabel <p.zabel@pengutronix.de>, linux-tegra@vger.kernel.org,
 ac100@lists.launchpad.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jun 25, 2020 at 09:50:51AM -0400, B K Karthik wrote:
> Signed-off-by: B K Karthik <karthik.bk2000@live.com>
> ---
>  drivers/staging/nvec/nvec.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/nvec/nvec.c b/drivers/staging/nvec/nvec.c
> index 360ec0407740..16afbe1dfdeb 100644
> --- a/drivers/staging/nvec/nvec.c
> +++ b/drivers/staging/nvec/nvec.c
> @@ -382,8 +382,8 @@ static void nvec_request_master(struct work_struct *work)
>  		msg = list_first_entry(&nvec->tx_data, struct nvec_msg, node);
>  		spin_unlock_irqrestore(&nvec->tx_lock, flags);
>  		nvec_gpio_set_value(nvec, 0);
> -		err = wait_for_completion_interruptible_timeout(
> -				&nvec->ec_transfer, msecs_to_jiffies(5000));
> +		err = wait_for_completion_interruptible_timeout(&nvec->ec_transfer,
> +						msecs_to_jiffies(5000));
>  
>  		if (err == 0) {
>  			dev_warn(nvec->dev, "timeout waiting for ec transfer\n");
> -- 
> 2.20.1
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
