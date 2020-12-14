Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C196D2D9306
	for <lists+driverdev-devel@lfdr.de>; Mon, 14 Dec 2020 06:56:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B03DE87410;
	Mon, 14 Dec 2020 05:56:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8isuZpfip3Th; Mon, 14 Dec 2020 05:56:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2FE11873CA;
	Mon, 14 Dec 2020 05:56:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 76E4A1BF5AA
 for <devel@linuxdriverproject.org>; Mon, 14 Dec 2020 05:56:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7374A873D0
 for <devel@linuxdriverproject.org>; Mon, 14 Dec 2020 05:56:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K-y4moXkUnTk for <devel@linuxdriverproject.org>;
 Mon, 14 Dec 2020 05:56:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0BF8C87038
 for <devel@driverdev.osuosl.org>; Mon, 14 Dec 2020 05:56:01 +0000 (UTC)
Date: Mon, 14 Dec 2020 06:55:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1607925360;
 bh=rD7cDqa5JX8EUzh7Rq8M29eA3Q9K9nsOvir1ozQDdPc=;
 h=From:To:Cc:Subject:References:In-Reply-To:From;
 b=EC8xwUFpUNudE9bCnk7G61jcB6lfGMIUs3/L6vbp+fmHGWFGdZKnMMZy4ntEVwjQz
 X8qhBiHg2ODfGJRvrnLrqYHyqBBa/NL8dffMf25EiTSt2DDrOZYBkDpouqwXypjIh1
 6t0sGXAhsGVW7h4BNFLtnS2XRlASTds0gWyacfNc=
From: Greg KH <gregkh@linuxfoundation.org>
To: Eli Billauer <eli.billauer@gmail.com>
Subject: Re: [PATCH] staging: Add xillyusb driver (Xillybus variant for USB)
Message-ID: <X9b+bG/4/WfJdv9O@kroah.com>
References: <20201213115933.58823-1-eli.billauer@gmail.com>
 <X9YoGnkD7fjPdr4x@kroah.com> <5FD640AE.4040201@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5FD640AE.4040201@gmail.com>
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

On Sun, Dec 13, 2020 at 06:26:22PM +0200, Eli Billauer wrote:
> Hello Greg,
> 
> There's no TODO file because it would have been empty: There is nothing to
> do, as far as I know.
> 
> I submitted this to staging because I failed to push the Xillybus driver to
> non-staging back in 2013. In the end, the way in was through staging + a
> review that got it out a year later or so. So I expected the same story.
> 
> I'll submit a patch for this driver to char/xillybus/ soon.

Ok, that's better.  We can review it once 5.11-rc1 is out, thanks!

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
