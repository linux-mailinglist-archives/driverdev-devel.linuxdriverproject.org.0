Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D4C9816C9F
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 May 2019 22:50:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0724986DFF;
	Tue,  7 May 2019 20:50:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K9Nq+KNCqS8u; Tue,  7 May 2019 20:50:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8158986D13;
	Tue,  7 May 2019 20:50:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 58CBC1BF363
 for <devel@linuxdriverproject.org>; Tue,  7 May 2019 20:50:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 55DC385606
 for <devel@linuxdriverproject.org>; Tue,  7 May 2019 20:50:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r8--eXgnIoWc for <devel@linuxdriverproject.org>;
 Tue,  7 May 2019 20:50:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DBD898560F
 for <devel@linuxdriverproject.org>; Tue,  7 May 2019 20:50:12 +0000 (UTC)
Subject: Re: [GIT PULL] Staging/IIO driver patches for 5.2-rc1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557262212;
 bh=PIYPazlUEh0lgoNcgBXhB2SfLAyzO+xIBmhZLMjWV5Q=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=F7NDGspFlG4SUgBRlo6m+MiV8QHOB9wsK21BJ3OU1XHt+eUjJ+MDLcuks6xZIBX60
 HB07N1hRuXQRxijZHlIdNqDphauw/6/C/vVkCowWZOI18TL1jLDz2UW2J3XBSWFaUW
 wcM/HkcCaDcj37ali9xlRPC+j37kJsDMK7KNbmtE=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20190507175853.GA11568@kroah.com>
References: <20190507175853.GA11568@kroah.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20190507175853.GA11568@kroah.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
 tags/staging-5.2-rc1
X-PR-Tracked-Commit-Id: e2a5be107f52cefb9010ccae6f569c3ddaa954cc
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: e0dccbdf5ac7ccb9da5612100dedba302f3ebcfe
Message-Id: <155726221265.25781.16397640357875096092.pr-tracker-bot@kernel.org>
Date: Tue, 07 May 2019 20:50:12 +0000
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

The pull request you sent on Tue, 7 May 2019 19:58:53 +0200:

> git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/staging-5.2-rc1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/e0dccbdf5ac7ccb9da5612100dedba302f3ebcfe

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
