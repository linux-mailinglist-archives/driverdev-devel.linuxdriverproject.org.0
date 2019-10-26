Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 10B3BE5EB4
	for <lists+driverdev-devel@lfdr.de>; Sat, 26 Oct 2019 20:47:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9574086233;
	Sat, 26 Oct 2019 18:47:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DSG1aQFMHrmU; Sat, 26 Oct 2019 18:47:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DC22085BDF;
	Sat, 26 Oct 2019 18:47:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8E6981BF2B3
 for <devel@linuxdriverproject.org>; Sat, 26 Oct 2019 18:47:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8AF578544C
 for <devel@linuxdriverproject.org>; Sat, 26 Oct 2019 18:47:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zDlAN5rSezvv for <devel@linuxdriverproject.org>;
 Sat, 26 Oct 2019 18:47:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F26EF844B2
 for <devel@driverdev.osuosl.org>; Sat, 26 Oct 2019 18:47:18 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4F53820663;
 Sat, 26 Oct 2019 18:47:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572115638;
 bh=ko0i0zDpitgbOfxq/GRV2PdhwP/g81WtxSssjEN3BIY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UkK5VxEy1Nj3AdQCch7Ewa4Iw8T65kQqJwVhCpf/0LHsbV0MvQHXZA/Xjo84toKA7
 HZoOEHkphNJIKRxtEARPs/eYIjnnP4ibZhe9grlPF2QyoM2enBxAffKuNG21Vcv1nt
 kryuBnqUS8vhjvUCSN9Ab1pPeSS+/+5ilBsoQl0U=
Date: Sat, 26 Oct 2019 20:47:16 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Aaro Koskinen <aaro.koskinen@iki.fi>
Subject: Re: [Outreachy kernel] [PATCH v2 0/5] Remove typedef declarations in
 staging: octeon
Message-ID: <20191026184716.GA753584@kroah.com>
References: <cover.1570821661.git.wambui.karugax@gmail.com>
 <alpine.DEB.2.21.1910122034390.3049@hadrien>
 <20191023174304.GD18977@darkstar.musicnaut.iki.fi>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191023174304.GD18977@darkstar.musicnaut.iki.fi>
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
 outreachy-kernel@googlegroups.com, linux-kernel@vger.kernel.org,
 Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Oct 23, 2019 at 08:43:04PM +0300, Aaro Koskinen wrote:
> Hi,
> 
> On Sat, Oct 12, 2019 at 08:35:19PM +0200, Julia Lawall wrote:
> > On Sat, 12 Oct 2019, Wambui Karuga wrote:
> > > This patchset removes the addition of new typedefs data types in octeon,
> > > along with replacing the previous uses with the new declaration format.
> > >
> > > v2 of the series removes the obsolete "_t" notation in the named types.
> > >
> > > Wambui Karuga (5):
> > >   staging: octeon: remove typedef declaration for cvmx_wqe
> > >   staging: octeon: remove typedef declaration for cvmx_helper_link_info
> > >   staging: octeon: remove typedef declaration for cvmx_fau_reg_32
> > >   staging: octeon: remove typedef declartion for cvmx_pko_command_word0
> > >   staging: octeon: remove typedef declaration for cvmx_fau_op_size
> > >
> > >  drivers/staging/octeon/ethernet-mdio.c   |  6 +--
> > >  drivers/staging/octeon/ethernet-rgmii.c  |  4 +-
> > >  drivers/staging/octeon/ethernet-rx.c     |  6 +--
> > >  drivers/staging/octeon/ethernet-tx.c     |  4 +-
> > >  drivers/staging/octeon/ethernet.c        |  6 +--
> > >  drivers/staging/octeon/octeon-ethernet.h |  2 +-
> > >  drivers/staging/octeon/octeon-stubs.h    | 56 ++++++++++++------------
> > >  7 files changed, 43 insertions(+), 41 deletions(-)
> > 
> > For the series:
> > 
> > Acked-by: Julia Lawall <julia.lawall@lip6.fr>
> 
> This series breaks the build on MIPS/OCTEON (the only actual HW using this
> driver):
> 
> $ make ARCH=mips CROSS_COMPILE=mips64-linux-gnu- cavium_octeon_defconfig
> $ make ARCH=mips CROSS_COMPILE=mips64-linux-gnu-
> [...]
>   CC      drivers/staging/octeon/ethernet.o
> In file included from drivers/staging/octeon/ethernet.c:22:
> drivers/staging/octeon/octeon-ethernet.h:94:12: warning: 'union cvmx_helper_link_info' declared inside parameter list will not be visible outside of this definition or declaration
>       union cvmx_helper_link_info li);  
>             ^~~~~~~~~~~~~~~~~~~~~
> drivers/staging/octeon/ethernet.c: In function 'cvm_oct_free_work':
> drivers/staging/octeon/ethernet.c:177:21: error: dereferencing pointer to incomplete type 'struct cvmx_wqe'
>   int segments = work->word2.s.bufs;
>                      ^~
> drivers/staging/octeon/ethernet.c: In function 'cvm_oct_common_open':
> drivers/staging/octeon/ethernet.c:463:30: error: storage size of 'link_info' isn't known
>   union cvmx_helper_link_info link_info;
>                               ^~~~~~~~~
> 
> etc.
> 
> Probably all these patches need to be reverted.

Ick :(

What is the git commit ids here that should be reverted?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
