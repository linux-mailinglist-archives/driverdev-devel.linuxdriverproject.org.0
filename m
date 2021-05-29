Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE8B0394D32
	for <lists+driverdev-devel@lfdr.de>; Sat, 29 May 2021 18:49:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 27537401EC;
	Sat, 29 May 2021 16:49:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CZKcj0cWzmn8; Sat, 29 May 2021 16:49:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 489854020F;
	Sat, 29 May 2021 16:49:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B325C1BF376
 for <devel@linuxdriverproject.org>; Sat, 29 May 2021 16:49:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A1EA66065C
 for <devel@linuxdriverproject.org>; Sat, 29 May 2021 16:49:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C0bw7hGkoU8N for <devel@linuxdriverproject.org>;
 Sat, 29 May 2021 16:49:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F22E760655
 for <devel@linuxdriverproject.org>; Sat, 29 May 2021 16:49:04 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id 6E445610FC;
 Sat, 29 May 2021 16:49:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1622306944;
 bh=FRTWn8SRJCjPTo+GLAcNDvx/1AI5z3GOao//Zijhpa8=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=Fm7ajFO7TopsIxLAuNIoBkHMKDpPjA0OBmWyy5BFqQa4vSqI5+lFtEuZFCcjWOV7g
 NQ/ByRft6yLMPN6UDT8C/s+H8Muwu/zz0D5cXKAEITdOw7zz/dDH/roMFJruKxHQ8o
 rwUS9r2PxxJQkgMceta/NqO0XcEAGc59wZlqaN7aGDHJzTkPoBbx/YC0AqhCm4Us2X
 XE+B7wq5zIC3f2N5cw5lP34nKhVwzcPKFqSs6RqnwNiGkHaR+uXm9N0qV3Pr/mX4D0
 MY4vCMPylciSHyOKLaWzX5Ye8CBUV8FhqL5go0cLdD6zDBUfHuMoiHJW9HU9GIt77R
 YeyezbPeHvt5w==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 684DB60A39;
 Sat, 29 May 2021 16:49:04 +0000 (UTC)
Subject: Re: [GIT PULL] Staging/IIO driver fixes for 5.13-rc4
From: pr-tracker-bot@kernel.org
In-Reply-To: <YLJPPF9wg6b1Cssj@kroah.com>
References: <YLJPPF9wg6b1Cssj@kroah.com>
X-PR-Tracked-List-Id: <linux-staging.lists.linux.dev>
X-PR-Tracked-Message-Id: <YLJPPF9wg6b1Cssj@kroah.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
 tags/staging-5.13-rc4
X-PR-Tracked-Commit-Id: 54732a5322ff1fe0f42f2527fa6f5901a4de5111
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 494b99f712d00fee7e0927067081954fc493b6d9
Message-Id: <162230694442.3322.8781404301599251110.pr-tracker-bot@kernel.org>
Date: Sat, 29 May 2021 16:49:04 +0000
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

The pull request you sent on Sat, 29 May 2021 16:27:08 +0200:

> git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/staging-5.13-rc4

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/494b99f712d00fee7e0927067081954fc493b6d9

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
