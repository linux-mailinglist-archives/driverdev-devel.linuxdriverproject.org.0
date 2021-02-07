Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DDC83122C3
	for <lists+driverdev-devel@lfdr.de>; Sun,  7 Feb 2021 09:33:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D3FF587269;
	Sun,  7 Feb 2021 08:33:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DVGi1jR8fiFl; Sun,  7 Feb 2021 08:33:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DD0038722E;
	Sun,  7 Feb 2021 08:33:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1854E1BF966
 for <devel@linuxdriverproject.org>; Sun,  7 Feb 2021 08:33:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 02C1320515
 for <devel@linuxdriverproject.org>; Sun,  7 Feb 2021 08:33:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FVsXeDBDvEzy for <devel@linuxdriverproject.org>;
 Sun,  7 Feb 2021 08:33:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 2CEB720499
 for <devel@driverdev.osuosl.org>; Sun,  7 Feb 2021 08:33:30 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id BC98C64E30;
 Sun,  7 Feb 2021 08:33:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1612686809;
 bh=CRF6ov8HZYQgEMXDSLagshxMHLuVPb+BGxWwtc4e66E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Nl8xpCtGkMfGXg5YCYtqrLhodKgeY4c/Lr9EQ6MkFxnx2AMTdNdR3SVtlsoRx9reB
 /wdrtE4kD398a4E08oKcvXYG9I+tX2kcIGJ8GlJ+rsd2HdRIF+myMP+uiNKT5P8HrR
 0Ids3NNMBPsOx3loFGmyDQqqghGuIwGpCZHBKoH4=
Date: Sun, 7 Feb 2021 09:33:26 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Kumar Kartikeya Dwivedi <memxor@gmail.com>
Subject: Re: [PATCH] staging: emxx_udc: Fix incorrectly defined global
Message-ID: <YB+l1t/k4VuSw3B9@kroah.com>
References: <20210207000030.256592-1-memxor@gmail.com>
 <20210207173441.2902acac@canb.auug.org.au>
 <20210207073827.7l7h3475tqgxxfte@apollo>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210207073827.7l7h3475tqgxxfte@apollo>
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
Cc: devel@driverdev.osuosl.org, Stephen Rothwell <sfr@canb.auug.org.au>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Feb 07, 2021 at 01:08:27PM +0530, Kumar Kartikeya Dwivedi wrote:
> On Sun, Feb 07, 2021 at 12:04:41PM IST, Stephen Rothwell wrote:
> > 
> > Given that drivers/staging/emxx_udc/emxx_udc.h is only included by
> > drivers/staging/emxx_udc/emxx_udc.c, shouldn't these variables just be
> > declared static in emxx_udc.c and removed from emxx_udc.h?
> >
> 
> Either would be correct. I went this way because it was originally trying to
> (incorrectly) define a global variable instead. I guess they can be static now
> and when more users are added, the linkage can be adjusted as needed.
> 
> Here's another version of the patch:

<snip>

Please resend in the proper format that a second version of a patch
should be in (the documentation describes how to do this.)

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
