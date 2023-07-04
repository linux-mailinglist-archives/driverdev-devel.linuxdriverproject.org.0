Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 68AE6746EFB
	for <lists+driverdev-devel@lfdr.de>; Tue,  4 Jul 2023 12:43:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 53B4282020;
	Tue,  4 Jul 2023 10:43:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 53B4282020
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QhFC5XaPTSif; Tue,  4 Jul 2023 10:42:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 095F881ADE;
	Tue,  4 Jul 2023 10:42:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 095F881ADE
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A013F1BF95D
 for <devel@linuxdriverproject.org>; Tue,  4 Jul 2023 10:42:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 85E704046F
 for <devel@linuxdriverproject.org>; Tue,  4 Jul 2023 10:42:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 85E704046F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lsq9-Xf64UOW for <devel@linuxdriverproject.org>;
 Tue,  4 Jul 2023 10:42:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6A876402DC
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6A876402DC
 for <devel@driverdev.osuosl.org>; Tue,  4 Jul 2023 10:42:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="361956222"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="361956222"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2023 03:42:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="748385220"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="748385220"
Received: from lkp-server01.sh.intel.com (HELO 783282924a45) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 04 Jul 2023 03:42:50 -0700
Received: from kbuild by 783282924a45 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qGdUg-000ICV-0Y;
 Tue, 04 Jul 2023 10:42:50 +0000
Date: Tue, 4 Jul 2023 18:42:13 +0800
From: kernel test robot <lkp@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup 1/7]
 drivers/hwmon/oxp-sensors.c:437:23: error: implicit declaration of function
 'devm_device_add_groups'; did you mean 'devm_device_add_group'?
Message-ID: <202307041850.vqrtdhj7-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688467373; x=1720003373;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=3CQ1tTl22nOiPye/bE0JkiW9wIH+fqqYlCYmSWJUdYE=;
 b=FR0PWJgPPbD8mLexFJw0blRYtIRdygKio7mYel6hNX5CjIDXCsKVKT2x
 dg8vC31TL6VDCZbSzJb+6LBk+vpQwDYCaRGkaQkcaaqp8l7d9amjxFFuX
 fhIsis/eOoRQv2vl/pCcZjYkrH/d8xTbmKlmkqcInTo9rl+C+uDr4X7JK
 zk581ZXvEZrZqYTx9PU0mKl9mVo+QqIv6lVEMVU5o1M5QJ5Hs2mQO2UGs
 fcbZH6Hfq8hNiLqILo8zxo3m1V0/VLvaS0MtiZf4GFoaXNjcTwt/IDY67
 Z+O7iVTGvpsM/VN7F+hnWEoGjWIVGowdZTrd4bq44bpK8hjxUPrxf6f5p
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FR0PWJgP
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.=
git debugfs_cleanup
head:   3b24ae38f8fe0b3d0877a909072bf871c65654a9
commit: 1893121f03c6880cd4942d43f47fd7318a713809 [1/7] driver core: remove =
devm_device_add_groups()
config: x86_64-randconfig-x012-20230703 (https://download.01.org/0day-ci/ar=
chive/20230704/202307041850.vqrtdhj7-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
reproduce: (https://download.01.org/0day-ci/archive/20230704/202307041850.v=
qrtdhj7-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new versio=
n of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202307041850.vqrtdhj7-lkp@i=
ntel.com/

All errors (new ones prefixed by >>):

   drivers/hwmon/oxp-sensors.c: In function 'oxp_platform_probe':
>> drivers/hwmon/oxp-sensors.c:437:23: error: implicit declaration of funct=
ion 'devm_device_add_groups'; did you mean 'devm_device_add_group'? [-Werro=
r=3Dimplicit-function-declaration]
     437 |                 ret =3D devm_device_add_groups(dev, oxp_ec_group=
s);
         |                       ^~~~~~~~~~~~~~~~~~~~~~
         |                       devm_device_add_group
   cc1: some warnings being treated as errors


vim +437 drivers/hwmon/oxp-sensors.c

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
