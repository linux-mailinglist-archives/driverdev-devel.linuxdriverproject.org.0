Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E03CF6D1F1C
	for <lists+driverdev-devel@lfdr.de>; Fri, 31 Mar 2023 13:33:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 558E7616FE;
	Fri, 31 Mar 2023 11:33:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 558E7616FE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a2Sb_zk7kKGY; Fri, 31 Mar 2023 11:33:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B910360E55;
	Fri, 31 Mar 2023 11:33:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B910360E55
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CE91E1BF2F6
 for <devel@linuxdriverproject.org>; Fri, 31 Mar 2023 11:33:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A69FE42228
 for <devel@linuxdriverproject.org>; Fri, 31 Mar 2023 11:33:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A69FE42228
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mX-uxotEnGF1 for <devel@linuxdriverproject.org>;
 Fri, 31 Mar 2023 11:33:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2D5DF42067
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2D5DF42067
 for <devel@driverdev.osuosl.org>; Fri, 31 Mar 2023 11:33:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="341441684"
X-IronPort-AV: E=Sophos;i="5.98,307,1673942400"; d="scan'208";a="341441684"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2023 04:33:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="809004751"
X-IronPort-AV: E=Sophos;i="5.98,307,1673942400"; d="scan'208";a="809004751"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 31 Mar 2023 04:33:34 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1piD0f-000Lj4-1d;
 Fri, 31 Mar 2023 11:33:33 +0000
Date: Fri, 31 Mar 2023 19:33:29 +0800
From: kernel test robot <lkp@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [driver-core:class_cleanup 105/105]
 drivers/sbus/char/oradax.c:328:13: warning: assignment to 'int' from 'struct
 class *' makes integer from pointer without a cast
Message-ID: <202303311948.TzSAu6OT-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680262424; x=1711798424;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=3yppzDK5QLx4vO7bDM8wRc/3b+JKmF4Zlfk2EZv7JWA=;
 b=DquF4TJG9ii+I6T75C8zsBZPGuXIXV37Dh5sIYPrNhZU/u1bxMwKd3kA
 Sx8fKCTIHjRNhpneqqK6bsMeAhF3RJedTiOudDalXgt+EQjlkNxvnR5/c
 8oB8wAMAIeCcxktiKpy36s1ChuoljRC/wiXtDXa8NAWaUexrd/Pb0JzXb
 13dFBoZm3Vj4J7+dcDvxrF7oDPJcHN6g1noD0zOa2Tnlj3rPAsMrDP2CM
 0IiX/1+t/YpDiMBVhEMrl0HC01jL2wQiannkBl5xgasCczYVNKF7lokH7
 lZZ2fPyCDhcVJci8WifkKjUXoDgqvOAHmAaqj8X/My9t/gCeH1emVP4ol
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DquF4TJG
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
head:   1aadd5ac1a81f64fb8fea994e05879a587100755
commit: 1aadd5ac1a81f64fb8fea994e05879a587100755 [105/105] driver core: convert class_create() to class_register()
config: sparc-allyesconfig (https://download.01.org/0day-ci/archive/20230331/202303311948.TzSAu6OT-lkp@intel.com/config)
compiler: sparc64-linux-gcc (GCC) 12.1.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git/commit/?id=1aadd5ac1a81f64fb8fea994e05879a587100755
        git remote add driver-core https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git
        git fetch --no-tags driver-core class_cleanup
        git checkout 1aadd5ac1a81f64fb8fea994e05879a587100755
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=sparc olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=sparc SHELL=/bin/bash drivers/sbus/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Link: https://lore.kernel.org/oe-kbuild-all/202303311948.TzSAu6OT-lkp@intel.com/

All warnings (new ones prefixed by >>):

   drivers/sbus/char/oradax.c: In function 'dax_attach':
   drivers/sbus/char/oradax.c:328:28: error: passing argument 1 of 'class_create' from incompatible pointer type [-Werror=incompatible-pointer-types]
     328 |         ret = class_create(&cl);
         |                            ^~~
         |                            |
         |                            const struct class *
   In file included from include/linux/device.h:31,
                    from include/linux/cdev.h:8,
                    from drivers/sbus/char/oradax.c:27:
   include/linux/device/class.h:229:54: note: expected 'const char *' but argument is of type 'const struct class *'
     229 | struct class * __must_check class_create(const char *name);
         |                                          ~~~~~~~~~~~~^~~~
>> drivers/sbus/char/oradax.c:328:13: warning: assignment to 'int' from 'struct class *' makes integer from pointer without a cast [-Wint-conversion]
     328 |         ret = class_create(&cl);
         |             ^
   cc1: some warnings being treated as errors


vim +328 drivers/sbus/char/oradax.c

   238	
   239	static int __init dax_attach(void)
   240	{
   241		unsigned long dummy, hv_rv, major, minor, minor_requested, max_ccbs;
   242		struct mdesc_handle *hp = mdesc_grab();
   243		char *prop, *dax_name;
   244		bool found = false;
   245		int len, ret = 0;
   246		u64 pn;
   247	
   248		if (hp == NULL) {
   249			dax_err("Unable to grab mdesc");
   250			return -ENODEV;
   251		}
   252	
   253		mdesc_for_each_node_by_name(hp, pn, "virtual-device") {
   254			prop = (char *)mdesc_get_property(hp, pn, "name", &len);
   255			if (prop == NULL)
   256				continue;
   257			if (strncmp(prop, "dax", strlen("dax")))
   258				continue;
   259			dax_dbg("Found node 0x%llx = %s", pn, prop);
   260	
   261			prop = (char *)mdesc_get_property(hp, pn, "compatible", &len);
   262			if (prop == NULL)
   263				continue;
   264			dax_dbg("Found node 0x%llx = %s", pn, prop);
   265			found = true;
   266			break;
   267		}
   268	
   269		if (!found) {
   270			dax_err("No DAX device found");
   271			ret = -ENODEV;
   272			goto done;
   273		}
   274	
   275		if (strncmp(prop, DAX2_STR, strlen(DAX2_STR)) == 0) {
   276			dax_name = DAX_NAME "2";
   277			major = DAX2_MAJOR;
   278			minor_requested = DAX2_MINOR;
   279			max_ccb_version = 1;
   280			dax_dbg("MD indicates DAX2 coprocessor");
   281		} else if (strncmp(prop, DAX1_STR, strlen(DAX1_STR)) == 0) {
   282			dax_name = DAX_NAME "1";
   283			major = DAX1_MAJOR;
   284			minor_requested = DAX1_MINOR;
   285			max_ccb_version = 0;
   286			dax_dbg("MD indicates DAX1 coprocessor");
   287		} else {
   288			dax_err("Unknown dax type: %s", prop);
   289			ret = -ENODEV;
   290			goto done;
   291		}
   292	
   293		minor = minor_requested;
   294		dax_dbg("Registering DAX HV api with major %ld minor %ld", major,
   295			minor);
   296		if (sun4v_hvapi_register(HV_GRP_DAX, major, &minor)) {
   297			dax_err("hvapi_register failed");
   298			ret = -ENODEV;
   299			goto done;
   300		} else {
   301			dax_dbg("Max minor supported by HV = %ld (major %ld)", minor,
   302				major);
   303			minor = min(minor, minor_requested);
   304			dax_dbg("registered DAX major %ld minor %ld", major, minor);
   305		}
   306	
   307		/* submit a zero length ccb array to query coprocessor queue size */
   308		hv_rv = sun4v_ccb_submit(0, 0, HV_CCB_QUERY_CMD, 0, &max_ccbs, &dummy);
   309		if (hv_rv != 0) {
   310			dax_err("get_hwqueue_size failed with status=%ld and max_ccbs=%ld",
   311				hv_rv, max_ccbs);
   312			ret = -ENODEV;
   313			goto done;
   314		}
   315	
   316		if (max_ccbs != DAX_MAX_CCBS) {
   317			dax_err("HV reports unsupported max_ccbs=%ld", max_ccbs);
   318			ret = -ENODEV;
   319			goto done;
   320		}
   321	
   322		if (alloc_chrdev_region(&first, 0, 1, DAX_NAME) < 0) {
   323			dax_err("alloc_chrdev_region failed");
   324			ret = -ENXIO;
   325			goto done;
   326		}
   327	
 > 328		ret = class_create(&cl);
   329		if (ret)
   330			goto class_error;
   331	
   332		if (device_create(&cl, NULL, first, NULL, dax_name) == NULL) {
   333			dax_err("device_create failed");
   334			ret = -ENXIO;
   335			goto device_error;
   336		}
   337	
   338		cdev_init(&c_dev, &dax_fops);
   339		if (cdev_add(&c_dev, first, 1) == -1) {
   340			dax_err("cdev_add failed");
   341			ret = -ENXIO;
   342			goto cdev_error;
   343		}
   344	
   345		pr_info("Attached DAX module\n");
   346		goto done;
   347	
   348	cdev_error:
   349		device_destroy(&cl, first);
   350	device_error:
   351		class_unregister(&cl);
   352	class_error:
   353		unregister_chrdev_region(first, 1);
   354	done:
   355		mdesc_release(hp);
   356		return ret;
   357	}
   358	module_init(dax_attach);
   359	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
