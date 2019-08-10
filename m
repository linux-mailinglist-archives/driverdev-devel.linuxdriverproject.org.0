Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B38588CE8
	for <lists+driverdev-devel@lfdr.de>; Sat, 10 Aug 2019 21:30:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A39D286A79;
	Sat, 10 Aug 2019 19:30:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ftbyifbq-XM9; Sat, 10 Aug 2019 19:30:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 31E288626D;
	Sat, 10 Aug 2019 19:30:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DE00E1BF357
 for <devel@linuxdriverproject.org>; Sat, 10 Aug 2019 19:30:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D8D1987BD3
 for <devel@linuxdriverproject.org>; Sat, 10 Aug 2019 19:30:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TIKoEgux52y2 for <devel@linuxdriverproject.org>;
 Sat, 10 Aug 2019 19:30:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CDC9D87C30
 for <devel@linuxdriverproject.org>; Sat, 10 Aug 2019 19:30:10 +0000 (UTC)
Subject: Re: [GIT PULL] Staging/IIO driver fixes for 5.3-rc4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565465410;
 bh=p8YdjZ44EJH5qQP/CXyJ7MvL1kMtRyzyFUPgQHbwpxI=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=UFuvXStqspoCbOkvGiIqvbgVIihNUJdWUAPLWzW5dt38j/vi+7Jbu+Ia7HKLeYnmd
 SjRqiD6QeZw666pybYg7c5CmSlht/XPg9GKYVzpr+SANo76/JwniGdZSyzKyD6Jmlw
 Gmh0E0pwcjFx2cpWyS5y95sxXSCah4Za9/VHO0S0=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20190810115222.GA5874@kroah.com>
References: <20190810115222.GA5874@kroah.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20190810115222.GA5874@kroah.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
 tags/staging-5.3-rc4
X-PR-Tracked-Commit-Id: 09f6109ff4f8003af3370dfee0f73fcf6d20087a
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 15fa98e40e0c305145da9a95f8ac6dc0bda64884
Message-Id: <156546541064.17840.6571097761525229088.pr-tracker-bot@kernel.org>
Date: Sat, 10 Aug 2019 19:30:10 +0000
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

The pull request you sent on Sat, 10 Aug 2019 13:52:22 +0200:

> git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/staging-5.3-rc4

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/15fa98e40e0c305145da9a95f8ac6dc0bda64884

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
