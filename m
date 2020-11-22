Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EFB5F2BC978
	for <lists+driverdev-devel@lfdr.de>; Sun, 22 Nov 2020 22:09:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 411138687E;
	Sun, 22 Nov 2020 21:09:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XqFrcWAzrH+p; Sun, 22 Nov 2020 21:09:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7A9758628A;
	Sun, 22 Nov 2020 21:09:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 937951BF3E6
 for <devel@linuxdriverproject.org>; Sun, 22 Nov 2020 21:09:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8AFFE845D1
 for <devel@linuxdriverproject.org>; Sun, 22 Nov 2020 21:09:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l3ncBHw0EUjT for <devel@linuxdriverproject.org>;
 Sun, 22 Nov 2020 21:09:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DAD03845C1
 for <devel@linuxdriverproject.org>; Sun, 22 Nov 2020 21:09:11 +0000 (UTC)
Subject: Re: [GIT PULL] Staging/IIO driver fixes for 5.10-rc5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1606079351;
 bh=fRsxveNcomQdOx/18t5nqFua+Tn5QjxdgrMuGLlnYYA=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=lGAwbkGvKE3XNCnCpuSnATQrXFyorN4siXIqAPcWHeEWRSkX6+hKG4HX65cvFrdMp
 9RJPJ08vyQzS6CWErO3gSwRetxDvrm6/z/toUiMvae1kNOqMKZE8T2rysclogI4Bmy
 Ed++y05xcQAJCMiVx3CQ+u20BKeGEooVcmBwV4P8=
From: pr-tracker-bot@kernel.org
In-Reply-To: <X7pO0mtUNsMsE9F7@kroah.com>
References: <X7pO0mtUNsMsE9F7@kroah.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <X7pO0mtUNsMsE9F7@kroah.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
 tags/staging-5.10-rc5
X-PR-Tracked-Commit-Id: 2dde2821b57f12fa8601d35d438b5e300fcbbe1d
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: d27637ece80f25124e0e6871b7b6cb855e1c670c
Message-Id: <160607935141.25428.2616061909480561844.pr-tracker-bot@kernel.org>
Date: Sun, 22 Nov 2020 21:09:11 +0000
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

The pull request you sent on Sun, 22 Nov 2020 12:43:14 +0100:

> git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/staging-5.10-rc5

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/d27637ece80f25124e0e6871b7b6cb855e1c670c

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
