Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id ACCCB189592
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 Mar 2020 07:09:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CCBB68898D;
	Wed, 18 Mar 2020 06:09:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LHZ4f8za-zZk; Wed, 18 Mar 2020 06:09:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6286D88120;
	Wed, 18 Mar 2020 06:09:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4417B1BF421
 for <devel@linuxdriverproject.org>; Wed, 18 Mar 2020 06:09:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 40482203B4
 for <devel@linuxdriverproject.org>; Wed, 18 Mar 2020 06:09:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id isFRbfVBkLbu for <devel@linuxdriverproject.org>;
 Wed, 18 Mar 2020 06:09:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 66961203A7
 for <devel@driverdev.osuosl.org>; Wed, 18 Mar 2020 06:09:23 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BD94C20724;
 Wed, 18 Mar 2020 06:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584511763;
 bh=Gw8jqyPaguyz+ZS3LIEAvEuqOxElX+w/nM92Rk4qmRE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=u8XmMi9UWIbEWR6VJWzUWY+1/PEgxKaGYfcM3uNA+ORSp/sXZS6Ytz9Vv1CxWRYtF
 g02Jivs6IfPiGEwQCzdmay2aW8PKDMZc7/EmYsWNTONuZudsDRZWZNZyCcJvn8itJW
 3Vq0ilVJUXMPHBJBZS/G/NaFRFRSILEw5IqbFy6U=
Date: Wed, 18 Mar 2020 07:08:31 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: kbuild test robot <lkp@intel.com>
Subject: Re: [staging:staging-testing 222/222] drivers/ide/ide-gd.c:362:10:
 sparse: warning: Initializer entry defined twice
Message-ID: <20200318060831.GA1595360@kroah.com>
References: <202003180724.owQ2TGg8%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202003180724.owQ2TGg8%lkp@intel.com>
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

On Wed, Mar 18, 2020 at 07:24:29AM +0800, kbuild test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
> head:   ba839b32d6f76a68919ed838e9375c47ca05a91a
> commit: ba839b32d6f76a68919ed838e9375c47ca05a91a [222/222] staging: media: hantro: remove parentheses
> reproduce:
>         # apt-get install sparse
>         # sparse version: 
>         git checkout ba839b32d6f76a68919ed838e9375c47ca05a91a
>         make ARCH=x86_64 allmodconfig
>         make C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__'
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> drivers/ide/ide-gd.c:362:10: sparse: warning: Initializer entry defined twice
>    drivers/ide/ide-gd.c:364:10: sparse:   also defined here
> --
> >> drivers/scsi/sr.c:689:10: sparse: warning: Initializer entry defined twice
>    drivers/scsi/sr.c:691:10: sparse:   also defined here
> --
> >> drivers/block/paride/pcd.c:277:10: sparse: warning: Initializer entry defined twice
>    drivers/block/paride/pcd.c:279:10: sparse:   also defined here
> --
> >> sound/soc/codecs/rt1015.c:844:24: sparse: warning: symbol 'rt1015_aif_dai_ops' was not declared. Should it be static?
> >> sound/soc/codecs/rt1015.c:849:27: sparse: warning: symbol 'rt1015_dai' was not declared. Should it be static?
> --
> >> net/netfilter/nft_set_pipapo.c:739:6: sparse: warning: symbol 'nft_pipapo_get' was not declared. Should it be static?
> 
> vim +362 drivers/ide/ide-gd.c
> 
> c103d6ee69f93e Arnd Bergmann             2019-03-15  357  
> 83d5cde47dedf0 Alexey Dobriyan           2009-09-21  358  static const struct block_device_operations ide_gd_ops = {
> 5fef0e5c028394 Bartlomiej Zolnierkiewicz 2008-10-17  359  	.owner			= THIS_MODULE,
> 6e9624b8caec29 Arnd Bergmann             2010-08-07  360  	.open			= ide_gd_unlocked_open,
> b2f21e057dfbaa Al Viro                   2008-10-16  361  	.release		= ide_gd_release,
> 8a6cfeb6deca3a Arnd Bergmann             2010-07-08 @362  	.ioctl			= ide_gd_ioctl,
> c103d6ee69f93e Arnd Bergmann             2019-03-15  363  #ifdef CONFIG_COMPAT
> c103d6ee69f93e Arnd Bergmann             2019-03-15  364  	.ioctl			= ide_gd_compat_ioctl,
> c103d6ee69f93e Arnd Bergmann             2019-03-15  365  #endif
> 5fef0e5c028394 Bartlomiej Zolnierkiewicz 2008-10-17  366  	.getgeo			= ide_gd_getgeo,
> 5b03a1b140e13a Tejun Heo                 2011-03-09  367  	.check_events		= ide_gd_check_events,
> c3e33e043f5e9c Tejun Heo                 2010-05-15  368  	.unlock_native_capacity	= ide_gd_unlock_native_capacity,
> 5fef0e5c028394 Bartlomiej Zolnierkiewicz 2008-10-17  369  	.revalidate_disk	= ide_gd_revalidate_disk
> 5fef0e5c028394 Bartlomiej Zolnierkiewicz 2008-10-17  370  };
> 5fef0e5c028394 Bartlomiej Zolnierkiewicz 2008-10-17  371  
> 
> :::::: The code at line 362 was first introduced by commit
> :::::: 8a6cfeb6deca3a8fefd639d898b0d163c0b5d368 block: push down BKL into .locked_ioctl

Why is 0-day starting to spit out sparse warnings for things that have
nothing to do with the specific patch, or tree?

False-positive errors are the worst, please fix.

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
