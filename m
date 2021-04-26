Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D09C936B911
	for <lists+driverdev-devel@lfdr.de>; Mon, 26 Apr 2021 20:36:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F0FAD83979;
	Mon, 26 Apr 2021 18:36:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sVbRXTp2wo3m; Mon, 26 Apr 2021 18:36:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 627C383547;
	Mon, 26 Apr 2021 18:36:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9760B1BF391
 for <devel@linuxdriverproject.org>; Mon, 26 Apr 2021 18:36:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 93AD5400C7
 for <devel@linuxdriverproject.org>; Mon, 26 Apr 2021 18:36:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Zg73Lmrzebwm for <devel@linuxdriverproject.org>;
 Mon, 26 Apr 2021 18:36:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D944740004
 for <devel@linuxdriverproject.org>; Mon, 26 Apr 2021 18:36:22 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id 1811561164;
 Mon, 26 Apr 2021 18:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1619462182;
 bh=ki5j7sco3Y6AttseIRABEAACjwi7L7h5KCAYWCudRsM=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=k+nL8NlpiqvICyVbHa7sP/7qYaL0LMy1XZx/WyIGpTb6zQm/arMbFgKzgbB8CBhOI
 Gy8NhS1+uXn5dVVZB94DZmk45V8I+U5x2hbGQE8nk94Q5yKQHWNS8pkDntCNdQEGTk
 08fDlITRQMAxjGDAfW+DkbYxlHKVE0N5V0SwMRS+UMXs71lAXQkUjaMwNa3d5jhbKB
 MX5ONPtsrR7DcZfQcq65YLzYi1l8QRnL/IYEoTCcr1AT7OmMh1YL8KJqa0k3XZR2Sx
 Y6hYqxZ9CSUcmZRDoiK3sPAfjpbqC2USRP7tTcgh8n2GQ7BQK+xN02Oh7bc50JvTDD
 ZmA8cRAg11TWA==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 10B85609B0;
 Mon, 26 Apr 2021 18:36:22 +0000 (UTC)
Subject: Re: [GIT PULL] Staging/IIO driver updates for 5.13-rc1
From: pr-tracker-bot@kernel.org
In-Reply-To: <YIa2ErYuJyCfSkS+@kroah.com>
References: <YIa2ErYuJyCfSkS+@kroah.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <YIa2ErYuJyCfSkS+@kroah.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
 tags/staging-5.13-rc1
X-PR-Tracked-Commit-Id: c295d3007ff63064181befa734d9705dfc10b396
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 8900d92fd666d936a7bfb4c567ac26736a414fb4
Message-Id: <161946218206.19244.13705418886944400379.pr-tracker-bot@kernel.org>
Date: Mon, 26 Apr 2021 18:36:22 +0000
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

The pull request you sent on Mon, 26 Apr 2021 14:46:10 +0200:

> git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/staging-5.13-rc1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/8900d92fd666d936a7bfb4c567ac26736a414fb4

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
