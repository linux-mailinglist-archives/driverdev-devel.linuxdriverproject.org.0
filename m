Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A689AB6A5D
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 Sep 2019 20:20:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id ECB7522005;
	Wed, 18 Sep 2019 18:20:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sO0tqlBot8DL; Wed, 18 Sep 2019 18:20:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4DC0F21F76;
	Wed, 18 Sep 2019 18:20:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E46EE1BF2BC
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 18:20:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DD8D284477
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 18:20:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u24QUXRERpRw for <devel@linuxdriverproject.org>;
 Wed, 18 Sep 2019 18:20:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BA7E984471
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 18:20:25 +0000 (UTC)
Subject: Re: [GIT PULL] Staging/IIO driver patches for 5.4-rc1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568830825;
 bh=lpTLlt8KBVO05bSuzAoOwZEDrfqDTb+2mrWqDmZiOsk=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=qY8vtRABIXfQ3NohD6CXdfAhAacR7f0LxwG77P2TV0l9zas+UCGlUshk+nwxWPZYd
 dwPIs5AXk1KEqyE1HqMGCF7nKcIOGzLhunWqaSXcMcB3fFD8JATFPJfsJ7/UFZuEM1
 iSC74iCwWDhR6oQn6sLcqcjEtf/5buAErBfits+A=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20190918114754.GA1899504@kroah.com>
References: <20190918114754.GA1899504@kroah.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20190918114754.GA1899504@kroah.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
 tags/staging-5.4-rc1
X-PR-Tracked-Commit-Id: 3fb73eddba106ad2a265a5c5c29d14b0ed6aaee1
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: e6874fc29410fabfdbc8c12b467f41a16cbcfd2b
Message-Id: <156883082558.23903.18107326281784968321.pr-tracker-bot@kernel.org>
Date: Wed, 18 Sep 2019 18:20:25 +0000
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

The pull request you sent on Wed, 18 Sep 2019 13:47:54 +0200:

> git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/staging-5.4-rc1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/e6874fc29410fabfdbc8c12b467f41a16cbcfd2b

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
