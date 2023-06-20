Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57BA97372E3
	for <lists+driverdev-devel@lfdr.de>; Tue, 20 Jun 2023 19:29:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C1CB3416AB;
	Tue, 20 Jun 2023 17:29:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C1CB3416AB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UCJ_Z8pNw5FV; Tue, 20 Jun 2023 17:29:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5067341768;
	Tue, 20 Jun 2023 17:29:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5067341768
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 33E261BF83B
 for <devel@linuxdriverproject.org>; Tue, 20 Jun 2023 17:29:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0CE9C416AB
 for <devel@linuxdriverproject.org>; Tue, 20 Jun 2023 17:29:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0CE9C416AB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tx1f4ZOaaQka for <devel@linuxdriverproject.org>;
 Tue, 20 Jun 2023 17:29:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D407B405FC
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D407B405FC
 for <devel@driverdev.osuosl.org>; Tue, 20 Jun 2023 17:29:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="344673820"
X-IronPort-AV: E=Sophos;i="6.00,257,1681196400"; d="scan'208";a="344673820"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2023 10:29:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="838290870"
X-IronPort-AV: E=Sophos;i="6.00,257,1681196400"; d="scan'208";a="838290870"
Received: from lkp-server01.sh.intel.com (HELO 783282924a45) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 20 Jun 2023 10:29:30 -0700
Received: from kbuild by 783282924a45 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qBfAX-00065M-33;
 Tue, 20 Jun 2023 17:29:29 +0000
Date: Wed, 21 Jun 2023 01:29:01 +0800
From: kernel test robot <lkp@intel.com>
To: Ivan Orlov <ivan.orlov0322@gmail.com>
Subject: [driver-core:class_cleanup 41/47]
 drivers/gpu/drm/../../accel/drm_accel.c:55:21: error: assignment of
 read-only variable 'accel_class'
Message-ID: <202306210110.7ADf9kzn-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687282173; x=1718818173;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=/NLRe36IRPhR5TbxdpB3sUxMp68jnOSNtaAslBLc/ZI=;
 b=YLnJ++V1Gc6T/iOvsaQSSVUX5ZMH7FM7XZ22C6gbuFhT9mkUInw9zbnM
 15kavzNV3sjiWP6ENYtDk5wRgIRDy+iGlvGxnfKhp36qEQ/Mu+S3tG+Bd
 OZeTar/BQHc0e7SuM/jhhEz45mJm3Vm46gzpaZpHD0FkL2MgqFsOxGbJI
 VITWBuLFiaX7phhy1wKmpu24hjfwoeBzxPaqYiq5wCWuMSR8v2PjjvhrN
 C9tP4tkZuyFU/GFKgYJSpDU46oFo4OyRKijqemG5bIy16V3lOpu20O7Bj
 vzGvsvdWRJ1RRjOcS0MLYiLBXEjOZMvbdrxLgUsCMMAGygcdij1L12qpl
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YLnJ++V1
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
 oe-kbuild-all@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git class_cleanup
head:   dba7b38cece67048c402887753b21c5e06ae9138
commit: f6c1685b3ed971b0c8d8bb51a3dae1189cca1455 [41/47] accel: make accel_class a static const structure
config: sparc-randconfig-r022-20230620 (https://download.01.org/0day-ci/archive/20230621/202306210110.7ADf9kzn-lkp@intel.com/config)
compiler: sparc64-linux-gcc (GCC) 12.3.0
reproduce: (https://download.01.org/0day-ci/archive/20230621/202306210110.7ADf9kzn-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202306210110.7ADf9kzn-lkp@intel.com/

All errors (new ones prefixed by >>):

   drivers/gpu/drm/../../accel/drm_accel.c: In function 'accel_sysfs_destroy':
>> drivers/gpu/drm/../../accel/drm_accel.c:52:28: error: incompatible type for argument 1 of 'IS_ERR_OR_NULL'
      52 |         if (IS_ERR_OR_NULL(accel_class))
         |                            ^~~~~~~~~~~
         |                            |
         |                            struct class
   In file included from include/linux/rwsem.h:17,
                    from include/linux/mm_types.h:13,
                    from include/linux/mmzone.h:22,
                    from include/linux/gfp.h:7,
                    from include/linux/xarray.h:15,
                    from include/linux/list_lru.h:14,
                    from include/linux/fs.h:13,
                    from include/linux/debugfs.h:15,
                    from drivers/gpu/drm/../../accel/drm_accel.c:9:
   include/linux/err.h:39:68: note: expected 'const void *' but argument is of type 'struct class'
      39 | static inline bool __must_check IS_ERR_OR_NULL(__force const void *ptr)
         |                                                        ~~~~~~~~~~~~^~~
>> drivers/gpu/drm/../../accel/drm_accel.c:54:23: error: incompatible type for argument 1 of 'class_destroy'
      54 |         class_destroy(accel_class);
         |                       ^~~~~~~~~~~
         |                       |
         |                       struct class
   In file included from include/linux/device.h:31,
                    from drivers/gpu/drm/../../accel/drm_accel.c:10:
   include/linux/device/class.h:231:40: note: expected 'const struct class *' but argument is of type 'struct class'
     231 | void class_destroy(const struct class *cls);
         |                    ~~~~~~~~~~~~~~~~~~~~^~~
>> drivers/gpu/drm/../../accel/drm_accel.c:55:21: error: assignment of read-only variable 'accel_class'
      55 |         accel_class = NULL;
         |                     ^
   drivers/gpu/drm/../../accel/drm_accel.c: In function 'accel_set_device_instance_params':
>> drivers/gpu/drm/../../accel/drm_accel.c:123:23: error: incompatible types when assigning to type 'const struct class *' from type 'struct class'
     123 |         kdev->class = accel_class;
         |                       ^~~~~~~~~~~


vim +/accel_class +55 drivers/gpu/drm/../../accel/drm_accel.c

8bf4889762a8f5 Oded Gabbay 2022-10-31   49  
8bf4889762a8f5 Oded Gabbay 2022-10-31   50  static void accel_sysfs_destroy(void)
8bf4889762a8f5 Oded Gabbay 2022-10-31   51  {
8bf4889762a8f5 Oded Gabbay 2022-10-31  @52  	if (IS_ERR_OR_NULL(accel_class))
8bf4889762a8f5 Oded Gabbay 2022-10-31   53  		return;
8bf4889762a8f5 Oded Gabbay 2022-10-31  @54  	class_destroy(accel_class);
8bf4889762a8f5 Oded Gabbay 2022-10-31  @55  	accel_class = NULL;
8bf4889762a8f5 Oded Gabbay 2022-10-31   56  }
8bf4889762a8f5 Oded Gabbay 2022-10-31   57  
2c204f3d53218d Oded Gabbay 2022-10-31   58  static int accel_name_info(struct seq_file *m, void *data)
2c204f3d53218d Oded Gabbay 2022-10-31   59  {
2c204f3d53218d Oded Gabbay 2022-10-31   60  	struct drm_info_node *node = (struct drm_info_node *) m->private;
2c204f3d53218d Oded Gabbay 2022-10-31   61  	struct drm_minor *minor = node->minor;
2c204f3d53218d Oded Gabbay 2022-10-31   62  	struct drm_device *dev = minor->dev;
2c204f3d53218d Oded Gabbay 2022-10-31   63  	struct drm_master *master;
2c204f3d53218d Oded Gabbay 2022-10-31   64  
2c204f3d53218d Oded Gabbay 2022-10-31   65  	mutex_lock(&dev->master_mutex);
2c204f3d53218d Oded Gabbay 2022-10-31   66  	master = dev->master;
2c204f3d53218d Oded Gabbay 2022-10-31   67  	seq_printf(m, "%s", dev->driver->name);
2c204f3d53218d Oded Gabbay 2022-10-31   68  	if (dev->dev)
2c204f3d53218d Oded Gabbay 2022-10-31   69  		seq_printf(m, " dev=%s", dev_name(dev->dev));
2c204f3d53218d Oded Gabbay 2022-10-31   70  	if (master && master->unique)
2c204f3d53218d Oded Gabbay 2022-10-31   71  		seq_printf(m, " master=%s", master->unique);
2c204f3d53218d Oded Gabbay 2022-10-31   72  	if (dev->unique)
2c204f3d53218d Oded Gabbay 2022-10-31   73  		seq_printf(m, " unique=%s", dev->unique);
2c204f3d53218d Oded Gabbay 2022-10-31   74  	seq_puts(m, "\n");
2c204f3d53218d Oded Gabbay 2022-10-31   75  	mutex_unlock(&dev->master_mutex);
2c204f3d53218d Oded Gabbay 2022-10-31   76  
2c204f3d53218d Oded Gabbay 2022-10-31   77  	return 0;
2c204f3d53218d Oded Gabbay 2022-10-31   78  }
2c204f3d53218d Oded Gabbay 2022-10-31   79  
2c204f3d53218d Oded Gabbay 2022-10-31   80  static const struct drm_info_list accel_debugfs_list[] = {
2c204f3d53218d Oded Gabbay 2022-10-31   81  	{"name", accel_name_info, 0}
2c204f3d53218d Oded Gabbay 2022-10-31   82  };
2c204f3d53218d Oded Gabbay 2022-10-31   83  #define ACCEL_DEBUGFS_ENTRIES ARRAY_SIZE(accel_debugfs_list)
2c204f3d53218d Oded Gabbay 2022-10-31   84  
2c204f3d53218d Oded Gabbay 2022-10-31   85  /**
2c204f3d53218d Oded Gabbay 2022-10-31   86   * accel_debugfs_init() - Initialize debugfs for accel minor
2c204f3d53218d Oded Gabbay 2022-10-31   87   * @minor: Pointer to the drm_minor instance.
2c204f3d53218d Oded Gabbay 2022-10-31   88   * @minor_id: The minor's id
2c204f3d53218d Oded Gabbay 2022-10-31   89   *
2c204f3d53218d Oded Gabbay 2022-10-31   90   * This function initializes the drm minor's debugfs members and creates
2c204f3d53218d Oded Gabbay 2022-10-31   91   * a root directory for the minor in debugfs. It also creates common files
2c204f3d53218d Oded Gabbay 2022-10-31   92   * for accelerators and calls the driver's debugfs init callback.
2c204f3d53218d Oded Gabbay 2022-10-31   93   */
2c204f3d53218d Oded Gabbay 2022-10-31   94  void accel_debugfs_init(struct drm_minor *minor, int minor_id)
2c204f3d53218d Oded Gabbay 2022-10-31   95  {
2c204f3d53218d Oded Gabbay 2022-10-31   96  	struct drm_device *dev = minor->dev;
2c204f3d53218d Oded Gabbay 2022-10-31   97  	char name[64];
2c204f3d53218d Oded Gabbay 2022-10-31   98  
2c204f3d53218d Oded Gabbay 2022-10-31   99  	INIT_LIST_HEAD(&minor->debugfs_list);
2c204f3d53218d Oded Gabbay 2022-10-31  100  	mutex_init(&minor->debugfs_lock);
2c204f3d53218d Oded Gabbay 2022-10-31  101  	sprintf(name, "%d", minor_id);
2c204f3d53218d Oded Gabbay 2022-10-31  102  	minor->debugfs_root = debugfs_create_dir(name, accel_debugfs_root);
2c204f3d53218d Oded Gabbay 2022-10-31  103  
2c204f3d53218d Oded Gabbay 2022-10-31  104  	drm_debugfs_create_files(accel_debugfs_list, ACCEL_DEBUGFS_ENTRIES,
2c204f3d53218d Oded Gabbay 2022-10-31  105  				 minor->debugfs_root, minor);
2c204f3d53218d Oded Gabbay 2022-10-31  106  
2c204f3d53218d Oded Gabbay 2022-10-31  107  	if (dev->driver->debugfs_init)
2c204f3d53218d Oded Gabbay 2022-10-31  108  		dev->driver->debugfs_init(minor);
2c204f3d53218d Oded Gabbay 2022-10-31  109  }
2c204f3d53218d Oded Gabbay 2022-10-31  110  
2c204f3d53218d Oded Gabbay 2022-10-31  111  /**
2c204f3d53218d Oded Gabbay 2022-10-31  112   * accel_set_device_instance_params() - Set some device parameters for accel device
2c204f3d53218d Oded Gabbay 2022-10-31  113   * @kdev: Pointer to the device instance.
2c204f3d53218d Oded Gabbay 2022-10-31  114   * @index: The minor's index
2c204f3d53218d Oded Gabbay 2022-10-31  115   *
2c204f3d53218d Oded Gabbay 2022-10-31  116   * This function creates the dev_t of the device using the accel major and
2c204f3d53218d Oded Gabbay 2022-10-31  117   * the device's minor number. In addition, it sets the class and type of the
2c204f3d53218d Oded Gabbay 2022-10-31  118   * device instance to the accel sysfs class and device type, respectively.
2c204f3d53218d Oded Gabbay 2022-10-31  119   */
2c204f3d53218d Oded Gabbay 2022-10-31  120  void accel_set_device_instance_params(struct device *kdev, int index)
2c204f3d53218d Oded Gabbay 2022-10-31  121  {
2c204f3d53218d Oded Gabbay 2022-10-31  122  	kdev->devt = MKDEV(ACCEL_MAJOR, index);
2c204f3d53218d Oded Gabbay 2022-10-31 @123  	kdev->class = accel_class;
2c204f3d53218d Oded Gabbay 2022-10-31  124  	kdev->type = &accel_sysfs_device_minor;
2c204f3d53218d Oded Gabbay 2022-10-31  125  }
2c204f3d53218d Oded Gabbay 2022-10-31  126  

:::::: The code at line 55 was first introduced by commit
:::::: 8bf4889762a8f5ea25610e426f132f585e9b5ed6 drivers/accel: define kconfig and register a new major

:::::: TO: Oded Gabbay <ogabbay@kernel.org>
:::::: CC: Oded Gabbay <ogabbay@kernel.org>

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
