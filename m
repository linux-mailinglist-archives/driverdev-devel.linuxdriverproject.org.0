Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 348176C9403
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 Mar 2023 13:36:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 481EC608D8;
	Sun, 26 Mar 2023 11:36:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 481EC608D8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OdANs5cU6qOe; Sun, 26 Mar 2023 11:36:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9401860ABA;
	Sun, 26 Mar 2023 11:36:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9401860ABA
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 076E01BF410
 for <devel@linuxdriverproject.org>; Sun, 26 Mar 2023 11:36:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D201481E04
 for <devel@linuxdriverproject.org>; Sun, 26 Mar 2023 11:36:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D201481E04
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7ZHf9REfPNJU for <devel@linuxdriverproject.org>;
 Sun, 26 Mar 2023 11:36:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B9D4281C26
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B9D4281C26
 for <devel@driverdev.osuosl.org>; Sun, 26 Mar 2023 11:36:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10660"; a="319728216"
X-IronPort-AV: E=Sophos;i="5.98,292,1673942400"; d="scan'208";a="319728216"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2023 04:36:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10660"; a="660569486"
X-IronPort-AV: E=Sophos;i="5.98,292,1673942400"; d="scan'208";a="660569486"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 26 Mar 2023 04:36:39 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pgOfu-000H6i-2r;
 Sun, 26 Mar 2023 11:36:38 +0000
Date: Sun, 26 Mar 2023 19:35:48 +0800
From: kernel test robot <lkp@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [driver-core:class_cleanup 77/77]
 drivers/gpio/gpiolib-sysfs.c:557:25: error: 'struct class' has no member
 named 'p'; did you mean 'pm'?
Message-ID: <202303261957.UQvos3xt-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679830601; x=1711366601;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=AUcoz7VHcy0tTTimM8ucDsZWY0Qd0SmmeRpc7K8G6Ls=;
 b=oFBBeowHn75O7nQxkObffbznV5Z8sKPbPAXA6HUGn3QJfCYNKzDwUSNw
 0chpAjxEXwAVPQMuNaTw+JkHYSShEQyuGG4kqlGju9T2+DrjxEDqhX4Xa
 QkECKOjsxnJiDdvp58s3iUmRqPDeT+1f/ZsOF99zUCXq6vtCaTP7BU3Do
 vSJ1d81JaOuwgULLX2QsnYICUx7d1JY4N7MnYWhvCygSaTHB6MiA6Y9Lt
 EEOwaVhHQVjL4VrOqS4zvoKs6vX9tu0euY2gxV4f+42fR2KmicrX2fXfG
 y4Fcp9Rm4f8KCtp46ONW6EaN11EOUM8zz2kEOzhCrUQLLbqdxGmj72i8R
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=oFBBeowH
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
Cc: devel@driverdev.osuosl.org, oe-kbuild-all@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git class_cleanup
head:   7c7807965477de8463e209426241adc80f5e9bb7
commit: 7c7807965477de8463e209426241adc80f5e9bb7 [77/77] driver core: class: remove subsystem private pointer from struct class
config: i386-randconfig-a001 (https://download.01.org/0day-ci/archive/20230326/202303261957.UQvos3xt-lkp@intel.com/config)
compiler: gcc-11 (Debian 11.3.0-8) 11.3.0
reproduce (this is a W=1 build):
        # https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git/commit/?id=7c7807965477de8463e209426241adc80f5e9bb7
        git remote add driver-core https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git
        git fetch --no-tags driver-core class_cleanup
        git checkout 7c7807965477de8463e209426241adc80f5e9bb7
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        make W=1 O=build_dir ARCH=i386 olddefconfig
        make W=1 O=build_dir ARCH=i386 SHELL=/bin/bash drivers/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Link: https://lore.kernel.org/oe-kbuild-all/202303261957.UQvos3xt-lkp@intel.com/

All errors (new ones prefixed by >>):

   drivers/gpio/gpiolib-sysfs.c: In function 'gpiod_export':
>> drivers/gpio/gpiolib-sysfs.c:557:25: error: 'struct class' has no member named 'p'; did you mean 'pm'?
     557 |         if (!gpio_class.p) {
         |                         ^
         |                         pm
   drivers/gpio/gpiolib-sysfs.c: In function 'gpiochip_sysfs_register':
   drivers/gpio/gpiolib-sysfs.c:731:25: error: 'struct class' has no member named 'p'; did you mean 'pm'?
     731 |         if (!gpio_class.p)
         |                         ^
         |                         pm


vim +557 drivers/gpio/gpiolib-sysfs.c

0eb4c6c2671ca0 Alexandre Courbot 2014-07-01  528  
0eb4c6c2671ca0 Alexandre Courbot 2014-07-01  529  
0eb4c6c2671ca0 Alexandre Courbot 2014-07-01  530  /**
0eb4c6c2671ca0 Alexandre Courbot 2014-07-01  531   * gpiod_export - export a GPIO through sysfs
2d9d05192e7d1a Thierry Reding    2017-07-24  532   * @desc: GPIO to make available, already requested
2d9d05192e7d1a Thierry Reding    2017-07-24  533   * @direction_may_change: true if userspace may change GPIO direction
0eb4c6c2671ca0 Alexandre Courbot 2014-07-01  534   * Context: arch_initcall or later
0eb4c6c2671ca0 Alexandre Courbot 2014-07-01  535   *
0eb4c6c2671ca0 Alexandre Courbot 2014-07-01  536   * When drivers want to make a GPIO accessible to userspace after they
0eb4c6c2671ca0 Alexandre Courbot 2014-07-01  537   * have requested it -- perhaps while debugging, or as part of their
0eb4c6c2671ca0 Alexandre Courbot 2014-07-01  538   * public interface -- they may use this routine.  If the GPIO can
0eb4c6c2671ca0 Alexandre Courbot 2014-07-01  539   * change direction (some can't) and the caller allows it, userspace
0eb4c6c2671ca0 Alexandre Courbot 2014-07-01  540   * will see "direction" sysfs attribute which may be used to change
0eb4c6c2671ca0 Alexandre Courbot 2014-07-01  541   * the gpio's direction.  A "value" attribute will always be provided.
0eb4c6c2671ca0 Alexandre Courbot 2014-07-01  542   *
0eb4c6c2671ca0 Alexandre Courbot 2014-07-01  543   * Returns zero on success, else an error.
0eb4c6c2671ca0 Alexandre Courbot 2014-07-01  544   */
0eb4c6c2671ca0 Alexandre Courbot 2014-07-01  545  int gpiod_export(struct gpio_desc *desc, bool direction_may_change)
0eb4c6c2671ca0 Alexandre Courbot 2014-07-01  546  {
483d8211087910 Johan Hovold      2015-04-21  547  	struct gpio_chip	*chip;
ff2b1359229927 Linus Walleij     2015-10-20  548  	struct gpio_device	*gdev;
c43960fbcc514b Johan Hovold      2015-05-04  549  	struct gpiod_data	*data;
0eb4c6c2671ca0 Alexandre Courbot 2014-07-01  550  	unsigned long		flags;
0eb4c6c2671ca0 Alexandre Courbot 2014-07-01  551  	int			status;
0eb4c6c2671ca0 Alexandre Courbot 2014-07-01  552  	const char		*ioname = NULL;
0eb4c6c2671ca0 Alexandre Courbot 2014-07-01  553  	struct device		*dev;
0eb4c6c2671ca0 Alexandre Courbot 2014-07-01  554  	int			offset;
0eb4c6c2671ca0 Alexandre Courbot 2014-07-01  555  
0eb4c6c2671ca0 Alexandre Courbot 2014-07-01  556  	/* can't export until sysfs is available ... */
0eb4c6c2671ca0 Alexandre Courbot 2014-07-01 @557  	if (!gpio_class.p) {
0eb4c6c2671ca0 Alexandre Courbot 2014-07-01  558  		pr_debug("%s: called too early!\n", __func__);
0eb4c6c2671ca0 Alexandre Courbot 2014-07-01  559  		return -ENOENT;
0eb4c6c2671ca0 Alexandre Courbot 2014-07-01  560  	}
0eb4c6c2671ca0 Alexandre Courbot 2014-07-01  561  
0eb4c6c2671ca0 Alexandre Courbot 2014-07-01  562  	if (!desc) {
0eb4c6c2671ca0 Alexandre Courbot 2014-07-01  563  		pr_debug("%s: invalid gpio descriptor\n", __func__);
0eb4c6c2671ca0 Alexandre Courbot 2014-07-01  564  		return -EINVAL;
0eb4c6c2671ca0 Alexandre Courbot 2014-07-01  565  	}
0eb4c6c2671ca0 Alexandre Courbot 2014-07-01  566  
fdeb8e1547cb9d Linus Walleij     2016-02-10  567  	gdev = desc->gdev;
fdeb8e1547cb9d Linus Walleij     2016-02-10  568  	chip = gdev->chip;
483d8211087910 Johan Hovold      2015-04-21  569  
0eb4c6c2671ca0 Alexandre Courbot 2014-07-01  570  	mutex_lock(&sysfs_lock);
0eb4c6c2671ca0 Alexandre Courbot 2014-07-01  571  
483d8211087910 Johan Hovold      2015-04-21  572  	/* check if chip is being removed */
afbc4f312b5e6e Linus Walleij     2016-02-09  573  	if (!chip || !gdev->mockdev) {
483d8211087910 Johan Hovold      2015-04-21  574  		status = -ENODEV;
c43960fbcc514b Johan Hovold      2015-05-04  575  		goto err_unlock;
483d8211087910 Johan Hovold      2015-04-21  576  	}
483d8211087910 Johan Hovold      2015-04-21  577  
0eb4c6c2671ca0 Alexandre Courbot 2014-07-01  578  	spin_lock_irqsave(&gpio_lock, flags);
0eb4c6c2671ca0 Alexandre Courbot 2014-07-01  579  	if (!test_bit(FLAG_REQUESTED, &desc->flags) ||
0eb4c6c2671ca0 Alexandre Courbot 2014-07-01  580  	     test_bit(FLAG_EXPORT, &desc->flags)) {
0eb4c6c2671ca0 Alexandre Courbot 2014-07-01  581  		spin_unlock_irqrestore(&gpio_lock, flags);
0eb4c6c2671ca0 Alexandre Courbot 2014-07-01  582  		gpiod_dbg(desc, "%s: unavailable (requested=%d, exported=%d)\n",
0eb4c6c2671ca0 Alexandre Courbot 2014-07-01  583  				__func__,
0eb4c6c2671ca0 Alexandre Courbot 2014-07-01  584  				test_bit(FLAG_REQUESTED, &desc->flags),
0eb4c6c2671ca0 Alexandre Courbot 2014-07-01  585  				test_bit(FLAG_EXPORT, &desc->flags));
0eb4c6c2671ca0 Alexandre Courbot 2014-07-01  586  		status = -EPERM;
c43960fbcc514b Johan Hovold      2015-05-04  587  		goto err_unlock;
0eb4c6c2671ca0 Alexandre Courbot 2014-07-01  588  	}
0eb4c6c2671ca0 Alexandre Courbot 2014-07-01  589  	spin_unlock_irqrestore(&gpio_lock, flags);
0eb4c6c2671ca0 Alexandre Courbot 2014-07-01  590  
c43960fbcc514b Johan Hovold      2015-05-04  591  	data = kzalloc(sizeof(*data), GFP_KERNEL);
c43960fbcc514b Johan Hovold      2015-05-04  592  	if (!data) {
c43960fbcc514b Johan Hovold      2015-05-04  593  		status = -ENOMEM;
c43960fbcc514b Johan Hovold      2015-05-04  594  		goto err_unlock;
c43960fbcc514b Johan Hovold      2015-05-04  595  	}
c43960fbcc514b Johan Hovold      2015-05-04  596  
c43960fbcc514b Johan Hovold      2015-05-04  597  	data->desc = desc;
6ffcb7971486ea Johan Hovold      2015-05-04  598  	mutex_init(&data->mutex);
427fdeef5014c7 Johan Hovold      2015-05-04  599  	if (chip->direction_input && chip->direction_output)
427fdeef5014c7 Johan Hovold      2015-05-04  600  		data->direction_can_change = direction_may_change;
427fdeef5014c7 Johan Hovold      2015-05-04  601  	else
427fdeef5014c7 Johan Hovold      2015-05-04  602  		data->direction_can_change = false;
c43960fbcc514b Johan Hovold      2015-05-04  603  
0eb4c6c2671ca0 Alexandre Courbot 2014-07-01  604  	offset = gpio_chip_hwgpio(desc);
cecf58ab551f74 Johan Hovold      2015-05-04  605  	if (chip->names && chip->names[offset])
cecf58ab551f74 Johan Hovold      2015-05-04  606  		ioname = chip->names[offset];
0eb4c6c2671ca0 Alexandre Courbot 2014-07-01  607  
ff2b1359229927 Linus Walleij     2015-10-20  608  	dev = device_create_with_groups(&gpio_class, &gdev->dev,
c43960fbcc514b Johan Hovold      2015-05-04  609  					MKDEV(0, 0), data, gpio_groups,
0915e6feb38de8 Johan Hovold      2015-01-13  610  					ioname ? ioname : "gpio%u",
0eb4c6c2671ca0 Alexandre Courbot 2014-07-01  611  					desc_to_gpio(desc));
0eb4c6c2671ca0 Alexandre Courbot 2014-07-01  612  	if (IS_ERR(dev)) {
0eb4c6c2671ca0 Alexandre Courbot 2014-07-01  613  		status = PTR_ERR(dev);
c43960fbcc514b Johan Hovold      2015-05-04  614  		goto err_free_data;
0eb4c6c2671ca0 Alexandre Courbot 2014-07-01  615  	}
0eb4c6c2671ca0 Alexandre Courbot 2014-07-01  616  
0eb4c6c2671ca0 Alexandre Courbot 2014-07-01  617  	set_bit(FLAG_EXPORT, &desc->flags);
0eb4c6c2671ca0 Alexandre Courbot 2014-07-01  618  	mutex_unlock(&sysfs_lock);
0eb4c6c2671ca0 Alexandre Courbot 2014-07-01  619  	return 0;
0eb4c6c2671ca0 Alexandre Courbot 2014-07-01  620  
c43960fbcc514b Johan Hovold      2015-05-04  621  err_free_data:
c43960fbcc514b Johan Hovold      2015-05-04  622  	kfree(data);
c43960fbcc514b Johan Hovold      2015-05-04  623  err_unlock:
0eb4c6c2671ca0 Alexandre Courbot 2014-07-01  624  	mutex_unlock(&sysfs_lock);
0eb4c6c2671ca0 Alexandre Courbot 2014-07-01  625  	gpiod_dbg(desc, "%s: status %d\n", __func__, status);
0eb4c6c2671ca0 Alexandre Courbot 2014-07-01  626  	return status;
0eb4c6c2671ca0 Alexandre Courbot 2014-07-01  627  }
0eb4c6c2671ca0 Alexandre Courbot 2014-07-01  628  EXPORT_SYMBOL_GPL(gpiod_export);
0eb4c6c2671ca0 Alexandre Courbot 2014-07-01  629  

:::::: The code at line 557 was first introduced by commit
:::::: 0eb4c6c2671ca05e447811041c838e2a6bc2a1f4 gpio: move sysfs support to its own file

:::::: TO: Alexandre Courbot <acourbot@nvidia.com>
:::::: CC: Linus Walleij <linus.walleij@linaro.org>

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
