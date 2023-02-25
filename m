Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 522C76A2BE5
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 Feb 2023 22:37:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4A3B140BB4;
	Sat, 25 Feb 2023 21:37:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4A3B140BB4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VMQ2ODhw36iF; Sat, 25 Feb 2023 21:37:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B526440BAC;
	Sat, 25 Feb 2023 21:37:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B526440BAC
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D8EE21BF286
 for <devel@linuxdriverproject.org>; Sat, 25 Feb 2023 21:37:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B377340734
 for <devel@linuxdriverproject.org>; Sat, 25 Feb 2023 21:37:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B377340734
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vpBq0TeoCQ-4 for <devel@linuxdriverproject.org>;
 Sat, 25 Feb 2023 21:37:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1AA0B400AF
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1AA0B400AF
 for <devel@driverdev.osuosl.org>; Sat, 25 Feb 2023 21:37:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10632"; a="321904105"
X-IronPort-AV: E=Sophos;i="5.97,328,1669104000"; d="scan'208";a="321904105"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2023 13:37:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10632"; a="737180038"
X-IronPort-AV: E=Sophos;i="5.97,328,1669104000"; d="scan'208";a="737180038"
Received: from lkp-server01.sh.intel.com (HELO 3895f5c55ead) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 25 Feb 2023 13:37:43 -0800
Received: from kbuild by 3895f5c55ead with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pW2Eg-0003QB-2T;
 Sat, 25 Feb 2023 21:37:42 +0000
Date: Sun, 26 Feb 2023 05:37:41 +0800
From: kernel test robot <lkp@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [driver-core:bus_cleanup 20/35]
 drivers/cpufreq/amd-pstate.c:1302:75: error: 'struct bus_type' has no member
 named 'dev_root'
Message-ID: <202302260511.Z7Q7OlDG-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677361069; x=1708897069;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=itYJzrDorGs37JcGhz9L7vFZAOqeQo+nBJiwf4IvmEo=;
 b=PSq+0oGj9nVVWc8av6tV4oCItS7NiZRp40vIq1zeoCz+Fd0SqAFY4Wtf
 HN6gQ/MJ4a+cQb0p0qP8j4kQS4/fy4uiPY7EzmiyhKt/dj2iHQkx/Iw/H
 SQBpmMCU5V4EOqCedjzrtkWnCmRTec0T154XMLOngRE4H1010v79EmLiU
 PKcdTBXkz2WnhXByccO0ndL16ZD70fDhvcvSrJ/n+ivk9U3oKSlB2U63z
 wLFOa2wyi3PW393h/QWr4YKV+CfAMSTrpKle4fzicRQNIbEtwazwlmHoV
 2CqFGLVvHkfSoCxNXDA63klc9pFnXm9CuMBVi7mmycWFkUQNg8sDs3Yfu
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PSq+0oGj
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

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git bus_cleanup
head:   f3175b4c21c5aad39a313d86a5e551b1530f2555
commit: bcf80f65776967f9227718e2d42687f1a185dc26 [20/35] driver core: bus: move dev_root out of struct bus_type
config: i386-allyesconfig (https://download.01.org/0day-ci/archive/20230226/202302260511.Z7Q7OlDG-lkp@intel.com/config)
compiler: gcc-11 (Debian 11.3.0-8) 11.3.0
reproduce (this is a W=1 build):
        # https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git/commit/?id=bcf80f65776967f9227718e2d42687f1a185dc26
        git remote add driver-core https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git
        git fetch --no-tags driver-core bus_cleanup
        git checkout bcf80f65776967f9227718e2d42687f1a185dc26
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        make W=1 O=build_dir ARCH=i386 olddefconfig
        make W=1 O=build_dir ARCH=i386 SHELL=/bin/bash drivers/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Link: https://lore.kernel.org/oe-kbuild-all/202302260511.Z7Q7OlDG-lkp@intel.com/

All errors (new ones prefixed by >>):

   drivers/cpufreq/amd-pstate.c: In function 'amd_pstate_init':
>> drivers/cpufreq/amd-pstate.c:1302:75: error: 'struct bus_type' has no member named 'dev_root'
    1302 |         amd_pstate_kobj = kobject_create_and_add("amd_pstate", &cpu_subsys.dev_root->kobj);
         |                                                                           ^


vim +1302 drivers/cpufreq/amd-pstate.c

ffa5096a7c3386 Perry Yuan 2023-01-31  1253  
ec437d71db77a1 Huang Rui  2021-12-24  1254  static int __init amd_pstate_init(void)
ec437d71db77a1 Huang Rui  2021-12-24  1255  {
ec437d71db77a1 Huang Rui  2021-12-24  1256  	int ret;
ec437d71db77a1 Huang Rui  2021-12-24  1257  
ec437d71db77a1 Huang Rui  2021-12-24  1258  	if (boot_cpu_data.x86_vendor != X86_VENDOR_AMD)
ec437d71db77a1 Huang Rui  2021-12-24  1259  		return -ENODEV;
202e683df37cdf Perry Yuan 2022-11-17  1260  	/*
202e683df37cdf Perry Yuan 2022-11-17  1261  	 * by default the pstate driver is disabled to load
202e683df37cdf Perry Yuan 2022-11-17  1262  	 * enable the amd_pstate passive mode driver explicitly
36c5014e546096 Wyes Karny 2023-01-31  1263  	 * with amd_pstate=passive or other modes in kernel command line
202e683df37cdf Perry Yuan 2022-11-17  1264  	 */
36c5014e546096 Wyes Karny 2023-01-31  1265  	if (cppc_state == AMD_PSTATE_DISABLE) {
36c5014e546096 Wyes Karny 2023-01-31  1266  		pr_debug("driver load is disabled, boot with specific mode to enable this\n");
202e683df37cdf Perry Yuan 2022-11-17  1267  		return -ENODEV;
202e683df37cdf Perry Yuan 2022-11-17  1268  	}
ec437d71db77a1 Huang Rui  2021-12-24  1269  
ec437d71db77a1 Huang Rui  2021-12-24  1270  	if (!acpi_cpc_valid()) {
a2a9d1850060e5 Perry Yuan 2022-08-15  1271  		pr_warn_once("the _CPC object is not present in SBIOS or ACPI disabled\n");
ec437d71db77a1 Huang Rui  2021-12-24  1272  		return -ENODEV;
ec437d71db77a1 Huang Rui  2021-12-24  1273  	}
ec437d71db77a1 Huang Rui  2021-12-24  1274  
ec437d71db77a1 Huang Rui  2021-12-24  1275  	/* don't keep reloading if cpufreq_driver exists */
ec437d71db77a1 Huang Rui  2021-12-24  1276  	if (cpufreq_get_current_driver())
ec437d71db77a1 Huang Rui  2021-12-24  1277  		return -EEXIST;
ec437d71db77a1 Huang Rui  2021-12-24  1278  
ec437d71db77a1 Huang Rui  2021-12-24  1279  	/* capability check */
e059c184da47e9 Huang Rui  2021-12-24  1280  	if (boot_cpu_has(X86_FEATURE_CPPC)) {
e059c184da47e9 Huang Rui  2021-12-24  1281  		pr_debug("AMD CPPC MSR based functionality is supported\n");
ffa5096a7c3386 Perry Yuan 2023-01-31  1282  		if (cppc_state == AMD_PSTATE_PASSIVE)
ffa5096a7c3386 Perry Yuan 2023-01-31  1283  			current_pstate_driver->adjust_perf = amd_pstate_adjust_perf;
202e683df37cdf Perry Yuan 2022-11-17  1284  	} else {
202e683df37cdf Perry Yuan 2022-11-17  1285  		pr_debug("AMD CPPC shared memory based functionality is supported\n");
e059c184da47e9 Huang Rui  2021-12-24  1286  		static_call_update(amd_pstate_enable, cppc_enable);
e059c184da47e9 Huang Rui  2021-12-24  1287  		static_call_update(amd_pstate_init_perf, cppc_init_perf);
e059c184da47e9 Huang Rui  2021-12-24  1288  		static_call_update(amd_pstate_update_perf, cppc_update_perf);
ec437d71db77a1 Huang Rui  2021-12-24  1289  	}
ec437d71db77a1 Huang Rui  2021-12-24  1290  
ec437d71db77a1 Huang Rui  2021-12-24  1291  	/* enable amd pstate feature */
ec437d71db77a1 Huang Rui  2021-12-24  1292  	ret = amd_pstate_enable(true);
ec437d71db77a1 Huang Rui  2021-12-24  1293  	if (ret) {
ffa5096a7c3386 Perry Yuan 2023-01-31  1294  		pr_err("failed to enable with return %d\n", ret);
ec437d71db77a1 Huang Rui  2021-12-24  1295  		return ret;
ec437d71db77a1 Huang Rui  2021-12-24  1296  	}
ec437d71db77a1 Huang Rui  2021-12-24  1297  
ffa5096a7c3386 Perry Yuan 2023-01-31  1298  	ret = cpufreq_register_driver(current_pstate_driver);
ec437d71db77a1 Huang Rui  2021-12-24  1299  	if (ret)
ffa5096a7c3386 Perry Yuan 2023-01-31  1300  		pr_err("failed to register with return %d\n", ret);
ec437d71db77a1 Huang Rui  2021-12-24  1301  
abd61c08ef349a Perry Yuan 2023-01-31 @1302  	amd_pstate_kobj = kobject_create_and_add("amd_pstate", &cpu_subsys.dev_root->kobj);
abd61c08ef349a Perry Yuan 2023-01-31  1303  	if (!amd_pstate_kobj) {
abd61c08ef349a Perry Yuan 2023-01-31  1304  		ret = -EINVAL;
abd61c08ef349a Perry Yuan 2023-01-31  1305  		pr_err("global sysfs registration failed.\n");
abd61c08ef349a Perry Yuan 2023-01-31  1306  		goto kobject_free;
abd61c08ef349a Perry Yuan 2023-01-31  1307  	}
abd61c08ef349a Perry Yuan 2023-01-31  1308  
abd61c08ef349a Perry Yuan 2023-01-31  1309  	ret = sysfs_create_group(amd_pstate_kobj, &amd_pstate_global_attr_group);
abd61c08ef349a Perry Yuan 2023-01-31  1310  	if (ret) {
abd61c08ef349a Perry Yuan 2023-01-31  1311  		pr_err("sysfs attribute export failed with error %d.\n", ret);
abd61c08ef349a Perry Yuan 2023-01-31  1312  		goto global_attr_free;
abd61c08ef349a Perry Yuan 2023-01-31  1313  	}
abd61c08ef349a Perry Yuan 2023-01-31  1314  
abd61c08ef349a Perry Yuan 2023-01-31  1315  	return ret;
abd61c08ef349a Perry Yuan 2023-01-31  1316  
abd61c08ef349a Perry Yuan 2023-01-31  1317  global_attr_free:
abd61c08ef349a Perry Yuan 2023-01-31  1318  	kobject_put(amd_pstate_kobj);
abd61c08ef349a Perry Yuan 2023-01-31  1319  kobject_free:
abd61c08ef349a Perry Yuan 2023-01-31  1320  	cpufreq_unregister_driver(current_pstate_driver);
ec437d71db77a1 Huang Rui  2021-12-24  1321  	return ret;
ec437d71db77a1 Huang Rui  2021-12-24  1322  }
456ca88d8a5258 Perry Yuan 2022-11-17  1323  device_initcall(amd_pstate_init);
ec437d71db77a1 Huang Rui  2021-12-24  1324  

:::::: The code at line 1302 was first introduced by commit
:::::: abd61c08ef349af08df0bf587d33f5bde5996a89 cpufreq: amd-pstate: add driver working mode switch support

:::::: TO: Perry Yuan <Perry.Yuan@amd.com>
:::::: CC: Rafael J. Wysocki <rafael.j.wysocki@intel.com>

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
