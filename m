Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5001BD3970
	for <lists+driverdev-devel@lfdr.de>; Fri, 11 Oct 2019 08:32:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3559986EB1;
	Fri, 11 Oct 2019 06:32:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RH_qv8kBecVU; Fri, 11 Oct 2019 06:32:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DC27D86EA2;
	Fri, 11 Oct 2019 06:32:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 43A451BF2F8
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 06:32:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 347B0886FE
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 06:32:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EFD8+1kul3Wt for <devel@linuxdriverproject.org>;
 Fri, 11 Oct 2019 06:32:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7FD7688703
 for <devel@driverdev.osuosl.org>; Fri, 11 Oct 2019 06:32:22 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CA8FA21D56;
 Fri, 11 Oct 2019 06:32:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570775542;
 bh=TnPE58qDV86k0o5BhRzbVv2fC2mc+NsmiUcLxnerE7Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qRLo7QPRsBYuhpFKZQkmqcgXRt3nFD2Lg0imhUIf+OaJVDoNgY1p6N+APhLY6x0uX
 mtKF2jhkjxlobKahiUxrhK86v/+kh9r2IC5AfF8NTdgz0dOvy4cwnFZFTxpB9s3cQ9
 fpo5xL0IrvqkwSMdn1HMO0sWHq6fnGP8Mz+Meyik=
Date: Fri, 11 Oct 2019 08:32:19 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Chandra Annamaneni <chandra627@gmail.com>
Subject: Re: [PATCH 1/5] KPC2000: kpc2000_spi.c: Fix style issues (line length)
Message-ID: <20191011063219.GA986093@kroah.com>
References: <20191011055155.4985-1-chandra627@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191011055155.4985-1-chandra627@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
Cc: devel@driverdev.osuosl.org, gneukum1@gmail.com, michael.scheiderer@fau.de,
 fabian.krueger@fau.de, linux-kernel@vger.kernel.org, simon@nikanor.nu,
 dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Oct 10, 2019 at 10:51:51PM -0700, Chandra Annamaneni wrote:
> Resoved: "WARNING: line over 80 characters" from checkpatch.pl

Please put "staging:" in your subject line, makes it easier to sort and
handle.  It should look something like:
	staging: kpc2000_spi: fix line length issues

Looks a lot cleaner, right?

> 
> Signed-off-by: Chandra Annamaneni <chandra627@gmail.com>
> ---
>  drivers/staging/kpc2000/kpc2000_spi.c | 20 ++++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/staging/kpc2000/kpc2000_spi.c b/drivers/staging/kpc2000/kpc2000_spi.c
> index 3be33c450cab..81d79b116ce0 100644
> --- a/drivers/staging/kpc2000/kpc2000_spi.c
> +++ b/drivers/staging/kpc2000/kpc2000_spi.c
> @@ -30,19 +30,19 @@
>  #include "kpc.h"
>  
>  static struct mtd_partition p2kr0_spi0_parts[] = {
> -	{ .name = "SLOT_0",	.size = 7798784,		.offset = 0,                },
> -	{ .name = "SLOT_1",	.size = 7798784,		.offset = MTDPART_OFS_NXTBLK},
> -	{ .name = "SLOT_2",	.size = 7798784,		.offset = MTDPART_OFS_NXTBLK},
> -	{ .name = "SLOT_3",	.size = 7798784,		.offset = MTDPART_OFS_NXTBLK},
> -	{ .name = "CS0_EXTRA",	.size = MTDPART_SIZ_FULL,	.offset = MTDPART_OFS_NXTBLK},
> +	{ .name = "SLOT_0",  .size = 7798784,  .offset = 0,                },
> +	{ .name = "SLOT_1",  .size = 7798784,  .offset = MTDPART_OFS_NXTBLK},
> +	{ .name = "SLOT_2",  .size = 7798784,  .offset = MTDPART_OFS_NXTBLK},
> +	{ .name = "SLOT_3",  .size = 7798784,  .offset = MTDPART_OFS_NXTBLK},
> +	{ .name = "CS0_EXTRA",  .size = MTDPART_SIZ_FULL,  .offset = MTDPART_OFS_NXTBLK},

Why did you pick 2 spaces here as a random choice of padding?  That's
very odd, please don't.

Either leave this alone (as it lines everything up nicely), or only use
one space.  I would suggest just leaving it alone.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
