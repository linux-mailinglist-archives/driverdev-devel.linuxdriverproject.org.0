Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4350A661E6
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Jul 2019 00:45:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2EE8E22739;
	Thu, 11 Jul 2019 22:45:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hGyziGPALa6W; Thu, 11 Jul 2019 22:45:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 75054226DB;
	Thu, 11 Jul 2019 22:45:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 984F01BF311
 for <devel@linuxdriverproject.org>; Thu, 11 Jul 2019 22:45:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9584F86374
 for <devel@linuxdriverproject.org>; Thu, 11 Jul 2019 22:45:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r4r-bP0JmOLk for <devel@linuxdriverproject.org>;
 Thu, 11 Jul 2019 22:45:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6203C86356
 for <devel@linuxdriverproject.org>; Thu, 11 Jul 2019 22:45:13 +0000 (UTC)
Subject: Re: [GIT PULL] Staging/IIO driver patches for 5.3-rc1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562885113;
 bh=QcCWgRPOwh+6i/x1cfyarCY93p1W+YzQNdep5qRmYR4=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=UPEh/bTcG1miiqyLCzdvyYFdy9yDfyb+Xg+p6E0jTmv+z8zP9Dl25XegLyXaNMLgI
 gbQF3jJLKlVjiR42kTGYgk4UfWSspQYx4W6hWngLnSmqLmkEObvpdGLTqcQ50vUzc4
 GZ/Xxy9GZ8wjxtsHz1v7L9Z7jo4+Y8weDg0MeSlY=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20190710133215.GA24032@kroah.com>
References: <20190710133215.GA24032@kroah.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20190710133215.GA24032@kroah.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
 tags/staging-5.3-rc1
X-PR-Tracked-Commit-Id: 5d1532482943403eb11911898565628fa45863d7
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: e786741ff1b52769b044b7f4407f39cd13ee5d2d
Message-Id: <156288511317.25905.10363072762296514346.pr-tracker-bot@kernel.org>
Date: Thu, 11 Jul 2019 22:45:13 +0000
To: Greg KH <gregkh@linuxfoundation.org>
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-kernel@vger.kernel.org,
 devel@linuxdriverproject.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The pull request you sent on Wed, 10 Jul 2019 15:32:15 +0200:

> git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/staging-5.3-rc1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/e786741ff1b52769b044b7f4407f39cd13ee5d2d

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
