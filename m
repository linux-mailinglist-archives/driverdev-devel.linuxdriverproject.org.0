Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 880D297614
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Aug 2019 11:26:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0C7AC23B81;
	Wed, 21 Aug 2019 09:26:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uQySSynSqPAK; Wed, 21 Aug 2019 09:26:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5637D2379C;
	Wed, 21 Aug 2019 09:26:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2E7C71BF385
 for <devel@linuxdriverproject.org>; Wed, 21 Aug 2019 09:26:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2B37E876A2
 for <devel@linuxdriverproject.org>; Wed, 21 Aug 2019 09:26:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Hqfy0YZwBCMB for <devel@linuxdriverproject.org>;
 Wed, 21 Aug 2019 09:26:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 75CB587698
 for <devel@driverdev.osuosl.org>; Wed, 21 Aug 2019 09:26:19 +0000 (UTC)
Received: from localhost (unknown [12.166.174.13])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3381922D6D;
 Wed, 21 Aug 2019 09:26:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566379579;
 bh=JkyGYnSz0xJcyxtnFnD8lvmBL9hWJnUWNiRCNu3Epf8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=1Yojm5Y6mIFV0sMW5NElhh+md9BY3T+kOndzSZ1sI6DsMkoHDewu3H7sybBpXKyPg
 eqj4SONcXFMyPO01I1tEwd5JN8hG/l4ALHbCOI3goYBusBdZ8k/ocFAV9pwfcjjZqE
 PkzqZ8YNroQCpgQtGXDof4A0NHxfzlt31alVyq0c=
Date: Wed, 21 Aug 2019 02:26:18 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Edmund Huber <me@ehuber.info>
Subject: Re: [PATCH 1/2] comedi: remove camelcase
Message-ID: <20190821092618.GA26871@kroah.com>
References: <20190820234307.5234-1-me@ehuber.info>
 <20190820234307.5234-2-me@ehuber.info>
 <20190821023706.GA28618@kroah.com>
 <CAK0QX2h3Bq-7EoRXYkVkciREHdur823wXrFSR-NWXcdkx+5WcA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK0QX2h3Bq-7EoRXYkVkciREHdur823wXrFSR-NWXcdkx+5WcA@mail.gmail.com>
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Aug 20, 2019 at 09:12:51PM -0700, Edmund Huber wrote:
> My apologies. Is it possible that you are replying to a different thread
> than intended? I don't think I have an email addressed to me from the
> patchbot.

I got a bunch of patches from a lot of different people all at once
(Tobin must have run a class), so yes, it is totally possible that I did
not respond to yours, but someone elses, my appologies.

Here's what it should have said, I'll run it "by hand" below:

> On Tue, Aug 20, 2019 at 7:37 PM Greg KH <gregkh@linuxfoundation.org> wrote:
> 
> > On Tue, Aug 20, 2019 at 11:43:06PM +0000, me@ehuber.info wrote:
> > > From: Edmund Huber <me@ehuber.info>
> > >
> > > ---
> > >  drivers/staging/comedi/drivers/ni_pcimio.c | 4 ++--
> > >  1 file changed, 2 insertions(+), 2 deletions(-)


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
