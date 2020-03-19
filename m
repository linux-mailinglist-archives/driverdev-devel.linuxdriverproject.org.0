Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 49B7118BB9C
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 Mar 2020 16:51:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1C89623251;
	Thu, 19 Mar 2020 15:51:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vZU1iw6DbQVh; Thu, 19 Mar 2020 15:51:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DDD47230FD;
	Thu, 19 Mar 2020 15:51:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A8B831BF28A
 for <devel@linuxdriverproject.org>; Thu, 19 Mar 2020 15:50:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A38E186D10
 for <devel@linuxdriverproject.org>; Thu, 19 Mar 2020 15:50:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rFKPQLZl6KrS for <devel@linuxdriverproject.org>;
 Thu, 19 Mar 2020 15:50:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 77EA586A94
 for <devel@driverdev.osuosl.org>; Thu, 19 Mar 2020 15:50:58 +0000 (UTC)
IronPort-SDR: SMRarc/EJAEia6wh1utFYMosOj7B5VhzGHqCCpUf8auM80ygU9D0alT2t5Uqn3r2eX5o1Q/cSk
 bljY/soCGubw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2020 08:50:57 -0700
IronPort-SDR: Z0FKtzTdJEz4LxvYh4b/tS5PQVDzyA7zk3egxeQjH17R3QdSWo+tFBLilA0CITlI3NZAvf1dAk
 dyn5iY2kqcKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,572,1574150400"; d="scan'208";a="234212754"
Received: from pl-dbox.sh.intel.com (HELO intel.com) ([10.239.159.39])
 by orsmga007.jf.intel.com with ESMTP; 19 Mar 2020 08:50:53 -0700
Date: Thu, 19 Mar 2020 23:49:51 +0800
From: Philip Li <philip.li@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [kbuild-all] Re: [staging:staging-testing 222/222]
 drivers/ide/ide-gd.c:362:10: sparse: warning: Initializer entry defined
 twice
Message-ID: <20200319154951.GA11765@intel.com>
References: <202003180724.owQ2TGg8%lkp@intel.com>
 <20200318060831.GA1595360@kroah.com>
 <20200318061243.GA32360@intel.com>
 <20200318061740.GA1648068@kroah.com>
 <20200318064231.GA1889@intel.com>
 <20200318065307.GA1655597@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200318065307.GA1655597@kroah.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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

On Wed, Mar 18, 2020 at 07:53:07AM +0100, Greg Kroah-Hartman wrote:
> On Wed, Mar 18, 2020 at 02:42:31PM +0800, Philip Li wrote:
> > On Wed, Mar 18, 2020 at 07:17:40AM +0100, Greg Kroah-Hartman wrote:
> > > On Wed, Mar 18, 2020 at 02:12:43PM +0800, Philip Li wrote:
> > > > On Wed, Mar 18, 2020 at 07:08:31AM +0100, Greg Kroah-Hartman wrote:
> > > > > On Wed, Mar 18, 2020 at 07:24:29AM +0800, kbuild test robot wrote:
> > > > > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
> > > > > > head:   ba839b32d6f76a68919ed838e9375c47ca05a91a
> > > > > > commit: ba839b32d6f76a68919ed838e9375c47ca05a91a [222/222] staging: media: hantro: remove parentheses
> > > > > > reproduce:
> > > > > >         # apt-get install sparse
> > > > > >         # sparse version: 
> > > > > >         git checkout ba839b32d6f76a68919ed838e9375c47ca05a91a
> > > > > >         make ARCH=x86_64 allmodconfig
> > > > > >         make C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__'
> > > > > > 
> > > > > > If you fix the issue, kindly add following tag
> > > > > > Reported-by: kbuild test robot <lkp@intel.com>
> > > > > > 
> > > > > > All warnings (new ones prefixed by >>):
> > > > > > 
> > > > > > >> drivers/ide/ide-gd.c:362:10: sparse: warning: Initializer entry defined twice
> > > > > >    drivers/ide/ide-gd.c:364:10: sparse:   also defined here
> > > > > > --
> > > > > > >> drivers/scsi/sr.c:689:10: sparse: warning: Initializer entry defined twice
> > > > > >    drivers/scsi/sr.c:691:10: sparse:   also defined here
> > > > > > --
> > > > > > >> drivers/block/paride/pcd.c:277:10: sparse: warning: Initializer entry defined twice
> > > > > >    drivers/block/paride/pcd.c:279:10: sparse:   also defined here
> > > > > > --
> > > > > > >> sound/soc/codecs/rt1015.c:844:24: sparse: warning: symbol 'rt1015_aif_dai_ops' was not declared. Should it be static?
> > > > > > >> sound/soc/codecs/rt1015.c:849:27: sparse: warning: symbol 'rt1015_dai' was not declared. Should it be static?
> > > > > > --
> > > > > > >> net/netfilter/nft_set_pipapo.c:739:6: sparse: warning: symbol 'nft_pipapo_get' was not declared. Should it be static?
> > > > > > 
> > > > > > vim +362 drivers/ide/ide-gd.c
> > > > > > 
> > > > > > c103d6ee69f93e Arnd Bergmann             2019-03-15  357  
> > > > > > 83d5cde47dedf0 Alexey Dobriyan           2009-09-21  358  static const struct block_device_operations ide_gd_ops = {
> > > > > > 5fef0e5c028394 Bartlomiej Zolnierkiewicz 2008-10-17  359  	.owner			= THIS_MODULE,
> > > > > > 6e9624b8caec29 Arnd Bergmann             2010-08-07  360  	.open			= ide_gd_unlocked_open,
> > > > > > b2f21e057dfbaa Al Viro                   2008-10-16  361  	.release		= ide_gd_release,
> > > > > > 8a6cfeb6deca3a Arnd Bergmann             2010-07-08 @362  	.ioctl			= ide_gd_ioctl,
> > > > > > c103d6ee69f93e Arnd Bergmann             2019-03-15  363  #ifdef CONFIG_COMPAT
> > > > > > c103d6ee69f93e Arnd Bergmann             2019-03-15  364  	.ioctl			= ide_gd_compat_ioctl,
> > > > > > c103d6ee69f93e Arnd Bergmann             2019-03-15  365  #endif
> > > > > > 5fef0e5c028394 Bartlomiej Zolnierkiewicz 2008-10-17  366  	.getgeo			= ide_gd_getgeo,
> > > > > > 5b03a1b140e13a Tejun Heo                 2011-03-09  367  	.check_events		= ide_gd_check_events,
> > > > > > c3e33e043f5e9c Tejun Heo                 2010-05-15  368  	.unlock_native_capacity	= ide_gd_unlock_native_capacity,
> > > > > > 5fef0e5c028394 Bartlomiej Zolnierkiewicz 2008-10-17  369  	.revalidate_disk	= ide_gd_revalidate_disk
> > > > > > 5fef0e5c028394 Bartlomiej Zolnierkiewicz 2008-10-17  370  };
> > > > > > 5fef0e5c028394 Bartlomiej Zolnierkiewicz 2008-10-17  371  
> > > > > > 
> > > > > > :::::: The code at line 362 was first introduced by commit
> > > > > > :::::: 8a6cfeb6deca3a8fefd639d898b0d163c0b5d368 block: push down BKL into .locked_ioctl
> > > > > 
> > > > > Why is 0-day starting to spit out sparse warnings for things that have
> > > > > nothing to do with the specific patch, or tree?
> > > > thanks for the input, Greg, we will check this to avoid
> > > > false positive.
> > > 
> > > This was not the only false-positive report I got this morning, so
> > > something went wrong on your end that started spitting out new ones :(
> > sorry for the noise, we will go through the reports sent to you in recent
> > days to check. If it is handy for you to fwd me the "wrong" mail, it
> > can also help me address the problem.
> 
> Subject: [staging:staging-testing 222/222] drivers/mtd/nand/raw/nand_legacy.c:42:17: sparse: warning: cast from restricted __le16
> Message-ID: <202003180728.te9ZFdLb%lkp@intel.com>
> 
> is also incorrect
Thanks a lot Greg, we have analyzed these false positives and provide
a solution to this issue. Because we do partial make sometimes, and it appears
we need do a make clean for the partial make targets to have accurate sparse
result now. So this impacts recent sparse related reports to have some false
positive. We will keep monitor the behavior for the new reports to catch
issue ealier.

> 
> thanks,
> 
> greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
