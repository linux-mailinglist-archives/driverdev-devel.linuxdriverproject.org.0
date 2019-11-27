Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A9CAC10B6C3
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 Nov 2019 20:30:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B9035859EF;
	Wed, 27 Nov 2019 19:30:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W3isJojLaT6h; Wed, 27 Nov 2019 19:30:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AA897858D2;
	Wed, 27 Nov 2019 19:30:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DBDFB1BF39F
 for <devel@linuxdriverproject.org>; Wed, 27 Nov 2019 19:30:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D7EBF858D2
 for <devel@linuxdriverproject.org>; Wed, 27 Nov 2019 19:30:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TqKDJ0p2_zHb for <devel@linuxdriverproject.org>;
 Wed, 27 Nov 2019 19:30:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6E84F856BF
 for <devel@linuxdriverproject.org>; Wed, 27 Nov 2019 19:30:17 +0000 (UTC)
Subject: Re: [GIT PULL] Staging / IIO driver patches for 5.5-rc1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574883017;
 bh=0BjfvpddLOC3ud3mOCB5xeUdclPpMWxpuVJUYEA4bRM=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=oTBbF0ozXxs3wIxlu20/ILMuWr5S27MJseyFHwAnhJl6m0c9eYZfgA7+q/EtTmyuA
 usfqW5od/JZJdmhSXpYwPJgva/THQW/ODSKlASho7RNc03kttrdmsDJeH5ZEJa4bMO
 HkokU7IGjAO9U9bGkZtQ/c/K+UlzhmVFPyAERMmU=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20191127163515.GA3087498@kroah.com>
References: <20191127163515.GA3087498@kroah.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20191127163515.GA3087498@kroah.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
 tags/staging-5.5-rc1
X-PR-Tracked-Commit-Id: 0f6f8749872e7be6c083dc845bf4d45a7018b79c
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 0dd09bc02c1bad55e92306ca83b38b3cf48b9f40
Message-Id: <157488301725.32229.8963038948658119912.pr-tracker-bot@kernel.org>
Date: Wed, 27 Nov 2019 19:30:17 +0000
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

The pull request you sent on Wed, 27 Nov 2019 17:35:15 +0100:

> git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/staging-5.5-rc1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/0dd09bc02c1bad55e92306ca83b38b3cf48b9f40

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
