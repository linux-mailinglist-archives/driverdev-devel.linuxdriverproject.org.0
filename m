Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DDE4E830C1
	for <lists+driverdev-devel@lfdr.de>; Tue,  6 Aug 2019 13:35:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BEB2B2154B;
	Tue,  6 Aug 2019 11:35:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G3ieewSTHm5q; Tue,  6 Aug 2019 11:35:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0C91221546;
	Tue,  6 Aug 2019 11:35:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2546B1BF5F5
 for <devel@linuxdriverproject.org>; Tue,  6 Aug 2019 11:35:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2108D8169A
 for <devel@linuxdriverproject.org>; Tue,  6 Aug 2019 11:35:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XMLkc47u6Ne1 for <devel@linuxdriverproject.org>;
 Tue,  6 Aug 2019 11:35:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9DD33866CA
 for <devel@driverdev.osuosl.org>; Tue,  6 Aug 2019 11:35:04 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EF3E82089E;
 Tue,  6 Aug 2019 11:35:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565091304;
 bh=5U/2/Mm5gWlfSv6sjHFTN7DhiPuamWniTpQ726fPCdI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=n12m+88N5aBRrXyP74KrQsS7Syb2gKkgrjZqUqVqxQfAEW912HN6lPYhKBjR8m2A+
 TRbN3O5mCmrYCZu++Y+jE8rCUjL4L70K61UuRtfUz+KAscb6UNxE6beyKv/EglVV6t
 +D/KQtUk6t8/8cOkIGkGuuDV1NJF/m0twpNUA928=
Date: Tue, 6 Aug 2019 13:35:01 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Joe Perches <joe@perches.com>
Subject: Re: [PATCH] USB: Move wusbcore and UWB to staging as it is obsolete
Message-ID: <20190806113501.GA18443@kroah.com>
References: <20190806101509.GA11280@kroah.com>
 <b73f09c944625a40b2589e9bac7f8bd22a711ed3.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b73f09c944625a40b2589e9bac7f8bd22a711ed3.camel@perches.com>
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
Cc: devel@driverdev.osuosl.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Aug 06, 2019 at 03:29:40AM -0700, Joe Perches wrote:
> On Tue, 2019-08-06 at 12:15 +0200, Greg Kroah-Hartman wrote:
> > The UWB and wusbcore code is long obsolete, so let us just move the code
> > out of the real part of the kernel and into the drivers/staging/
> > location with plans to remove it entirely in a few releases.
> []
> >  MAINTAINERS                                   | 15 +++-------
> []
> > diff --git a/MAINTAINERS b/MAINTAINERS
> []
> > @@ -3800,14 +3800,9 @@ F:	scripts/sign-file.c
> >  F:	scripts/extract-cert.c
> >  
> >  CERTIFIED WIRELESS USB (WUSB) SUBSYSTEM:
> > -L:	linux-usb@vger.kernel.org
> > +L:	devel@driverdev.osuosl.org
> >  S:	Orphan
> 
> Better to mark this as obsolete so checkpatch emits
> a message saying "no unnecessary modifications"
> 
> 

Ah, good point, will do that as an add-on patch after this.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
