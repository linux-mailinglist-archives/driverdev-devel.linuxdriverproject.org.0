Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DCB0E5F96
	for <lists+driverdev-devel@lfdr.de>; Sat, 26 Oct 2019 22:45:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 39A5485E14;
	Sat, 26 Oct 2019 20:45:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BIlgny3k-YMF; Sat, 26 Oct 2019 20:45:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3E68885C9A;
	Sat, 26 Oct 2019 20:45:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 35F8B1BF5E6
 for <devel@linuxdriverproject.org>; Sat, 26 Oct 2019 20:45:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 329B284854
 for <devel@linuxdriverproject.org>; Sat, 26 Oct 2019 20:45:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7krtxISode-W for <devel@linuxdriverproject.org>;
 Sat, 26 Oct 2019 20:45:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AA3D08452A
 for <devel@linuxdriverproject.org>; Sat, 26 Oct 2019 20:45:07 +0000 (UTC)
Subject: Re: [GIT PULL] Staging driver fix for 5.4-rc5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572122707;
 bh=JVTgCyPoVOUlh4N4Okl+tzFVT6WSHel3b/WSRpwlhxQ=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=vihVj8Wgw4V3zfkkYgZwHWNv4Yel4y9aAx7C+dqczRiPQ5RbilAKWzIieRdeaKyp+
 2Abi1oguAmY94kX862onhFuINZZGbbdLXhn7AG5hoDzVvvYfwlO30Zo7qm1AKsh4pJ
 x7yE8cbrzsi1dhHLCpEIss311JpBLlV1okQenloc=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20191026181839.GA649095@kroah.com>
References: <20191026181839.GA649095@kroah.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20191026181839.GA649095@kroah.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
 tags/staging-5.4-rc5
X-PR-Tracked-Commit-Id: 153c5d8191c26165dbbd2646448ca7207f7796d0
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 228bd6243447f3e5613457e6400112f197dbba7b
Message-Id: <157212270736.6077.14578368699754465120.pr-tracker-bot@kernel.org>
Date: Sat, 26 Oct 2019 20:45:07 +0000
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

The pull request you sent on Sat, 26 Oct 2019 20:18:39 +0200:

> git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/staging-5.4-rc5

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/228bd6243447f3e5613457e6400112f197dbba7b

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
