Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DC593C86F8
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Oct 2019 13:08:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8D9E48485E;
	Wed,  2 Oct 2019 11:08:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NHvZTObQqmEa; Wed,  2 Oct 2019 11:08:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 88D3681BD7;
	Wed,  2 Oct 2019 11:08:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 92F6B1BF352
 for <devel@linuxdriverproject.org>; Wed,  2 Oct 2019 11:08:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9016F8448B
 for <devel@linuxdriverproject.org>; Wed,  2 Oct 2019 11:08:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pKrUOBLnN6DW for <devel@linuxdriverproject.org>;
 Wed,  2 Oct 2019 11:08:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1A8EF8485E
 for <devel@driverdev.osuosl.org>; Wed,  2 Oct 2019 11:08:19 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 68C1B2086A;
 Wed,  2 Oct 2019 11:08:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570014498;
 bh=I4mHMOm20omxieQhlqvSxNBS/h5v1k+Qpz38yVi7uLA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=exwxKZhelBnL4FX34qFnxEm+uyDBDZ65pKvMTvj/XPW451ZQbaUw3/pdenbm1fs8l
 W3RiQu9Nxq6YWQL14LXjRomYNNa+xOH4aUtYws7Cb7AdnpGXd865ebiUvIDr8kcXqX
 q0VE8RN6qFOtASJyVQn0dxquODnCraqEZ4PtT/AQ=
Date: Wed, 2 Oct 2019 13:08:15 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Sumera Priyadarsini <sylphrenadin@gmail.com>
Subject: Re: [RESEND PATCH] staging: rtl8192u: Fix indentation for cleaner code
Message-ID: <20191002110815.GA1712143@kroah.com>
References: <20190913180101.14573-1-sylphrenadin@gmail.com>
 <20190924151713.GA663334@kroah.com>
 <CACAkLuqtNGymScoRXKSkf_F3-qc=89za9S34hEwkT8FwH_8ujQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACAkLuqtNGymScoRXKSkf_F3-qc=89za9S34hEwkT8FwH_8ujQ@mail.gmail.com>
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
Cc: devel@driverdev.osuosl.org, Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Oct 02, 2019 at 03:49:04PM +0530, Sumera Priyadarsini wrote:
> On Tue, Sep 24, 2019 at 8:47 PM Greg KH <gregkh@linuxfoundation.org> wrote:
> >
> > On Fri, Sep 13, 2019 at 11:31:01PM +0530, Sumera Priyadarsini wrote:
> > > Fixes indentation for if condition in the file r8190_rtl8256.c for better readability as suggested by Dan Carpenter.
> >
> > Please wrap your lines at 72 columns.
> >
> >
> I will keep this in mind. I was under the impression that the line
> length must be 80 columns
> but will make the change immediately. To be able to wrap the lines,
> maybe code implementation
> needs to be changed slightly as there is a lot of nesting present in
> the current code?

As Dan said, this is for the changelog text, not the code itself.

> > > Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> > > Signed-off-by: Sumera Priyadarsini <sylphrenadin@gmail.com>
> > > ---
> > >  drivers/staging/rtl8192u/r8190_rtl8256.c | 4 ++--
> > >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > Why was this resent?  What changed from the 1st one that caused this to
> > be required to be resent?
> >
> > Now you owe me a v2 of this patch with the changelog text fixed up :)
> >
> > thanks,
> >
> > greg k-h
> 
> I actually did not know that the merge window was closed, and thought
> this patch may have been
> missed as I did not get any reply.  So I resent it as it was following
> the instructions here(https://kernelnewbies.org/Outreachyfirstpatch)
> Should I send a v2 with the changelog stating the same?

Please do.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
