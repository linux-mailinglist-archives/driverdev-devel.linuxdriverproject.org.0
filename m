Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A922C3A5060
	for <lists+driverdev-devel@lfdr.de>; Sat, 12 Jun 2021 21:37:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BAF6240409;
	Sat, 12 Jun 2021 19:37:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id upyysIb61cmr; Sat, 12 Jun 2021 19:37:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D6038403B9;
	Sat, 12 Jun 2021 19:37:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9F6BB1BF3C4
 for <devel@linuxdriverproject.org>; Sat, 12 Jun 2021 19:37:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8E1B5605EF
 for <devel@linuxdriverproject.org>; Sat, 12 Jun 2021 19:37:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fBP_kaUmOZlR for <devel@linuxdriverproject.org>;
 Sat, 12 Jun 2021 19:37:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E07F0605E5
 for <devel@linuxdriverproject.org>; Sat, 12 Jun 2021 19:37:42 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id 63EC661186;
 Sat, 12 Jun 2021 19:37:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1623526662;
 bh=r9qK+DRqPbBe7JhDn1qlNsL6Sl86I36A0ziEQhlfgnY=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=X7QrhvxVs07Fb9lQEHUq6+ZSv6L34evlt/WPIRyV0sc//ccy4TzvORAt7TE46/4f0
 QGhNxCCFpCn8IWdV0M4+FYSPr4FO6s5AkcKWyxjGz9Pw88rB7p7fwoE+KjeOuAV0Ga
 x2ojMXUHVy6YpaJKqOcHpAWV18n2fB5LN1YB2iEhycfswYWhYmh8XxNm4uZNVSBOVJ
 wzufs9rQvDuMq8Ayy9lZpdcUJbhkHKLZm1jmde1/idiIIxrFE7+j23jh5RVoodqQti
 oLrUz3cb+o19JfyEouNhwrJUGt71lcb34uWYZ9Np2zrmLT+sXhAEqIZhsMNNzcbvOX
 y54opcbXFPY+g==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 5BB9F60CE2;
 Sat, 12 Jun 2021 19:37:42 +0000 (UTC)
Subject: Re: [GIT PULL] Staging driver fixes for 5.13-rc6
From: pr-tracker-bot@kernel.org
In-Reply-To: <YMTYtya0Sn/JVtz2@kroah.com>
References: <YMTYtya0Sn/JVtz2@kroah.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <YMTYtya0Sn/JVtz2@kroah.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
 tags/staging-5.13-rc6
X-PR-Tracked-Commit-Id: e9de1ecadeab5fbffd873b9110e969c869554a56
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 0d50658834f9f655559f07ee61f227c435d8e481
Message-Id: <162352666237.18796.14283348494454025864.pr-tracker-bot@kernel.org>
Date: Sat, 12 Jun 2021 19:37:42 +0000
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

The pull request you sent on Sat, 12 Jun 2021 17:54:31 +0200:

> git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/staging-5.13-rc6

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/0d50658834f9f655559f07ee61f227c435d8e481

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
