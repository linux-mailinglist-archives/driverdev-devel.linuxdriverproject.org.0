Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F342138193
	for <lists+driverdev-devel@lfdr.de>; Sat, 11 Jan 2020 15:45:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1843F8615E;
	Sat, 11 Jan 2020 14:45:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hzIca2g0Zvcd; Sat, 11 Jan 2020 14:45:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2BE5A8600D;
	Sat, 11 Jan 2020 14:45:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A3EDB1BF333
 for <devel@linuxdriverproject.org>; Sat, 11 Jan 2020 14:45:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 99B7820343
 for <devel@linuxdriverproject.org>; Sat, 11 Jan 2020 14:45:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YdVag6F7klew for <devel@linuxdriverproject.org>;
 Sat, 11 Jan 2020 14:45:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 1E5EB20243
 for <devel@linuxdriverproject.org>; Sat, 11 Jan 2020 14:45:08 +0000 (UTC)
Subject: Re: [GIT PULL] Staging driver fixes for 5.5-rc6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578753907;
 bh=ByR+t05E/l5nFWAcppZgi9graZyANoJrvaM0FBlEuq8=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=SPrUVdYpaNAcFCiD0yH4Ub95CvLXCYq2fi2HZHGoYmn1rzH52MwdzesD1P2tgx/m4
 EaK07eVT2u/VfamUJKs0vaImOQ1OL/W95BOAzRQGBi807/LcJ0sCGckqN3hS6+RyKR
 A/cBLhmOiy/aS2XldznWbldXRaupLv8JfqaF52qw=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20200110210850.GA1871133@kroah.com>
References: <20200110210850.GA1871133@kroah.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20200110210850.GA1871133@kroah.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
 tags/staging-5.5-rc6
X-PR-Tracked-Commit-Id: 58dcc5bf4030cab548d5c98cd4cd3632a5444d5a
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 7da37cd0520e71707a1190022377941b9cec3b0b
Message-Id: <157875390793.30634.15633946766372116355.pr-tracker-bot@kernel.org>
Date: Sat, 11 Jan 2020 14:45:07 +0000
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

The pull request you sent on Fri, 10 Jan 2020 22:08:50 +0100:

> git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/staging-5.5-rc6

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/7da37cd0520e71707a1190022377941b9cec3b0b

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
