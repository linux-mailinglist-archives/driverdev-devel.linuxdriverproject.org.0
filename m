Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A011E222B76
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 Jul 2020 21:05:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 73D4687EA1;
	Thu, 16 Jul 2020 19:05:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q6CNtqYOAARp; Thu, 16 Jul 2020 19:05:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D32B887EA0;
	Thu, 16 Jul 2020 19:05:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4B5ED1BF385
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 19:05:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 47A2B875A9
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 19:05:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a2--dkGbETl0 for <devel@linuxdriverproject.org>;
 Thu, 16 Jul 2020 19:05:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CD21C875A2
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 19:05:04 +0000 (UTC)
Subject: Re: [GIT PULL] Staging/IIO driver fixes for 5.8-rc6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1594926304;
 bh=Ui8MvdHcSMIVI9Y+GYo/n8FZ3RdCwTYMUWA1bu+K1cc=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=2fEvhZ//b2ZLtdSJMhca7GoaeVk+LS3ZAzqyB6E0s2QRUakm50W6x3R+1cbgPkTGy
 FATCBSL8Z9IufKyQIqzwojAsPNumPZj91upwCi3mCfc/cG1BABbzTGfxkVX3/ZPSxt
 eoCpWg4Iv+rlgiYFB67L7ouKzYuMGAdnYW5mKQmQ=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20200716152939.GA2378914@kroah.com>
References: <20200716152939.GA2378914@kroah.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20200716152939.GA2378914@kroah.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
 tags/staging-5.8-rc6
X-PR-Tracked-Commit-Id: ef75e14a6c935eec82abac07ab68e388514e39bc
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 6a058f0be518bbb10aadd3c5d18516f91b1a4a04
Message-Id: <159492630464.21154.1782207197856638176.pr-tracker-bot@kernel.org>
Date: Thu, 16 Jul 2020 19:05:04 +0000
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

The pull request you sent on Thu, 16 Jul 2020 17:29:39 +0200:

> git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/staging-5.8-rc6

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/6a058f0be518bbb10aadd3c5d18516f91b1a4a04

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
