Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B53D67C767
	for <lists+driverdev-devel@lfdr.de>; Wed, 31 Jul 2019 17:48:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 02FD922176;
	Wed, 31 Jul 2019 15:48:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7dYqGvFvzDNF; Wed, 31 Jul 2019 15:48:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3262E22008;
	Wed, 31 Jul 2019 15:48:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 036F61BF844
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 15:48:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 007B987CDE
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 15:48:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5ZETZzCGHl-5 for <devel@linuxdriverproject.org>;
 Wed, 31 Jul 2019 15:48:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4154A87B3C
 for <devel@driverdev.osuosl.org>; Wed, 31 Jul 2019 15:48:26 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 2C1AA14015B0D;
 Wed, 31 Jul 2019 08:48:25 -0700 (PDT)
Date: Wed, 31 Jul 2019 08:48:24 -0700 (PDT)
Message-Id: <20190731.084824.2244928058443049.davem@davemloft.net>
To: gregkh@linuxfoundation.org
Subject: Re: next/master build: 221 builds: 11 failed, 210 passed, 13
 errors, 1174 warnings (next-20190731)
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190731113522.GA3426@kroah.com>
References: <5d41767d.1c69fb81.d6304.4c8c@mx.google.com>
 <20190731112441.GB4369@sirena.org.uk>
 <20190731113522.GA3426@kroah.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 31 Jul 2019 08:48:25 -0700 (PDT)
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
 kernel-build-reports@lists.linaro.org, netdev@vger.kernel.org,
 willy@infradead.org, broonie@kernel.org, linux-next@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, hkallweit1@gmail.com
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date: Wed, 31 Jul 2019 13:35:22 +0200

> On Wed, Jul 31, 2019 at 12:24:41PM +0100, Mark Brown wrote:
>> On Wed, Jul 31, 2019 at 04:07:41AM -0700, kernelci.org bot wrote:
>> 
>> Today's -next fails to build an ARM allmodconfig due to:
>> 
>> > allmodconfig (arm, gcc-8) ― FAIL, 1 error, 40 warnings, 0 section mismatches
>> > 
>> > Errors:
>> >     drivers/net/phy/mdio-cavium.h:111:36: error: implicit declaration of function 'writeq'; did you mean 'writel'? [-Werror=implicit-function-declaration]
>> 
>> as a result of the changes that introduced:
>> 
>> WARNING: unmet direct dependencies detected for MDIO_OCTEON
>>   Depends on [n]: NETDEVICES [=y] && MDIO_DEVICE [=m] && MDIO_BUS [=m] && 64BIT && HAS_IOMEM [=y] && OF_MDIO [=m]
>>   Selected by [m]:
>>   - OCTEON_ETHERNET [=m] && STAGING [=y] && (CAVIUM_OCTEON_SOC && NETDEVICES [=y] || COMPILE_TEST [=y])
>> 
>> which is triggered by the staging OCTEON_ETHERNET driver which misses a
>> 64BIT dependency but added COMPILE_TEST in 171a9bae68c72f2
>> (staging/octeon: Allow test build on !MIPS).
> 
> A patch was posted for this, but it needs to go through the netdev tree
> as that's where the offending patches are coming from.

I didn't catch that, was netdev CC:'d?
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
