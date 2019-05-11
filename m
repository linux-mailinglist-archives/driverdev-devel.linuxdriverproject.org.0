Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AB13F1A6CB
	for <lists+driverdev-devel@lfdr.de>; Sat, 11 May 2019 08:04:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 167F623B28;
	Sat, 11 May 2019 06:04:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tOoxVS4l6uVL; Sat, 11 May 2019 06:04:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B9713236B5;
	Sat, 11 May 2019 06:04:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 382891BF328
 for <devel@linuxdriverproject.org>; Sat, 11 May 2019 06:04:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3503685FA2
 for <devel@linuxdriverproject.org>; Sat, 11 May 2019 06:04:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KfPAMDMlCWZ7 for <devel@linuxdriverproject.org>;
 Sat, 11 May 2019 06:04:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5E79E85F81
 for <devel@driverdev.osuosl.org>; Sat, 11 May 2019 06:04:23 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A8E5C2173B;
 Sat, 11 May 2019 06:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557554663;
 bh=kYzDwn15QrIEi6kXFnvZYfsdIVkmI+/O0EqDSXyCmSg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=r358BJeyRxcCtBNBrUDqEsD1Lu0ZUdSgloe9OMEQRhu3Lhiv2mi+3a9Jgy97rzwvY
 eZX0GfPpnKiRbBR8wt6+4lfD29VBrdjGym2nauPRvsq7QNOAwKoMMPDs59y/g1awM3
 SF/Ss6jw49/OvWZITHDbvjXIeq2Ux5Khk/z5qes4=
Date: Sat, 11 May 2019 08:04:20 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Vandana BN <bnvandana@gmail.com>
Subject: Re: [PATCH] Staging: kpc2000: kpc_dma: resolve checkpath errors and
 warnings
Message-ID: <20190511060420.GA18755@kroah.com>
References: <20190510193833.1051-1-bnvandana@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190510193833.1051-1-bnvandana@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel-mentees@lists.linuxfoundation.org,
 linux-kernel@vger.kernel.org, skhan@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, May 11, 2019 at 01:08:33AM +0530, Vandana BN wrote:
> This patch resolves coding style errors and warnings reported by chechpatch
> 
> ERROR: "(foo*)" should be "(foo *)"
> ERROR: trailing whitespace
> ERROR: space required before the open brace '{'
> ERROR: "foo * bar" should be "foo *bar"
> ERROR: space prohibited after that '!' (ctx:BxW)
> ERROR: space prohibited after that open parenthesis '('
> ERROR: switch and case should be at the same indent
> ERROR: trailing statements should be on next line
> ERROR: Macros with complex values should be enclosed in parentheses
> ERROR: "foo __init  bar" should be "foo __init bar"
> ERROR: "foo __exit  bar" should be "foo __exit bar"
> WARNING: Missing a blank line after declarations
> WARNING: Prefer using '"%s...", __func__' to using function's name, in a string
> WARNING: braces {} are not necessary for any arm of this statement
> WARNING: unnecessary cast may hide bugs
> WARNING: braces {} are not necessary for single statement
> WARNING: struct file_operations should normally be const
> WARNING: labels should not be indented
> Signed-off-by: Vandana BN <bnvandana@gmail.com>
> ---
>  drivers/staging/kpc2000/kpc_dma/dma.c         | 137 +++++------
>  drivers/staging/kpc2000/kpc_dma/fileops.c     | 220 +++++++++---------
>  .../staging/kpc2000/kpc_dma/kpc_dma_driver.c  | 121 +++++-----
>  .../staging/kpc2000/kpc_dma/kpc_dma_driver.h  |  32 +--
>  4 files changed, 265 insertions(+), 245 deletions(-)
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
