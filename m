Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DF9FB28F77B
	for <lists+driverdev-devel@lfdr.de>; Thu, 15 Oct 2020 19:12:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1F53388475;
	Thu, 15 Oct 2020 17:12:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5Gd9QDYgKXv2; Thu, 15 Oct 2020 17:12:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2826E87DD6;
	Thu, 15 Oct 2020 17:12:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AB2761BF427
 for <devel@linuxdriverproject.org>; Thu, 15 Oct 2020 17:12:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A6C5988444
 for <devel@linuxdriverproject.org>; Thu, 15 Oct 2020 17:12:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ewEJKjZgIGM4 for <devel@linuxdriverproject.org>;
 Thu, 15 Oct 2020 17:12:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4FD3287DD6
 for <devel@linuxdriverproject.org>; Thu, 15 Oct 2020 17:12:21 +0000 (UTC)
Subject: Re: [GIT PULL] Staging/IIO driver update for 5.10-rc1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1602781940;
 bh=f4gFtS/hg+fjIEa1gl55i+9wch5ncs1dyFgrX1syOrg=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=IKKaxf4xTmY7tCuy0wbd5kCZ2gUBjlrtQRiEAPOeKnFmZFDTbNk23ySo0+MZLBPfR
 WQWpmntYc1OVtn5jJqlyNZKs14jjyb5TiCiVZc0Ojysjf0UTjzOE0Uvd/i0j5zi4is
 +9sI5zRbt/9S9DrIGWHjRADRBKr234lILHNnoHxk=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20201015122713.GA4021230@kroah.com>
References: <20201015122713.GA4021230@kroah.com>
X-PR-Tracked-List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
X-PR-Tracked-Message-Id: <20201015122713.GA4021230@kroah.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
 tags/staging-5.10-rc1
X-PR-Tracked-Commit-Id: e1f13c879a7c21bd207dc6242455e8e3a1e88b40
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: ade7afe3e606f9f6ff0e6deefce140157f75540b
Message-Id: <160278194076.2218.9925296435436817818.pr-tracker-bot@kernel.org>
Date: Thu, 15 Oct 2020 17:12:20 +0000
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

The pull request you sent on Thu, 15 Oct 2020 14:27:13 +0200:

> git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/staging-5.10-rc1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/ade7afe3e606f9f6ff0e6deefce140157f75540b

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
