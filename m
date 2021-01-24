Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 17797301E72
	for <lists+driverdev-devel@lfdr.de>; Sun, 24 Jan 2021 20:33:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3C67B85E6D;
	Sun, 24 Jan 2021 19:33:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DnU5pJRRJ8ix; Sun, 24 Jan 2021 19:33:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3C0A885DF4;
	Sun, 24 Jan 2021 19:33:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BDBC31BF310
 for <devel@linuxdriverproject.org>; Sun, 24 Jan 2021 19:33:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AE7572043E
 for <devel@linuxdriverproject.org>; Sun, 24 Jan 2021 19:33:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NUljIFbXJiHi for <devel@linuxdriverproject.org>;
 Sun, 24 Jan 2021 19:33:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id EB82120400
 for <devel@linuxdriverproject.org>; Sun, 24 Jan 2021 19:33:50 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id 8676822D58;
 Sun, 24 Jan 2021 19:33:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611516830;
 bh=vCrPTtmTxUpSSrSNPQCsWoAFtwQhhhciz7hfnh6WTCY=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=YmPeEKzJGXMvNiySvEPktRIqFpBj41Lm/O+pNzas/5T+CZWnNR99MpuLJVso0eHoh
 ASFgHtN9L2hxqNvRFVhwiHmF8B8klHHQyK5JBAj8hVclss1IeG1Tl9/ZZB0nzi+d6/
 wxmpq1sUU2hTqxueweiDcw5v3L/LsXP7lzXwqcH0HIYuXj+sArO1tgWH69XFbTKl6/
 kpH3cHhTX1qnxeGRQZSIN55OGngNcebEHA7F6TUUX1ADOvsdjhJKpJygSz0cgKsJV5
 dtuMqNNAbGQYpP7rWPoq3sJIqkEeXCW8L19gFVFhLJxDIWNUIauabOdRzwbjzIvnj9
 xVFcGzS8MIyOQ==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 82883652E1;
 Sun, 24 Jan 2021 19:33:50 +0000 (UTC)
Subject: Re: [GIT PULL] Staging/IIO driver fixes for 5.11-rc5
From: pr-tracker-bot@kernel.org
In-Reply-To: <YA1u24kUPB+B7gKY@kroah.com>
References: <YA1u24kUPB+B7gKY@kroah.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <YA1u24kUPB+B7gKY@kroah.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
 tags/staging-5.11-rc5
X-PR-Tracked-Commit-Id: a1bfb0ccf94dc79223d0db0d50237d3b3898f0b2
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 832bceefa08ef830388c175911fe17e6ef0125b9
Message-Id: <161151683052.23923.9315923694767541434.pr-tracker-bot@kernel.org>
Date: Sun, 24 Jan 2021 19:33:50 +0000
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

The pull request you sent on Sun, 24 Jan 2021 13:58:03 +0100:

> git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/staging-5.11-rc5

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/832bceefa08ef830388c175911fe17e6ef0125b9

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
