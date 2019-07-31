Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AB9AA7C829
	for <lists+driverdev-devel@lfdr.de>; Wed, 31 Jul 2019 18:07:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9277A85C90;
	Wed, 31 Jul 2019 16:07:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aOcMErgePSWg; Wed, 31 Jul 2019 16:07:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4641A85C56;
	Wed, 31 Jul 2019 16:07:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 780C51BF2F0
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 16:07:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7322C85535
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 16:07:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OfVEz3iYrOdR for <devel@linuxdriverproject.org>;
 Wed, 31 Jul 2019 16:07:21 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BD2A185533
 for <devel@driverdev.osuosl.org>; Wed, 31 Jul 2019 16:07:21 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 113BC140AD8FF;
 Wed, 31 Jul 2019 09:07:21 -0700 (PDT)
Date: Wed, 31 Jul 2019 09:07:20 -0700 (PDT)
Message-Id: <20190731.090720.391196858300492585.davem@davemloft.net>
To: gregkh@linuxfoundation.org
Subject: Re: [PATCH v2] staging/octeon: Fix build error without
 CONFIG_NETDEVICES
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190731160219.GA2114@kroah.com>
References: <20190731160219.GA2114@kroah.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 31 Jul 2019 09:07:21 -0700 (PDT)
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org, yuehaibing@huawei.com,
 linux-kernel@vger.kernel.org, willy@infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Greg KH <gregkh@linuxfoundation.org>
Date: Wed, 31 Jul 2019 18:02:19 +0200

> From: YueHaibing <yuehaibing@huawei.com>
> 
> While do COMPILE_TEST build without CONFIG_NETDEVICES,
> we get Kconfig warning:
> 
> WARNING: unmet direct dependencies detected for PHYLIB
>   Depends on [n]: NETDEVICES [=n]
>   Selected by [y]:
>   - OCTEON_ETHERNET [=y] && STAGING [=y] && (CAVIUM_OCTEON_SOC && NETDEVICES [=n] || COMPILE_TEST [=y])
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Reported-by: Mark Brown <broonie@kernel.org>
> Fixes: 171a9bae68c7 ("staging/octeon: Allow test build on !MIPS")
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

Applied to net-next.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
