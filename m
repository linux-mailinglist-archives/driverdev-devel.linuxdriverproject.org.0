Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DFE74746EFA
	for <lists+driverdev-devel@lfdr.de>; Tue,  4 Jul 2023 12:42:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5692F81C81;
	Tue,  4 Jul 2023 10:42:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5692F81C81
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PkPxhHi8dpYb; Tue,  4 Jul 2023 10:42:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 058978200E;
	Tue,  4 Jul 2023 10:42:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 058978200E
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 80D971BF23C
 for <devel@linuxdriverproject.org>; Tue,  4 Jul 2023 10:42:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 582AA408FD
 for <devel@linuxdriverproject.org>; Tue,  4 Jul 2023 10:42:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 582AA408FD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5VeWJAa_M7h6 for <devel@linuxdriverproject.org>;
 Tue,  4 Jul 2023 10:42:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0D1D3408E7
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0D1D3408E7
 for <devel@driverdev.osuosl.org>; Tue,  4 Jul 2023 10:42:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="363128092"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="363128092"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2023 03:42:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="808886860"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="808886860"
Received: from lkp-server01.sh.intel.com (HELO 783282924a45) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 04 Jul 2023 03:42:50 -0700
Received: from kbuild by 783282924a45 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qGdUg-000ICX-0c;
 Tue, 04 Jul 2023 10:42:50 +0000
Date: Tue, 4 Jul 2023 18:42:12 +0800
From: kernel test robot <lkp@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup 1/7] drivers/hwmon/oxp-sensors.c:437:9:
 error: call to undeclared function 'devm_device_add_groups';
 ISO C99 and later do not support implicit function declarations
Message-ID: <202307041842.rnp7Za0Z-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688467373; x=1720003373;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=2PUhTok0jcdvIxFCL6V04bVuutu3tC1f/b0Wg4mYHuc=;
 b=mMFEj9NsIdTmbOgOX70pKMYvryMR5l0PEwnhLdW5HYnG5IJCo20ZBD82
 fs3p/UQGkCeci0kYDQGNn1rV0hJurrG8faoubEM1RYcJ8j4YlUboVmxJd
 nHl4FY8mBmBR5iIjrqQiqlcfrs3tTYtzi1p04IDAxa6RZZF9l6BwySec5
 wsJFgxZM/5eVljPxAv2jGXvKprm86lmKS4W6P8Nwjlyx+7sDguAi3B9c7
 Zy+Cu4M/2JyHjTihLYbPKeMQoNJDRlmr+hrC3cXR1BT28v2NnmCkj16us
 sLWn4QbW+Z02Pu3gYJzwGkFY7zw7B3fPKp9n0z+tCI7G5RtKY9XyMm+Lv
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mMFEj9Ns
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
Cc: devel@driverdev.osuosl.org, llvm@lists.linux.dev,
 oe-kbuild-all@lists.linux.dev
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.=
git debugfs_cleanup
head:   3b24ae38f8fe0b3d0877a909072bf871c65654a9
commit: 1893121f03c6880cd4942d43f47fd7318a713809 [1/7] driver core: remove =
devm_device_add_groups()
config: x86_64-randconfig-x001-20230703 (https://download.01.org/0day-ci/ar=
chive/20230704/202307041842.rnp7Za0Z-lkp@intel.com/config)
compiler: clang version 15.0.7 (https://github.com/llvm/llvm-project.git 8d=
fdcc7b7bf66834a761bd8de445840ef68e4d1a)
reproduce: (https://download.01.org/0day-ci/archive/20230704/202307041842.r=
np7Za0Z-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new versio=
n of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202307041842.rnp7Za0Z-lkp@i=
ntel.com/

All errors (new ones prefixed by >>):

>> drivers/hwmon/oxp-sensors.c:437:9: error: call to undeclared function 'd=
evm_device_add_groups'; ISO C99 and later do not support implicit function =
declarations [-Werror,-Wimplicit-function-declaration]
                   ret =3D devm_device_add_groups(dev, oxp_ec_groups);
                         ^
   drivers/hwmon/oxp-sensors.c:437:9: note: did you mean 'devm_device_add_g=
roup'?
   include/linux/device.h:1167:18: note: 'devm_device_add_group' declared h=
ere
   int __must_check devm_device_add_group(struct device *dev,
                    ^
   1 error generated.


vim +/devm_device_add_groups +437 drivers/hwmon/oxp-sensors.c

ed264e8a7d18c5 Joaqu=EDn Ignacio Aramend=EDa 2022-11-04  411  =

ed264e8a7d18c5 Joaqu=EDn Ignacio Aramend=EDa 2022-11-04  412  /* Initializa=
tion logic */
ed264e8a7d18c5 Joaqu=EDn Ignacio Aramend=EDa 2022-11-04  413  static int ox=
p_platform_probe(struct platform_device *pdev)
ed264e8a7d18c5 Joaqu=EDn Ignacio Aramend=EDa 2022-11-04  414  {
ed264e8a7d18c5 Joaqu=EDn Ignacio Aramend=EDa 2022-11-04  415  	const struct=
 dmi_system_id *dmi_entry;
ed264e8a7d18c5 Joaqu=EDn Ignacio Aramend=EDa 2022-11-04  416  	struct devic=
e *dev =3D &pdev->dev;
ed264e8a7d18c5 Joaqu=EDn Ignacio Aramend=EDa 2022-11-04  417  	struct devic=
e *hwdev;
be144ee4912721 Joaqu=EDn Ignacio Aramend=EDa 2023-06-11  418  	int ret;
ed264e8a7d18c5 Joaqu=EDn Ignacio Aramend=EDa 2022-11-04  419  =

ed264e8a7d18c5 Joaqu=EDn Ignacio Aramend=EDa 2022-11-04  420  	/*
ed264e8a7d18c5 Joaqu=EDn Ignacio Aramend=EDa 2022-11-04  421  	 * Have to c=
heck for AMD processor here because DMI strings are the
ebd4bfee2b972d Derek J. Clark            2022-12-28  422  	 * same between =
Intel and AMD boards, the only way to tell them apart
ed264e8a7d18c5 Joaqu=EDn Ignacio Aramend=EDa 2022-11-04  423  	 * is the CP=
U.
ed264e8a7d18c5 Joaqu=EDn Ignacio Aramend=EDa 2022-11-04  424  	 * Intel boa=
rds seem to have different EC registers and values to
ed264e8a7d18c5 Joaqu=EDn Ignacio Aramend=EDa 2022-11-04  425  	 * read/writ=
e.
ed264e8a7d18c5 Joaqu=EDn Ignacio Aramend=EDa 2022-11-04  426  	 */
ed264e8a7d18c5 Joaqu=EDn Ignacio Aramend=EDa 2022-11-04  427  	dmi_entry =
=3D dmi_first_match(dmi_table);
ed264e8a7d18c5 Joaqu=EDn Ignacio Aramend=EDa 2022-11-04  428  	if (!dmi_ent=
ry || boot_cpu_data.x86_vendor !=3D X86_VENDOR_AMD)
ed264e8a7d18c5 Joaqu=EDn Ignacio Aramend=EDa 2022-11-04  429  		return -ENO=
DEV;
ed264e8a7d18c5 Joaqu=EDn Ignacio Aramend=EDa 2022-11-04  430  =

5d06ec4279a860 Joaqu=EDn Ignacio Aramend=EDa 2023-04-29  431  	board =3D (e=
num oxp_board)(unsigned long)dmi_entry->driver_data;
3ca0f12a02582c Joaqu=EDn Ignacio Aramend=EDa 2022-11-25  432  =

be144ee4912721 Joaqu=EDn Ignacio Aramend=EDa 2023-06-11  433  	switch (boar=
d) {
be144ee4912721 Joaqu=EDn Ignacio Aramend=EDa 2023-06-11  434  	case aok_zoe=
_a1:
be144ee4912721 Joaqu=EDn Ignacio Aramend=EDa 2023-06-11  435  	case oxp_min=
i_amd_a07:
be144ee4912721 Joaqu=EDn Ignacio Aramend=EDa 2023-06-11  436  	case oxp_min=
i_amd_pro:
be144ee4912721 Joaqu=EDn Ignacio Aramend=EDa 2023-06-11 @437  		ret =3D dev=
m_device_add_groups(dev, oxp_ec_groups);
be144ee4912721 Joaqu=EDn Ignacio Aramend=EDa 2023-06-11  438  		if (ret)
be144ee4912721 Joaqu=EDn Ignacio Aramend=EDa 2023-06-11  439  			return ret;
be144ee4912721 Joaqu=EDn Ignacio Aramend=EDa 2023-06-11  440  		break;
be144ee4912721 Joaqu=EDn Ignacio Aramend=EDa 2023-06-11  441  	default:
be144ee4912721 Joaqu=EDn Ignacio Aramend=EDa 2023-06-11  442  		break;
be144ee4912721 Joaqu=EDn Ignacio Aramend=EDa 2023-06-11  443  	}
be144ee4912721 Joaqu=EDn Ignacio Aramend=EDa 2023-06-11  444  =

ed264e8a7d18c5 Joaqu=EDn Ignacio Aramend=EDa 2022-11-04  445  	hwdev =3D de=
vm_hwmon_device_register_with_info(dev, "oxpec", NULL,
ed264e8a7d18c5 Joaqu=EDn Ignacio Aramend=EDa 2022-11-04  446  						     &o=
xp_ec_chip_info, NULL);
ed264e8a7d18c5 Joaqu=EDn Ignacio Aramend=EDa 2022-11-04  447  =

ed264e8a7d18c5 Joaqu=EDn Ignacio Aramend=EDa 2022-11-04  448  	return PTR_E=
RR_OR_ZERO(hwdev);
ed264e8a7d18c5 Joaqu=EDn Ignacio Aramend=EDa 2022-11-04  449  }
ed264e8a7d18c5 Joaqu=EDn Ignacio Aramend=EDa 2022-11-04  450  =


:::::: The code at line 437 was first introduced by commit
:::::: be144ee49127216b456da26f1a32b6ba281ac505 hwmon: (oxp-sensors) Add tt=
_toggle attribute on supported boards

:::::: TO: Joaqu=EDn Ignacio Aramend=EDa <samsagax@gmail.com>
:::::: CC: Guenter Roeck <linux@roeck-us.net>

-- =

0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
