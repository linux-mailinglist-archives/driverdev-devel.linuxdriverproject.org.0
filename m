Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E5A75ABB92
	for <lists+driverdev-devel@lfdr.de>; Sat,  3 Sep 2022 02:13:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7022F4013A;
	Sat,  3 Sep 2022 00:13:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7022F4013A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jilQ9t_j4uBx; Sat,  3 Sep 2022 00:13:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 17CA34010D;
	Sat,  3 Sep 2022 00:13:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 17CA34010D
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2C54F1BF484
 for <devel@linuxdriverproject.org>; Sat,  3 Sep 2022 00:13:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 07CA281CE3
 for <devel@linuxdriverproject.org>; Sat,  3 Sep 2022 00:13:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 07CA281CE3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CwzcrwvwUNHr for <devel@linuxdriverproject.org>;
 Sat,  3 Sep 2022 00:13:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4FA7481CDC
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4FA7481CDC
 for <devel@driverdev.osuosl.org>; Sat,  3 Sep 2022 00:13:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10458"; a="297402628"
X-IronPort-AV: E=Sophos;i="5.93,285,1654585200"; d="scan'208";a="297402628"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2022 17:13:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,285,1654585200"; d="scan'208";a="646291714"
Received: from lkp-server02.sh.intel.com (HELO 95dfd251caa2) ([10.239.97.151])
 by orsmga001.jf.intel.com with ESMTP; 02 Sep 2022 17:13:32 -0700
Received: from kbuild by 95dfd251caa2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oUGmx-0000lj-1d;
 Sat, 03 Sep 2022 00:13:31 +0000
Date: Sat, 3 Sep 2022 08:12:51 +0800
From: kernel test robot <lkp@intel.com>
To: Yicong Yang <yangyicong@hisilicon.com>
Subject: [driver-core:driver-core-linus 9/9]
 drivers/base/arch_topology.c:727:24: warning: returning 'int' from a
 function with return type 'const struct cpumask *' makes pointer from
 integer without a cast
Message-ID: <202209030824.SouwDV5M-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662164018; x=1693700018;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=72/WkZh44x271usWu2tdKgvUpZAOEpvaKjYt39Jf9lY=;
 b=QGWqRbmIgPSYQIQs1YPhBYf9ZKDwdUzhcAncqL6KHprzlwJqpdsGbPZ9
 tE9Fl2OzsDGtdZhFYHkFYU2Ord1RgKjHBbZpwm7xssoyZl8BQyux4dwUo
 WnLvj0PuzimKCwCSN/KsUVvMoSE3HFJJqxFA2yXI3Q60OvzJHzLsezVug
 qZu8JKZRluGy1WwX+tjlBpEXsErNxilJU0o+xOWu6nFNufpw/IKaDuwDW
 vTGO9MAbM2Udg3prB05XYVpRNG+yibjxNajFTuHpw5hDLNdNXeojOITiI
 nqXq8JvDgfd0BGM9cj+r6GFuiT6FGHP/gU9w2cJ9Gp54xBSuRQc0k/bHk
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QGWqRbmI
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
Cc: devel@driverdev.osuosl.org, kbuild-all@lists.01.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Sudeep Holla <sudeep.holla@arm.com>, Ionela Voinescu <ionela.voinescu@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-linus
head:   6b66ca0bac1b9cee7608d7c4dc59b699458b4cb8
commit: 6b66ca0bac1b9cee7608d7c4dc59b699458b4cb8 [9/9] arch_topology: Make cluster topology span at least SMT CPUs
config: parisc-allyesconfig (https://download.01.org/0day-ci/archive/20220903/202209030824.SouwDV5M-lkp@intel.com/config)
compiler: hppa-linux-gcc (GCC) 12.1.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git/commit/?id=6b66ca0bac1b9cee7608d7c4dc59b699458b4cb8
        git remote add driver-core https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git
        git fetch --no-tags driver-core driver-core-linus
        git checkout 6b66ca0bac1b9cee7608d7c4dc59b699458b4cb8
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=parisc SHELL=/bin/bash drivers/

If you fix the issue, kindly add following tag where applicable
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   drivers/base/arch_topology.c: In function 'cpu_clustergroup_mask':
   drivers/base/arch_topology.c:727:24: error: implicit declaration of function 'cpu_smt_mask'; did you mean 'cpu_cpu_mask'? [-Werror=implicit-function-declaration]
     727 |                 return cpu_smt_mask(cpu);
         |                        ^~~~~~~~~~~~
         |                        cpu_cpu_mask
>> drivers/base/arch_topology.c:727:24: warning: returning 'int' from a function with return type 'const struct cpumask *' makes pointer from integer without a cast [-Wint-conversion]
     727 |                 return cpu_smt_mask(cpu);
         |                        ^~~~~~~~~~~~~~~~~
   cc1: some warnings being treated as errors


vim +727 drivers/base/arch_topology.c

   718	
   719	const struct cpumask *cpu_clustergroup_mask(int cpu)
   720	{
   721		/*
   722		 * Forbid cpu_clustergroup_mask() to span more or the same CPUs as
   723		 * cpu_coregroup_mask().
   724		 */
   725		if (cpumask_subset(cpu_coregroup_mask(cpu),
   726				   &cpu_topology[cpu].cluster_sibling))
 > 727			return cpu_smt_mask(cpu);
   728	
   729		return &cpu_topology[cpu].cluster_sibling;
   730	}
   731	

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
