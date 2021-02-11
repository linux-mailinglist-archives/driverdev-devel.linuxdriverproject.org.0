Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E45A319107
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 18:29:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 15305871CE;
	Thu, 11 Feb 2021 17:28:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RKqd+WNIVm6F; Thu, 11 Feb 2021 17:28:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0C67386EA0;
	Thu, 11 Feb 2021 17:28:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D74961BF471
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 17:28:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D371D8759D
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 17:28:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vYWqMRIGU+5G for <devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 17:28:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 659EF87591
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 17:28:55 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7013364E7A;
 Thu, 11 Feb 2021 17:28:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613064535;
 bh=YGhTFXKEWgd7dqY4W1LGarZMEsIro2Rz2rQ+w3qtQCw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YkGs0ryRSaWrxTpFIGLjnqYiIXSNCPu9jB6l9ax+VY1KUUS+dCriGAzI3JqQxCR61
 DjcsTjgIrSUvLs8xrBMoE+O5QSEqZmTB8l8Xi6EUXa0py4vPFbTwlY3GFDmffguq4h
 KYQJA79MAISKexkwmuI9sXcbpIF+YNQXzYtC3T/0=
Date: Thu, 11 Feb 2021 18:28:52 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: "Mairo P. Rufus" <akoudanilo@gmail.com>
Subject: Re: [PATCH] staging: wlan-ng: Fix comments typos
Message-ID: <YCVpVDrga1QYbKWN@kroah.com>
References: <YCQSKNYU7zhcKHHl@kroah.com> <C96UXUQZSWD6.1BZ2DYOVBDNYL@uncertain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <C96UXUQZSWD6.1BZ2DYOVBDNYL@uncertain>
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
Cc: devel@driverdev.osuosl.org, trivial@kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Feb 11, 2021 at 05:55:18PM +0100, Mairo P. Rufus wrote:
> > Hi,
> >
> > This is the friendly patch-bot of Greg Kroah-Hartman. You have sent him
> > a patch that has triggered this response. He used to manually respond
> > to these common problems, but in order to save his sanity (he kept
> > writing the same thing over and over, yet to different people), I was
> > created. Hopefully you will not take offence and will fix the problem
> > in your patch and resubmit it so that it can be accepted into the Linux
> > kernel tree.
> >
> > You are receiving this message because of the following common error(s)
> > as indicated below:
> >
> > - You did not specify a description of why the patch is needed, or
> > possibly, any description at all, in the email body. Please read the
> > section entitled "The canonical patch format" in the kernel file,
> > Documentation/SubmittingPatches for what is needed in order to
> > properly describe the change.
> >
> > - You did not write a descriptive Subject: for the patch, allowing Greg,
> > and everyone else, to know what this patch is all about. Please read
> > the section entitled "The canonical patch format" in the kernel file,
> > Documentation/SubmittingPatches for what a proper Subject: line should
> > look like.
> >
> > If you wish to discuss this problem further, or you have questions about
> > how to resolve this issue, please feel free to respond to this email and
> > Greg will reply once he has dug out from the pending patches received
> > from other developers.
> >
> > thanks,
> >
> > greg k-h's patch email bot
> 
> After double checking, I still can't figure out what I did wrong. I'm
> sorry for abusing your time, but can you help me on this one?

You don't quote your changelog text here, so it's hard to determine what
needs to be done.

But your subject line could use a lot of work, don't you agree?  Read
the above links for how to write a good one.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
