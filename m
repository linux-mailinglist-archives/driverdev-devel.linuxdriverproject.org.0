Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B989F2818F0
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Oct 2020 19:15:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5B116204F8;
	Fri,  2 Oct 2020 17:15:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ze5PyA52YvtN; Fri,  2 Oct 2020 17:15:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BFFA620346;
	Fri,  2 Oct 2020 17:15:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 09A771BF3BD
 for <devel@linuxdriverproject.org>; Fri,  2 Oct 2020 17:15:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D0E6D20346
 for <devel@linuxdriverproject.org>; Fri,  2 Oct 2020 17:15:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o+1ganqpDtbQ for <devel@linuxdriverproject.org>;
 Fri,  2 Oct 2020 17:15:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id A1F3420031
 for <devel@linuxdriverproject.org>; Fri,  2 Oct 2020 17:15:15 +0000 (UTC)
Subject: Re: [GIT PULL] IIO driver fixes for 5.9-rc8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1601658915;
 bh=IQ8+CwZRCHjjb3KBjrwXQHDpQPOvigLbY4fuwdvzX4g=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=KZBXELYedK0XebXD7f+WQE15RpMIqT9U/uERlqO/cCkEYzFqhUIa/oLRSRqyA+YFh
 bEZX1yc+0etn7sSLqSTce/ozpsfsFBuhFXtrE5UueVt9iIdYjxZo4JSM6hhX0paT0T
 yH63lZBXjMiVqXlmjbBxTPGMk3QK0z3Dn04PIs08=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20201002142011.GA3499938@kroah.com>
References: <20201002142011.GA3499938@kroah.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20201002142011.GA3499938@kroah.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
 tags/staging-5.9-rc8
X-PR-Tracked-Commit-Id: 52a035235ed5a1392fc264bd614eb96d1ac97a3d
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: cc8ad8fa844aeae64c10f002b97a7c56619f1f57
Message-Id: <160165891532.31225.17534733155112020176.pr-tracker-bot@kernel.org>
Date: Fri, 02 Oct 2020 17:15:15 +0000
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

The pull request you sent on Fri, 2 Oct 2020 16:20:11 +0200:

> git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/staging-5.9-rc8

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/cc8ad8fa844aeae64c10f002b97a7c56619f1f57

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
