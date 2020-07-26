Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D75622E1D6
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 Jul 2020 20:05:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 98D9F884F4;
	Sun, 26 Jul 2020 18:05:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7UTBiqyqptfl; Sun, 26 Jul 2020 18:05:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DB16F884A6;
	Sun, 26 Jul 2020 18:05:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8C2A41BF314
 for <devel@linuxdriverproject.org>; Sun, 26 Jul 2020 18:05:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 85274878A9
 for <devel@linuxdriverproject.org>; Sun, 26 Jul 2020 18:05:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kND4qSLSOVTk for <devel@linuxdriverproject.org>;
 Sun, 26 Jul 2020 18:05:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E8095878A6
 for <devel@linuxdriverproject.org>; Sun, 26 Jul 2020 18:05:05 +0000 (UTC)
Subject: Re: [GIT PULL] Staging driver fixes for 5.8-rc7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1595786705;
 bh=y9iEoSIpXIcSYGuTUeiq/f6Ov/PWdLhenKRXegZvtTo=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=eKn5lhRV3aU99flVE/DVKU2LPgZzY4DnEFxEwqyU6w9G3Xngu0F4MLTM5Xse1J8J0
 ZFbReXRke25b3xO2eIkLhdGxYIzzS7CPqJTUn3SA59w7S3Mynzwmm1fy5M491p01nL
 6igd3ul6t0fiCpqWPN51Vbov+xgUsNN8Vawby7Iw=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20200726111246.GA1283734@kroah.com>
References: <20200726111246.GA1283734@kroah.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20200726111246.GA1283734@kroah.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
 tags/staging-5.8-rc7
X-PR-Tracked-Commit-Id: faaff9765664009c1c7c65551d32e9ed3b1dda8f
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: f208a76fcb5700a0c5104e5888679acc31d1ce41
Message-Id: <159578670573.6689.13908897203143238236.pr-tracker-bot@kernel.org>
Date: Sun, 26 Jul 2020 18:05:05 +0000
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

The pull request you sent on Sun, 26 Jul 2020 13:12:46 +0200:

> git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/staging-5.8-rc7

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/f208a76fcb5700a0c5104e5888679acc31d1ce41

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
