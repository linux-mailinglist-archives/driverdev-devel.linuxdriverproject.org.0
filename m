Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D05962A20B6
	for <lists+driverdev-devel@lfdr.de>; Sun,  1 Nov 2020 19:09:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7D66F8687A;
	Sun,  1 Nov 2020 18:09:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GOKamrWvLb+g; Sun,  1 Nov 2020 18:09:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9649F867F7;
	Sun,  1 Nov 2020 18:09:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5CC331BF3E8
 for <devel@linuxdriverproject.org>; Sun,  1 Nov 2020 18:09:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 596C587283
 for <devel@linuxdriverproject.org>; Sun,  1 Nov 2020 18:09:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M0Wi3LocoygI for <devel@linuxdriverproject.org>;
 Sun,  1 Nov 2020 18:09:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0486A87282
 for <devel@linuxdriverproject.org>; Sun,  1 Nov 2020 18:09:01 +0000 (UTC)
Subject: Re: [GIT PULL] Staging driver fixes for 5.10-rc2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1604254140;
 bh=lkY3DCaNZbN3pSBsRWPg6dP7MwaEAA0OdS6R54o5+8E=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=aDx5E6Pk5+V4xREqZxSUVQ0tlrxY7eGATo1P6Vkl9ACByd7Re7Qw5LEK+7yShh3k1
 2TCmKSraQd4Q6X50jmh7SorvlW9BeJcuPYYnubh2NXyrwcv+9XZFMcTEWMVPEIgwbF
 qSzW2txgixZi4nbC1M2pqWUZ67MgCQpWXId/AxnI=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20201101130921.GA4115310@kroah.com>
References: <20201101130921.GA4115310@kroah.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20201101130921.GA4115310@kroah.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
 tags/staging-5.10-rc2
X-PR-Tracked-Commit-Id: 7e97e4cbf30026b49b0145c3bfe06087958382c5
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 2376cca02d73a67ab28f03aa787777b74c3b0230
Message-Id: <160425414064.10555.3823876563045716017.pr-tracker-bot@kernel.org>
Date: Sun, 01 Nov 2020 18:09:00 +0000
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

The pull request you sent on Sun, 1 Nov 2020 14:09:21 +0100:

> git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/staging-5.10-rc2

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/2376cca02d73a67ab28f03aa787777b74c3b0230

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
