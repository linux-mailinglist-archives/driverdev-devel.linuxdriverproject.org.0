Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCEAD4EDC5
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Jun 2019 19:25:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 88AEC87FE7;
	Fri, 21 Jun 2019 17:25:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i5eClqjSt8v4; Fri, 21 Jun 2019 17:25:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D223F87F92;
	Fri, 21 Jun 2019 17:25:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 82FA51BF473
 for <devel@linuxdriverproject.org>; Fri, 21 Jun 2019 17:25:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7EB758144D
 for <devel@linuxdriverproject.org>; Fri, 21 Jun 2019 17:25:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NYFHAxMxE0My for <devel@linuxdriverproject.org>;
 Fri, 21 Jun 2019 17:25:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C7B6E868D8
 for <devel@linuxdriverproject.org>; Fri, 21 Jun 2019 17:25:07 +0000 (UTC)
Subject: Re: [GIT PULL] Staging/IIO driver fixes for 5.2-rc6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561137907;
 bh=s+pFhknUCfoRccMKXYWMYBVOti38vfdBqntEia1U7gE=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=KAdXqD1lNQwPI50WWj0X1tnBTXb+ET7eJsoxyuoX6zJYF0yTTA+YvxFaulJurevbw
 L1Ry1N6FzI/AeBMKWWG98YMaegghv81Q8k/sJbxdXghEfPbeFTZK7zBb/xmOHuQ2H6
 +1KiE4l5ve/9NT0pRZw3B/4w7rppDOA02AH7fvF0=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20190621081102.GA28012@kroah.com>
References: <20190621081102.GA28012@kroah.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20190621081102.GA28012@kroah.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
 tags/staging-5.2-rc6
X-PR-Tracked-Commit-Id: 9b9410766f5422d1e736783dc0c3a053eefedac4
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: db54615e21419c3cb4d699a0b0aa16cc44d0e9da
Message-Id: <156113790757.2072.6597337081141849182.pr-tracker-bot@kernel.org>
Date: Fri, 21 Jun 2019 17:25:07 +0000
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

The pull request you sent on Fri, 21 Jun 2019 10:11:02 +0200:

> git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/staging-5.2-rc6

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/db54615e21419c3cb4d699a0b0aa16cc44d0e9da

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
