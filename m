Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E1F7D313C3
	for <lists+driverdev-devel@lfdr.de>; Fri, 31 May 2019 19:25:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2A02120486;
	Fri, 31 May 2019 17:25:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A+gpI+tI4-WW; Fri, 31 May 2019 17:25:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 19D6B20473;
	Fri, 31 May 2019 17:25:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8E41D1BF616
 for <devel@linuxdriverproject.org>; Fri, 31 May 2019 17:25:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 78FE9873C5
 for <devel@linuxdriverproject.org>; Fri, 31 May 2019 17:25:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ORIZ7dGvq9m6 for <devel@linuxdriverproject.org>;
 Fri, 31 May 2019 17:25:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C3D2987221
 for <devel@linuxdriverproject.org>; Fri, 31 May 2019 17:25:14 +0000 (UTC)
Subject: Re: [GIT PULL] Staging/IIO driver fixes for 5.2-rc3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559323514;
 bh=Lv2wQgxrvyQmga2236AJletIBriQxwIocy97b4RHC0s=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=AyD+fv3xGQSdFrkiksHs2Z4tTTQg/FoXGnDwXNymiUzLW2gKddZw5aZ84czRUY4HA
 MUtMPy38lJTGY5ARdhDXElGwMfd40XsxG27w2DvJ7PKrtHLt6qd4HaBdXIwzkI27Ee
 jesD4QzHX1ztrhLyHmNYYJl3w0iVsVcsrflXoChk=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20190531014732.GA30765@kroah.com>
References: <20190531014732.GA30765@kroah.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20190531014732.GA30765@kroah.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
 tags/staging-5.2-rc3
X-PR-Tracked-Commit-Id: e61ff0fba72d981449c90b5299cebb74534b6f7c
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 2209a3055d6f366eeb070c217491afe855d3f389
Message-Id: <155932351464.8550.1690080308843463434.pr-tracker-bot@kernel.org>
Date: Fri, 31 May 2019 17:25:14 +0000
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

The pull request you sent on Thu, 30 May 2019 18:47:32 -0700:

> git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/staging-5.2-rc3

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/2209a3055d6f366eeb070c217491afe855d3f389

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
