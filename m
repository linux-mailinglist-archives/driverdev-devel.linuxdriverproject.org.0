Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C47D46A403
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Jul 2019 10:39:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8163D84D24;
	Tue, 16 Jul 2019 08:39:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IceQYzwlXurD; Tue, 16 Jul 2019 08:39:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 99A2784993;
	Tue, 16 Jul 2019 08:39:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 39F041BF30D
 for <devel@linuxdriverproject.org>; Tue, 16 Jul 2019 08:39:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 36B992047F
 for <devel@linuxdriverproject.org>; Tue, 16 Jul 2019 08:39:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iU27P-84naaJ for <devel@linuxdriverproject.org>;
 Tue, 16 Jul 2019 08:39:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 3DBFA203FE
 for <devel@driverdev.osuosl.org>; Tue, 16 Jul 2019 08:39:38 +0000 (UTC)
Received: from localhost (unknown [113.157.217.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8B244206C2;
 Tue, 16 Jul 2019 08:39:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563266378;
 bh=ssPZAo5dXHHPNouNGTvVRALYu0oPoZ+PbbXzdC0B6Kw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=X7JVunjjTnc01kKlaG12hQOaomPng4ObG+rthUu1fZurnw5j/g+wfAA0osSY06CcO
 OFTJxTUzD+e5WBTlt7HfrbSkiUwbSezum1FV7QTjCH0ReSSgz4uYeg4AFpgB2keKLE
 x6N7nZgDYCTGru+0tcfxeQvNtD6zcuJBomrr7cEI=
Date: Tue, 16 Jul 2019 17:36:53 +0900
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: john.hubbard@gmail.com
Subject: Re: [PATCH] staging: kpc2000: whitespace and line length cleanup
Message-ID: <20190716083653.GB26457@kroah.com>
References: <20190715212123.432-1-jhubbard@nvidia.com>
 <20190715212123.432-2-jhubbard@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190715212123.432-2-jhubbard@nvidia.com>
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
Cc: devel@driverdev.osuosl.org, Bharath Vedartham <linux.bhar@gmail.com>,
 Geordan Neukum <gneukum1@gmail.com>, Vandana BN <bnvandana@gmail.com>,
 Simon =?iso-8859-1?Q?Sandstr=F6m?= <simon@nikanor.nu>,
 LKML <linux-kernel@vger.kernel.org>, John Hubbard <jhubbard@nvidia.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Jul 15, 2019 at 02:21:23PM -0700, john.hubbard@gmail.com wrote:
> From: John Hubbard <jhubbard@nvidia.com>
> =

> This commit was created by running indent(1):
>     `indent -linux`
> =

> ...and then applying some manual corrections and
> cleanup afterward, to keep it sane. No functional changes
> were made.
> =

> In addition to whitespace changes, some strings were split,
> but not strings that were likely to be a grep problem
> (in other words, if a user is likely to grep for a string
> within the driver, that should still work in most cases).
> =

> A few "void * foo" cases were fixed to be "void *foo".
> =

> That was enough to make checkpatch.pl run without errors,
> although note that there are lots of serious warnings
> remaining--but those require functional, not just whitespace
> changes. So those are left for a separate patch.
> =

> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Cc: Simon Sandstr=F6m <simon@nikanor.nu>
> Cc: Geordan Neukum <gneukum1@gmail.com>
> Cc: Jeremy Sowden <jeremy@azazel.net>
> Cc: Dan Carpenter <dan.carpenter@oracle.com>
> Cc: Vandana BN <bnvandana@gmail.com>
> Cc: devel@driverdev.osuosl.org
> Cc: Bharath Vedartham <linux.bhar@gmail.com>
> Signed-off-by: John Hubbard <jhubbard@nvidia.com>
> ---
>  drivers/staging/kpc2000/kpc2000_i2c.c         | 189 +++++++++++------
>  drivers/staging/kpc2000/kpc2000_spi.c         | 116 +++++-----
>  drivers/staging/kpc2000/kpc_dma/dma.c         | 109 ++++++----
>  drivers/staging/kpc2000/kpc_dma/fileops.c     | 199 +++++++++++-------
>  .../staging/kpc2000/kpc_dma/kpc_dma_driver.c  | 113 +++++-----
>  .../staging/kpc2000/kpc_dma/kpc_dma_driver.h  | 156 +++++++-------
>  6 files changed, 509 insertions(+), 373 deletions(-)

THat's way too many different types of changes to do all at once, and
some of these are making the code look worse, not better.

There's a reason we don't run lindent :)

If you want to do one-type-of-fix-per-patch, I'll gladly take these,
otherwise, I recommend leaving this for those people learning how to do
development to do.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
