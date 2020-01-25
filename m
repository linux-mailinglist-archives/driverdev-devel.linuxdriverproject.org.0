Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AE2E8149988
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 Jan 2020 08:43:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AFA3420455;
	Sun, 26 Jan 2020 07:43:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c66pqq1bKynl; Sun, 26 Jan 2020 07:43:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6581520449;
	Sun, 26 Jan 2020 07:43:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E23131BF315
 for <devel@linuxdriverproject.org>; Sun, 26 Jan 2020 07:42:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DF0E8863AE
 for <devel@linuxdriverproject.org>; Sun, 26 Jan 2020 07:42:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jLRA7BhXE7sQ for <devel@linuxdriverproject.org>;
 Sun, 26 Jan 2020 07:42:59 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 52B67863AC
 for <devel@driverdev.osuosl.org>; Sun, 26 Jan 2020 07:42:59 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 84A662071E;
 Sun, 26 Jan 2020 07:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580024579;
 bh=UcAPO1fkxYC4ytyKX1oTy8cKaRy2y2XXPJoZZhR3HRM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MUnjdjSiO+93K2gosmx9muHilww8DDnIaDl1yb9MgidpGc7L+ryjgf5HzNKDBiUwL
 28mGAvCoph4j5xoP/y1tqIvdGLc/UaMxw1rKvSKnmoch64U/bSAqIdVM+FK1gd2MLO
 Sr7HJFObHfskjwzYafH+gR+IPkCGl5HML8cEdnrQ=
Date: Sat, 25 Jan 2020 14:38:14 +0100
From: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
To: Pragat Pandya <pragat.pandya@gmail.com>
Subject: Re: [RESEND PATCH] staging: exfat: Fix alignment warnings
Message-ID: <20200125133814.GA3518118@kroah.com>
References: <7278a1cb979cd574bccbbbccaf1a9c90acd514b5.camel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7278a1cb979cd574bccbbbccaf1a9c90acd514b5.camel@gmail.com>
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "valdis.kletnieks@vt.edu" <valdis.kletnieks@vt.edu>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 ppandya2103@gmail.com,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
 linux-kernel-mentees@lists.linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Jan 25, 2020 at 05:49:48PM +0530, Pragat Pandya wrote:
> Fix checkpatch warning "Alignment should match open parenthesis".
> 
> Signed-off-by: Pragat Pandya <pragat.pandya@gmail.com>
> ---
>  drivers/staging/exfat/exfat_blkdev.c |  4 ++--
>  drivers/staging/exfat/exfat_core.c   | 29 ++++++++++++++--------------
>  drivers/staging/exfat/exfat_super.c  |  2 +-
>  3 files changed, 18 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/staging/exfat/exfat_blkdev.c
> b/drivers/staging/exfat/exfat_blkdev.c
> index 7bcd98b13109..3068bfda39e4 100644
> --- a/drivers/staging/exfat/exfat_blkdev.c
> +++ b/drivers/staging/exfat/exfat_blkdev.c
> @@ -31,7 +31,7 @@ void exfat_bdev_close(struct super_block *sb)
>  }
>  
>  int exfat_bdev_read(struct super_block *sb, sector_t secno, struct
> buffer_head **bh,
> -             u32 num_secs, bool read)
> +                   u32 num_secs, bool read)

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

- Your patch is malformed (tabs converted to spaces, linewrapped, etc.)
  and can not be applied.  Please read the file,
  Documentation/email-clients.txt in order to fix this.

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
