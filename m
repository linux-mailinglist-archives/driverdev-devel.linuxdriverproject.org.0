Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 158CC258EE2
	for <lists+driverdev-devel@lfdr.de>; Tue,  1 Sep 2020 15:09:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6373E86C64;
	Tue,  1 Sep 2020 13:09:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uUv5WAWvkgRH; Tue,  1 Sep 2020 13:09:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1304986C48;
	Tue,  1 Sep 2020 13:09:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8461A1BF5A4
 for <devel@linuxdriverproject.org>; Tue,  1 Sep 2020 13:09:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 76E552094D
 for <devel@linuxdriverproject.org>; Tue,  1 Sep 2020 13:09:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GxRL2MPirndn for <devel@linuxdriverproject.org>;
 Tue,  1 Sep 2020 13:09:33 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 6EAFD2078C
 for <devel@driverdev.osuosl.org>; Tue,  1 Sep 2020 13:09:33 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B0CAD2067C;
 Tue,  1 Sep 2020 13:09:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1598965773;
 bh=Ub1uSIZ4Qs5eDiV1KOprlSTLh6g2luT5zBCXTqED6wY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Va34zC5oVFNB9G9Eoxk6CaE+cVNkMAfgeX6VkSAOQkRgB8jhI6C1fQ7EZsqxGahXT
 OU/RBLleinVH67cFoWR/pkAp67wncJluU1xVmtowXauY+OebH51J7VCbZLpK6Zp31b
 DM3Jm3wE60/0oGYjU/+gun+pPFySzuypWcd3H7y8=
Date: Tue, 1 Sep 2020 15:10:00 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: "antoni.przybylik@wp.pl" <antoni.przybylik@wp.pl>
Subject: Re: Fwd: Re: [PATCH] staging: gdm724x: gdm_tty: corrected macro by
 adding brackets
Message-ID: <20200901131000.GA298818@kroah.com>
References: <e11b8f5e-1b85-fe24-36d5-c8d707ce4e66@wp.pl>
 <15764d01-0602-18c6-e2b1-089b71a2061d@wp.pl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <15764d01-0602-18c6-e2b1-089b71a2061d@wp.pl>
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

On Tue, Sep 01, 2020 at 02:06:23PM +0200, antoni.przybylik@wp.pl wrote:
> On 01.09.2020 13:08, Greg KH wrote:
> > On Tue, Sep 01, 2020 at 12:43:11PM +0200, antoniprzybylik wrote:
> > > Such macros are dangerous. Consider following example:
> > > 	#define GDM_TTY_READY(gdm) (gdm && gdm->tty_dev && gdm->port.count)
> > > 	GDM_TTY_READY(a + b)
> > > This macro will be expanded in such a way:
> > > 	(a + b && a + b->tty_dev && a + b->port.count)
> > > And it will lead to errors.
> > This is for a pointer, no one would ever do that :)
> 
> Nobody adds a pointer to a pointer, but it's common to add to it some value
> like that:
> 
> GDM_TTY_READY(myptr + 0x1000)

In this driver?  And adding random numbers to a pointer should not be
common, when those pointers are structures, right?

> > But, if you really worry about this, turn it into an inline function,
> > that way you get the proper typedef safety, which is what something like
> > this should really be, not a macro.
> 
> How to do it? Do I need to send another patch?

If you wish to fix this up, please do, I can't take this as-is.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
