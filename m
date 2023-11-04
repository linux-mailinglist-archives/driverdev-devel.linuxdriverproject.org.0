Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DFC47E1090
	for <lists+driverdev-devel@lfdr.de>; Sat,  4 Nov 2023 18:58:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 414D040159;
	Sat,  4 Nov 2023 17:58:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 414D040159
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Er-Kn90SvJTx; Sat,  4 Nov 2023 17:58:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 88B8240167;
	Sat,  4 Nov 2023 17:58:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 88B8240167
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BCFE41BF21A
 for <devel@linuxdriverproject.org>; Sat,  4 Nov 2023 17:58:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9660760AB2
 for <devel@linuxdriverproject.org>; Sat,  4 Nov 2023 17:58:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9660760AB2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4oUZFirMQoxS for <devel@linuxdriverproject.org>;
 Sat,  4 Nov 2023 17:58:03 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CB2B760AAE
 for <devel@driverdev.osuosl.org>; Sat,  4 Nov 2023 17:58:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CB2B760AAE
X-IronPort-AV: E=McAfee;i="6600,9927,10884"; a="368436830"
X-IronPort-AV: E=Sophos;i="6.03,277,1694761200"; d="scan'208";a="368436830"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2023 10:58:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,277,1694761200"; 
   d="scan'208";a="3045192"
Received: from lkp-server01.sh.intel.com (HELO 17d9e85e5079) ([10.239.97.150])
 by orviesa002.jf.intel.com with ESMTP; 04 Nov 2023 10:57:59 -0700
Received: from kbuild by 17d9e85e5079 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qzKuE-0004c0-1H;
 Sat, 04 Nov 2023 17:57:58 +0000
Date: Sun, 5 Nov 2023 01:57:44 +0800
From: kernel test robot <lkp@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup 6/7]
 drivers/platform/x86/amd/hsmp.c:474:16: error: implicit declaration of
 function 'devm_device_add_groups'; did you mean 'devm_device_add_group'?
Message-ID: <202311050113.QCp9Dss3-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699120682; x=1730656682;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=45KijrNPATEv0bTVnHZlUbyijH+I0A/q4RBwDi5Pn/o=;
 b=i4UbOyzrzqwfnxIUDkG9tJaiy27mue+pE+OT9Pgfwsax5QmQPAn8AmM/
 NTp3D+B/fex6oPaoPoXE8HF4AHFs+NPUSwXs2OcRwiHmzur4pMcrKxlDY
 u4isVGIDnMSpC2DKksq6ZTzOiGvjtGP7YYdYk1XlWc1gog0kIVKToG3ew
 KPKBLcFWqiiKCXj98NMnUNE6ZWkAzEj93pTDAAiCO8sB1TXK3AI/RJ7g+
 33hPEYTSnZM7wdfzyaBAnA8ww5cUdT+ytEfygXNjswyqhoky/DjPgVmAT
 21xIBl7LJfY8uITNZZDxc8Smu4BKheLjFEHFN07I8H35SPGsNMKmNb75+
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=i4UbOyzr
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
head:   447e92735758c923913ee53b75c6b92ef756985b
commit: bd0388a53cc216e4d4b367b37565e87c3147d25d [6/7] driver core: remove =
devm_device_add_groups()
config: x86_64-randconfig-005-20231104 (https://download.01.org/0day-ci/arc=
hive/20231105/202311050113.QCp9Dss3-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
reproduce (this is a W=3D1 build): (https://download.01.org/0day-ci/archive=
/20231105/202311050113.QCp9Dss3-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new versio=
n of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202311050113.QCp9Dss3-lkp@i=
ntel.com/

All errors (new ones prefixed by >>):

   drivers/platform/x86/amd/hsmp.c: In function 'hsmp_create_sysfs_interfac=
e':
>> drivers/platform/x86/amd/hsmp.c:474:16: error: implicit declaration of f=
unction 'devm_device_add_groups'; did you mean 'devm_device_add_group'? [-W=
error=3Dimplicit-function-declaration]
     474 |         return devm_device_add_groups(plat_dev.dev, hsmp_attr_gr=
ps);
         |                ^~~~~~~~~~~~~~~~~~~~~~
         |                devm_device_add_group
   cc1: some warnings being treated as errors


vim +474 drivers/platform/x86/amd/hsmp.c

5150542b8ec5fb Suma Hegde 2023-10-10  432  =

5150542b8ec5fb Suma Hegde 2023-10-10  433  static int hsmp_create_sysfs_int=
erface(void)
5150542b8ec5fb Suma Hegde 2023-10-10  434  {
5150542b8ec5fb Suma Hegde 2023-10-10  435  	const struct attribute_group **=
hsmp_attr_grps;
5150542b8ec5fb Suma Hegde 2023-10-10  436  	struct bin_attribute **hsmp_bin=
_attrs;
5150542b8ec5fb Suma Hegde 2023-10-10  437  	struct attribute_group *attr_gr=
p;
5150542b8ec5fb Suma Hegde 2023-10-10  438  	int ret;
5150542b8ec5fb Suma Hegde 2023-10-10  439  	u16 i;
5150542b8ec5fb Suma Hegde 2023-10-10  440  =

5150542b8ec5fb Suma Hegde 2023-10-10  441  	/* String formatting is current=
ly limited to u8 sockets */
5150542b8ec5fb Suma Hegde 2023-10-10  442  	if (WARN_ON(plat_dev.num_socket=
s > U8_MAX))
5150542b8ec5fb Suma Hegde 2023-10-10  443  		return -ERANGE;
5150542b8ec5fb Suma Hegde 2023-10-10  444  =

5150542b8ec5fb Suma Hegde 2023-10-10  445  	hsmp_attr_grps =3D devm_kzalloc=
(plat_dev.dev, sizeof(struct attribute_group *) *
5150542b8ec5fb Suma Hegde 2023-10-10  446  				      (plat_dev.num_sockets =
+ 1), GFP_KERNEL);
5150542b8ec5fb Suma Hegde 2023-10-10  447  	if (!hsmp_attr_grps)
5150542b8ec5fb Suma Hegde 2023-10-10  448  		return -ENOMEM;
5150542b8ec5fb Suma Hegde 2023-10-10  449  =

5150542b8ec5fb Suma Hegde 2023-10-10  450  	/* Create a sysfs directory for=
 each socket */
5150542b8ec5fb Suma Hegde 2023-10-10  451  	for (i =3D 0; i < plat_dev.num_=
sockets; i++) {
5150542b8ec5fb Suma Hegde 2023-10-10  452  		attr_grp =3D devm_kzalloc(plat=
_dev.dev, sizeof(struct attribute_group), GFP_KERNEL);
5150542b8ec5fb Suma Hegde 2023-10-10  453  		if (!attr_grp)
5150542b8ec5fb Suma Hegde 2023-10-10  454  			return -ENOMEM;
5150542b8ec5fb Suma Hegde 2023-10-10  455  =

5150542b8ec5fb Suma Hegde 2023-10-10  456  		snprintf(plat_dev.sock[i].name=
, HSMP_ATTR_GRP_NAME_SIZE, "socket%u", (u8)i);
5150542b8ec5fb Suma Hegde 2023-10-10  457  		attr_grp->name =3D plat_dev.so=
ck[i].name;
5150542b8ec5fb Suma Hegde 2023-10-10  458  =

5150542b8ec5fb Suma Hegde 2023-10-10  459  		/* Null terminated list of att=
ributes */
5150542b8ec5fb Suma Hegde 2023-10-10  460  		hsmp_bin_attrs =3D devm_kzallo=
c(plat_dev.dev, sizeof(struct bin_attribute *) *
5150542b8ec5fb Suma Hegde 2023-10-10  461  					      (NUM_HSMP_ATTRS + 1),=
 GFP_KERNEL);
5150542b8ec5fb Suma Hegde 2023-10-10  462  		if (!hsmp_bin_attrs)
5150542b8ec5fb Suma Hegde 2023-10-10  463  			return -ENOMEM;
5150542b8ec5fb Suma Hegde 2023-10-10  464  =

5150542b8ec5fb Suma Hegde 2023-10-10  465  		attr_grp->bin_attrs		=3D hsmp_=
bin_attrs;
5150542b8ec5fb Suma Hegde 2023-10-10  466  		attr_grp->is_bin_visible	=3D h=
smp_is_sock_attr_visible;
5150542b8ec5fb Suma Hegde 2023-10-10  467  		hsmp_attr_grps[i]		=3D attr_gr=
p;
5150542b8ec5fb Suma Hegde 2023-10-10  468  =

5150542b8ec5fb Suma Hegde 2023-10-10  469  		/* Now create the leaf nodes */
5150542b8ec5fb Suma Hegde 2023-10-10  470  		ret =3D hsmp_init_metric_tbl_b=
in_attr(hsmp_bin_attrs, i);
5150542b8ec5fb Suma Hegde 2023-10-10  471  		if (ret)
5150542b8ec5fb Suma Hegde 2023-10-10  472  			return ret;
5150542b8ec5fb Suma Hegde 2023-10-10  473  	}
5150542b8ec5fb Suma Hegde 2023-10-10 @474  	return devm_device_add_groups(p=
lat_dev.dev, hsmp_attr_grps);
5150542b8ec5fb Suma Hegde 2023-10-10  475  }
5150542b8ec5fb Suma Hegde 2023-10-10  476  =


:::::: The code at line 474 was first introduced by commit
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
