Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB42812CFA8
	for <lists+driverdev-devel@lfdr.de>; Mon, 30 Dec 2019 12:39:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 521BB86D82;
	Mon, 30 Dec 2019 11:39:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BCAXGNGyh+b4; Mon, 30 Dec 2019 11:39:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 935D486A9B;
	Mon, 30 Dec 2019 11:39:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BC2871BF370
 for <devel@linuxdriverproject.org>; Mon, 30 Dec 2019 11:39:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B8B3A86A9B
 for <devel@linuxdriverproject.org>; Mon, 30 Dec 2019 11:39:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d+Y423P8hM3A for <devel@linuxdriverproject.org>;
 Mon, 30 Dec 2019 11:39:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 35FFE86587
 for <devel@driverdev.osuosl.org>; Mon, 30 Dec 2019 11:39:18 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 844002053B;
 Mon, 30 Dec 2019 11:39:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577705958;
 bh=o/LNttMO+BhQyprGmPOmen++LoWMdJGhCO8O8HcLZDc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DtcOEhDhb0A0MDHFGn/ZNJKfwmzIAFRYC5YBXtIVQqgNXFjZZM+huCZDQwA0ySnjp
 Kn7Xiozz1uCNsFQ2Z1YhvLFmULqS+EL4OkN71eEaPk1/PC2Vre2PnM6z3ic7ybaPff
 DrwOjHKyvODdWyvWpObiwr4wNDi1FuXNc1wnHSlQ=
Date: Mon, 30 Dec 2019 12:39:15 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Matthew Hanzelik <mrhanzelik@gmail.com>
Subject: Re: [PATCH v3] Staging: wfx: Fix style issues with hif_rx.c
Message-ID: <20191230113915.GA890973@kroah.com>
References: <20191229223142.5pxmmu7sfwdtcn7d@mandalore.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191229223142.5pxmmu7sfwdtcn7d@mandalore.localdomain>
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

On Sun, Dec 29, 2019 at 05:31:42PM -0500, Matthew Hanzelik wrote:
> Fix the 80 line limit warning on line 79 of hif_rx.c.
> 
> Also fixes the missing blank line warning on line 305 of hif_rx.c after
> the declaration of size_t len.

When ever you use the word "also" in a patch, that is a huge hint that
this needs to be broken up into more than one patch.  Please do that
here, one patch per "thing" you are fixing.

Yes, for two tiny fixes like this it feels like overkill, but, if you
had done this, I would have been already able to take one of these
changes in my tree and you would have only had to redo the other by now
:)

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
