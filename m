Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F792189608
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 Mar 2020 07:53:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A426888970;
	Wed, 18 Mar 2020 06:53:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xrN+QG5a0H4F; Wed, 18 Mar 2020 06:53:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D9954884DE;
	Wed, 18 Mar 2020 06:53:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AEC4F1BF421
 for <devel@linuxdriverproject.org>; Wed, 18 Mar 2020 06:53:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AABBC877A4
 for <devel@linuxdriverproject.org>; Wed, 18 Mar 2020 06:53:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PtCr0lnd1QQW for <devel@linuxdriverproject.org>;
 Wed, 18 Mar 2020 06:53:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B574F875DA
 for <devel@driverdev.osuosl.org>; Wed, 18 Mar 2020 06:53:09 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 092B520724;
 Wed, 18 Mar 2020 06:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584514389;
 bh=qJb15wbgrEIw9ZcZA0NkNezSE8COV60jAVXgl4pIxFE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Dl0j4M4iqAPjLbh2sLKuFN9gl6Q+FBsmnVogOvD2D2ugOBQSMfLj2mJYq4IFyX3k2
 1gw1FvhOeuUlHDMHY4nAE0mf/TCbRZbPDVrjTtkPGMKrOR3maN+81HJvQrAbn8NQiT
 0jVvpu9G+uOCKdGDj6yvqG62OIJmof4lgD6MvO/g=
Date: Wed, 18 Mar 2020 07:53:07 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Philip Li <philip.li@intel.com>
Subject: Re: [kbuild-all] Re: [staging:staging-testing 222/222]
 drivers/ide/ide-gd.c:362:10: sparse: warning: Initializer entry defined
 twice
Message-ID: <20200318065307.GA1655597@kroah.com>
References: <202003180724.owQ2TGg8%lkp@intel.com>
 <20200318060831.GA1595360@kroah.com>
 <20200318061243.GA32360@intel.com>
 <20200318061740.GA1648068@kroah.com>
 <20200318064231.GA1889@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200318064231.GA1889@intel.com>
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
Cc: devel@driverdev.osuosl.org, Stefano Brivio <sbrivio@redhat.com>,
 Kaaira Gupta <kgupta@es.iitr.ac.in>, kbuild-all@lists.01.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Mar 18, 2020 at 02:42:31PM +0800, Philip Li wrote:
> On Wed, Mar 18, 2020 at 07:17:40AM +0100, Greg Kroah-Hartman wrote:
> > On Wed, Mar 18, 2020 at 02:12:43PM +0800, Philip Li wrote:
> > > On Wed, Mar 18, 2020 at 07:08:31AM +0100, Greg Kroah-Hartman wrote:
> > > > On Wed, Mar 18, 2020 at 07:24:29AM +0800, kbuild test robot wrote:
> > > > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
> > > > > head:   ba839b32d6f76a68919ed838e9375c47ca05a91a
> > > > > commit: ba839b32d6f76a68919ed838e9375c47ca05a91a [222/222] staging: media: hantro: remove parentheses
> > > > > reproduce:
> > > > >         # apt-get install sparse
> > > > >         # sparse version: 
> > > > >         git checkout ba839b32d6f76a68919ed838e9375c47ca05a91a
> > > > >         make ARCH=x86_64 allmodconfig
> > > > >         make C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__'
> > > > > 
> > > > > If you fix the issue, kindly add following tag
> > > > > Reported-by: kbuild test robot <lkp@intel.com>
> > > > > 
> > > > > All warnings (new ones prefixed by >>):
> > > > > 
> > > > > >> drivers/ide/ide-gd.c:362:10: sparse: warning: Initializer entry defined twice
> > > > >    drivers/ide/ide-gd.c:364:10: sparse:   also defined here
> > > > > --
> > > > > >> drivers/scsi/sr.c:689:10: sparse: warning: Initializer entry defined twice
> > > > >    drivers/scsi/sr.c:691:10: sparse:   also defined here
> > > > > --
> > > > > >> drivers/block/paride/pcd.c:277:10: sparse: warning: Initializer entry defined twice
> > > > >    drivers/block/paride/pcd.c:279:10: sparse:   also defined here
> > > > > --
> > > > > >> sound/soc/codecs/rt1015.c:844:24: sparse: warning: symbol 'rt1015_aif_dai_ops' was not declared. Should it be static?
> > > > > >> sound/soc/codecs/rt1015.c:849:27: sparse: warning: symbol 'rt1015_dai' was not declared. Should it be static?
> > > > > --
> > > > > >> net/netfilter/nft_set_pipapo.c:739:6: sparse: warning: symbol 'nft_pipapo_get' was not declared. Should it be static?
> > > > > 
> > > > > vim +362 drivers/ide/ide-gd.c
> > > > > 
> > > > > c103d6ee69f93e Arnd Bergmann             2019-03-15  357  
> > > > > 83d5cde47dedf0 Alexey Dobriyan           2009-09-21  358  static const struct block_device_operations ide_gd_ops = {
> > > > > 5fef0e5c028394 Bartlomiej Zolnierkiewicz 2008-10-17  359  	.owner			= THIS_MODULE,
> > > > > 6e9624b8caec29 Arnd Bergmann             2010-08-07  360  	.open			= ide_gd_unlocked_open,
> > > > > b2f21e057dfbaa Al Viro                   2008-10-16  361  	.release		= ide_gd_release,
> > > > > 8a6cfeb6deca3a Arnd Bergmann             2010-07-08 @362  	.ioctl			= ide_gd_ioctl,
> > > > > c103d6ee69f93e Arnd Bergmann             2019-03-15  363  #ifdef CONFIG_COMPAT
> > > > > c103d6ee69f93e Arnd Bergmann             2019-03-15  364  	.ioctl			= ide_gd_compat_ioctl,
> > > > > c103d6ee69f93e Arnd Bergmann             2019-03-15  365  #endif
> > > > > 5fef0e5c028394 Bartlomiej Zolnierkiewicz 2008-10-17  366  	.getgeo			= ide_gd_getgeo,
> > > > > 5b03a1b140e13a Tejun Heo                 2011-03-09  367  	.check_events		= ide_gd_check_events,
> > > > > c3e33e043f5e9c Tejun Heo                 2010-05-15  368  	.unlock_native_capacity	= ide_gd_unlock_native_capacity,
> > > > > 5fef0e5c028394 Bartlomiej Zolnierkiewicz 2008-10-17  369  	.revalidate_disk	= ide_gd_revalidate_disk
> > > > > 5fef0e5c028394 Bartlomiej Zolnierkiewicz 2008-10-17  370  };
> > > > > 5fef0e5c028394 Bartlomiej Zolnierkiewicz 2008-10-17  371  
> > > > > 
> > > > > :::::: The code at line 362 was first introduced by commit
> > > > > :::::: 8a6cfeb6deca3a8fefd639d898b0d163c0b5d368 block: push down BKL into .locked_ioctl
> > > > 
> > > > Why is 0-day starting to spit out sparse warnings for things that have
> > > > nothing to do with the specific patch, or tree?
> > > thanks for the input, Greg, we will check this to avoid
> > > false positive.
> > 
> > This was not the only false-positive report I got this morning, so
> > something went wrong on your end that started spitting out new ones :(
> sorry for the noise, we will go through the reports sent to you in recent
> days to check. If it is handy for you to fwd me the "wrong" mail, it
> can also help me address the problem.

Subject: [staging:staging-testing 222/222] drivers/mtd/nand/raw/nand_legacy.c:42:17: sparse: warning: cast from restricted __le16
Message-ID: <202003180728.te9ZFdLb%lkp@intel.com>

is also incorrect

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
