Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F5C8D532E
	for <lists+driverdev-devel@lfdr.de>; Sun, 13 Oct 2019 00:55:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 79B3320789;
	Sat, 12 Oct 2019 22:55:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qlV8ZekmH4Ug; Sat, 12 Oct 2019 22:55:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 39F2220763;
	Sat, 12 Oct 2019 22:55:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DA98F1BF40F
 for <devel@linuxdriverproject.org>; Sat, 12 Oct 2019 22:55:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D53E288049
 for <devel@linuxdriverproject.org>; Sat, 12 Oct 2019 22:55:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TJDUa-LvZXgi for <devel@linuxdriverproject.org>;
 Sat, 12 Oct 2019 22:55:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E3AD487FE3
 for <devel@linuxdriverproject.org>; Sat, 12 Oct 2019 22:55:06 +0000 (UTC)
Subject: Re: [GIT PULL] Staging/IIO driver fixes for 5.4-rc3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570920906;
 bh=+kDNnono7fghKBdBViHtWpIDg48gaQ18KzFvLJjlr5M=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=qXbdaLC1DParKBYtjxovbMcRWEJRV+WS12Tb5c8brNLFnYtA2pGkKEljB/Fo6ZHNR
 OAH8zwtOm5xDcWbdcHN37mDmcFpFy+O1rku4RHYJ14hjnZriuM/LpPvdC0RdN/WMxc
 8gtD1Gc+vsYojHkcIa4FLlMQkxHQQwyZUak4qHEQ=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20191012161638.GA2191707@kroah.com>
References: <20191012161638.GA2191707@kroah.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20191012161638.GA2191707@kroah.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
 tags/staging-5.4-rc3
X-PR-Tracked-Commit-Id: 3f3d31622a2c18b644328965925110dd7638b376
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 9cbc63485fd5e25cef5d64c28ca3318364073773
Message-Id: <157092090667.32460.17224656135812760716.pr-tracker-bot@kernel.org>
Date: Sat, 12 Oct 2019 22:55:06 +0000
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

The pull request you sent on Sat, 12 Oct 2019 18:16:38 +0200:

> git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/staging-5.4-rc3

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/9cbc63485fd5e25cef5d64c28ca3318364073773

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
