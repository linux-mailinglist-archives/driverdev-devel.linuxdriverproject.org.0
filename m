Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0577EA3106
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Aug 2019 09:30:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8BA9F89278;
	Fri, 30 Aug 2019 07:30:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6kE+HEOUDi4i; Fri, 30 Aug 2019 07:30:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 058D1886AD;
	Fri, 30 Aug 2019 07:30:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 259C21BF34A
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 07:30:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 22C5387245
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 07:30:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vBz-9P_8KNEO for <devel@linuxdriverproject.org>;
 Fri, 30 Aug 2019 07:30:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 744EB854AD
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2019 07:30:28 +0000 (UTC)
Received: from 162-237-133-238.lightspeed.rcsntx.sbcglobal.net
 ([162.237.133.238] helo=elm)
 by youngberry.canonical.com with esmtpsa (TLS1.0:RSA_AES_256_CBC_SHA1:32)
 (Exim 4.76) (envelope-from <tyhicks@canonical.com>)
 id 1i3bMV-0000hq-Ga; Fri, 30 Aug 2019 07:30:23 +0000
Date: Fri, 30 Aug 2019 02:30:19 -0500
From: Tyler Hicks <tyhicks@canonical.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH AUTOSEL 4.19 11/29] binder: take read mode of mmap_sem in
 binder_alloc_free_page()
Message-ID: <20190830073019.GA16891@elm>
References: <20190829105009.2265-1-sashal@kernel.org>
 <20190829105009.2265-11-sashal@kernel.org>
 <20190829151320.GC27650@elm> <20190830062910.GC15257@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190830062910.GC15257@kroah.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: Sasha Levin <sashal@kernel.org>, devel@driverdev.osuosl.org,
 Todd Kjos <tkjos@android.com>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2019-08-30 08:29:10, Greg Kroah-Hartman wrote:
> On Thu, Aug 29, 2019 at 10:13:20AM -0500, Tyler Hicks wrote:
> > Hello, Sasha!
> > 
> > On 2019-08-29 06:49:51, Sasha Levin wrote:
> > > From: Tyler Hicks <tyhicks@canonical.com>
> > > 
> > > [ Upstream commit 60d4885710836595192c42d3e04b27551d30ec91 ]
> > > 
> > > Restore the behavior of locking mmap_sem for reading in
> > > binder_alloc_free_page(), as was first done in commit 3013bf62b67a
> > > ("binder: reduce mmap_sem write-side lock"). That change was
> > > inadvertently reverted by commit 5cec2d2e5839 ("binder: fix race between
> > > munmap() and direct reclaim").
> > > 
> > > In addition, change the name of the label for the error path to
> > > accurately reflect that we're taking the lock for reading.
> > > 
> > > Backporting note: This fix is only needed when *both* of the commits
> > > mentioned above are applied. That's an unlikely situation since they
> > > both landed during the development of v5.1 but only one of them is
> > > targeted for stable.
> > 
> > This patch isn't meant to be applied to 4.19 since commit 3013bf62b67a
> > ("binder: reduce mmap_sem write-side lock") was never brought back to
> > 4.19.
> > 
> > Tyler
> > 
> > > 
> > > Fixes: 5cec2d2e5839 ("binder: fix race between munmap() and direct reclaim")
> 
> But this commit is in 4.19.49

That's correct but commit 3013bf62b67a isn't present in 4.19.y. See the
"Backporting note" above.

Tyler

> 
> thanks,
> 
> greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
