Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AC092145C0
	for <lists+driverdev-devel@lfdr.de>; Sat,  4 Jul 2020 14:13:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CD41E884BE;
	Sat,  4 Jul 2020 12:13:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p0hy4DqvgC1n; Sat,  4 Jul 2020 12:13:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 29FA1883DE;
	Sat,  4 Jul 2020 12:13:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5F9621BF366
 for <devel@linuxdriverproject.org>; Sat,  4 Jul 2020 12:13:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5BB7B88F34
 for <devel@linuxdriverproject.org>; Sat,  4 Jul 2020 12:13:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id If-3ziWxJYOx for <devel@linuxdriverproject.org>;
 Sat,  4 Jul 2020 12:13:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 65B7688F2E
 for <devel@driverdev.osuosl.org>; Sat,  4 Jul 2020 12:13:31 +0000 (UTC)
IronPort-SDR: 86ntPuO3m6ybR66jQBiz8lLapve3ieAmI7eg9UGbkkLXQXKacG9F1elL5lKP7pFXimqoZICtM1
 Gl62xF4u4TwA==
X-IronPort-AV: E=McAfee;i="6000,8403,9671"; a="146336845"
X-IronPort-AV: E=Sophos;i="5.75,311,1589266800"; d="scan'208";a="146336845"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2020 05:13:31 -0700
IronPort-SDR: 1zchO837yHqQUMBaMEBQGzs3WSJBlJmnyRhUAFMBwGdfXlQdcfmOl05Wh94S5P2BfKQyXxRNQG
 P4dF/UnU+ZUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,311,1589266800"; d="scan'208";a="313516259"
Received: from lkp-server01.sh.intel.com (HELO 6dc8ab148a5d) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 04 Jul 2020 05:13:29 -0700
Received: from kbuild by 6dc8ab148a5d with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1jrh2u-0000fL-Ru; Sat, 04 Jul 2020 12:13:28 +0000
Date: Sat, 4 Jul 2020 20:12:55 +0800
From: kernel test robot <lkp@intel.com>
To: Jacopo Mondi <jacopo@jmondi.org>
Subject: [staging:staging-testing 32/135]
 drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c:1722:6: warning:
 Variable 'ret' is reassigned a value before the old one has been used.
Message-ID: <202007042049.xOFBnCX8%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kbuild-all@lists.01.org, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
head:   14442181d20490945f341644bb8257e334b01447
commit: b18ee53ad297264a79cf4ea566663f20786b6455 [32/135] staging: bcm2835: Break MMAL support out from camera
compiler: gcc-9 (Debian 9.3.0-14) 9.3.0

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>


cppcheck warnings: (new ones prefixed by >>)

>> drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c:1722:6: warning: Variable 'ret' is reassigned a value before the old one has been used. [redundantAssignment]
    ret = destroy_component(instance, component);
        ^
   drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c:1720:7: note: Variable 'ret' is reassigned a value before the old one has been used.
     ret = disable_component(instance, component);
         ^
   drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c:1722:6: note: Variable 'ret' is reassigned a value before the old one has been used.
    ret = destroy_component(instance, component);
        ^

vim +/ret +1722 drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c

7b3ad5abf027b7 drivers/staging/media/platform/bcm2835/mmal-vchiq.c   Eric Anholt  2017-01-27  1707  
7b3ad5abf027b7 drivers/staging/media/platform/bcm2835/mmal-vchiq.c   Eric Anholt  2017-01-27  1708  /*
7b3ad5abf027b7 drivers/staging/media/platform/bcm2835/mmal-vchiq.c   Eric Anholt  2017-01-27  1709   * cause a mmal component to be destroyed
7b3ad5abf027b7 drivers/staging/media/platform/bcm2835/mmal-vchiq.c   Eric Anholt  2017-01-27  1710   */
7b3ad5abf027b7 drivers/staging/media/platform/bcm2835/mmal-vchiq.c   Eric Anholt  2017-01-27  1711  int vchiq_mmal_component_finalise(struct vchiq_mmal_instance *instance,
7b3ad5abf027b7 drivers/staging/media/platform/bcm2835/mmal-vchiq.c   Eric Anholt  2017-01-27  1712  				  struct vchiq_mmal_component *component)
7b3ad5abf027b7 drivers/staging/media/platform/bcm2835/mmal-vchiq.c   Eric Anholt  2017-01-27  1713  {
7b3ad5abf027b7 drivers/staging/media/platform/bcm2835/mmal-vchiq.c   Eric Anholt  2017-01-27  1714  	int ret;
7b3ad5abf027b7 drivers/staging/media/platform/bcm2835/mmal-vchiq.c   Eric Anholt  2017-01-27  1715  
7b3ad5abf027b7 drivers/staging/media/platform/bcm2835/mmal-vchiq.c   Eric Anholt  2017-01-27  1716  	if (mutex_lock_interruptible(&instance->vchiq_mutex))
7b3ad5abf027b7 drivers/staging/media/platform/bcm2835/mmal-vchiq.c   Eric Anholt  2017-01-27  1717  		return -EINTR;
7b3ad5abf027b7 drivers/staging/media/platform/bcm2835/mmal-vchiq.c   Eric Anholt  2017-01-27  1718  
7b3ad5abf027b7 drivers/staging/media/platform/bcm2835/mmal-vchiq.c   Eric Anholt  2017-01-27  1719  	if (component->enabled)
7b3ad5abf027b7 drivers/staging/media/platform/bcm2835/mmal-vchiq.c   Eric Anholt  2017-01-27  1720  		ret = disable_component(instance, component);
7b3ad5abf027b7 drivers/staging/media/platform/bcm2835/mmal-vchiq.c   Eric Anholt  2017-01-27  1721  
7b3ad5abf027b7 drivers/staging/media/platform/bcm2835/mmal-vchiq.c   Eric Anholt  2017-01-27 @1722  	ret = destroy_component(instance, component);
7b3ad5abf027b7 drivers/staging/media/platform/bcm2835/mmal-vchiq.c   Eric Anholt  2017-01-27  1723  
7b3ad5abf027b7 drivers/staging/media/platform/bcm2835/mmal-vchiq.c   Eric Anholt  2017-01-27  1724  	mutex_unlock(&instance->vchiq_mutex);
7b3ad5abf027b7 drivers/staging/media/platform/bcm2835/mmal-vchiq.c   Eric Anholt  2017-01-27  1725  
7b3ad5abf027b7 drivers/staging/media/platform/bcm2835/mmal-vchiq.c   Eric Anholt  2017-01-27  1726  	return ret;
7b3ad5abf027b7 drivers/staging/media/platform/bcm2835/mmal-vchiq.c   Eric Anholt  2017-01-27  1727  }
b18ee53ad29726 drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c Jacopo Mondi 2020-06-23  1728  EXPORT_SYMBOL_GPL(vchiq_mmal_component_finalise);
7b3ad5abf027b7 drivers/staging/media/platform/bcm2835/mmal-vchiq.c   Eric Anholt  2017-01-27  1729  

:::::: The code at line 1722 was first introduced by commit
:::::: 7b3ad5abf027b7643b38c4006d7f4ce47a86dd3a staging: Import the BCM2835 MMAL-based V4L2 camera driver.

:::::: TO: Eric Anholt <eric@anholt.net>
:::::: CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
