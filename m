Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD2CD11F497
	for <lists+driverdev-devel@lfdr.de>; Sat, 14 Dec 2019 23:05:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C286188178;
	Sat, 14 Dec 2019 22:05:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZV+1nXoNknGp; Sat, 14 Dec 2019 22:05:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E051E8800F;
	Sat, 14 Dec 2019 22:05:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C35451BF841
 for <devel@linuxdriverproject.org>; Sat, 14 Dec 2019 22:05:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9951C87626
 for <devel@linuxdriverproject.org>; Sat, 14 Dec 2019 22:05:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vULSaRy57toT for <devel@linuxdriverproject.org>;
 Sat, 14 Dec 2019 22:05:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 57A8085F6D
 for <devel@linuxdriverproject.org>; Sat, 14 Dec 2019 22:05:15 +0000 (UTC)
Subject: Re: [GIT PULL] Staging / IIO driver fixes for 5.5-rc2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576361115;
 bh=Ak2F40sfzLCZkyR9X63W4auf9PESgifkXcU8GQc0M5M=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=t1oNWebRjgWC+WdJzEdwGQKTtIhT023Yjv2CG1Aw6MG3L23if36alcanji3ErwVZX
 KhvE7V26ClzKuK28ZKMqFQgnr6Hzles1vDJEYElJS7FvgB6WQzETNrLIIMs6GMPZNl
 eDeLSxLxHODKwpeJ6/bZWBNonFp8dhC4ml+me9gk=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20191214152748.GA3460096@kroah.com>
References: <20191214152748.GA3460096@kroah.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20191214152748.GA3460096@kroah.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
 tags/staging-5.5-rc2
X-PR-Tracked-Commit-Id: 4bcd9eae731083bb724faf68cce6021213308333
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: aff2a52507bfeb4d44d6a69f6f8d7ca3bcb9b50d
Message-Id: <157636111520.10255.6588362877957671815.pr-tracker-bot@kernel.org>
Date: Sat, 14 Dec 2019 22:05:15 +0000
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

The pull request you sent on Sat, 14 Dec 2019 16:27:48 +0100:

> git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/staging-5.5-rc2

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/aff2a52507bfeb4d44d6a69f6f8d7ca3bcb9b50d

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
