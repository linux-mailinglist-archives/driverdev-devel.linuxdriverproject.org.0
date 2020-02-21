Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A303A168906
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Feb 2020 22:10:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4895C88171;
	Fri, 21 Feb 2020 21:10:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H1bvD0umZmoP; Fri, 21 Feb 2020 21:10:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 40745880D9;
	Fri, 21 Feb 2020 21:10:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E71051BF83C
 for <devel@linuxdriverproject.org>; Fri, 21 Feb 2020 21:10:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E1B81880D9
 for <devel@linuxdriverproject.org>; Fri, 21 Feb 2020 21:10:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xl2qcG20WJNX for <devel@linuxdriverproject.org>;
 Fri, 21 Feb 2020 21:10:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8397087F92
 for <devel@linuxdriverproject.org>; Fri, 21 Feb 2020 21:10:21 +0000 (UTC)
Subject: Re: [GIT PULL] Staging driver fixes for 5.6-rc3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582319421;
 bh=ua9QVkE705ZtFcnikuO6IJL65XA/1/fU3oOT/kioq+c=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=i9mdkngJE/d7J6K6xWaAevnUOnsqQoCbQp8L5WTUKd7zUh6CiiCCykmBjohcm1YF1
 vGWpnhrHKevRKRwerml2xuVvcZ6bOFS1/72VmCTspdwE6NUpWrKSizSPVzJZXv9N1w
 NtQP/4552LMYVaZTKK1KbvgSPGZlBQc/m0chx1ec=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20200221113952.GA114312@kroah.com>
References: <20200221113952.GA114312@kroah.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20200221113952.GA114312@kroah.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
 tags/staging-5.6-rc3
X-PR-Tracked-Commit-Id: 9a4556bd8f23209c29f152e6a930b6a893b0fc81
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: e5553ac71e584c3aa443e211ca2afded6071b5b6
Message-Id: <158231942131.18249.4740363837241143098.pr-tracker-bot@kernel.org>
Date: Fri, 21 Feb 2020 21:10:21 +0000
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

The pull request you sent on Fri, 21 Feb 2020 12:39:52 +0100:

> git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/staging-5.6-rc3

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/e5553ac71e584c3aa443e211ca2afded6071b5b6

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
