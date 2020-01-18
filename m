Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 59BAB141994
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 Jan 2020 21:20:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1878A854E7;
	Sat, 18 Jan 2020 20:20:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2G5ufOhB56y9; Sat, 18 Jan 2020 20:20:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 508FE85485;
	Sat, 18 Jan 2020 20:20:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D7FB81BF29F
 for <devel@linuxdriverproject.org>; Sat, 18 Jan 2020 20:20:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D492420111
 for <devel@linuxdriverproject.org>; Sat, 18 Jan 2020 20:20:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rgTSR3ux78-K for <devel@linuxdriverproject.org>;
 Sat, 18 Jan 2020 20:20:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 8C1CD20110
 for <devel@linuxdriverproject.org>; Sat, 18 Jan 2020 20:20:03 +0000 (UTC)
Subject: Re: [GIT PULL] Staging and IIO driver fixes for 5.5-rc7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579378803;
 bh=s7G7i6gkBqXmrWVbT4JB5cysGB9qTx/ee9uL5ehS7co=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=2U5NlA5s/yPMNwKfM1gz1IpLBvuGfhxBlpaEszAIRmKNebYiN2kHKXgbrQgPfv2Um
 2zsfPkELx3bZQY42fWinUMr8aEbpB2BRX6srF8+SjD0gJR9yZ8ELTHDcQZ8rLF/dUQ
 5pbffEQWQMYcpevqCIGzxP32oE5wqmr3W5RKOymk=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20200118142307.GA80149@kroah.com>
References: <20200118142307.GA80149@kroah.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20200118142307.GA80149@kroah.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
 tags/staging-5.5-rc7
X-PR-Tracked-Commit-Id: 9fea3a40f6b07de977a2783270c8c3bc82544d45
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: bf3f401db6cbe010095fe3d1e233a5fde54e8b78
Message-Id: <157937880335.12197.9497146634453796246.pr-tracker-bot@kernel.org>
Date: Sat, 18 Jan 2020 20:20:03 +0000
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

The pull request you sent on Sat, 18 Jan 2020 15:23:07 +0100:

> git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/staging-5.5-rc7

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/bf3f401db6cbe010095fe3d1e233a5fde54e8b78

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
