Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 762AF7705D0
	for <lists+driverdev-devel@lfdr.de>; Fri,  4 Aug 2023 18:22:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D9FE560F5F;
	Fri,  4 Aug 2023 16:22:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D9FE560F5F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nduGxyg1wXOY; Fri,  4 Aug 2023 16:22:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BA5CA60F47;
	Fri,  4 Aug 2023 16:22:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BA5CA60F47
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 28AAC1BF27A
 for <devel@linuxdriverproject.org>; Fri,  4 Aug 2023 16:22:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B654360AE5
 for <devel@linuxdriverproject.org>; Fri,  4 Aug 2023 16:21:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B654360AE5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aAWofpxxphna for <devel@linuxdriverproject.org>;
 Fri,  4 Aug 2023 16:21:45 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E734760E81
 for <devel@driverdev.osuosl.org>; Fri,  4 Aug 2023 16:21:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E734760E81
X-IronPort-AV: E=McAfee;i="6600,9927,10792"; a="372935606"
X-IronPort-AV: E=Sophos;i="6.01,255,1684825200"; d="scan'208";a="372935606"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2023 09:21:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10792"; a="800119275"
X-IronPort-AV: E=Sophos;i="6.01,255,1684825200"; d="scan'208";a="800119275"
Received: from lkp-server01.sh.intel.com (HELO d1ccc7e87e8f) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 04 Aug 2023 09:21:42 -0700
Received: from kbuild by d1ccc7e87e8f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qRxYb-0002yd-26;
 Fri, 04 Aug 2023 16:21:41 +0000
Date: Sat, 5 Aug 2023 00:20:57 +0800
From: kernel test robot <lkp@intel.com>
To: Ivan Babrou <ivan@cloudflare.com>
Subject: [driver-core:driver-core-testing 2/16] fs/kernfs/mount.c:50:5:
 warning: no previous prototype for function 'kernfs_statfs'
Message-ID: <202308050054.TMaWFpME-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691166105; x=1722702105;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=SkRmCWHjINejDayhUfO2zrXccz5Yf1cMte27jc60wKM=;
 b=BojciT0Zi3efg0uhP9hEyOCtgd0LJRRLgc9GrNOBQGXDzCbslC2idGUU
 NkzsHzTT3iSwajXdM+Uv/iAcpaS6Ee8q9Gj1r4AJjNwoguhByz1E1g8fh
 7TAlcWeEP7zl4JyLH2Ucz1pzsuHoMVHJ+uVCP23w+S2ui9G1xZ4VG+10A
 ixtOr1w0Vd+/Kcg1CExfrnRgFDswOWlMul+8MWRRc5bjvvwwXibbtOhyQ
 LqdQuQTeq8zQMXNbOm1HBeYd/1TlnsT3fYCR2M4MhIsaaWHlqZTDlcqR/
 TbDMJIelCrTG1LHBJJkIm1e3uefUQk9+cAFIvWRZYkJwouUCwoK4TrCuR
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BojciT0Z
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
 llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-testing
head:   b84388be432d001b3baa782fa047eddb0f375233
commit: 26dd6e284e277f80468f48b4ff8ebfb0e9ca7369 [2/16] kernfs: attach uuid for every kernfs and report it in fsid
config: arm-randconfig-r005-20230801 (https://download.01.org/0day-ci/archive/20230805/202308050054.TMaWFpME-lkp@intel.com/config)
compiler: clang version 17.0.0 (https://github.com/llvm/llvm-project.git 4a5ac14ee968ff0ad5d2cc1ffa0299048db4c88a)
reproduce: (https://download.01.org/0day-ci/archive/20230805/202308050054.TMaWFpME-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202308050054.TMaWFpME-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> fs/kernfs/mount.c:50:5: warning: no previous prototype for function 'kernfs_statfs' [-Wmissing-prototypes]
      50 | int kernfs_statfs(struct dentry *dentry, struct kstatfs *buf)
         |     ^
   fs/kernfs/mount.c:50:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
      50 | int kernfs_statfs(struct dentry *dentry, struct kstatfs *buf)
         | ^
         | static 
   1 warning generated.


vim +/kernfs_statfs +50 fs/kernfs/mount.c

    49	
  > 50	int kernfs_statfs(struct dentry *dentry, struct kstatfs *buf)
    51	{
    52		simple_statfs(dentry, buf);
    53		buf->f_fsid = uuid_to_fsid(dentry->d_sb->s_uuid.b);
    54		return 0;
    55	}
    56	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
