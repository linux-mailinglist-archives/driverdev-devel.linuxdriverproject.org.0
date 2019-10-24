Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E485EE3DDA
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Oct 2019 22:57:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6752220516;
	Thu, 24 Oct 2019 20:57:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6CqwWnI1ly1s; Thu, 24 Oct 2019 20:57:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9C879204ED;
	Thu, 24 Oct 2019 20:57:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D41461BF859
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 20:57:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CA9ED82835
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 20:57:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P+iVNjb5d9T7 for <devel@linuxdriverproject.org>;
 Thu, 24 Oct 2019 20:57:21 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail3-relais-sop.national.inria.fr
 (mail3-relais-sop.national.inria.fr [192.134.164.104])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0B9CD827CC
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 20:57:20 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="5.68,226,1569276000"; d="scan'208";a="324196663"
Received: from ip-121.net-89-2-166.rev.numericable.fr (HELO hadrien)
 ([89.2.166.121])
 by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Oct 2019 22:57:18 +0200
Date: Thu, 24 Oct 2019 22:57:18 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Paul Burton <paulburton@kernel.org>
Subject: Re: [Outreachy kernel] Re: [PATCH v2 1/5] staging: octeon: remove
 typedef declaration for cvmx_wqe
In-Reply-To: <20191024205420.u7z3bhcjgetsyh3w@lantea.localdomain>
Message-ID: <alpine.DEB.2.21.1910242255290.2621@hadrien>
References: <cover.1570821661.git.wambui.karugax@gmail.com>
 <fa82104ea8d7ff54dc66bfbfedb6cca541701991.1570821661.git.wambui.karugax@gmail.com>
 <20191024050011.2ziewy6dkxkcxzvo@lantea.localdomain>
 <alpine.DEB.2.21.1910240722070.2771@hadrien>
 <20191024100020.GA13343@wambui>
 <20191024205420.u7z3bhcjgetsyh3w@lantea.localdomain>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 outreachy-kernel@googlegroups.com, linux-kernel@vger.kernel.org,
 Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On Thu, 24 Oct 2019, Paul Burton wrote:

> Hi Wambui, Julia,
>
> Side-note: Wambui, your mail client seems to have added this header:
>
>   Reply-To: alpine.DEB.2.21.1910240722070.2771@hadrien
>
> This is the ID of the message you replied to (ie. this is the same value
> that the In-Reply-To: header has). You should probably figure out how
> that happened, or you're going to miss responses when people reply
> without noticing the bogus email address.

This is somehow related to me...  I don't know if the problem comes from
me or from Wambui.

julia

>
> On Thu, Oct 24, 2019 at 01:00:20PM +0300, Wambui Karuga wrote:
> > On Thu, Oct 24, 2019 at 07:26:59AM +0200, Julia Lawall wrote:
> > > > If you're making significant changes to this driver, please test them
> > > > using the MIPS cavium_octeon_defconfig which is where this driver is
> > > > actually used.
> > > >
> > > > This driver has broken builds a few times recently which makes me very
> > > > tempted to ask that we stop allowing it to be built with COMPILE_TEST.
> > > > The whole octeon-stubs.h thing is a horrible hack anyway...
> > >
> > > Wambui,
> > >
> > > Please figure out what went wrong here.  Are there two sets of typedefs
> > > that should have been updated?
> > >
> > I managed to reproduce these build errors and finally noticed that the
> > "octeon-stubs.h" header is only included when CONFIG_CAVIUM_OCTEON_SOC
> > is not defined, therefore compiling properly for COMPILE_TEST but will
> > actually fail when compiled with CONFIG_CAVIUM_OCTEON_SOC is set since
> > the functions will try to use the definitions in
> > arch/mips/include/asm/octeon/ that don't have the changes.
> >
> > Paul, please tell me if this is correct?
>
> Yes, that's correct. The driver was written to use the headers in
> arch/mips/include/asm/octeon, and then recently the octeon-stubs.h
> header was added which duplicates lots of the MIPS & Octeon-specific
> header content in one huge monstrous file.
>
> I'm all for improving compile test coverage, but I think octeon-stubs.h
> in its short life has already proven itself to be a bad way to achieve
> that goal[1][2][3].
>
> > > Others,
> > >
> > > Would it be reasonable to put the information about how the driver should
> > > be compied in the TODO file?  git grep cavium_octeon_defconfig in the
> > > octeon directory turns up nothing.
>
> It wouldn't hurt. I'd argue that Kconfig already provides enough
> information to figure this out easily though - OCTEON_ETHERNET depends
> on CAVIUM_OCTEON_SOC || COMPILE_TEST, which ought to tell people that
> its real use is when CAVIUM_OCTEON_SOC=y. That doesn't necessarily point
> you to cavium_octeon_defconfig (though grepping for CAVIUM_OCTEON_SOC=y
> would), but that's not strictly needed anyway - any old config with
> CAVIUM_OCTEON_SOC=y would do.
>
> Thanks,
>     Paul
>
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=0228ecf6128c92b47eadd2ac270c5574d9150c09
> [2] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/drivers/staging/octeon?id=17a29fea086ba18b000d28439bd5cb4f2b0a527b
> [3] https://storage.kernelci.org/next/master/next-20191024/mips/cavium_octeon_defconfig/gcc-8/build.log
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
