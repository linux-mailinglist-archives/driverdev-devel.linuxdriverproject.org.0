Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id ACCA288CD55
	for <lists+driverdev-devel@lfdr.de>; Tue, 26 Mar 2024 20:40:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0213D81F60;
	Tue, 26 Mar 2024 19:40:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 25naPAfK-CXU; Tue, 26 Mar 2024 19:40:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1BAFF81F6C
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1BAFF81F6C;
	Tue, 26 Mar 2024 19:40:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 207E51BF2CB
 for <devel@linuxdriverproject.org>; Tue, 26 Mar 2024 19:40:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1A86881DE9
 for <devel@linuxdriverproject.org>; Tue, 26 Mar 2024 19:40:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Rr2WD8Ll1kum for <devel@linuxdriverproject.org>;
 Tue, 26 Mar 2024 19:40:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org DE28E81F60
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DE28E81F60
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DE28E81F60
 for <devel@driverdev.osuosl.org>; Tue, 26 Mar 2024 19:40:01 +0000 (UTC)
X-CSE-ConnectionGUID: qHQWiVDqTeKKd+KccSn3RA==
X-CSE-MsgGUID: 1NRW4E3bTgejE/BaikmDjg==
X-IronPort-AV: E=McAfee;i="6600,9927,11025"; a="10355791"
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; d="scan'208";a="10355791"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 12:40:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; d="scan'208";a="16155657"
Received: from lkp-server01.sh.intel.com (HELO be39aa325d23) ([10.239.97.150])
 by fmviesa008.fm.intel.com with ESMTP; 26 Mar 2024 12:39:58 -0700
Received: from kbuild by be39aa325d23 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rpCeK-0000ME-1D;
 Tue, 26 Mar 2024 19:39:56 +0000
Date: Wed, 27 Mar 2024 03:39:51 +0800
From: kernel test robot <lkp@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup 6/7]
 drivers/platform/x86/amd/hsmp.c:697:1: warning: control reaches end of
 non-void function
Message-ID: <202403270318.BXcbiibe-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711482002; x=1743018002;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=v4rTpT3HHLdMRS2/nzYTBau2SMtDsN/x9Jp+658VOoE=;
 b=W79oCSE+rVidbMglhyMGYN7KyAcVFstra1faWMdniGOIrFkJ9+tZLHIR
 CvRDRjpUqHwWuOlsoSghWFocx5GqcIsKIELOodLCn5+03oYyLatWMiOOA
 PwTgMRfFUzi0lWHVF93ganm15tWzTETHQaNxvRCM1IIsJNAMfXn2A9X9/
 29t/UTE9PB95tppCdtq2dJ131rK/UHMYCARzAeyGAy4OOJ52coFsVzX71
 spejlIRSzQ2N0BNzpMEK9C8cXwLWZ6sU5PfechD33uwRPa6VfhCor8Krx
 FI33UXAAVjX/CDIytew9Zs5DhkZjj22lMX4+Gmq8aE9qMFX7Ror/n3mvY
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=W79oCSE+
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
head:   766db77dfd694e14cfdc4728e9c2f6d747dfdf84
commit: 3baa931df8381661c94796a782d473e44391c0dc [6/7] platform/x86/amd/hsm=
p: switch to use device_add_groups()
config: x86_64-randconfig-005-20240326 (https://download.01.org/0day-ci/arc=
hive/20240327/202403270318.BXcbiibe-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
reproduce (this is a W=3D1 build): (https://download.01.org/0day-ci/archive=
/20240327/202403270318.BXcbiibe-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new versio=
n of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202403270318.BXcbiibe-lkp@i=
ntel.com/

All warnings (new ones prefixed by >>):

   drivers/platform/x86/amd/hsmp.c: In function 'hsmp_create_non_acpi_sysfs=
_if':
   drivers/platform/x86/amd/hsmp.c:696:42: error: 'struct hsmp_plat_device'=
 has no member named 'dev'
     696 |         return device_add_groups(plat_dev.dev, hsmp_attr_grps);
         |                                          ^
>> drivers/platform/x86/amd/hsmp.c:697:1: warning: control reaches end of n=
on-void function [-Wreturn-type]
     697 | }
         | ^


vim +697 drivers/platform/x86/amd/hsmp.c

ca511e7631e76e0 Suma Hegde         2024-01-06  668  =

ba8dcff0e9c4f8f Suma Hegde         2024-01-06  669  static int hsmp_create_=
non_acpi_sysfs_if(struct device *dev)
ca511e7631e76e0 Suma Hegde         2024-01-06  670  {
ca511e7631e76e0 Suma Hegde         2024-01-06  671  	const struct attribute=
_group **hsmp_attr_grps;
5150542b8ec5fb5 Suma Hegde         2023-10-10  672  	struct attribute_group=
 *attr_grp;
5150542b8ec5fb5 Suma Hegde         2023-10-10  673  	u16 i;
5150542b8ec5fb5 Suma Hegde         2023-10-10  674  =

2b703fbe4e3d435 Suma Hegde         2024-01-25  675  	hsmp_attr_grps =3D dev=
m_kcalloc(dev, plat_dev.num_sockets + 1,
2b703fbe4e3d435 Suma Hegde         2024-01-25  676  				      sizeof(*hsmp_=
attr_grps),
2b703fbe4e3d435 Suma Hegde         2024-01-25  677  				      GFP_KERNEL);
5150542b8ec5fb5 Suma Hegde         2023-10-10  678  	if (!hsmp_attr_grps)
5150542b8ec5fb5 Suma Hegde         2023-10-10  679  		return -ENOMEM;
5150542b8ec5fb5 Suma Hegde         2023-10-10  680  =

5150542b8ec5fb5 Suma Hegde         2023-10-10  681  	/* Create a sysfs dire=
ctory for each socket */
5150542b8ec5fb5 Suma Hegde         2023-10-10  682  	for (i =3D 0; i < plat=
_dev.num_sockets; i++) {
ca511e7631e76e0 Suma Hegde         2024-01-06  683  		attr_grp =3D devm_kza=
lloc(dev, sizeof(struct attribute_group),
ce08d3570ae0ef3 Suma Hegde         2024-01-06  684  					GFP_KERNEL);
5150542b8ec5fb5 Suma Hegde         2023-10-10  685  		if (!attr_grp)
5150542b8ec5fb5 Suma Hegde         2023-10-10  686  			return -ENOMEM;
5150542b8ec5fb5 Suma Hegde         2023-10-10  687  =

5150542b8ec5fb5 Suma Hegde         2023-10-10  688  		snprintf(plat_dev.soc=
k[i].name, HSMP_ATTR_GRP_NAME_SIZE, "socket%u", (u8)i);
5150542b8ec5fb5 Suma Hegde         2023-10-10  689  		attr_grp->name			=3D =
plat_dev.sock[i].name;
5150542b8ec5fb5 Suma Hegde         2023-10-10  690  		attr_grp->is_bin_visi=
ble	=3D hsmp_is_sock_attr_visible;
5150542b8ec5fb5 Suma Hegde         2023-10-10  691  		hsmp_attr_grps[i]		=
=3D attr_grp;
5150542b8ec5fb5 Suma Hegde         2023-10-10  692  =

ca511e7631e76e0 Suma Hegde         2024-01-06  693  		hsmp_create_attr_list=
(attr_grp, dev, i);
5150542b8ec5fb5 Suma Hegde         2023-10-10  694  	}
ca511e7631e76e0 Suma Hegde         2024-01-06  695  =

3baa931df838166 Greg Kroah-Hartman 2024-01-28  696  	return device_add_grou=
ps(plat_dev.dev, hsmp_attr_grps);
5150542b8ec5fb5 Suma Hegde         2023-10-10 @697  }
5150542b8ec5fb5 Suma Hegde         2023-10-10  698  =


:::::: The code at line 697 was first introduced by commit
:::::: 5150542b8ec5fb561be080ed0ef3bab8598154c3 platform/x86/amd/hsmp: add =
support for metrics tbl

:::::: TO: Suma Hegde <suma.hegde@amd.com>
:::::: CC: Ilpo J=E4rvinen <ilpo.jarvinen@linux.intel.com>

-- =

0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
