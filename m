Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AA3D61F0D96
	for <lists+driverdev-devel@lfdr.de>; Sun,  7 Jun 2020 20:10:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 72E9B204D3;
	Sun,  7 Jun 2020 18:10:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WFEo6lZLG12u; Sun,  7 Jun 2020 18:10:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id F2FBE2040A;
	Sun,  7 Jun 2020 18:10:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A18911BF47E
 for <devel@linuxdriverproject.org>; Sun,  7 Jun 2020 18:10:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9B39B86508
 for <devel@linuxdriverproject.org>; Sun,  7 Jun 2020 18:10:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id udA0ZE4XvzMd for <devel@linuxdriverproject.org>;
 Sun,  7 Jun 2020 18:10:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3430D864F3
 for <devel@linuxdriverproject.org>; Sun,  7 Jun 2020 18:10:21 +0000 (UTC)
Subject: Re: [GIT PULL] Staging/IIO driver patches for 5.8-rc1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591553420;
 bh=AVSnVdn8QYqs2IJcyNcQPKgcRUvjXNi49B21zfNuAsQ=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=iBpUlEZWoFxVXFytOBR5h0pAXgKlEGU85iVtOdT2+oqb+aVOWs06MNg2eDWSShsTq
 3IiRV2jNJRpKFuH4TyK7MDIuoSdhLYpbnz/JhF864+Mhf6gND1qtaccSljEWFzf0lF
 vnG1DFRVsPfFZQwYk2PELLTUxMwhf8ulnIXurLaA=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20200607132747.GA168291@kroah.com>
References: <20200607132747.GA168291@kroah.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20200607132747.GA168291@kroah.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
 tags/staging-5.8-rc1
X-PR-Tracked-Commit-Id: 77f55d1305c11fb729b88f2c3f7881ba0831fa6f
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 80ef846e9909f22ccdc2a4a6d931266cecce8b2c
Message-Id: <159155342087.28494.163613726871312579.pr-tracker-bot@kernel.org>
Date: Sun, 07 Jun 2020 18:10:20 +0000
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

The pull request you sent on Sun, 7 Jun 2020 15:27:47 +0200:

> git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/staging-5.8-rc1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/80ef846e9909f22ccdc2a4a6d931266cecce8b2c

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
