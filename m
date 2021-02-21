Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E51C3208A3
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 06:41:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 946386F545
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 05:41:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 86Boyj_YdZ8q for <lists+driverdev-devel@lfdr.de>;
	Sun, 21 Feb 2021 05:40:59 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 8BC8E6F510; Sun, 21 Feb 2021 05:40:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5C285605F5;
	Sun, 21 Feb 2021 05:40:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F3D1B1BF5A3
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 05:40:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E2303834D5
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 05:40:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7Fv8jIx8EGAG for <devel@linuxdriverproject.org>;
 Sun, 21 Feb 2021 05:40:33 +0000 (UTC)
Received: by smtp1.osuosl.org (Postfix, from userid 1001)
 id 0BD428361C; Sun, 21 Feb 2021 05:40:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9990E834D5
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 05:40:31 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id 1BD5C64E5F;
 Sun, 21 Feb 2021 05:40:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1613886031;
 bh=mB3y5ZU5btwdfBVKaLvkn0Hc0Oby9mmSLMF1iYZZb9Q=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=Gx1Q6R8cgKJDPW1fOV9/24CeQH0C+E0m8KgHnbaG0qw7k+bbIiJJ/lD6JeOeNV0Ne
 cmYQHP0TdrH7qvsrU9DEw5qeA4ZHQl0Fn4StVN0l7MX/r5FmCG69pBJiYDRJf781tK
 5+cHdk7C+tDlFwzpUImNAalmWQuIZ3nykWSrS3AID4BP6ndX84xjUcCzfG9SiP9UAF
 DZEVptoBwG8AvlqwbMmvsd+VD1Mr2WHogcfzKOeEsjqb0RCi+xXh/absx26BTgn8LM
 dVm8FEofm0oznx0lAgDj2wvQuNpUYZZ/8VRLGy44v8kOD3hG51HsvSbHIiNaSdWhK6
 h4kxwX2ACriHw==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 1154E60A3D;
 Sun, 21 Feb 2021 05:40:31 +0000 (UTC)
Subject: Re: [GIT PULL] Staging/IIO driver patches for 5.12-rc1
From: pr-tracker-bot@kernel.org
In-Reply-To: <YCqhISE0U6/UJoLb@kroah.com>
References: <YCqhISE0U6/UJoLb@kroah.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <YCqhISE0U6/UJoLb@kroah.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
 tags/staging-5.12-rc1
X-PR-Tracked-Commit-Id: 4eb839aef182fccf8995ee439fc2b48d43e45918
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 5d99aa093b566d234b51b7822c67059e2bd3ed8d
Message-Id: <161388603106.26679.15364746324127920251.pr-tracker-bot@kernel.org>
Date: Sun, 21 Feb 2021 05:40:31 +0000
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

The pull request you sent on Mon, 15 Feb 2021 17:28:17 +0100:

> git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/staging-5.12-rc1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/5d99aa093b566d234b51b7822c67059e2bd3ed8d

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
