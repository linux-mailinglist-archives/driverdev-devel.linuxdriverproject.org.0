Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 588731CB46D
	for <lists+driverdev-devel@lfdr.de>; Fri,  8 May 2020 18:15:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EDA5A8884E;
	Fri,  8 May 2020 16:15:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XGleS19VcZ8V; Fri,  8 May 2020 16:15:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 10E4E86E9E;
	Fri,  8 May 2020 16:15:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C0E4E1BF271
 for <devel@linuxdriverproject.org>; Fri,  8 May 2020 16:15:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BDB3988E49
 for <devel@linuxdriverproject.org>; Fri,  8 May 2020 16:15:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S0HhPBz3KYSF for <devel@linuxdriverproject.org>;
 Fri,  8 May 2020 16:15:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id AE5408943C
 for <devel@linuxdriverproject.org>; Fri,  8 May 2020 16:15:05 +0000 (UTC)
Subject: Re: [GIT PULL] Staging driver fixes for 5.7-rc5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588954505;
 bh=INzBQ0xINSFbpI5vhMT4ShbHe9Hgk5/90am2R/Ofgjk=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=JiXrccatrDtgpiztF8dSgwvfEFjWDgKJtbGgm5LvzqcQ3SbuZFEpXtugyPS0n0A9I
 IXBKYri2CEfUv5t7GOAFGdh9KN+c9d8WvY1sxDVIMhtodiW/FWy14tNhmfIP6tGw0U
 qNFoUOCzHooNh9fHY10n8UeS3FP5VoccZj2nH2Tw=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20200508141807.GA353767@kroah.com>
References: <20200508141807.GA353767@kroah.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20200508141807.GA353767@kroah.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
 tags/staging-5.7-rc5
X-PR-Tracked-Commit-Id: 769acc3656d93aaacada814939743361d284fd87
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: e7a1c733fecd6bf71f87f74b36ab51bb3eafd8b3
Message-Id: <158895450551.20886.7356855581138654992.pr-tracker-bot@kernel.org>
Date: Fri, 08 May 2020 16:15:05 +0000
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

The pull request you sent on Fri, 8 May 2020 16:18:07 +0200:

> git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/staging-5.7-rc5

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/e7a1c733fecd6bf71f87f74b36ab51bb3eafd8b3

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
