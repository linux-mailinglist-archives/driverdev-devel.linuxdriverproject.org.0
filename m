Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C5BC1199A8
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Dec 2019 22:49:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3009487CEB;
	Tue, 10 Dec 2019 21:48:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ng3+jjiKRS3F; Tue, 10 Dec 2019 21:48:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 568C785C56;
	Tue, 10 Dec 2019 21:48:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 96D401BF580
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 21:48:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 91BB885EC2
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 21:48:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J4SrB30p5Lo5 for <devel@linuxdriverproject.org>;
 Tue, 10 Dec 2019 21:48:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from emh03.mail.saunalahti.fi (emh03.mail.saunalahti.fi
 [62.142.5.109])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3C4C885DE1
 for <devel@driverdev.osuosl.org>; Tue, 10 Dec 2019 21:48:53 +0000 (UTC)
Received: from darkstar.musicnaut.iki.fi (85-76-143-83-nat.elisa-mobile.fi
 [85.76.143.83])
 by emh03.mail.saunalahti.fi (Postfix) with ESMTP id 4E14440021;
 Tue, 10 Dec 2019 23:48:49 +0200 (EET)
Date: Tue, 10 Dec 2019 23:48:49 +0200
From: Aaro Koskinen <aaro.koskinen@iki.fi>
To: Guenter Roeck <linux@roeck-us.net>
Subject: Re: [PATCH 1/2] staging: octeon: delete driver
Message-ID: <20191210214848.GA5834@darkstar.musicnaut.iki.fi>
References: <20191210091509.3546251-1-gregkh@linuxfoundation.org>
 <EFBFCF4B-745B-4B1B-A176-08CE8CADBFEA@volery.com>
 <20191210120120.GA3779155@kroah.com>
 <20191210194659.GC18225@darkstar.musicnaut.iki.fi>
 <20191210201515.GA16912@roeck-us.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191210201515.GA16912@roeck-us.net>
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
 YueHaibing <yuehaibing@huawei.com>, Paul Burton <paulburton@kernel.org>,
 Julia Lawall <julia.lawall@lip6.fr>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Florian Westphal <fw@strlen.de>, linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Giovanni Gherdovich <bobdc9664@seznam.cz>, Sandro Volery <sandro@volery.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Valery Ivanov <ivalery111@gmail.com>,
 Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>,
 "David S. Miller" <davem@davemloft.net>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Dec 10, 2019 at 12:15:15PM -0800, Guenter Roeck wrote:
> On Tue, Dec 10, 2019 at 09:46:59PM +0200, Aaro Koskinen wrote:
> > On Tue, Dec 10, 2019 at 01:01:20PM +0100, Greg Kroah-Hartman wrote:
> > > I have no idea :(
> > 
> > It's stated in the TODO file you are deleting (visible in your
> > patch): "This driver is functional and supports Ethernet on
> > OCTEON+/OCTEON2/OCTEON3 chips at least up to CN7030."
> > 
> > This includes e.g. some D-Link routers and Uniquiti EdgeRouters. You
> > can check from /proc/cpuinfo if you are running on this MIPS SoC.
> 
> It also results in "mips:allmodconfig" build failures in mainline
> and is for that reason being marked as BROKEN. Unfortunately,
> misguided attempts to clean it up had the opposite effect.

This was because of stubs hack added by someone - people who do not run
or care about the hardware can now break it for others with their
silly x86 "compile test"s.

A.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
