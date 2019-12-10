Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BE4C31190EF
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Dec 2019 20:47:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 604912283A;
	Tue, 10 Dec 2019 19:47:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z23tjj5o7Z+W; Tue, 10 Dec 2019 19:47:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E5CBB22803;
	Tue, 10 Dec 2019 19:47:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E8A7C1BF2F2
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 19:47:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E3C0C87C50
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 19:47:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PkIz9OJ1Pfzp for <devel@linuxdriverproject.org>;
 Tue, 10 Dec 2019 19:47:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from emh07.mail.saunalahti.fi (emh07.mail.saunalahti.fi
 [62.142.5.117])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B8DCD87C4F
 for <devel@driverdev.osuosl.org>; Tue, 10 Dec 2019 19:47:04 +0000 (UTC)
Received: from darkstar.musicnaut.iki.fi (85-76-143-83-nat.elisa-mobile.fi
 [85.76.143.83])
 by emh07.mail.saunalahti.fi (Postfix) with ESMTP id DDD7EB00AE;
 Tue, 10 Dec 2019 21:46:59 +0200 (EET)
Date: Tue, 10 Dec 2019 21:46:59 +0200
From: Aaro Koskinen <aaro.koskinen@iki.fi>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sandro Volery <sandro@volery.com>
Subject: Re: [PATCH 1/2] staging: octeon: delete driver
Message-ID: <20191210194659.GC18225@darkstar.musicnaut.iki.fi>
References: <20191210091509.3546251-1-gregkh@linuxfoundation.org>
 <EFBFCF4B-745B-4B1B-A176-08CE8CADBFEA@volery.com>
 <20191210120120.GA3779155@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191210120120.GA3779155@kroah.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
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
Cc: devel@driverdev.osuosl.org, Branden Bonaby <brandonbonaby94@gmail.com>,
 Paul Burton <paulburton@kernel.org>, Giovanni Gherdovich <bobdc9664@seznam.cz>,
 Florian Westphal <fw@strlen.de>, YueHaibing <yuehaibing@huawei.com>,
 linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Julia Lawall <julia.lawall@lip6.fr>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Dan Carpenter <dan.carpenter@oracle.com>, Valery Ivanov <ivalery111@gmail.com>,
 Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>,
 "David S. Miller" <davem@davemloft.net>, Guenter Roeck <linux@roeck-us.net>,
 Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Dec 10, 2019 at 01:01:20PM +0100, Greg Kroah-Hartman wrote:
> On Tue, Dec 10, 2019 at 12:40:54PM +0100, Sandro Volery wrote:
> > Doesn't octeon have drivers out of staging already?
> > What is this module for?
> 
> I have no idea :(

It's stated in the TODO file you are deleting (visible in your
patch): "This driver is functional and supports Ethernet on
OCTEON+/OCTEON2/OCTEON3 chips at least up to CN7030."

This includes e.g. some D-Link routers and Uniquiti EdgeRouters. You
can check from /proc/cpuinfo if you are running on this MIPS SoC.

A.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
