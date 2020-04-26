Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AD8001B92B0
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 Apr 2020 20:15:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E3F7E86005;
	Sun, 26 Apr 2020 18:15:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UUZG0yvyhhKK; Sun, 26 Apr 2020 18:15:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id F22AC85D21;
	Sun, 26 Apr 2020 18:15:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 70FB31BF3AB
 for <devel@linuxdriverproject.org>; Sun, 26 Apr 2020 18:15:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6D4F420789
 for <devel@linuxdriverproject.org>; Sun, 26 Apr 2020 18:15:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l35hI0OfuH7h for <devel@linuxdriverproject.org>;
 Sun, 26 Apr 2020 18:15:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id F2E0320420
 for <devel@linuxdriverproject.org>; Sun, 26 Apr 2020 18:15:17 +0000 (UTC)
Subject: Re: [GIT PULL] Staging/IIO driver fixes for 5.7-rc3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587924917;
 bh=+70Nkhy1Sm1u0LTpVo+LhJHx0taDHWiTc7WBnW9U+7k=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=nl42cEOElev+Nqe/qbznp9eB/QSIY7vjcWskzbTScJCKEME1lK1ck7Zda0HS/bUZE
 V5jhpEGVOr9xU0zviSK7R+9vkq3GoDljk5JLjuuaIXP2cnjv7aP6RqsToS2w3hZYp2
 AAHDqOSNgaNDWX5FKGzRWtd5OVZX1po0WI1m2iig=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20200426104730.GA2120674@kroah.com>
References: <20200426104730.GA2120674@kroah.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20200426104730.GA2120674@kroah.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
 staging-5.7-rc3
X-PR-Tracked-Commit-Id: 664ba5180234593b4b8517530e8198bf2f7359e2
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: edf17b283844a21b338b9618107c8817105d0ffa
Message-Id: <158792491776.6795.10238582975247910789.pr-tracker-bot@kernel.org>
Date: Sun, 26 Apr 2020 18:15:17 +0000
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

The pull request you sent on Sun, 26 Apr 2020 12:47:30 +0200:

> git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-5.7-rc3

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/edf17b283844a21b338b9618107c8817105d0ffa

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
