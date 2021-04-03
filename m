Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95DAF353530
	for <lists+driverdev-devel@lfdr.de>; Sat,  3 Apr 2021 20:18:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9FB3141878;
	Sat,  3 Apr 2021 18:18:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n0lcM3QN4W96; Sat,  3 Apr 2021 18:18:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 186E44186D;
	Sat,  3 Apr 2021 18:18:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EE7881BF42C
 for <devel@linuxdriverproject.org>; Sat,  3 Apr 2021 18:18:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DC7DE41AC1
 for <devel@linuxdriverproject.org>; Sat,  3 Apr 2021 18:18:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QdZDi-7Btx7W for <devel@linuxdriverproject.org>;
 Sat,  3 Apr 2021 18:18:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E9C8141AC0
 for <devel@linuxdriverproject.org>; Sat,  3 Apr 2021 18:18:41 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id B7DEC61286;
 Sat,  3 Apr 2021 18:18:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1617473920;
 bh=FywnJxMdr1k3pQ1HeIhFN0gSdsokC74HndvCOCCRrQ4=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=kS1YbHDeqm7mpXNvzjM0THgRxSvgNcPonBg/hmHU3F4MYhMkX0f0uVuDA2fFN23Vz
 UmBpViOq6oJlY5ni7vv+YvtmS11T1pBUMj/U8saA6+VzvF7Y7D1eyvZhcu8NkPaJTC
 HB8j38h7FkETdcrDZhqqNHLfC54xcDWAaZGCO6MOqEhKHAHRO1LyewUeaAYUjLHmWd
 aUMDk/ezA1SQ/buH4LnJPyfdOBKlZAt5/nwpob2utZ/IIeyKUnNHqr+Hk6fJVktAOb
 cBBxYRlnB9phKJ4IpvG+jvozXZuZ33kkV75iGUeTJOpEsdr2eUSkaI/szAEJoGdvFQ
 BC0glAq0uB+eA==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id B201B600DF;
 Sat,  3 Apr 2021 18:18:40 +0000 (UTC)
Subject: Re: [GIT PULL] Staging driver fix for 5.12-rc6
From: pr-tracker-bot@kernel.org
In-Reply-To: <YGhIsWHsP474a+dE@kroah.com>
References: <YGhIsWHsP474a+dE@kroah.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <YGhIsWHsP474a+dE@kroah.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
 tags/staging-5.12-rc6
X-PR-Tracked-Commit-Id: e78836ae76d20f38eed8c8c67f21db97529949da
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 3e707eb6b8aa715847c17279f9c17c8dca2d639b
Message-Id: <161747392072.13474.11297671042251072132.pr-tracker-bot@kernel.org>
Date: Sat, 03 Apr 2021 18:18:40 +0000
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, devel@linuxdriverproject.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The pull request you sent on Sat, 3 Apr 2021 12:51:29 +0200:

> git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/staging-5.12-rc6

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/3e707eb6b8aa715847c17279f9c17c8dca2d639b

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
