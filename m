Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 909EE117433
	for <lists+driverdev-devel@lfdr.de>; Mon,  9 Dec 2019 19:29:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EB53221FA9;
	Mon,  9 Dec 2019 18:29:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Vk4o5G-dv11K; Mon,  9 Dec 2019 18:29:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CC86120014;
	Mon,  9 Dec 2019 18:29:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E15441BF383
 for <devel@linuxdriverproject.org>; Mon,  9 Dec 2019 18:29:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DD1862039C
 for <devel@linuxdriverproject.org>; Mon,  9 Dec 2019 18:29:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2k2bKCYWTtG1 for <devel@linuxdriverproject.org>;
 Mon,  9 Dec 2019 18:29:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by silver.osuosl.org (Postfix) with ESMTPS id EAA7820014
 for <devel@driverdev.osuosl.org>; Mon,  9 Dec 2019 18:29:51 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f00:1c3::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id A4CDA1543B41A;
 Mon,  9 Dec 2019 10:29:50 -0800 (PST)
Date: Mon, 09 Dec 2019 10:29:50 -0800 (PST)
Message-Id: <20191209.102950.2248756181772063368.davem@davemloft.net>
To: arnd@arndb.de
Subject: Re: [PATCH 4/4] [RFC] staging/net: move AF_X25 into drivers/staging
From: David Miller <davem@davemloft.net>
In-Reply-To: <20191209151256.2497534-4-arnd@arndb.de>
References: <20191209151256.2497534-1-arnd@arndb.de>
 <20191209151256.2497534-4-arnd@arndb.de>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 09 Dec 2019 10:29:51 -0800 (PST)
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
Cc: devel@driverdev.osuosl.org, linux-x25@vger.kernel.org,
 gregkh@linuxfoundation.org, bob.dunlop@farsite.com,
 linux-kernel@vger.kernel.org, kevin.curtis@farsite.com, ebiggers@kernel.org,
 syzbot+429c200ffc8772bfe070@syzkaller.appspotmail.com, netdev@vger.kernel.org,
 syzbot+eec0c87f31a7c3b66f7b@syzkaller.appspotmail.com, andrew.hendry@gmail.com,
 qiang.zhao@nxp.com, khc@pm.waw.pl
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Arnd Bergmann <arnd@arndb.de>
Date: Mon,  9 Dec 2019 16:12:56 +0100

> syzbot keeps finding issues in the X.25 implementation that nobody is
> interested in fixing.  Given that all the x25 patches of the past years
> that are not global cleanups tend to fix user-triggered oopses, is it
> time to just retire the subsystem?

I have a bug fix that I'm currently applying to 'net' right now actually:

	https://patchwork.ozlabs.org/patch/1205973/

So your proposal might be a bit premature.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
