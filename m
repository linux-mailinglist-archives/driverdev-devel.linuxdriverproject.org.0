Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id F0BD1770CBC
	for <lists+driverdev-devel@lfdr.de>; Sat,  5 Aug 2023 02:36:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 627A483F36;
	Sat,  5 Aug 2023 00:36:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 627A483F36
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7zAxknTdgEp9; Sat,  5 Aug 2023 00:36:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 217F684027;
	Sat,  5 Aug 2023 00:36:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 217F684027
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 19D751BF98E
 for <devel@linuxdriverproject.org>; Sat,  5 Aug 2023 00:36:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6082440334
 for <devel@linuxdriverproject.org>; Sat,  5 Aug 2023 00:35:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6082440334
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nvP5jWSGRTUU for <devel@linuxdriverproject.org>;
 Sat,  5 Aug 2023 00:35:00 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6048D40293
 for <devel@driverdev.osuosl.org>; Sat,  5 Aug 2023 00:35:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6048D40293
X-IronPort-AV: E=McAfee;i="6600,9927,10792"; a="369171152"
X-IronPort-AV: E=Sophos;i="6.01,256,1684825200"; d="scan'208";a="369171152"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2023 17:34:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="873594262"
Received: from lkp-server01.sh.intel.com (HELO d1ccc7e87e8f) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 04 Aug 2023 17:35:00 -0700
Received: from kbuild by d1ccc7e87e8f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qS5Fx-0003DX-0l;
 Sat, 05 Aug 2023 00:34:57 +0000
Date: Sat, 5 Aug 2023 08:34:32 +0800
From: kernel test robot <lkp@intel.com>
To: Ivan Babrou <ivan@cloudflare.com>
Subject: [driver-core:driver-core-testing 2/16] fs/kernfs/mount.c:50:5:
 sparse: sparse: symbol 'kernfs_statfs' was not declared. Should it be
 static?
Message-ID: <202308050845.FUZE4KvF-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691195700; x=1722731700;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=cH6TbG2MF/VkhYmDddH1ePvOWOavECQtZ88abGjNbaA=;
 b=HtCZR6p40N3ARKzNaJNfKDLmIzjNUvGEYpVpgr3sm1aepudYZ1P5Jvny
 Afw5/vvF9WxubglLYV+yrPrA5x7cZf637kjldccx7bIMBEk7Ng/D4cSi0
 b4FbOTphlwJiMkDZ0HOZUbnHcwwl6rM0E/EU+3VU1/hI8ZE0HeLHGbYdU
 q/uuFUmMjYZhhBRLx9ig0jFv0xp+gh6qWJQota6eNNc2WYqw6AAAPr59o
 SyWTnC9UTsJKF/bhrQTYStBAvW4Xf7b0kkOcOacXZ2OJdHMEO2KUgLrEH
 lB+aApdK49IYM80cOhfG4AcGc/ZjrIG0M+a9CMnyWHge9SLqkCs++AxnC
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HtCZR6p4
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

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-testing
head:   b84388be432d001b3baa782fa047eddb0f375233
commit: 26dd6e284e277f80468f48b4ff8ebfb0e9ca7369 [2/16] kernfs: attach uuid for every kernfs and report it in fsid
config: s390-randconfig-r072-20230730 (https://download.01.org/0day-ci/archive/20230805/202308050845.FUZE4KvF-lkp@intel.com/config)
compiler: s390-linux-gcc (GCC) 12.3.0
reproduce: (https://download.01.org/0day-ci/archive/20230805/202308050845.FUZE4KvF-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202308050845.FUZE4KvF-lkp@intel.com/

sparse warnings: (new ones prefixed by >>)
>> fs/kernfs/mount.c:50:5: sparse: sparse: symbol 'kernfs_statfs' was not declared. Should it be static?

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
