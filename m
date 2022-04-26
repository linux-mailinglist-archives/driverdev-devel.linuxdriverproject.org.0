Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6F65510A40
	for <lists+driverdev-devel@lfdr.de>; Tue, 26 Apr 2022 22:18:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 658B240A64;
	Tue, 26 Apr 2022 20:18:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u1mz59cvkXSb; Tue, 26 Apr 2022 20:18:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E0F4F4018D;
	Tue, 26 Apr 2022 20:18:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A12C11BF3DE
 for <devel@linuxdriverproject.org>; Tue, 26 Apr 2022 20:18:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9BAAD4191D
 for <devel@linuxdriverproject.org>; Tue, 26 Apr 2022 20:18:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CmAfqQ2i6EDH for <devel@linuxdriverproject.org>;
 Tue, 26 Apr 2022 20:18:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 97C214191C
 for <devel@driverdev.osuosl.org>; Tue, 26 Apr 2022 20:18:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651004310; x=1682540310;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=lP3baKG5jw9ATZeLqsBWuVAZhUls7h1IdUOOl3BREwA=;
 b=Grme+QLUa3qvLL5YqLPEorTCedWRIANpYU2+E5DSpuBJ4YhR34/YcAIk
 UshsOodOqN4AwFN0dzuNdFvKFJb3Rw8TFeMV5mO3Clz9UWYxuajdmQKCz
 AUn5bz8msiEdtHZQSLe516gaxYBcpNNSTWgy/QyKThpwvvNcnwQPgEXMN
 wjZOXRaQifLWWxiYxng+j3MKSJykq0rooAtqjhGQp1Dl1kN0xpjq7gVOy
 lTdLMuROrN9eDszE5/sFq3Xap3+KDsWju51mGA85g0XFHduRxr6EnWGtj
 FCmjk6hookQIXkqqTJsDsiMB1zQJnD94FKpV2kytUhENUA2jiTGdouHHO w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10329"; a="245633383"
X-IronPort-AV: E=Sophos;i="5.90,291,1643702400"; d="scan'208";a="245633383"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2022 13:18:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,291,1643702400"; d="scan'208";a="595939325"
Received: from lkp-server01.sh.intel.com (HELO 5056e131ad90) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 26 Apr 2022 13:18:27 -0700
Received: from kbuild by 5056e131ad90 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1njRdj-0003wQ-8B;
 Tue, 26 Apr 2022 20:18:27 +0000
Date: Wed, 27 Apr 2022 04:17:29 +0800
From: kernel test robot <lkp@intel.com>
To: Imran Khan <imran.f.khan@oracle.com>
Subject: [driver-core:driver-core-testing 30/34] fs/kernfs/file.c:160:46:
 sparse: sparse: incorrect type in argument 1 (different address spaces)
Message-ID: <202204270438.Uex7Kt3b-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
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
 kbuild-all@lists.01.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-testing
head:   26360a8c9732cff2ee5bc2f180e9716b63e9f650
commit: 07b42a72474e4ab59d6acb451f7816664095d7c0 [30/34] kernfs: make ->attr.open RCU protected.
config: alpha-randconfig-s032-20220425 (https://download.01.org/0day-ci/archive/20220427/202204270438.Uex7Kt3b-lkp@intel.com/config)
compiler: alpha-linux-gcc (GCC) 11.3.0
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # apt-get install sparse
        # sparse version: v0.6.4-dirty
        # https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git/commit/?id=07b42a72474e4ab59d6acb451f7816664095d7c0
        git remote add driver-core https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git
        git fetch --no-tags driver-core driver-core-testing
        git checkout 07b42a72474e4ab59d6acb451f7816664095d7c0
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.3.0 make.cross C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__' O=build_dir ARCH=alpha SHELL=/bin/bash fs/kernfs/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>


sparse warnings: (new ones prefixed by >>)
>> fs/kernfs/file.c:160:46: sparse: sparse: incorrect type in argument 1 (different address spaces) @@     expected struct atomic_t const [usertype] *v @@     got struct atomic_t [noderef] __rcu * @@
   fs/kernfs/file.c:160:46: sparse:     expected struct atomic_t const [usertype] *v
   fs/kernfs/file.c:160:46: sparse:     got struct atomic_t [noderef] __rcu *
   fs/kernfs/file.c:204:46: sparse: sparse: incorrect type in argument 1 (different address spaces) @@     expected struct atomic_t const [usertype] *v @@     got struct atomic_t [noderef] __rcu * @@
   fs/kernfs/file.c:204:46: sparse:     expected struct atomic_t const [usertype] *v
   fs/kernfs/file.c:204:46: sparse:     got struct atomic_t [noderef] __rcu *

vim +160 fs/kernfs/file.c

414985ae23c031e Tejun Heo 2013-11-28  155  
414985ae23c031e Tejun Heo 2013-11-28  156  static int kernfs_seq_show(struct seq_file *sf, void *v)
414985ae23c031e Tejun Heo 2013-11-28  157  {
c525aaddc366df2 Tejun Heo 2013-12-11  158  	struct kernfs_open_file *of = sf->private;
414985ae23c031e Tejun Heo 2013-11-28  159  
adc5e8b58f4886d Tejun Heo 2013-12-11 @160  	of->event = atomic_read(&of->kn->attr.open->event);
414985ae23c031e Tejun Heo 2013-11-28  161  
adc5e8b58f4886d Tejun Heo 2013-12-11  162  	return of->kn->attr.ops->seq_show(sf, v);
414985ae23c031e Tejun Heo 2013-11-28  163  }
414985ae23c031e Tejun Heo 2013-11-28  164  

:::::: The code at line 160 was first introduced by commit
:::::: adc5e8b58f4886d45f79f4ff41a09001a76a6b12 kernfs: drop s_ prefix from kernfs_node members

:::::: TO: Tejun Heo <tj@kernel.org>
:::::: CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
