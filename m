Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 83C9012E595
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Jan 2020 12:18:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DD45084177;
	Thu,  2 Jan 2020 11:18:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5dp8Gcu5B4Ik; Thu,  2 Jan 2020 11:18:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9DE3280860;
	Thu,  2 Jan 2020 11:18:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 64FB41BF3A4
 for <devel@linuxdriverproject.org>; Thu,  2 Jan 2020 11:17:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 61D7D813E9
 for <devel@linuxdriverproject.org>; Thu,  2 Jan 2020 11:17:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 06JzZXGGQSaB for <devel@linuxdriverproject.org>;
 Thu,  2 Jan 2020 11:17:57 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B306D864C5
 for <devel@driverdev.osuosl.org>; Thu,  2 Jan 2020 11:16:55 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 186F6217F4;
 Thu,  2 Jan 2020 11:16:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577963815;
 bh=sSSSJ8ifsPR9hBm/oLWc3nWtuHM8c0p+74Uqt6dnvps=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GkTkSmBcb38g2LmL8koBMfB4pIbvjbX32IsWFtqt7ldEesewHy2q3VJThO6HC1QM2
 NcxSECCE0telsm8gkd9gT2FopLJJP1LRAHr0jCpplvtGiDcmKXTWV4wJuilZPdrOn7
 vS3PfaoF9ipPZ4BjSEo4srOKQCT54+XWgaQeTCqQ=
Date: Thu, 2 Jan 2020 12:16:53 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Amrita Patole <longlivelinux@yahoo.com>
Subject: Re: [PATCH] Fixing coding style. Signed-off-by: amritapatole@gmail.com
Message-ID: <20200102111653.GB3961630@kroah.com>
References: <20200102072929.21636-1-longlivelinux.ref@yahoo.com>
 <20200102072929.21636-1-longlivelinux@yahoo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200102072929.21636-1-longlivelinux@yahoo.com>
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
Cc: devel@driverdev.osuosl.org, GR-Linux-NIC-Dev@marvell.com,
 manishc@marvell.com, Amrita Patole <amritapatole@gmail.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jan 02, 2020 at 12:59:29PM +0530, Amrita Patole wrote:
> From: Amrita Patole <amritapatole@gmail.com>
> 
> ---
>  drivers/staging/qlge/qlge_mpi.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/qlge/qlge_mpi.c b/drivers/staging/qlge/qlge_mpi.c
> index 9e422bbbb6ab..f63db2c79fac 100644
> --- a/drivers/staging/qlge/qlge_mpi.c
> +++ b/drivers/staging/qlge/qlge_mpi.c
> @@ -136,7 +136,8 @@ static int ql_get_mb_sts(struct ql_adapter *qdev, struct mbox_params *mbcp)
>  		    ql_read_mpi_reg(qdev, qdev->mailbox_out + i,
>  				     &mbcp->mbox_out[i]);
>  		if (status) {
> -			netif_err(qdev, drv, qdev->ndev, "Failed mailbox read.\n");
> +			netif_err(qdev, drv, qdev->ndev,
> +                                  "Failed mailbox read. \n");
>  			break;
>  		}
>  	}
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
