Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 595FC2F09D2
	for <lists+driverdev-devel@lfdr.de>; Sun, 10 Jan 2021 22:21:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CA04320466;
	Sun, 10 Jan 2021 21:21:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x1Nso0do6o37; Sun, 10 Jan 2021 21:21:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5D2D0203DF;
	Sun, 10 Jan 2021 21:21:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8AA401BF426
 for <devel@linuxdriverproject.org>; Sun, 10 Jan 2021 21:21:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8767C85D11
 for <devel@linuxdriverproject.org>; Sun, 10 Jan 2021 21:21:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 44XCAUMDJtaQ for <devel@linuxdriverproject.org>;
 Sun, 10 Jan 2021 21:21:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CA04280AD8
 for <devel@linuxdriverproject.org>; Sun, 10 Jan 2021 21:21:17 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id 6659522AAE;
 Sun, 10 Jan 2021 21:21:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1610313677;
 bh=+jlF5/wYycNq1KpyfK7+3BlW8JEXp/hwQgNScDFpob4=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=Wo3CEKfAd1p9S61SNCa2oBmSqWaaZGCoUd40PShRg7jENBk6e5PZQKkpo49lQiE1t
 GD9iKpoCDYFhta3S5lD306PEUN9A0nagvMsGKcfOfF53y6XE7kG0oArskv5EQM6+cG
 Ti/jOScFXG8dfZqddRx77+7kwWgMEGdEIva0WTxpdGREhQsk6XdnjIgxhFbfMRK2Ot
 /IIcf/WbJQMveqZiJBzlbMIYAaKyq/Os3hRGwoWnFTzl59GFYX/CD4AyEbNFlf93I0
 w7VZ8kg6WdicsOeWC9N+eQnJ6Q7KT3nqZjwMz4mvU1aNo+LlalQv4MfhcILM3CjPJo
 syg8+1ESgHbDg==
Received: from pdx-korg-docbuild-1.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-1.ci.codeaurora.org (Postfix) with ESMTP id 5BEAA600E0;
 Sun, 10 Jan 2021 21:21:17 +0000 (UTC)
Subject: Re: [GIT PULL] Staging driver fixes for 5.11-rc3
From: pr-tracker-bot@kernel.org
In-Reply-To: <X/sKurcTpwVvIuOs@kroah.com>
References: <X/sKurcTpwVvIuOs@kroah.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <X/sKurcTpwVvIuOs@kroah.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
 tags/staging-5.11-rc3
X-PR-Tracked-Commit-Id: 00b8c557d096f0930d5c07df618223d3d06902d6
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 4ad9a28f56d70b950b1232151b2354636853727a
Message-Id: <161031367736.28318.6312733968459361236.pr-tracker-bot@kernel.org>
Date: Sun, 10 Jan 2021 21:21:17 +0000
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

The pull request you sent on Sun, 10 Jan 2021 15:10:02 +0100:

> git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/staging-5.11-rc3

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/4ad9a28f56d70b950b1232151b2354636853727a

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
