Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D1767FED0
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Aug 2019 18:42:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9A56387E5E;
	Fri,  2 Aug 2019 16:42:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9lLp0plztL-i; Fri,  2 Aug 2019 16:42:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5BE3D87E23;
	Fri,  2 Aug 2019 16:42:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C02A61BF296
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 16:42:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BD29588571
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 16:42:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lafdItUsZSJh for <devel@linuxdriverproject.org>;
 Fri,  2 Aug 2019 16:42:24 +0000 (UTC)
X-Greylist: delayed 00:20:04 by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5D3D688572
 for <devel@driverdev.osuosl.org>; Fri,  2 Aug 2019 16:42:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JiPRz1b1DB02obaqCC3z20a5XEDkM8AtFJgDiFd1iVo=; b=AIBv+30IiFOPBIKyKY90cKN7C
 c7RI1W+PPUsBiM7EcXVDttqHmkSyweMEcecPRoVFyAqtHoFbazefx7dgXUo4qTjtWbKsJ9f6C6EFB
 0iv6ei++jHrxflsJto44ZAzCS2R3R1furjP8FvzjMaZLnrad4n62SQbhYm27XgHh9TjWCdbRdOIv4
 J0D25W2MWjxZoh+7WyYdRLk6qTedaW1x179xjzSBr9fl0TdbMdK4qGBymCrGIQe4Rrdy9CxFDJ726
 kUcO2YdaGL7m8LRrHaAoaOcdRqT4p+00MCj3hv205btJQxYRZzguwA6qUET1DWdjlq2q6hyxUgL+I
 JzZTQ0GuA==;
Received: from static-50-53-52-16.bvtn.or.frontiernet.net ([50.53.52.16]
 helo=[192.168.1.17])
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1htaJu-00047k-7l; Fri, 02 Aug 2019 16:22:18 +0000
Subject: Re: linux-next: Tree for Aug 2 (staging/octeon/)
To: Stephen Rothwell <sfr@canb.auug.org.au>,
 Linux Next Mailing List <linux-next@vger.kernel.org>
References: <20190802155223.41b0be6e@canb.auug.org.au>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <9f6374e6-2175-0e0c-6be3-a2aca53bd865@infradead.org>
Date: Fri, 2 Aug 2019 09:22:17 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190802155223.41b0be6e@canb.auug.org.au>
Content-Language: en-US
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Matthew Wilcox <willy@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 8/1/19 10:52 PM, Stephen Rothwell wrote:
> Hi all,
> 
> Changes since 20190801:
> 

on x86_64:
when CONFIG_OF is not set/enabled.


WARNING: unmet direct dependencies detected for MDIO_OCTEON
  Depends on [n]: NETDEVICES [=y] && MDIO_DEVICE [=y] && MDIO_BUS [=y] && 64BIT [=y] && HAS_IOMEM [=y] && OF_MDIO [=n]
  Selected by [y]:
  - OCTEON_ETHERNET [=y] && STAGING [=y] && (CAVIUM_OCTEON_SOC || COMPILE_TEST [=y]) && NETDEVICES [=y]

ld: drivers/net/phy/mdio-octeon.o: in function `octeon_mdiobus_probe':
mdio-octeon.c:(.text+0x31c): undefined reference to `cavium_mdiobus_read'
ld: mdio-octeon.c:(.text+0x35a): undefined reference to `cavium_mdiobus_write'


OCTEON_ETHERNET should not select MDIO_OCTEON when OF_MDIO is not set/enabled.


-- 
~Randy
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
