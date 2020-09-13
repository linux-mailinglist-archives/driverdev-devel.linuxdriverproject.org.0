Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D7CAA26804C
	for <lists+driverdev-devel@lfdr.de>; Sun, 13 Sep 2020 18:33:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 49568868C1;
	Sun, 13 Sep 2020 16:33:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HY7jyGUgQRyO; Sun, 13 Sep 2020 16:33:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4D417866E6;
	Sun, 13 Sep 2020 16:33:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6B0931BF59E
 for <devel@linuxdriverproject.org>; Sun, 13 Sep 2020 16:33:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 621F520369
 for <devel@linuxdriverproject.org>; Sun, 13 Sep 2020 16:33:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0TQ90C5tX0zu for <devel@linuxdriverproject.org>;
 Sun, 13 Sep 2020 16:33:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 8E0B41FD21
 for <devel@linuxdriverproject.org>; Sun, 13 Sep 2020 16:33:33 +0000 (UTC)
Subject: Re: [GIT PULL] Staging/IIO driver fixes for 5.9-rc5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1600014813;
 bh=UF/1u/Hb44Uy60ai6q8/KrA78xDD1LOyJcvA+7mjIaI=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=fnVbbiQyUFTJIyaOHkTn2ZZTM8xJ0NscAX39G3ehWt9al9SwBQNuaQH8K49/zKtj/
 44H2RquEF/atDarpEnHxaW+QNTzsL+CpmnlS04a9wmlBTl1mGWPdd8+fHCufsNzcRI
 Rx37KifFSKyeedc+GpXpywz//1MSEphhzo75eNzE=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20200913083918.GA906881@kroah.com>
References: <20200913083918.GA906881@kroah.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20200913083918.GA906881@kroah.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
 tags/staging-5.9-rc5
X-PR-Tracked-Commit-Id: a139ffa40f0c24b753838b8ef3dcf6ad10eb7854
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 6c7247f6258b2dba353c885a1b00d795a380cc85
Message-Id: <160001481310.6953.15482507862553138944.pr-tracker-bot@kernel.org>
Date: Sun, 13 Sep 2020 16:33:33 +0000
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

The pull request you sent on Sun, 13 Sep 2020 10:39:18 +0200:

> git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/staging-5.9-rc5

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/6c7247f6258b2dba353c885a1b00d795a380cc85

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
