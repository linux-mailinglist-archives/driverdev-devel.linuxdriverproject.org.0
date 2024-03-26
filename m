Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 585B688C2CB
	for <lists+driverdev-devel@lfdr.de>; Tue, 26 Mar 2024 13:58:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 85A37406A0;
	Tue, 26 Mar 2024 12:58:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yv65AF4SNOF3; Tue, 26 Mar 2024 12:58:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3079D406BD
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3079D406BD;
	Tue, 26 Mar 2024 12:58:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6F4FE1BF3BA
 for <devel@linuxdriverproject.org>; Tue, 26 Mar 2024 12:58:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B30674054E
 for <devel@linuxdriverproject.org>; Tue, 26 Mar 2024 12:58:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qARaCcSjAKuO for <devel@linuxdriverproject.org>;
 Tue, 26 Mar 2024 12:58:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 968DD4054D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 968DD4054D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 968DD4054D
 for <devel@driverdev.osuosl.org>; Tue, 26 Mar 2024 12:58:48 +0000 (UTC)
X-CSE-ConnectionGUID: 8nXuhP8bTIuETVtEkRYyqw==
X-CSE-MsgGUID: aDm+pKxTRIeI1pmEjEzQPQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11024"; a="6717064"
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; 
   d="scan'208";a="6717064"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 05:58:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; d="scan'208";a="46972394"
Received: from lkp-server01.sh.intel.com (HELO be39aa325d23) ([10.239.97.150])
 by orviesa002.jf.intel.com with ESMTP; 26 Mar 2024 05:58:47 -0700
Received: from kbuild by be39aa325d23 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rp6O4-00003M-1x;
 Tue, 26 Mar 2024 12:58:44 +0000
Date: Tue, 26 Mar 2024 20:58:26 +0800
From: kernel test robot <lkp@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup 6/7]
 drivers/platform/x86/amd/hsmp.c:696:36: error: no member named 'dev' in
 'struct hsmp_plat_device'
Message-ID: <202403262003.n5XJu6mg-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711457929; x=1742993929;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=X2THMzWYsExlmAuHaeWoNiOj8tHicjNNbZgJc80wfXE=;
 b=F9oSwfnfpTIpcEjaPfw45AhA7D6KQ0TXqaU7B9KTsSYrN08thwiW9n4x
 7ZXdOY4JPE9+CxcPHloforH1BpJ1sbl7Z7HlzwBHIhv+JhusiwRxeApna
 KG86yoXtfs57flktGfr1YS/ry8bJyqGqtcLQyMOjwyVUnxbpMiUo4E/MS
 ITF726n2YXkEMxoxHdy54E6IcYYZSKYyeXEMn728H4DYAPBPS7gWOUnYp
 qQwwS86y8mrEY2I8a/W2oeK9aUXVr/bkRRzKrYuEuwdmWiacHET8CA33K
 bAGAFR6e+GX56MnU0sUpg/ybMNs0nwo96XXoZm/T+Q/D+UGxSBhahZ1Xy
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=F9oSwfnf
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_cleanup
head:   766db77dfd694e14cfdc4728e9c2f6d747dfdf84
commit: 3baa931df8381661c94796a782d473e44391c0dc [6/7] platform/x86/amd/hsmp: switch to use device_add_groups()
config: x86_64-allyesconfig (https://download.01.org/0day-ci/archive/20240326/202403262003.n5XJu6mg-lkp@intel.com/config)
compiler: clang version 17.0.6 (https://github.com/llvm/llvm-project 6009708b4367171ccdbf4b5905cb6a803753fe18)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240326/202403262003.n5XJu6mg-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202403262003.n5XJu6mg-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/platform/x86/amd/hsmp.c:696:36: error: no member named 'dev' in 'struct hsmp_plat_device'
     696 |         return device_add_groups(plat_dev.dev, hsmp_attr_grps);
         |                                  ~~~~~~~~ ^
   1 error generated.


vim +696 drivers/platform/x86/amd/hsmp.c

   668	
   669	static int hsmp_create_non_acpi_sysfs_if(struct device *dev)
   670	{
   671		const struct attribute_group **hsmp_attr_grps;
   672		struct attribute_group *attr_grp;
   673		u16 i;
   674	
   675		hsmp_attr_grps = devm_kcalloc(dev, plat_dev.num_sockets + 1,
   676					      sizeof(*hsmp_attr_grps),
   677					      GFP_KERNEL);
   678		if (!hsmp_attr_grps)
   679			return -ENOMEM;
   680	
   681		/* Create a sysfs directory for each socket */
   682		for (i = 0; i < plat_dev.num_sockets; i++) {
   683			attr_grp = devm_kzalloc(dev, sizeof(struct attribute_group),
   684						GFP_KERNEL);
   685			if (!attr_grp)
   686				return -ENOMEM;
   687	
   688			snprintf(plat_dev.sock[i].name, HSMP_ATTR_GRP_NAME_SIZE, "socket%u", (u8)i);
   689			attr_grp->name			= plat_dev.sock[i].name;
   690			attr_grp->is_bin_visible	= hsmp_is_sock_attr_visible;
   691			hsmp_attr_grps[i]		= attr_grp;
   692	
   693			hsmp_create_attr_list(attr_grp, dev, i);
   694		}
   695	
 > 696		return device_add_groups(plat_dev.dev, hsmp_attr_grps);
   697	}
   698	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
