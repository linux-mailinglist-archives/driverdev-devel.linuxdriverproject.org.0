Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D148211967F
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Dec 2019 22:27:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 16A53884D9;
	Tue, 10 Dec 2019 21:27:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4mKZ0z2zwfu6; Tue, 10 Dec 2019 21:27:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id F38B588453;
	Tue, 10 Dec 2019 21:27:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 40DCC1BF580
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 21:27:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 356EF22786
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 21:27:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nDfEZWeZoXfg for <devel@linuxdriverproject.org>;
 Tue, 10 Dec 2019 21:27:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from emh04.mail.saunalahti.fi (emh04.mail.saunalahti.fi
 [62.142.5.110])
 by silver.osuosl.org (Postfix) with ESMTPS id 74D0A22773
 for <devel@driverdev.osuosl.org>; Tue, 10 Dec 2019 21:27:48 +0000 (UTC)
Received: from darkstar.musicnaut.iki.fi (85-76-143-83-nat.elisa-mobile.fi
 [85.76.143.83])
 by emh04.mail.saunalahti.fi (Postfix) with ESMTP id E27983000B;
 Tue, 10 Dec 2019 23:27:44 +0200 (EET)
Date: Tue, 10 Dec 2019 23:27:44 +0200
From: Aaro Koskinen <aaro.koskinen@iki.fi>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 2/2] staging: octeon-usb: delete the octeon usb host
 controller driver
Message-ID: <20191210212744.GD18225@darkstar.musicnaut.iki.fi>
References: <20191210091509.3546251-1-gregkh@linuxfoundation.org>
 <20191210091509.3546251-2-gregkh@linuxfoundation.org>
 <20191210193153.GB18225@darkstar.musicnaut.iki.fi>
 <20191210201957.GB4070187@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191210201957.GB4070187@kroah.com>
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
Cc: devel@driverdev.osuosl.org, Sumit Pundir <pundirsumit11@gmail.com>,
 linux-kernel@vger.kernel.org, David Daney <ddaney.cavm@gmail.com>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>,
 Laura Lazzati <laura.lazzati.15@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Dec 10, 2019 at 09:19:57PM +0100, Greg Kroah-Hartman wrote:
> On Tue, Dec 10, 2019 at 09:31:54PM +0200, Aaro Koskinen wrote:
> > Hi,
> > 
> > On Tue, Dec 10, 2019 at 10:15:09AM +0100, Greg Kroah-Hartman wrote:
> > > This driver was merged back in 2013 and shows no progress toward every
> > > being merged into the "correct" part of the kernel.
> > 
> > Do you mean all the patches since 2013 were "no progress"? Thanks.
> 
> I have not seen any proposals to get it out of staging at all.  If the
> only thing left really is just those two simple TODO lines, then why has
> it taken 6 years to do that?

Do you mean you did not see the below thread when I asked for help;
it was a kind of propsal, no? Also things take time when you are just a
hobbyist reverse engineering undocumented hardware that you also run in
production. Yes, I'm slow, but the starting point wasn't also a very good.

https://marc.info/?t=155839354700002&r=1&w=2

I don't mind you deleting the driver, and if you think that "no progress"
is true then I'm very sorry for all those commits/noise.

A.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
