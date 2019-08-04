Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CE0B809C8
	for <lists+driverdev-devel@lfdr.de>; Sun,  4 Aug 2019 09:11:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 774D320406;
	Sun,  4 Aug 2019 07:11:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CPQMWC-FfR7w; Sun,  4 Aug 2019 07:11:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4B67D203E8;
	Sun,  4 Aug 2019 07:11:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C51FA1BF3C0
 for <devel@linuxdriverproject.org>; Sun,  4 Aug 2019 07:11:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id ACB868738A
 for <devel@linuxdriverproject.org>; Sun,  4 Aug 2019 07:11:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eOrt+WPFgvxE for <devel@linuxdriverproject.org>;
 Sun,  4 Aug 2019 07:11:50 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E7AE587371
 for <devel@driverdev.osuosl.org>; Sun,  4 Aug 2019 07:11:50 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 464402070D;
 Sun,  4 Aug 2019 07:11:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564902710;
 bh=itXVLBJuAKSPhnQG2e20j5LSdNo0vaAMsRMxNkS5blY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pC6FENya6YIb5lE8XF6rKwv2IhsFG1AGs0p2YKCgr3z5diP78r7jCMcdFnKVGkh90
 xvk29qsOo7wuQUK8OavdkPaky80zu8sKTQwHivvVHwBKxPaWYmyjvJqJYmHxOinHrE
 AlkZt0BUDQm2VfbYR7LtR1CqzYuxE8p78K6XyZKM=
Date: Sun, 4 Aug 2019 09:11:48 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: z3phyr <cristianoprasath@gmail.com>
Subject: Re: [PATCH] Fix lines greater than 80 characters
Message-ID: <20190804071148.GB28424@kroah.com>
References: <20190804030456.10567-1-cristianoprasath@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190804030456.10567-1-cristianoprasath@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Aug 04, 2019 at 08:34:53AM +0530, z3phyr wrote:
> Fix checkpatch error for "line over 80 characters"
> 
> Signed-off-by: z3phyr <cristianoprasath@gmail.com>
> ---
>  drivers/staging/pi433/pi433_if.h | 23 +++++++++++++++--------
>  1 file changed, 15 insertions(+), 8 deletions(-)

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

- Your patch contains warnings and/or errors noticed by the
  scripts/checkpatch.pl tool.

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

- You did not use your "real name" for the patch, which is not allowed.

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
