Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BA4B3343440
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Mar 2021 20:02:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9AB83403EC;
	Sun, 21 Mar 2021 19:02:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vE9Nm0qI8WgK; Sun, 21 Mar 2021 19:02:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 74084403EB;
	Sun, 21 Mar 2021 19:02:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E1E221BF34D
 for <devel@linuxdriverproject.org>; Sun, 21 Mar 2021 19:02:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D04CA60666
 for <devel@linuxdriverproject.org>; Sun, 21 Mar 2021 19:02:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DW0gpd2aLf9b for <devel@linuxdriverproject.org>;
 Sun, 21 Mar 2021 19:02:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7390F60629
 for <devel@linuxdriverproject.org>; Sun, 21 Mar 2021 19:02:34 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id E683E6024A;
 Sun, 21 Mar 2021 19:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1616353353;
 bh=W8nhk/e9uQfq98pzoyRkw2HsgksWMgDekNOI2PiaBho=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=QKNy2ItdJbNQazTMeBBEqNzXkwfWjBsH3da7jT8ocRXl6yhv4G/6FCotIBBlYrt/3
 Mn6drFHpXJmkhv/OvTnzVxExgcQrpudh/Xldy1EMeDWFO5AYmfR+mmbZN3Ga/y800x
 Yti9QoRv5UVCXenl7K5qkOj9YD2KtAGFqDi88cX3R/lcwXr803dgBuZsEzBwzRZqCg
 RiZli4+Jcp2lwGNp4qu9B4B0svP6bi7vcoGUDHfC+vqAIBdTxJ92TmD9hOjyhrQ3RE
 D0oYPoT8/b6t/8deYOccCdG0M4KBGHsHFmUNXWI+mBXH1pwxE2LWguOxrj5YyC5zeQ
 8TE6xPz5Gqkkw==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id D428C60A6A;
 Sun, 21 Mar 2021 19:02:33 +0000 (UTC)
Subject: Re: [GIT PULL] Staging/IIO driver fixes for 5.12-rc4
From: pr-tracker-bot@kernel.org
In-Reply-To: <YFc8/KJBiKVT2Rt1@kroah.com>
References: <YFc8/KJBiKVT2Rt1@kroah.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <YFc8/KJBiKVT2Rt1@kroah.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
 tags/staging-5.12-rc4
X-PR-Tracked-Commit-Id: 2cafd46a714af1e55354bc6dcea9dcc13f9475b5
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 1d4345eb51a185b2ecd11834dbddca79cb922eb5
Message-Id: <161635335386.3800.2419849329640227912.pr-tracker-bot@kernel.org>
Date: Sun, 21 Mar 2021 19:02:33 +0000
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

The pull request you sent on Sun, 21 Mar 2021 13:33:00 +0100:

> git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/staging-5.12-rc4

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/1d4345eb51a185b2ecd11834dbddca79cb922eb5

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
