Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 56EFB11A51E
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Dec 2019 08:31:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 74DA586C2E;
	Wed, 11 Dec 2019 07:31:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MGOq8DgTvzGh; Wed, 11 Dec 2019 07:31:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0FA5C86BAE;
	Wed, 11 Dec 2019 07:31:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DD0281BF3C3
 for <devel@linuxdriverproject.org>; Wed, 11 Dec 2019 07:31:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D75E886F85
 for <devel@linuxdriverproject.org>; Wed, 11 Dec 2019 07:31:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id folgb0i1eJ9G for <devel@linuxdriverproject.org>;
 Wed, 11 Dec 2019 07:31:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B1A7E86F58
 for <devel@driverdev.osuosl.org>; Wed, 11 Dec 2019 07:31:39 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 088F92077B;
 Wed, 11 Dec 2019 07:31:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576049499;
 bh=hzi59ZxXCtn7N9u9Q1/ZsXgqE+JPAgMDiGZkiykAq3Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=AqhM4EM74IqmrdcSyqwzP0zvfddYOBw3VGWlO7KbkNlDcEnsH8Fd4foqvb3+v5FHj
 oi0/VcKwejR8KAsItACMcW/2Dy6QV4sIwLlJwJJJhRz839G+2Tua+hHqhNpJqkFQ1C
 /SWUpgJYJbIKDlpVeCoFvY3VKardOOuIBvifC6rU=
Date: Wed, 11 Dec 2019 08:31:36 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Scott Schafer <schaferjscott@gmail.com>
Subject: Re: [PATCH] staging: qlge: Fix multiple WARNING and CHECK relating
 to formatting
Message-ID: <20191211073136.GB397938@kroah.com>
References: <20191211014759.4749-1-schaferjscott@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191211014759.4749-1-schaferjscott@gmail.com>
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 GR-Linux-NIC-Dev@marvell.com, linux-kernel@vger.kernel.org,
 Manish Chopra <manishc@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Dec 10, 2019 at 07:47:59PM -0600, Scott Schafer wrote:
> CHECK: Please don't use multiple blank lines
> CHECK: Blank lines aren't necessary before a close brace '}'
> CHECK: Blank lines aren't necessary after an open brace '{'
> WARNING: Missing a blank line after declarations
> CHECK: No space is necessary after a cast
> CHECK: braces {} should be used on all arms of this statement
> CHECK: Unbalanced braces around else statement
> WARNING: please, no space before tabs
> CHECK: spaces preferred around that '/' (ctx:VxV)
> CHECK: spaces preferred around that '+' (ctx:VxV)
> CHECK: spaces preferred around that '%' (ctx:VxV)
> CHECK: spaces preferred around that '|' (ctx:VxV)
> CHECK: spaces preferred around that '*' (ctx:VxV)
> WARNING: Unnecessary space before function pointer arguments
> WARNING: please, no spaces at the start of a line
> WARNING: Block comments use a trailing */ on a separate line
> ERROR: trailing whitespace
> 
> In files qlge.h, qlge_dbg.c, qlge_ethtool.c, qlge_main.c, and qlge_mpi.c
> 
> Signed-off-by: Scott Schafer <schaferjscott@gmail.com>
> ---
>  drivers/staging/qlge/qlge.h         |  45 ++++++-------
>  drivers/staging/qlge/qlge_dbg.c     |  41 ++++++-----
>  drivers/staging/qlge/qlge_ethtool.c |  20 ++++--
>  drivers/staging/qlge/qlge_main.c    | 101 ++++++++++++++--------------
>  drivers/staging/qlge/qlge_mpi.c     |  37 +++++-----
>  5 files changed, 125 insertions(+), 119 deletions(-)

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

- Your patch did many different things all at once, making it difficult
  to review.  All Linux kernel patches need to only do one thing at a
  time.  If you need to do multiple things (such as clean up all coding
  style issues in a file/driver), do it in a sequence of patches, each
  one doing only one thing.  This will make it easier to review the
  patches to ensure that they are correct, and to help alleviate any
  merge issues that larger patches can cause.

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
