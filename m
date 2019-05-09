Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C8C171859F
	for <lists+driverdev-devel@lfdr.de>; Thu,  9 May 2019 08:59:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6A68530ECE;
	Thu,  9 May 2019 06:59:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fF59EBUpILCy; Thu,  9 May 2019 06:59:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2FA98230FD;
	Thu,  9 May 2019 06:59:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 60F621BF96A
 for <devel@linuxdriverproject.org>; Thu,  9 May 2019 06:58:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 55E9A87FF7
 for <devel@linuxdriverproject.org>; Thu,  9 May 2019 06:58:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d80LS9qhiL58 for <devel@linuxdriverproject.org>;
 Thu,  9 May 2019 06:58:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A6A1B87FE7
 for <devel@driverdev.osuosl.org>; Thu,  9 May 2019 06:58:44 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DD83C208C3;
 Thu,  9 May 2019 06:58:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557385124;
 bh=0mLnP6gaJcefKIfb2j8vPBwYQGjNjZhS+VMa7D76BRM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=d9bOWp+um2VF3KNvvtNgVqCNfWFgZ4XPKck7LQdkB+9KEmVO380Roud3nl7fHDks5
 xqj4UIyyrgBSAQzX0BvzzerD1vGuvz29I/DbCV2XFJVkagEQHutNlG5nMwGTNQKLut
 75p3d3HERzDV+npJhlisV+PnvpXRZbSEb7eW2Ays=
Date: Thu, 9 May 2019 08:58:41 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Matt Sickler <Matt.Sickler@daktronics.com>
Subject: Re: [PATCH] kpc_i2c: Remove unused file
Message-ID: <20190509065841.GC4016@kroah.com>
References: <SN6PR02MB40164B9448E87E3349AF232EEE330@SN6PR02MB4016.namprd02.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <SN6PR02MB40164B9448E87E3349AF232EEE330@SN6PR02MB4016.namprd02.prod.outlook.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, May 09, 2019 at 02:05:22AM +0000, Matt Sickler wrote:
> The whole file was wrapped in an #if 0.  I'm guessing it was a leftover file
> from when we were first developing the driver and we just forgot about it.
> ---
>  drivers/staging/kpc2000/kpc_i2c/Makefile  |   2 +-
>  drivers/staging/kpc2000/kpc_i2c/fileops.c | 181 ------------------------------
>  2 files changed, 1 insertion(+), 182 deletions(-)
>  delete mode 100644 drivers/staging/kpc2000/kpc_i2c/fileops.c

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
