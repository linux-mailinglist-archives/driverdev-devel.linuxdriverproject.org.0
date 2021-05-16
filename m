Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 33E4638202B
	for <lists+driverdev-devel@lfdr.de>; Sun, 16 May 2021 19:20:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 848DE83C74;
	Sun, 16 May 2021 17:20:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wJIqnKIsn9aW; Sun, 16 May 2021 17:20:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DE90E83529;
	Sun, 16 May 2021 17:20:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F105F1BF255
 for <devel@linuxdriverproject.org>; Sun, 16 May 2021 17:20:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EE09440263
 for <devel@linuxdriverproject.org>; Sun, 16 May 2021 17:20:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xtIdGrQsNhp4 for <devel@linuxdriverproject.org>;
 Sun, 16 May 2021 17:20:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 41E534023A
 for <devel@linuxdriverproject.org>; Sun, 16 May 2021 17:20:04 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id D44C561152;
 Sun, 16 May 2021 17:20:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1621185603;
 bh=5lOjwH2z46TugIK+WkNs76901KMjjXkpXmBfZ3tC7ZY=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=jhkz0ARq/U38TIcbkU1HOLSF1wvoQdD+oBVdZm6RUQMc87U3D0KcXM6c2mpN+4jcR
 Qvn3p44VZRODeqiRz6fLbfGba7tV+59dj+dmkeXdjRMAvJtBluncH2lFb1KqsCkWBL
 0XDgRrX+4cXezb2uiqMIQ/AVcpptH0FwucT2YKOsYQc8K2fErwHjTl3c6RxdSNLshV
 GTzhWepMSOY1t/ImaO/JvUFe5tbdIVgatR0IHWn2Rz2rdwHNcpJChjFzYNUD7hAS76
 xyjtWSOt3/XirqepIbXr2TEBVP4jjT3vpeIlH/sKHNwazYOVNLY74U7w1Azyr7gZl1
 xl3MQFVEXf1Sw==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id C926260A4E;
 Sun, 16 May 2021 17:20:03 +0000 (UTC)
Subject: Re: [GIT PULL] Staging/IIO driver fixes for 5.13-rc2
From: pr-tracker-bot@kernel.org
In-Reply-To: <YKDfI+xY2SCpC4Ot@kroah.com>
References: <YKDfI+xY2SCpC4Ot@kroah.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <YKDfI+xY2SCpC4Ot@kroah.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
 tags/staging-5.13-rc2
X-PR-Tracked-Commit-Id: ba9c25d94dea1a57492a606a1f5dde70d2432583
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 6942d81a8faa17d44d1286b63ccb7d920b29d065
Message-Id: <162118560381.27926.6986980324945803244.pr-tracker-bot@kernel.org>
Date: Sun, 16 May 2021 17:20:03 +0000
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

The pull request you sent on Sun, 16 May 2021 11:00:19 +0200:

> git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/staging-5.13-rc2

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/6942d81a8faa17d44d1286b63ccb7d920b29d065

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
