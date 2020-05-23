Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D705C1DFA3C
	for <lists+driverdev-devel@lfdr.de>; Sat, 23 May 2020 20:30:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D775286DC2;
	Sat, 23 May 2020 18:30:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c2A7KnmvmCKP; Sat, 23 May 2020 18:30:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5693386DA3;
	Sat, 23 May 2020 18:30:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E5D0F1BF380
 for <devel@linuxdriverproject.org>; Sat, 23 May 2020 18:30:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E185086B7A
 for <devel@linuxdriverproject.org>; Sat, 23 May 2020 18:30:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D9BzmlH5AijO for <devel@linuxdriverproject.org>;
 Sat, 23 May 2020 18:30:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9509686B7B
 for <devel@linuxdriverproject.org>; Sat, 23 May 2020 18:30:03 +0000 (UTC)
Subject: Re: [GIT PULL] Staging/IIO driver fixes for 5.7-rc7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590258603;
 bh=yr5Y6AeMgciUs8IemR4vYvk1Fwgv118/v3d7eFBcLDk=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=EvNYFYY834DXFwDzFUzryZuuY9zmTqKoEHCVC97SPoouvepxg3hLdFwgLB2cX32bp
 k/osNLmDROf4uaKS9h3bcZWRI2g6T6DrsJJ8OQyC1wj6LEfMtZoWAYrBhdZUGOx+Ac
 Jrq55DpeVYEMS+JGNEIIFEwTaIMWAKU34x2+hWDU=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20200523131742.GA55395@kroah.com>
References: <20200523131742.GA55395@kroah.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20200523131742.GA55395@kroah.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
 tags/staging-5.7-rc7
X-PR-Tracked-Commit-Id: bcb392871813ef9e233645557d6dd85bb1a6f41a
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 8f261041b18ee80ad8afdd1621c909c4df9f6cc3
Message-Id: <159025860329.7121.11409347777596776715.pr-tracker-bot@kernel.org>
Date: Sat, 23 May 2020 18:30:03 +0000
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

The pull request you sent on Sat, 23 May 2020 15:17:42 +0200:

> git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/staging-5.7-rc7

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/8f261041b18ee80ad8afdd1621c909c4df9f6cc3

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
