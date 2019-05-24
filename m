Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 42760291F1
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 May 2019 09:42:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 12532318ED;
	Fri, 24 May 2019 07:42:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 57bMqxxVivaJ; Fri, 24 May 2019 07:42:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 62B6D22660;
	Fri, 24 May 2019 07:42:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B1FBA1BF3A7
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 07:42:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AAF8B88458
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 07:42:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XupmTj49PGVd for <devel@linuxdriverproject.org>;
 Fri, 24 May 2019 07:42:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id ED57888455
 for <devel@driverdev.osuosl.org>; Fri, 24 May 2019 07:42:34 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4DD20217F9;
 Fri, 24 May 2019 07:42:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558683754;
 bh=W3xRpy3DBCHBRWi5JRR2yOwXam58kwiXx6SKvIkiyE4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jQezOaYqzv0VthgRDI02GtbedXKYChnnDmOd9CQAkqLJCcKW4pjcrABFzLyHDDldC
 x1DE4DeSmeobuChKHVudpRHr4Dhm3VXPINYQYi1qdOjIkoTf1ZXbOCgWT6fDuBub9z
 0DBSQ5sE98ti/VxhSeHI385KzJjDDxb4o8gI39Hk=
Date: Fri, 24 May 2019 09:42:32 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Nishka Dasgupta <nishkadg.linux@gmail.com>
Subject: Re: [PATCH] staging: ks7010: Remove initialisation
Message-ID: <20190524074231.GA29172@kroah.com>
References: <20190524055602.3694-1-nishkadg.linux@gmail.com>
 <20190524065238.GA3600@kroah.com>
 <aae76db5-8768-d277-e527-9e166a02f46e@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aae76db5-8768-d277-e527-9e166a02f46e@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, May 24, 2019 at 12:31:19PM +0530, Nishka Dasgupta wrote:
> On 24/05/19 12:22 PM, Greg KH wrote:
> > On Fri, May 24, 2019 at 11:26:02AM +0530, Nishka Dasgupta wrote:
> > > As the initial value of the return variable result is never used, it can
> > > be removed.
> > > Issue found with Coccinelle.
> > > 
> > > Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
> > > ---
> > >   drivers/staging/ks7010/ks7010_sdio.c | 2 +-
> > >   1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > Didn't you already send this?
> 
> I sent two patches about removing initialisation in ks7010 today, but I
> couldn't make it a patch series because the different files had different
> maintainers. I don't think I've sent this patch before, but it's possible I
> made a mistake because my local tree has not been the best organised lately.
> I apologise for the confusion.
> 

I saw two patches with the same subject line, if I messed up, please
resend.

> > And please run a spell-checker on your subject line when you resend
> > this :)
> 
> Is this about "initialise" (and now also "organised", "apologise", etc)? As
> far as I'm aware whether the word ends in "-ise"/"-ize" depends on local
> varieties of English, so I went with the variety I'm more used to. Should I
> stick with American/Canadian spelling variants (including "-or" over "-our"
> etc) from now on?

Ah, didn't realize that was a valid spelling, sorry.

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
