Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E93BB258D2C
	for <lists+driverdev-devel@lfdr.de>; Tue,  1 Sep 2020 13:08:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C100E87089;
	Tue,  1 Sep 2020 11:08:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gm0mBhwrZ8C2; Tue,  1 Sep 2020 11:08:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2428587078;
	Tue,  1 Sep 2020 11:08:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 300F91BF5A6
 for <devel@linuxdriverproject.org>; Tue,  1 Sep 2020 11:08:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 296BE20412
 for <devel@linuxdriverproject.org>; Tue,  1 Sep 2020 11:08:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KumunA97jnct for <devel@linuxdriverproject.org>;
 Tue,  1 Sep 2020 11:08:11 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 380442078C
 for <devel@driverdev.osuosl.org>; Tue,  1 Sep 2020 11:08:11 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6BCC62083B;
 Tue,  1 Sep 2020 11:08:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1598958490;
 bh=M/gIeLcJ2zVJl2Ut67sxzpfCdDlyqzk0freIT8v084g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BZy5W/btSM8j5ieOU3Lkd/o/cf81UNFXZOs7IdZVDmDsLdhyOCvQmv5FbQCwl9H6B
 mgdLcEzTqQ24kpqHfwLVD04S/b+Hju8RFyN455BYX3EfRbnHDw0q9qJJnP4LrNQKjt
 3fnRdPl1V7BGCkeE4TeawBf6ya8ZNspqdZPml+Uo=
Date: Tue, 1 Sep 2020 13:08:38 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: antoniprzybylik <antoni.przybylik@wp.pl>
Subject: Re: [PATCH] staging: gdm724x: gdm_tty: corrected macro by adding
 brackets
Message-ID: <20200901110838.GA273488@kroah.com>
References: <20200901104311.17270-1-antoni.przybylik@wp.pl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200901104311.17270-1-antoni.przybylik@wp.pl>
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

On Tue, Sep 01, 2020 at 12:43:11PM +0200, antoniprzybylik wrote:
> Such macros are dangerous. Consider following example:
> 	#define GDM_TTY_READY(gdm) (gdm && gdm->tty_dev && gdm->port.count)
> 	GDM_TTY_READY(a + b)
> This macro will be expanded in such a way:
> 	(a + b && a + b->tty_dev && a + b->port.count)
> And it will lead to errors.

This is for a pointer, no one would ever do that :)

But, if you really worry about this, turn it into an inline function,
that way you get the proper typedef safety, which is what something like
this should really be, not a macro.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
