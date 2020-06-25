Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0207220A3EA
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Jun 2020 19:23:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 738B5232F2;
	Thu, 25 Jun 2020 17:23:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7sAF9q1ZAGXT; Thu, 25 Jun 2020 17:23:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7660320532;
	Thu, 25 Jun 2020 17:23:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BA5681BF336
 for <devel@linuxdriverproject.org>; Thu, 25 Jun 2020 17:23:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B6DFE8884C
 for <devel@linuxdriverproject.org>; Thu, 25 Jun 2020 17:23:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ALd8O5j0Ec4h for <devel@linuxdriverproject.org>;
 Thu, 25 Jun 2020 17:23:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 242FF887D3
 for <devel@driverdev.osuosl.org>; Thu, 25 Jun 2020 17:23:47 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 57D4720773;
 Thu, 25 Jun 2020 17:23:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1593105826;
 bh=CA8sK1iaFslFSn8XGSDmoUdnBkprbim1itFO/LPNh/Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=zvjAC9yYbAgnqLTGPS1P81nV2NWhnDq+aLq1948TpmmXlp9JIBddj6DSbePiKRdzP
 iy5BNoaAgBHoUFOgS0kGB3GkvEaZumFrUl7SwWZmL4RR43hRLyeYmKCl2GZYUuz4u5
 kVEtEG49aDmjyQnuUopYz7ozKlvFsewDUnfTZTho=
Date: Thu, 25 Jun 2020 19:23:42 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Coiby Xu <coiby.xu@gmail.com>
Subject: Re: [PATCH 2/2] fix else after return or break
Message-ID: <20200625172342.GA3965841@kroah.com>
References: <20200625153614.63912-1-coiby.xu@gmail.com>
 <20200625153614.63912-3-coiby.xu@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200625153614.63912-3-coiby.xu@gmail.com>
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
Cc: devel@driverdev.osuosl.org,
 "open list:QLOGIC QLGE 10Gb ETHERNET DRIVER" <netdev@vger.kernel.org>,
 "supporter:QLOGIC QLGE 10Gb ETHERNET DRIVER" <GR-Linux-NIC-Dev@marvell.com>,
 open list <linux-kernel@vger.kernel.org>, Manish Chopra <manishc@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jun 25, 2020 at 11:36:14PM +0800, Coiby Xu wrote:
> Signed-off-by: Coiby Xu <coiby.xu@gmail.com>
> ---
>  drivers/staging/qlge/qlge_dbg.c  | 23 ++++++++++-------------
>  drivers/staging/qlge/qlge_main.c |  8 ++++----
>  drivers/staging/qlge/qlge_mpi.c  |  4 ++--
>  3 files changed, 16 insertions(+), 19 deletions(-)

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
