Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D17542DFC02
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Dec 2020 13:44:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AF3BE86D7F;
	Mon, 21 Dec 2020 12:44:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k7vptgivCkBh; Mon, 21 Dec 2020 12:44:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E8F3685F9A;
	Mon, 21 Dec 2020 12:44:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E426A1BF3FD
 for <devel@linuxdriverproject.org>; Mon, 21 Dec 2020 12:44:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E0EB285F9A
 for <devel@linuxdriverproject.org>; Mon, 21 Dec 2020 12:44:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qJrgCg-BITh0 for <devel@linuxdriverproject.org>;
 Mon, 21 Dec 2020 12:44:46 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 62EDB85F4E
 for <devel@driverdev.osuosl.org>; Mon, 21 Dec 2020 12:44:46 +0000 (UTC)
Date: Mon, 21 Dec 2020 13:46:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1608554685;
 bh=PBUW9Lx+G53wYGSrbtEAM4HN5gntZsw8HL1tFF3G2V4=;
 h=From:To:Cc:Subject:References:In-Reply-To:From;
 b=YgZGL83lfemTCEe+XHlHWz1bKJ44ruN3dOwcPv5zrX8CfP7jyjrlHtGfzfUFKjGjU
 pzuOYa0PEK8FexptM8wWeN5/sVKTQ/DDH0XMPtZr0cPtpWZQhn/N7mazIgGKNBv/16
 pIA7tnyQHn9lCpVGR3SgQcUULUK/OExOMt0CFyvc=
From: Greg KH <gregkh@linuxfoundation.org>
To: Anjandev Momi <anjan@momi.ca>
Subject: Re: [PATCH] staging: octeon-usb: octeon-hcd: fixed indent and ending
 with brace coding style issue
Message-ID: <X+CZCejDffbbkQ2T@kroah.com>
References: <20201221091508.17280-1-anjan@momi.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201221091508.17280-1-anjan@momi.ca>
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

On Mon, Dec 21, 2020 at 09:15:57AM +0000, Anjandev Momi wrote:
> Fixed coding style issues
> 
> Signed-off-by: Anjandev Momi <anjan@momi.ca>
> ---
>  drivers/staging/octeon-usb/octeon-hcd.c | 96 ++++++++++++-------------
>  1 file changed, 46 insertions(+), 50 deletions(-)
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

- Your patch did many different things all at once, making it difficult
  to review.  All Linux kernel patches need to only do one thing at a
  time.  If you need to do multiple things (such as clean up all coding
  style issues in a file/driver), do it in a sequence of patches, each
  one doing only one thing.  This will make it easier to review the
  patches to ensure that they are correct, and to help alleviate any
  merge issues that larger patches can cause.

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
