Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 214FC803A3
	for <lists+driverdev-devel@lfdr.de>; Sat,  3 Aug 2019 03:11:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3E02587FB9;
	Sat,  3 Aug 2019 01:11:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vTNP1AI9aGcM; Sat,  3 Aug 2019 01:11:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9909187E8E;
	Sat,  3 Aug 2019 01:11:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 543E61BF360
 for <devel@linuxdriverproject.org>; Sat,  3 Aug 2019 01:11:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 510BC87E9E
 for <devel@linuxdriverproject.org>; Sat,  3 Aug 2019 01:11:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C6NyC58hxY-V for <devel@linuxdriverproject.org>;
 Sat,  3 Aug 2019 01:11:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7782F87E8E
 for <devel@driverdev.osuosl.org>; Sat,  3 Aug 2019 01:11:34 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 16D1612665355;
 Fri,  2 Aug 2019 18:11:33 -0700 (PDT)
Date: Fri, 02 Aug 2019 18:11:32 -0700 (PDT)
Message-Id: <20190802.181132.1425585873361511856.davem@davemloft.net>
To: natechancellor@gmail.com
Subject: Re: [PATCH] net: mdio-octeon: Fix build error and Kconfig warning
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190731185023.20954-1-natechancellor@gmail.com>
References: <20190731.094150.851749535529247096.davem@davemloft.net>
 <20190731185023.20954-1-natechancellor@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Fri, 02 Aug 2019 18:11:33 -0700 (PDT)
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
Cc: devel@driverdev.osuosl.org, andrew@lunn.ch, f.fainelli@gmail.com,
 kernel-build-reports@lists.linaro.org, gregkh@linuxfoundation.org,
 willy@infradead.org, broonie@kernel.org, linux-next@vger.kernel.org,
 netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Nathan Chancellor <natechancellor@gmail.com>
Date: Wed, 31 Jul 2019 11:50:24 -0700

> arm allyesconfig warns:
> 
> WARNING: unmet direct dependencies detected for MDIO_OCTEON
>   Depends on [n]: NETDEVICES [=y] && MDIO_DEVICE [=y] && MDIO_BUS [=y]
> && 64BIT && HAS_IOMEM [=y] && OF_MDIO [=y]
>   Selected by [y]:
>   - OCTEON_ETHERNET [=y] && STAGING [=y] && (CAVIUM_OCTEON_SOC &&
> NETDEVICES [=y] || COMPILE_TEST [=y])
> 
> and errors:
> 
> In file included from ../drivers/net/phy/mdio-octeon.c:14:
> ../drivers/net/phy/mdio-octeon.c: In function 'octeon_mdiobus_probe':
> ../drivers/net/phy/mdio-cavium.h:111:36: error: implicit declaration of
> function 'writeq'; did you mean 'writeb'?

The proper way to fix this is to include either

	linux/io-64-nonatomic-hi-lo.h

or

	linux/io-64-nonatomic-lo-hi.h

whichever is appropriate.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
