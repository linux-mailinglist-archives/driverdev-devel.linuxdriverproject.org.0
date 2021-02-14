Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1529E31AFBA
	for <lists+driverdev-devel@lfdr.de>; Sun, 14 Feb 2021 09:22:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 12C5885F56;
	Sun, 14 Feb 2021 08:22:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jRn0tZoypLoW; Sun, 14 Feb 2021 08:22:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 78D3C85F10;
	Sun, 14 Feb 2021 08:22:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5BF581BF4D6
 for <devel@linuxdriverproject.org>; Sun, 14 Feb 2021 08:22:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 58AFB87059
 for <devel@linuxdriverproject.org>; Sun, 14 Feb 2021 08:22:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3tFmkaTrZe+0 for <devel@linuxdriverproject.org>;
 Sun, 14 Feb 2021 08:22:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 86BBB87053
 for <devel@driverdev.osuosl.org>; Sun, 14 Feb 2021 08:22:21 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 429EA61494;
 Sun, 14 Feb 2021 08:22:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613290940;
 bh=eEexJt/J+1tpBvDYB/9nq5c+6LGyEky3FQl08Rf1QYo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=h8kBJ7JTp776CvM8yPf9lFUA0CeebY9zqrkcrC921zNVTCNAW/WbAJizcCaux9EVB
 X4W4BgPLsr9vhYZtWrE75sqkc4NNkc0nezLPqqtppAjC9DaI669hpKs25Azhw0WHbW
 ICKkDV0H7EFw4qO98DqlclV/+k/5eZqSNNWdk7RQ=
Date: Sun, 14 Feb 2021 09:22:18 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Ashish Vara <ashishvara89@yahoo.com>
Subject: Re: [PATCH] fixed coding style warning
Message-ID: <YCjdugK8vv6jC4SS@kroah.com>
References: <482ff5a0-9089-c05a-4763-e25e14f588b5.ref@yahoo.com>
 <482ff5a0-9089-c05a-4763-e25e14f588b5@yahoo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <482ff5a0-9089-c05a-4763-e25e14f588b5@yahoo.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, rcy@google.com,
 rspringer@google.com, toddpoynor@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Feb 14, 2021 at 01:48:06AM +0530, Ashish Vara wrote:
> removed unnecessary out of memory message
> 
> Signed-off-by: Ashish Vara <ashishvara89@yahoo.com>
> ---
>  drivers/staging/gasket/gasket_page_table.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/staging/gasket/gasket_page_table.c b/drivers/staging/gasket/gasket_page_table.c
> index 6f6273c83822..2dbf3d9b8f34 100644
> --- a/drivers/staging/gasket/gasket_page_table.c
> +++ b/drivers/staging/gasket/gasket_page_table.c
> @@ -262,8 +262,6 @@ int gasket_page_table_init(struct gasket_page_table **ppg_tbl,
>  	if (bytes != 0) {
>  		pg_tbl->entries = vzalloc(bytes);
>  		if (!pg_tbl->entries) {
> -			dev_dbg(device,
> -				"No memory for address translation metadata\n");
>  			kfree(pg_tbl);
>  			*ppg_tbl = NULL;
>  			return -ENOMEM;


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
