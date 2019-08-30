Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 42003A4000
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Aug 2019 23:54:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5ADE826600;
	Fri, 30 Aug 2019 21:54:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DnTm6KueOqFD; Fri, 30 Aug 2019 21:54:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E26CB25E18;
	Fri, 30 Aug 2019 21:54:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A54FD1BF46A
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 21:54:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A201F86BC5
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 21:54:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xsJCMP7-AZq8 for <devel@linuxdriverproject.org>;
 Fri, 30 Aug 2019 21:54:19 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail104.syd.optusnet.com.au (mail104.syd.optusnet.com.au
 [211.29.132.246])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3F76886505
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2019 21:54:19 +0000 (UTC)
Received: from dread.disaster.area (pa49-181-255-194.pa.nsw.optusnet.com.au
 [49.181.255.194])
 by mail104.syd.optusnet.com.au (Postfix) with ESMTPS id 1E94A43D08B;
 Sat, 31 Aug 2019 07:54:12 +1000 (AEST)
Received: from dave by dread.disaster.area with local (Exim 4.92)
 (envelope-from <david@fromorbit.com>)
 id 1i3oqQ-0001cH-9d; Sat, 31 Aug 2019 07:54:10 +1000
Date: Sat, 31 Aug 2019 07:54:10 +1000
From: Dave Chinner <david@fromorbit.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: exfat: add exfat filesystem code to staging
Message-ID: <20190830215410.GD7777@dread.disaster.area>
References: <20190828160817.6250-1-gregkh@linuxfoundation.org>
 <20190828170022.GA7873@kroah.com>
 <20190829062340.GB3047@infradead.org>
 <20190829063955.GA30193@kroah.com>
 <20190829094136.GA28643@infradead.org>
 <20190829095019.GA13557@kroah.com>
 <20190829103749.GA13661@infradead.org>
 <20190829111810.GA23393@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190829111810.GA23393@kroah.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Optus-CM-Score: 0
X-Optus-CM-Analysis: v=2.2 cv=FNpr/6gs c=1 sm=1 tr=0
 a=YO9NNpcXwc8z/SaoS+iAiA==:117 a=YO9NNpcXwc8z/SaoS+iAiA==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=FmdZ9Uzk2mMA:10
 a=7-415B0cAAAA:8 a=nsflCM8SZg1gMuGxmi4A:9 a=CjuIK1q_8ugA:10
 a=biEYGPWJfzWAr4FL6Ov7:22
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
Cc: devel@driverdev.osuosl.org, Sasha Levin <alexander.levin@microsoft.com>,
 Valdis =?utf-8?Q?Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>,
 linux-kernel@vger.kernel.org, Christoph Hellwig <hch@infradead.org>,
 linux-fsdevel@vger.kernel.org, OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Aug 29, 2019 at 01:18:10PM +0200, Greg Kroah-Hartman wrote:
> On Thu, Aug 29, 2019 at 03:37:49AM -0700, Christoph Hellwig wrote:
> > On Thu, Aug 29, 2019 at 11:50:19AM +0200, Greg Kroah-Hartman wrote:
> > > I know the code is horrible, but I will gladly take horrible code into
> > > staging.  If it bothers you, just please ignore it.  That's what staging
> > > is there for :)
> > 
> > And then after a while you decide it's been long enough and force move
> > it out of staging like the POS erofs code?
> 
> Hey, that's not nice, erofs isn't a POS.  It could always use more
> review, which the developers asked for numerous times.
> 
> There's nothing different from a filesystem compared to a driver.  If
> its stand-alone, and touches nothing else, all issues with it are
> self-contained and do not bother anyone else in the kernel.  We merge

I whole-heartedly disagree with that statement.

The major difference between filesystems and the rest of the kernel
that seems to be missed by most kernel developers is that
filesystems maintain persistent data - you can't fix a problem/bug
by rebooting or power cycling. Once the filesystem code screws up,
the user is left with a mess they have to fix and that invariably
results in data loss.

Users remember when a filesystem eats their data - they don't tend
to want to have anything to do with that filesystem ever again if it
happens to them. We still get people saying "XFS ate my data back in
2002, I dont trust it and I'll never use it again".

Users put up with shit hardware and drivers - it's an inconvenience
more than anything. They don't put up with buggy filesystems that
lose their data - that is completely unacceptible to users.  As a
result, the quality and stability standard for merging a new
filesystem needs to be far higher that what is acceptible for
merging a new driver.

The correct place for new filesystem review is where all the
experienced filesystem developers hang out - that's linux-fsdevel,
not the driver staging tree.

Cheers,

Dave.
-- 
Dave Chinner
david@fromorbit.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
