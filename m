Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id AD59033A121
	for <lists+driverdev-devel@lfdr.de>; Sat, 13 Mar 2021 21:45:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 56A684D8B5;
	Sat, 13 Mar 2021 20:45:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RZ8v4mOvO0-L; Sat, 13 Mar 2021 20:45:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5BB424BB06;
	Sat, 13 Mar 2021 20:45:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2E7761BF2B4
 for <devel@linuxdriverproject.org>; Sat, 13 Mar 2021 20:45:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2ACC283BF1
 for <devel@linuxdriverproject.org>; Sat, 13 Mar 2021 20:45:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L4M_ZsMwdJB2 for <devel@linuxdriverproject.org>;
 Sat, 13 Mar 2021 20:45:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7D8A083BDC
 for <devel@linuxdriverproject.org>; Sat, 13 Mar 2021 20:45:37 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id 093F464ECD;
 Sat, 13 Mar 2021 20:45:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1615668337;
 bh=5nnFLUcda35viq8Qhfh/pqZLI3CNroVWlEze4mLqHAM=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=NJ4vn+v1AREtSMpGxGEL7DiW72wnmT4GRb7xNRX7pUjDbOWoKxZ30ygd0TICr6xSM
 i0gDLHEimefL0pS/urqzxjNF0N7iIpLdmVckzLvv8jV8fwt4/8mxmtjXo35vB1qsXB
 8NT++moB5qXBYPb9t5XMqkGX8AXTPhhpEBWk9CKVMYpozTn08+lFPl+edoINVbgxL9
 vMs5YN7Aiz/qQFJf4A5h9hEOAkv8DXWe9vhkpy/HuEHCcbqpUUHQk0Q3AqVOx5fCZi
 i58L7ss+3JrWsmat8KzKhiWPcyIhLnUtAXBj9IgQ0pAgUzeXoL7mb10K5UlA9TYfQV
 OXHKK3krLLbQA==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id EB5E960971;
 Sat, 13 Mar 2021 20:45:36 +0000 (UTC)
Subject: Re: [GIT PULL] Staging driver fixes for 5.12-rc3
From: pr-tracker-bot@kernel.org
In-Reply-To: <YEzURs5m1NwP4DyY@kroah.com>
References: <YEzURs5m1NwP4DyY@kroah.com>
X-PR-Tracked-List-Id: <linux-staging.lists.linux.dev>
X-PR-Tracked-Message-Id: <YEzURs5m1NwP4DyY@kroah.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
 tags/staging-5.12-rc3
X-PR-Tracked-Commit-Id: 16d7586dccf83785819f5b66f4d20fac9bfcd644
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: be61af330e09cfdde29fa5516b2ee015ebdc8bea
Message-Id: <161566833690.19597.7937919137536167389.pr-tracker-bot@kernel.org>
Date: Sat, 13 Mar 2021 20:45:36 +0000
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, devel@linuxdriverproject.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The pull request you sent on Sat, 13 Mar 2021 16:03:34 +0100:

> git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/staging-5.12-rc3

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/be61af330e09cfdde29fa5516b2ee015ebdc8bea

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
