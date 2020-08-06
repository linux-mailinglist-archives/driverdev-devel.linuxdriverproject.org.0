Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FA0023E3B1
	for <lists+driverdev-devel@lfdr.de>; Thu,  6 Aug 2020 23:59:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5CB46885EB;
	Thu,  6 Aug 2020 21:59:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hh6VQTaMwS5y; Thu,  6 Aug 2020 21:59:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 82D6188577;
	Thu,  6 Aug 2020 21:59:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B42C31BF20F
 for <devel@linuxdriverproject.org>; Thu,  6 Aug 2020 21:59:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B0F11885EB
 for <devel@linuxdriverproject.org>; Thu,  6 Aug 2020 21:59:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SpU23tcmk8zu for <devel@linuxdriverproject.org>;
 Thu,  6 Aug 2020 21:59:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5A9B988577
 for <devel@linuxdriverproject.org>; Thu,  6 Aug 2020 21:59:22 +0000 (UTC)
Subject: Re: [GIT PULL] Staging/IIO driver patches for 5.9-rc1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1596751162;
 bh=baS6DUd21cONNJO5/4J0WbYb6j+StksFCwz3VjEkgYE=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=zkJj+hdy+/G6rO6HQeIFKHrmcSJGay3sx5su48uXYPu2mh7aZ9dgXoCXAFvX40NUd
 kwYXOWDTEzj4NLHekpZVjWHa1P1avv2BLpJLydoXI8fbs8vfOY2laYGcAp55zKgmVD
 RLDM2xgYuDigeh1U5W4rgAxn27EIICj+MotSIDmk=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20200806123047.GA2857204@kroah.com>
References: <20200806123047.GA2857204@kroah.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20200806123047.GA2857204@kroah.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
 tags/staging-5.9-rc1
X-PR-Tracked-Commit-Id: 5bbd90550da8f7bdac769b5825597e67183c9411
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: c0c419c04557117258d184876d94091d29bbd9a6
Message-Id: <159675116218.18694.5085070310642512251.pr-tracker-bot@kernel.org>
Date: Thu, 06 Aug 2020 21:59:22 +0000
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

The pull request you sent on Thu, 6 Aug 2020 14:30:47 +0200:

> git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/staging-5.9-rc1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/c0c419c04557117258d184876d94091d29bbd9a6

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
