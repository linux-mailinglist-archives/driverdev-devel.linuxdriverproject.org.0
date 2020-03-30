Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7080A1986D5
	for <lists+driverdev-devel@lfdr.de>; Mon, 30 Mar 2020 23:55:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B6A4A20471;
	Mon, 30 Mar 2020 21:55:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m63WFdTIamed; Mon, 30 Mar 2020 21:55:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 88D072034D;
	Mon, 30 Mar 2020 21:55:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2A5451BF3C3
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 21:55:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2726B878C0
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 21:55:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P-a1o1g5ZIFT for <devel@linuxdriverproject.org>;
 Mon, 30 Mar 2020 21:55:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B954687691
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 21:55:10 +0000 (UTC)
Subject: Re: [GIT PULL] Staging/IIO driver patches for 5.7-rc1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585605310;
 bh=2FIyq9wqxZZE6zdxRSIKeR2d4cRHgtr9CeYud71SBlc=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=vkugYMjKlxdrFvPcV5AciZ1V0zESeGhOnqdOYt1BzAeGob04YndOGH9ZouJVE7rhN
 djaClxy0D8NmyFfJiUkKbmsj36mDj0rJvaE7tkp91rU1xtuqzbazhm1RC6FtYqMRqY
 eljM93zUBPT6JTg1PfsRfTGYYDuVBkllpY+zoGrI=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20200330104519.GA739551@kroah.com>
References: <20200330104519.GA739551@kroah.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20200330104519.GA739551@kroah.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
 tags/staging-5.7-rc1
X-PR-Tracked-Commit-Id: e681bb287f40e7a9dbcb04cef80fd87a2511ab86
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 4c6ef3b156c67e8867e04668cb2af902d44e4086
Message-Id: <158560531052.23211.10228727342822753486.pr-tracker-bot@kernel.org>
Date: Mon, 30 Mar 2020 21:55:10 +0000
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

The pull request you sent on Mon, 30 Mar 2020 12:45:19 +0200:

> git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/staging-5.7-rc1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/4c6ef3b156c67e8867e04668cb2af902d44e4086

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
