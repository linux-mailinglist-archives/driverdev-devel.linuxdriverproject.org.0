Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C98B014D0CF
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Jan 2020 20:00:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EE4F785F97;
	Wed, 29 Jan 2020 19:00:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lqrFiXcm59gD; Wed, 29 Jan 2020 19:00:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BAA4585F60;
	Wed, 29 Jan 2020 19:00:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AC8361BF2BE
 for <devel@linuxdriverproject.org>; Wed, 29 Jan 2020 19:00:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A83682155E
 for <devel@linuxdriverproject.org>; Wed, 29 Jan 2020 19:00:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f-QF2PFW5A-R for <devel@linuxdriverproject.org>;
 Wed, 29 Jan 2020 19:00:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 216EF2038F
 for <devel@linuxdriverproject.org>; Wed, 29 Jan 2020 19:00:09 +0000 (UTC)
Subject: Re: [GIT PULL] Staging and IIO driver patches for 5.6-rc1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580324408;
 bh=NojsvvfSlAbqmtV9iKY4aDpuda6Ex13CjD055Dor5k8=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=Pj1CZzNbJ4jYM+E9esgllPBAElLV3M7EXztDl8QW2w0Nd+d914LzWdrVoHmiOCamR
 Uzs1effcl//WqkYqMMUv2/tw7Zfcq++Y+iDxtMweUPrY52xnIurzrIZhc9xxKRKguj
 250u5lCeKABjEcBp7bbILpmBXhS0aDSKpPI6jGPo=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20200129101441.GA3858429@kroah.com>
References: <20200129101441.GA3858429@kroah.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20200129101441.GA3858429@kroah.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
 tags/staging-5.6-rc1
X-PR-Tracked-Commit-Id: fc157998b8257fb9cfe753e7f4af1411da995c9b
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 7ba31c3f2f1ee095d8126f4d3757fc3b2bc3c838
Message-Id: <158032440891.15518.7902918717751453269.pr-tracker-bot@kernel.org>
Date: Wed, 29 Jan 2020 19:00:08 +0000
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

The pull request you sent on Wed, 29 Jan 2020 11:14:41 +0100:

> git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/staging-5.6-rc1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/7ba31c3f2f1ee095d8126f4d3757fc3b2bc3c838

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
