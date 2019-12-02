Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CB6F10EEFD
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Dec 2019 19:15:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D74B48833D;
	Mon,  2 Dec 2019 18:15:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bkgGCMffHl5j; Mon,  2 Dec 2019 18:15:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1F2878820A;
	Mon,  2 Dec 2019 18:15:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 74A681BF34D
 for <devel@linuxdriverproject.org>; Mon,  2 Dec 2019 18:15:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 71E618631D
 for <devel@linuxdriverproject.org>; Mon,  2 Dec 2019 18:15:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2mqdUUgYtaGG for <devel@linuxdriverproject.org>;
 Mon,  2 Dec 2019 18:15:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A9336862E8
 for <devel@driverdev.osuosl.org>; Mon,  2 Dec 2019 18:15:07 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 074A420718;
 Mon,  2 Dec 2019 18:15:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575310507;
 bh=jPiVcuaAidjifO58kG4+hCHpnuzdzZqrqEC+SolpAOU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=P6bhaZwzCNYqu2wRmSwVWP1lQj0PvgQZV5Kj5fZcXqVbd+NH3/s4kDXSgJK/FgUHi
 2Q61RLf0BQrpim/TpxKnTJUuz3Y80S4xiDyJ5+mYNPHw3LKysj92FXM7TI2d/NdTwS
 eKuSaewyR5BgM1svvcAdcYqzBeYkaIKP26jHMjHk=
Date: Mon, 2 Dec 2019 19:15:05 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Guenter Roeck <linux@roeck-us.net>
Subject: Re: [PATCH] staging/octeon: Mark Ethernet driver as BROKEN
Message-ID: <20191202181505.GA732872@kroah.com>
References: <20191202141836.9363-1-linux@roeck-us.net>
 <20191202165231.GA728202@kroah.com>
 <20191202173620.GA29323@roeck-us.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191202173620.GA29323@roeck-us.net>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
Cc: devel@driverdev.osuosl.org, Julia Lawall <julia.lawall@lip6.fr>,
 linux-kernel@vger.kernel.org, Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Dec 02, 2019 at 09:36:20AM -0800, Guenter Roeck wrote:
> On Mon, Dec 02, 2019 at 05:52:31PM +0100, Greg Kroah-Hartman wrote:
> > On Mon, Dec 02, 2019 at 06:18:36AM -0800, Guenter Roeck wrote:
> > > The code doesn't compile due to incompatible pointer errors such as
> > > 
> > > drivers/staging/octeon/ethernet-tx.c:649:50: error:
> > > 	passing argument 1 of 'cvmx_wqe_get_grp' from incompatible pointer type
> > > 
> > > This is due to mixing, for example, cvmx_wqe_t with 'struct cvmx_wqe'.
> > > 
> > > Unfortunately, one can not just revert the primary offending commit, as doing so
> > > results in secondary errors. This is made worse by the fact that the "removed"
> > > typedefs still exist and are used widely outside the staging directory,
> > > making the entire set of "remove typedef" changes pointless and wrong.
> > 
> > Ugh, sorry about that.
> > 
> > > Reflect reality and mark the driver as BROKEN.
> > 
> > Should I just delete this thing?  No one seems to be using it and there
> > is no move to get it out of staging at all.
> > 
> > Will anyone actually miss it?  It can always come back of someone
> > does...
> > 
> 
> All it does is causing trouble and misguided attempts to clean it up.
> If anything, the whole thing goes into the wrong direction (declare a
> complete set of dummy functions just to be able to build the driver
> with COMPILE_TEST ? Seriously ?).
> 
> I second the motion to drop it. This has been in staging for 10 years.
> Don't we have some kind of time limit for code in staging ? If not,
> should we ? If anyone really needs it, that person or group should
> really invest the time to get it out of staging for good.

10 years?  Ugh, yes, it's time to drop the thing, I'll do so after -rc1
is out.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
