Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BB976917E9
	for <lists+driverdev-devel@lfdr.de>; Sun, 18 Aug 2019 18:55:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5253821544;
	Sun, 18 Aug 2019 16:55:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dC7+qcUCCpT2; Sun, 18 Aug 2019 16:55:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D5D8C20482;
	Sun, 18 Aug 2019 16:55:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4BB121BF3DB
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 16:55:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 46A3184922
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 16:55:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hsZoE2aPeMlh for <devel@linuxdriverproject.org>;
 Sun, 18 Aug 2019 16:55:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E048F848FA
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 16:55:06 +0000 (UTC)
Subject: Re: [GIT PULL] Staging/IIO driver fixes for 5.3-rc5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566147306;
 bh=osxYO8NiukhmULofOULw5jWDiDTdXqeNo4E73zTzoWs=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=K/cXQ2IQgb6bwclkeKanOaPSNF3sgbyj9e5iAfh7ImGVe+i4Bj5AYdHWy1zNT/1xy
 MBOXuGKFQZQxrCyT6T8Z1DVmlzuAHJpfWg0dLQmDhaYf3bUt+yBUsnCZI0LOrJNa6H
 N1TFzhFm8Ff9ajpC9qx0LEFtB8kfajXrQwA+IzoQ=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20190818085712.GA28706@kroah.com>
References: <20190818085712.GA28706@kroah.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20190818085712.GA28706@kroah.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
 tags/staging-5.3-rc5
X-PR-Tracked-Commit-Id: 48b30e10bfc20ec6195642cc09ea6f08a8015df7
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: ae1a616af36e5ad0726407b76feed5060a424744
Message-Id: <156614730662.21549.9794520161342956124.pr-tracker-bot@kernel.org>
Date: Sun, 18 Aug 2019 16:55:06 +0000
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

The pull request you sent on Sun, 18 Aug 2019 10:57:12 +0200:

> git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/staging-5.3-rc5

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/ae1a616af36e5ad0726407b76feed5060a424744

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
