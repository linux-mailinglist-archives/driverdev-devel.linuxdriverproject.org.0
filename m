Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 252A9E2203
	for <lists+driverdev-devel@lfdr.de>; Wed, 23 Oct 2019 19:43:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 696A086C0A;
	Wed, 23 Oct 2019 17:43:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c3B+ap9mat2u; Wed, 23 Oct 2019 17:43:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CCD59863E0;
	Wed, 23 Oct 2019 17:43:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B49301BF873
 for <devel@linuxdriverproject.org>; Wed, 23 Oct 2019 17:43:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 91E99204F7
 for <devel@linuxdriverproject.org>; Wed, 23 Oct 2019 17:43:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jbDayVCd9uR2 for <devel@linuxdriverproject.org>;
 Wed, 23 Oct 2019 17:43:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from emh07.mail.saunalahti.fi (emh07.mail.saunalahti.fi
 [62.142.5.117])
 by silver.osuosl.org (Postfix) with ESMTPS id 761A122115
 for <devel@driverdev.osuosl.org>; Wed, 23 Oct 2019 17:43:07 +0000 (UTC)
Received: from darkstar.musicnaut.iki.fi (85-76-128-127-nat.elisa-mobile.fi
 [85.76.128.127])
 by emh07.mail.saunalahti.fi (Postfix) with ESMTP id 02536B006F;
 Wed, 23 Oct 2019 20:43:04 +0300 (EEST)
Date: Wed, 23 Oct 2019 20:43:04 +0300
From: Aaro Koskinen <aaro.koskinen@iki.fi>
To: Julia Lawall <julia.lawall@lip6.fr>,
 Wambui Karuga <wambui.karugax@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH v2 0/5] Remove typedef declarations in
 staging: octeon
Message-ID: <20191023174304.GD18977@darkstar.musicnaut.iki.fi>
References: <cover.1570821661.git.wambui.karugax@gmail.com>
 <alpine.DEB.2.21.1910122034390.3049@hadrien>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1910122034390.3049@hadrien>
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
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,

On Sat, Oct 12, 2019 at 08:35:19PM +0200, Julia Lawall wrote:
> On Sat, 12 Oct 2019, Wambui Karuga wrote:
> > This patchset removes the addition of new typedefs data types in octeon,
> > along with replacing the previous uses with the new declaration format.
> >
> > v2 of the series removes the obsolete "_t" notation in the named types.
> >
> > Wambui Karuga (5):
> >   staging: octeon: remove typedef declaration for cvmx_wqe
> >   staging: octeon: remove typedef declaration for cvmx_helper_link_info
> >   staging: octeon: remove typedef declaration for cvmx_fau_reg_32
> >   staging: octeon: remove typedef declartion for cvmx_pko_command_word0
> >   staging: octeon: remove typedef declaration for cvmx_fau_op_size
> >
> >  drivers/staging/octeon/ethernet-mdio.c   |  6 +--
> >  drivers/staging/octeon/ethernet-rgmii.c  |  4 +-
> >  drivers/staging/octeon/ethernet-rx.c     |  6 +--
> >  drivers/staging/octeon/ethernet-tx.c     |  4 +-
> >  drivers/staging/octeon/ethernet.c        |  6 +--
> >  drivers/staging/octeon/octeon-ethernet.h |  2 +-
> >  drivers/staging/octeon/octeon-stubs.h    | 56 ++++++++++++------------
> >  7 files changed, 43 insertions(+), 41 deletions(-)
> 
> For the series:
> 
> Acked-by: Julia Lawall <julia.lawall@lip6.fr>

This series breaks the build on MIPS/OCTEON (the only actual HW using this
driver):

$ make ARCH=mips CROSS_COMPILE=mips64-linux-gnu- cavium_octeon_defconfig
$ make ARCH=mips CROSS_COMPILE=mips64-linux-gnu-
[...]
  CC      drivers/staging/octeon/ethernet.o
In file included from drivers/staging/octeon/ethernet.c:22:
drivers/staging/octeon/octeon-ethernet.h:94:12: warning: 'union cvmx_helper_link_info' declared inside parameter list will not be visible outside of this definition or declaration
      union cvmx_helper_link_info li);  
            ^~~~~~~~~~~~~~~~~~~~~
drivers/staging/octeon/ethernet.c: In function 'cvm_oct_free_work':
drivers/staging/octeon/ethernet.c:177:21: error: dereferencing pointer to incomplete type 'struct cvmx_wqe'
  int segments = work->word2.s.bufs;
                     ^~
drivers/staging/octeon/ethernet.c: In function 'cvm_oct_common_open':
drivers/staging/octeon/ethernet.c:463:30: error: storage size of 'link_info' isn't known
  union cvmx_helper_link_info link_info;
                              ^~~~~~~~~

etc.

Probably all these patches need to be reverted.

A.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
