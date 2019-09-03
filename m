Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A8A66A606A
	for <lists+driverdev-devel@lfdr.de>; Tue,  3 Sep 2019 07:11:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C3ADC87595;
	Tue,  3 Sep 2019 05:11:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QY3t5mZ-aHs9; Tue,  3 Sep 2019 05:11:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B8AEC863DE;
	Tue,  3 Sep 2019 05:11:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 232121BF38D
 for <devel@linuxdriverproject.org>; Tue,  3 Sep 2019 05:11:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1FF48863DE
 for <devel@linuxdriverproject.org>; Tue,  3 Sep 2019 05:11:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EUikLq32mXuq for <devel@linuxdriverproject.org>;
 Tue,  3 Sep 2019 05:11:09 +0000 (UTC)
X-Greylist: delayed 00:10:10 by SQLgrey-1.7.6
Received: from mail3-relais-sop.national.inria.fr
 (mail3-relais-sop.national.inria.fr [192.134.164.104])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 377A7861D4
 for <devel@driverdev.osuosl.org>; Tue,  3 Sep 2019 05:11:09 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="5.64,461,1559512800"; d="scan'208";a="318030399"
Received: from abo-12-105-68.mrs.modulonet.fr (HELO hadrien) ([85.68.105.12])
 by mail3-relais-sop.national.inria.fr with
 ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Sep 2019 07:00:56 +0200
Date: Tue, 3 Sep 2019 07:00:55 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Valdis Kl??tnieks <valdis.kletnieks@vt.edu>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Sasha Levin <alexander.levin@microsoft.com>, devel@driverdev.osuosl.org, 
 kbuild-all@01.org
Subject: [staging:staging-testing 268/273]
 drivers/staging/exfat/exfat_super.c:3491:2-7:
 WARNING: NULL check before some freeing functions is not needed. (fwd)
Message-ID: <alpine.DEB.2.21.1909030659490.3228@hadrien>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

You can drop the if on line 3490.

julia

---------- Forwarded message ----------
Date: Tue, 3 Sep 2019 04:28:35 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@01.org
Cc: Julia Lawall <julia.lawall@lip6.fr>
Subject: [staging:staging-testing 268/273]
    drivers/staging/exfat/exfat_super.c:3491:2-7: WARNING: NULL check before
    some freeing functions is not needed.

CC: kbuild-all@01.org
CC: devel@driverdev.osuosl.org
TO: "Valdis Kl??tnieks" <valdis.kletnieks@vt.edu>
CC: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
CC: Sasha Levin <alexander.levin@microsoft.com>

tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
head:   544b3e7fd2d39b571298c64000423df21b912a3b
commit: c48c9f7ff32b8b3965a08e40eb6763682d905b5d [268/273] staging: exfat: add exfat filesystem code to staging
:::::: branch date: 2 hours ago
:::::: commit date: 4 days ago

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>
Reported-by: Julia Lawall <julia.lawall@lip6.fr>

>> drivers/staging/exfat/exfat_super.c:3491:2-7: WARNING: NULL check before some freeing functions is not needed.
--
>> drivers/staging/exfat/exfat_super.c:2699:26-33: WARNING opportunity for kmemdup

git remote add staging https://kernel.googlesource.com/pub/scm/linux/kernel/git/gregkh/staging.git
git remote update staging
git checkout c48c9f7ff32b8b3965a08e40eb6763682d905b5d
vim +3491 drivers/staging/exfat/exfat_super.c

c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  3487
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  3488  static void exfat_destroy_inode(struct inode *inode)
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  3489  {
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  3490  	if (EXFAT_I(inode)->target)
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28 @3491  		kfree(EXFAT_I(inode)->target);
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  3492  	EXFAT_I(inode)->target = NULL;
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  3493
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  3494  	kmem_cache_free(exfat_inode_cachep, EXFAT_I(inode));
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  3495  }
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  3496

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
