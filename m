Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B316B3E3C3A
	for <lists+driverdev-devel@lfdr.de>; Sun,  8 Aug 2021 20:36:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 118B04028D;
	Sun,  8 Aug 2021 18:36:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OuQAEuRBdkTs; Sun,  8 Aug 2021 18:36:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5417C4027F;
	Sun,  8 Aug 2021 18:36:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0A30B1BF4D8
 for <devel@linuxdriverproject.org>; Sun,  8 Aug 2021 18:35:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id ED05D8295A
 for <devel@linuxdriverproject.org>; Sun,  8 Aug 2021 18:35:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t5YItsyC44xN for <devel@linuxdriverproject.org>;
 Sun,  8 Aug 2021 18:35:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 15BD9828BA
 for <devel@linuxdriverproject.org>; Sun,  8 Aug 2021 18:35:55 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id 9196560F55;
 Sun,  8 Aug 2021 18:35:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628447754;
 bh=nCSnbrDLnSyAr31z4DkHY/c3Wd4a/iyIffjfbWLDSXw=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=vOEKVb3jthqKyMhRr0UN7ZsVieO9JwnC7nfQBLE0TKQa6bI6JGUV1Ho3kwLVtjkhw
 3BOGBD7/pX8ysdQQkSrP9U3NTfwDWaoUCWWL1dxqGwiZdp9nf6dpz1+smKAM5l7fXR
 KgWzpSLy4xvx1cInsjudHNPTtZp+3uadAa8UXwizaSzIk+1fyKbwg099hlOsMsz7w4
 8GdNovJJr0A08FtNxpF8iVT+sxlxNILkne4IgHRtq04jpi382AzYkxF0TI133X6nV9
 3Hjez4phg58OBTNmFccvFbJrGcXtcteBZp0GIeDnVHVDmUe+txP9Yy91zSESu61voI
 2P+VyKx1ecyxQ==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 889F86096D;
 Sun,  8 Aug 2021 18:35:54 +0000 (UTC)
Subject: Re: [GIT PULL] Staging driver fixes for 5.14-rc5
From: pr-tracker-bot@kernel.org
In-Reply-To: <YQ/AjpNS3y41k/uT@kroah.com>
References: <YQ/AjpNS3y41k/uT@kroah.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <YQ/AjpNS3y41k/uT@kroah.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
 tags/staging-5.14-rc5
X-PR-Tracked-Commit-Id: c7b65650c7f41d3946c4e2f0bb56dfdb92cfe127
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 911c3c5e01516a1339eb54d9ca478a789002936b
Message-Id: <162844775455.32600.2059164090152550632.pr-tracker-bot@kernel.org>
Date: Sun, 08 Aug 2021 18:35:54 +0000
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

The pull request you sent on Sun, 8 Aug 2021 13:31:26 +0200:

> git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/staging-5.14-rc5

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/911c3c5e01516a1339eb54d9ca478a789002936b

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
