Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B4109EE827
	for <lists+driverdev-devel@lfdr.de>; Mon,  4 Nov 2019 20:19:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B309984471;
	Mon,  4 Nov 2019 19:19:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NezPQhYNjDL1; Mon,  4 Nov 2019 19:19:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 24DC284545;
	Mon,  4 Nov 2019 19:19:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BFDEE1BF33D
 for <devel@linuxdriverproject.org>; Mon,  4 Nov 2019 19:19:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BC948204AF
 for <devel@linuxdriverproject.org>; Mon,  4 Nov 2019 19:19:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E88cdDf-WrWr for <devel@linuxdriverproject.org>;
 Mon,  4 Nov 2019 19:19:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by silver.osuosl.org (Postfix) with ESMTPS id 52AA820472
 for <devel@driverdev.osuosl.org>; Mon,  4 Nov 2019 19:19:44 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f00:1e2::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 53E03151D3D7E;
 Mon,  4 Nov 2019 11:19:43 -0800 (PST)
Date: Mon, 04 Nov 2019 11:19:42 -0800 (PST)
Message-Id: <20191104.111942.674044184836510706.davem@davemloft.net>
To: gregkh@linuxfoundation.org
Subject: Re: [PATCH v1] staging: intel-dpa: gswip: Introduce Gigabit
 Ethernet Switch (GSWIP) device driver
From: David Miller <davem@davemloft.net>
In-Reply-To: <20191104122009.GA2126921@kroah.com>
References: <03832ecb6a34876ef26a24910816f22694c0e325.1572863013.git.jack.ping.chng@intel.com>
 <20191104122009.GA2126921@kroah.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 04 Nov 2019 11:19:43 -0800 (PST)
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
Cc: devel@driverdev.osuosl.org, cheol.yong.kim@intel.com,
 jack.ping.chng@intel.com, andriy.shevchenko@intel.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, mallikarjunax.reddy@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Greg KH <gregkh@linuxfoundation.org>
Date: Mon, 4 Nov 2019 13:20:09 +0100

> Why is this being submitted to staging?  What is wrong with the "real"
> part of the kernel for this?

Agreed, this makes no sense at all.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
