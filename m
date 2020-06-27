Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F2D8420C40B
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Jun 2020 22:25:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A370122011;
	Sat, 27 Jun 2020 20:25:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id raGbJFK1YNB6; Sat, 27 Jun 2020 20:25:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 94DCD2157D;
	Sat, 27 Jun 2020 20:25:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6641A1BF290
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 20:25:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5FE922012F
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 20:25:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YF5ukaqdC4eZ for <devel@linuxdriverproject.org>;
 Sat, 27 Jun 2020 20:25:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id C5E6D20010
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 20:25:14 +0000 (UTC)
Subject: Re: [GIT PULL] Staging driver fixes for 5.8-rc3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1593289514;
 bh=bF0MtdmpQF/t40sBWytv8dtkhLEA7AEsr1VpV701bD4=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=DNhMQGVpSymEh4Jqp7TChQjT5P8myU0egOknx3LITc4VfJPIdYmKQxyUAvjvhVvTS
 BM4Zn5GxBimhtOSDWNu1Q6cF1AIfrhA+VxYitHFKAmB1TxiMcFvP0DvAfOF5O/SutW
 aCiqe6vq3vD56eIIxEOMFiAXCLpAWkhYU5xJUQeU=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20200627114037.GA1637063@kroah.com>
References: <20200627114037.GA1637063@kroah.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20200627114037.GA1637063@kroah.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
 tags/staging-5.8-rc3
X-PR-Tracked-Commit-Id: b65a2d8c8614386f7e8d38ea150749f8a862f431
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 42afe7d1c6ef77212250af3459e549d1a944cc8a
Message-Id: <159328951455.11719.6313373142847470095.pr-tracker-bot@kernel.org>
Date: Sat, 27 Jun 2020 20:25:14 +0000
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

The pull request you sent on Sat, 27 Jun 2020 13:40:37 +0200:

> git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/staging-5.8-rc3

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/42afe7d1c6ef77212250af3459e549d1a944cc8a

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
