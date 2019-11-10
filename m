Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85FAAF6BA6
	for <lists+driverdev-devel@lfdr.de>; Sun, 10 Nov 2019 22:35:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1C71C87B1D;
	Sun, 10 Nov 2019 21:35:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UWSZHDYFYIrg; Sun, 10 Nov 2019 21:35:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C7BC687A9C;
	Sun, 10 Nov 2019 21:35:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 766FC1BF297
 for <devel@linuxdriverproject.org>; Sun, 10 Nov 2019 21:35:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6FA32857EB
 for <devel@linuxdriverproject.org>; Sun, 10 Nov 2019 21:35:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Yzed+ywhu205 for <devel@linuxdriverproject.org>;
 Sun, 10 Nov 2019 21:35:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 55E93839C1
 for <devel@linuxdriverproject.org>; Sun, 10 Nov 2019 21:35:08 +0000 (UTC)
Subject: Re: [GIT PULL] IIO fixes / Staging driver for 5.4-rc7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573421708;
 bh=xZqUAhBa1XJbuk1g9QivLxHkD4LDzfnm732PnGqJ76I=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=G8tkBXql3Zze2mTheCxmgaVokjdRIhG20I2GFRvhtYP5xPct/zMZucKZBbfGmxqtP
 O5PL51caVKgd4TOcRzHPN1KYQDCtVGoPfIjPSDD0c7oWaB7FDKqadz9Mzm95W4Kyqs
 W2ne4SVjl41V5f08V8csV9zpVXeN7on7Fmdm3Npo=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20191110154303.GA2867499@kroah.com>
References: <20191110154303.GA2867499@kroah.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20191110154303.GA2867499@kroah.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
 tags/staging-5.4-rc7
X-PR-Tracked-Commit-Id: e39fcaef7ed993950af74a584f8246022b551971
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: dd892625d0e252d967387d0a2af6dd6a864b3fdf
Message-Id: <157342170813.28901.805337468261635748.pr-tracker-bot@kernel.org>
Date: Sun, 10 Nov 2019 21:35:08 +0000
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

The pull request you sent on Sun, 10 Nov 2019 16:43:03 +0100:

> git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/staging-5.4-rc7

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/dd892625d0e252d967387d0a2af6dd6a864b3fdf

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
