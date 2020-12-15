Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A645B2DB675
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Dec 2020 23:22:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DDF9686F6A;
	Tue, 15 Dec 2020 22:22:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WXHWi2ZC-4hQ; Tue, 15 Dec 2020 22:22:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4FE4986F71;
	Tue, 15 Dec 2020 22:22:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 776721BF5DB
 for <devel@linuxdriverproject.org>; Tue, 15 Dec 2020 22:22:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 73F8686F71
 for <devel@linuxdriverproject.org>; Tue, 15 Dec 2020 22:22:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aPqhOAGc3nmy for <devel@linuxdriverproject.org>;
 Tue, 15 Dec 2020 22:22:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2A6B386F6A
 for <devel@linuxdriverproject.org>; Tue, 15 Dec 2020 22:22:19 +0000 (UTC)
Subject: Re: [GIT PULL] Staging/IIO driver changes for 5.11-rc1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1608070938;
 bh=VMzxmOcaJtcJJWUe9Tf2Tcj2pV41CIhNNNe+rRXhbiY=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=mVwPrLuLmB5Z0W8HIGYsa/CUyco/1IF4D7Niwl0PdL+F3pMISCvnF1+I0a8PzEpng
 W6mzC85n8yY146AI7zWDafdqT2ryzvWV4A7eZ0c9Eq1Dib3Xey90noFGqMaPdhwYES
 tGPn3w7sEEEdTAQebnTyvbB9hgJxtSJTYdlKy2C2Ndp4eG5YplVVUASgBZPvvSBZyK
 ze7ZMI9akCvYOJTh7XdI9viWs0j8k9On6vLqKh/3+jw1Ub70pfNYHMyChTuPTGCU6j
 C1YbnTA+8k0a+d5RpOwhdGWop2DSJuibGmTY80EgJIuLsZqjwqcHnWDaBei721k0yy
 3hC/F0sSqobpw==
From: pr-tracker-bot@kernel.org
In-Reply-To: <X9iNTajXvwiLa1bV@kroah.com>
References: <X9iNTajXvwiLa1bV@kroah.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <X9iNTajXvwiLa1bV@kroah.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
 tags/staging-5.11-rc1
X-PR-Tracked-Commit-Id: 4996b4610767064807d022dd731584f7ff78c309
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 3db1a3fa98808aa90f95ec3e0fa2fc7abf28f5c9
Message-Id: <160807093876.3012.2067442470065183086.pr-tracker-bot@kernel.org>
Date: Tue, 15 Dec 2020 22:22:18 +0000
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

The pull request you sent on Tue, 15 Dec 2020 11:17:49 +0100:

> git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/staging-5.11-rc1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/3db1a3fa98808aa90f95ec3e0fa2fc7abf28f5c9

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
