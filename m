Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FEE71281FE
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Dec 2019 19:15:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 181AD87396;
	Fri, 20 Dec 2019 18:15:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QTR_KKLiNmrg; Fri, 20 Dec 2019 18:15:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9F67487382;
	Fri, 20 Dec 2019 18:15:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DB8C61BF846
 for <devel@linuxdriverproject.org>; Fri, 20 Dec 2019 18:15:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D55BB2550C
 for <devel@linuxdriverproject.org>; Fri, 20 Dec 2019 18:15:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RfuiM1So5ZVV for <devel@linuxdriverproject.org>;
 Fri, 20 Dec 2019 18:15:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id E38032049A
 for <devel@linuxdriverproject.org>; Fri, 20 Dec 2019 18:15:11 +0000 (UTC)
Subject: Re: [GIT PULL] Staging driver fixes for 5.5-rc3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576865711;
 bh=dMO6Gz3rK1orArIGzl2s0sDduo5Os8JtbIhNqO/3gEM=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=jmdEs0KsaIYM8JFlZ4nmY8OI1xfTPK8/OObKuIGV9c+eCCTLWaZuIAaK5Kdfvojig
 PYxQmqgkfPMZVeBKThzO+9XS+J8uO/J8wa7HvzrzzM7Yb1uy9hf8CeCFvNLOLm4fFH
 yvlfkZr0rjEDOcCamjkoyvUDQxTgzp4MPuCUs5cU=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20191220070808.GA2190290@kroah.com>
References: <20191220070808.GA2190290@kroah.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20191220070808.GA2190290@kroah.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
 tags/staging-5.5-rc3
X-PR-Tracked-Commit-Id: c05c403b1d123031f86e65e867be2c2e9ee1e7e3
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 107aff96d36fc4bf2a9ad69bc2524e9f53bde7a6
Message-Id: <157686571171.29164.6597590371344210950.pr-tracker-bot@kernel.org>
Date: Fri, 20 Dec 2019 18:15:11 +0000
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

The pull request you sent on Fri, 20 Dec 2019 08:08:08 +0100:

> git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/staging-5.5-rc3

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/107aff96d36fc4bf2a9ad69bc2524e9f53bde7a6

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
