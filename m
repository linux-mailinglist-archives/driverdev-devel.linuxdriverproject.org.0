Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E10B325CB
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Jun 2019 02:49:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DF8BC2150F;
	Mon,  3 Jun 2019 00:49:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xw1J8kix+heR; Mon,  3 Jun 2019 00:49:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8606521511;
	Mon,  3 Jun 2019 00:49:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0CEC91BF957
 for <devel@linuxdriverproject.org>; Mon,  3 Jun 2019 00:49:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0A0F384F61
 for <devel@linuxdriverproject.org>; Mon,  3 Jun 2019 00:49:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S0cP2qBCbO0L for <devel@linuxdriverproject.org>;
 Mon,  3 Jun 2019 00:49:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D5DB884F58
 for <devel@driverdev.osuosl.org>; Mon,  3 Jun 2019 00:49:40 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 8C148133E98DF;
 Sun,  2 Jun 2019 17:49:39 -0700 (PDT)
Date: Sun, 02 Jun 2019 17:49:33 -0700 (PDT)
Message-Id: <20190602.174933.1545607185118348010.davem@davemloft.net>
To: arnd@arndb.de
Subject: Re: [GIT PULL net-next, resend] isdn: deprecate non-mISDN drivers
From: David Miller <davem@davemloft.net>
In-Reply-To: <CAK8P3a1JvZNQ7oTLkAe8hA5qkU4=_Jwch=dqUgk2Qe1vR1SAsg@mail.gmail.com>
References: <CAK8P3a1JvZNQ7oTLkAe8hA5qkU4=_Jwch=dqUgk2Qe1vR1SAsg@mail.gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sun, 02 Jun 2019 17:49:40 -0700 (PDT)
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
Cc: devel@driverdev.osuosl.org, tilman@imap.cc, isdn@linux-pingi.de,
 gigaset307x-common@lists.sourceforge.net, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, WIMPy@yeti.dk, isdn4linux@listserv.isdn4linux.de,
 viro@zeniv.linux.org.uk, holgerschurig@googlemail.com, pebolle@tiscali.nl,
 thomas.jarosch@intra2net.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 31 May 2019 14:32:52 +0200

> [resending, rebased on top of today's net-next]
> 
> The following changes since commit 7b3ed2a137b077bc0967352088b0adb6049eed20:
> 
>   Merge branch '100GbE' of
> git://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue
> (2019-05-30 15:17:05 -0700)
> 
> are available in the Git repository at:
> 
>  https://git.kernel.org/pub/scm/linux/kernel/git/arnd/playground.git
> tags/isdn-removal
> 
> for you to fetch changes up to 6d97985072dc270032dc7a08631080bfd6253e82:
> 
>   isdn: move capi drivers to staging (2019-05-31 11:17:41 +0200)

Pulled, thanks Arnd.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
