Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EB7E63BC3A3
	for <lists+driverdev-devel@lfdr.de>; Mon,  5 Jul 2021 23:25:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4C52340555;
	Mon,  5 Jul 2021 21:25:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NK5ltyEgUCxA; Mon,  5 Jul 2021 21:25:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7D669403FB;
	Mon,  5 Jul 2021 21:25:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5F0F61BF3F6
 for <devel@linuxdriverproject.org>; Mon,  5 Jul 2021 21:25:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 49D9583A05
 for <devel@linuxdriverproject.org>; Mon,  5 Jul 2021 21:25:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D9L3_5j1CBH5 for <devel@linuxdriverproject.org>;
 Mon,  5 Jul 2021 21:25:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2C79B839B4
 for <devel@linuxdriverproject.org>; Mon,  5 Jul 2021 21:25:11 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id C501561983;
 Mon,  5 Jul 2021 21:25:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1625520310;
 bh=pA2xrI0V/GQXFCUanAMq5fbVLT/aD1HWx6GjN5mYFsk=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=uTxNIrfOQ75aJc9LubVGY8HpaeLlp1dPgbYwrwas3+Qafsu3ljxt4LhW/mJRrxM1i
 SNlmPVN7FipAp9gTpPxkib8xMZEpaYU1aq8E/Qx2QsTu8d+ch1cHUyFtOlztUwcek5
 jB+NcKX3SSGmGxZhudXDjQc5DIxbgByz09zlvR1gadBIi9uAGUclPT8NQYpWQLUrEN
 IGaANY6hn6kv8VhRmyoTVgx75yjwBEcmU+ujRDDf7zGEAg3S68iTO7j00/ccKYEWrL
 NEt1FWCy/1tK7awgZ44ySfNT6krpETBBJ0/RvwB7X3QeiJQhx+FhNrOf3WZbQhuxzy
 u2pSAxNrCXqJg==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id BE68C609E4;
 Mon,  5 Jul 2021 21:25:10 +0000 (UTC)
Subject: Re: [GIT PULL] Staging / IIO driver updates for 5.14-rc1
From: pr-tracker-bot@kernel.org
In-Reply-To: <YOM9gpIGlLDdeiBf@kroah.com>
References: <YOM9gpIGlLDdeiBf@kroah.com>
X-PR-Tracked-List-Id: <linux-staging.lists.linux.dev>
X-PR-Tracked-Message-Id: <YOM9gpIGlLDdeiBf@kroah.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
 tags/staging-5.14-rc1
X-PR-Tracked-Commit-Id: 77ad1f0e99bd00af024e650b862cfda3137af660
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: a16d8644bad461bb073b92e812080ea6715ddf2b
Message-Id: <162552031077.6675.10570656967213808258.pr-tracker-bot@kernel.org>
Date: Mon, 05 Jul 2021 21:25:10 +0000
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

The pull request you sent on Mon, 5 Jul 2021 19:12:34 +0200:

> git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/staging-5.14-rc1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/a16d8644bad461bb073b92e812080ea6715ddf2b

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
