Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F2BC18D579
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Mar 2020 18:15:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9F70C88AEE;
	Fri, 20 Mar 2020 17:15:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F3vFsWmbd6UB; Fri, 20 Mar 2020 17:15:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1A35288521;
	Fri, 20 Mar 2020 17:15:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B402C1BF2BB
 for <devel@linuxdriverproject.org>; Fri, 20 Mar 2020 17:15:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B0F5887954
 for <devel@linuxdriverproject.org>; Fri, 20 Mar 2020 17:15:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HTvQERyAbofC for <devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 17:15:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9B10687680
 for <devel@linuxdriverproject.org>; Fri, 20 Mar 2020 17:15:09 +0000 (UTC)
Subject: Re: [GIT PULL] Staging/IIO driver fixes for 5.6-rc7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584724509;
 bh=BMlDDju+7N4ql4KauIYLPY1ecNi0BOVA6ax7v2sJXJ0=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=ocqpNAVtyShLUdjrqZ/eCWyYpI0QjSGYPfDrOcZBr9Q1P9Hpd0iDivlc6DDeZR/2G
 nunFqWPs+8QAP8WZGHzfkvgW65YPC1jB8pJyCAGOGBTl7RouKRVZFQgSjcizw4z7Gm
 XYgkhnDgVgOXmOuJpNsbrjaakuLp/UT6HieN8jS0=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20200320142758.GA760533@kroah.com>
References: <20200320142758.GA760533@kroah.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20200320142758.GA760533@kroah.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
 tags/staging-5.6-rc7
X-PR-Tracked-Commit-Id: 14800df6a020d38847fec77ac5a43dc221e5edfc
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 3bd14829d3275d96ff723a6c57429e9238117779
Message-Id: <158472450942.23492.17753241722400520969.pr-tracker-bot@kernel.org>
Date: Fri, 20 Mar 2020 17:15:09 +0000
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

The pull request you sent on Fri, 20 Mar 2020 15:27:58 +0100:

> git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/staging-5.6-rc7

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/3bd14829d3275d96ff723a6c57429e9238117779

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
