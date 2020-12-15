Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 841192DAC56
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Dec 2020 12:48:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id F147A2E157;
	Tue, 15 Dec 2020 11:48:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o1wNVw+B1c7m; Tue, 15 Dec 2020 11:48:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 33314204CE;
	Tue, 15 Dec 2020 11:48:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DB3C71BF2B6
 for <devel@linuxdriverproject.org>; Tue, 15 Dec 2020 11:48:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C834120396
 for <devel@linuxdriverproject.org>; Tue, 15 Dec 2020 11:48:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xh-LWYkzbuM4 for <devel@linuxdriverproject.org>;
 Tue, 15 Dec 2020 11:48:20 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 5CF6820363
 for <devel@linuxdriverproject.org>; Tue, 15 Dec 2020 11:48:20 +0000 (UTC)
Date: Tue, 15 Dec 2020 12:49:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1608032899;
 bh=mfR8Fo+LI1Xk1Ba3pEciYHd2QxEYQih8FiozefqP2vc=;
 h=From:To:Cc:Subject:References:In-Reply-To:From;
 b=pRuNp5cJ3jp2+WZ+pBPrBUZswmZYtBtaOkfJG5E9PF02Aukva1KsnJ5xndOVOHlTA
 U4ezQei8rbrbqp9nDZHt0B7h6aAzPo2ffZZBwi7L6xVgEiI15/KhzxiMNvLOT1RB0l
 EIMi+MK6ZHKmtIr2YV8p7NbuezczrnXA1/GEY7aI=
From: Greg KH <gregkh@linuxfoundation.org>
To: Stephen Rothwell <sfr@canb.auug.org.au>
Subject: Re: [GIT PULL] Staging/IIO driver changes for 5.11-rc1
Message-ID: <X9iiwr5Lf8l8TOpP@kroah.com>
References: <X9iNTajXvwiLa1bV@kroah.com>
 <20201215223752.42c377d7@canb.auug.org.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201215223752.42c377d7@canb.auug.org.au>
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
Cc: devel@linuxdriverproject.org, Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Dec 15, 2020 at 10:37:52PM +1100, Stephen Rothwell wrote:
> Hi Greg,
> 
> On Tue, 15 Dec 2020 11:17:49 +0100 Greg KH <gregkh@linuxfoundation.org> wrote:
> >
> > All have been in linux-next for a while with no reported issues.
> 
> There is, however, a semantic conflict with a commit that is now in
> Linus' tree:
> 
> https://lore.kernel.org/lkml/20201207164601.2b9cefc8@canb.auug.org.au/

Ah, I missed that this hit Linus's tree already, I thought it was only
in linux-next.

As I can't fix it without doing the merge myself, either Linus can pull
this directly from lore using 'b4' or I can send it after he does the
merge.

Linus, your call.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
