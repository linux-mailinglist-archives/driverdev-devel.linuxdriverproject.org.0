Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B84526D351B
	for <lists+driverdev-devel@lfdr.de>; Sun,  2 Apr 2023 02:48:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D59C5813B7;
	Sun,  2 Apr 2023 00:48:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D59C5813B7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JH1adWQKvs4Q; Sun,  2 Apr 2023 00:48:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 621448135E;
	Sun,  2 Apr 2023 00:48:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 621448135E
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EE13E1BF86D
 for <devel@linuxdriverproject.org>; Sun,  2 Apr 2023 00:48:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C52E441521
 for <devel@linuxdriverproject.org>; Sun,  2 Apr 2023 00:48:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C52E441521
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id itNDyA9whauJ for <devel@linuxdriverproject.org>;
 Sun,  2 Apr 2023 00:48:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 26E0D4151F
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 26E0D4151F
 for <devel@driverdev.osuosl.org>; Sun,  2 Apr 2023 00:48:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10667"; a="341709861"
X-IronPort-AV: E=Sophos;i="5.98,311,1673942400"; d="scan'208";a="341709861"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2023 17:48:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10667"; a="715854293"
X-IronPort-AV: E=Sophos;i="5.98,311,1673942400"; d="scan'208";a="715854293"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 01 Apr 2023 17:48:45 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1piltk-000N8r-1b;
 Sun, 02 Apr 2023 00:48:44 +0000
Date: Sun, 2 Apr 2023 08:48:16 +0800
From: kernel test robot <lkp@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [driver-core:class_cleanup 12/107] include/linux/export.h:29:21:
 error: initialization of 'const struct attribute_group **' from incompatible
 pointer type 'struct module *'
Message-ID: <202304020802.xbRTJKjW-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680396527; x=1711932527;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=MiYh28Ct7pCp1OulEDjRd4QENupl//QFVStdVSZzJoA=;
 b=GrgWp3xBh1J9btLcKhDd3N8WFuSz/sBvJDYvOdbW75VyUkRCBQsfkx+F
 j4RFYrKbikJSrySwtJqEpj5ZWEsbyGnwBZwjD0xQZg5OGcLr8HjgMJmU+
 24T/vmaYzlGcnW9PWsDmRFnx+rT10SFkseqxH3bltis3W4nkaJVJN1dHc
 JRkrr3Hca1+FaZmLrHdt6qS0EgP8ycQQiy6eu6Dzppp4bBcMvEFDBsxTI
 sR469Q/k7K+c42Wo8ELSF0tD4kKelE9LsWkDuKi3+BdBkbOYyFN9uMpzp
 1BJ0mPIeyq4NS3jOFDR6aP430fYvRj94cdJ3eN3uH/Uamoy4E8j8IEp2u
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GrgWp3xB
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

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git class_cleanup
head:   e4156fe7129aa2716f4370f5ba049416d7c3e8c6
commit: 6e30a66433afee90e902ced95d7136e8f7edcc7e [12/107] driver core: class: remove struct module owner out of struct class
config: mips-randconfig-c003-20230402 (https://download.01.org/0day-ci/archive/20230402/202304020802.xbRTJKjW-lkp@intel.com/config)
compiler: mipsel-linux-gcc (GCC) 12.1.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git/commit/?id=6e30a66433afee90e902ced95d7136e8f7edcc7e
        git remote add driver-core https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git
        git fetch --no-tags driver-core class_cleanup
        git checkout 6e30a66433afee90e902ced95d7136e8f7edcc7e
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=mips olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=mips SHELL=/bin/bash

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Link: https://lore.kernel.org/oe-kbuild-all/202304020802.xbRTJKjW-lkp@intel.com/

All errors (new ones prefixed by >>):

>> arch/mips/kernel/vpe-cmp.c:82:10: error: 'struct class' has no member named 'owner'
      82 |         .owner = THIS_MODULE,
         |          ^~~~~
   In file included from include/linux/linkage.h:7,
                    from include/linux/kernel.h:17,
                    from arch/mips/kernel/vpe-cmp.c:9:
>> include/linux/export.h:29:21: error: initialization of 'const struct attribute_group **' from incompatible pointer type 'struct module *' [-Werror=incompatible-pointer-types]
      29 | #define THIS_MODULE ((struct module *)0)
         |                     ^
   arch/mips/kernel/vpe-cmp.c:82:18: note: in expansion of macro 'THIS_MODULE'
      82 |         .owner = THIS_MODULE,
         |                  ^~~~~~~~~~~
   include/linux/export.h:29:21: note: (near initialization for 'vpe_class.class_groups')
      29 | #define THIS_MODULE ((struct module *)0)
         |                     ^
   arch/mips/kernel/vpe-cmp.c:82:18: note: in expansion of macro 'THIS_MODULE'
      82 |         .owner = THIS_MODULE,
         |                  ^~~~~~~~~~~
   cc1: some warnings being treated as errors


vim +29 include/linux/export.h

d143b9db8069f0 Greg Kroah-Hartman 2022-04-27   6  
f50169324df4ad Paul Gortmaker     2011-05-23   7  /*
f50169324df4ad Paul Gortmaker     2011-05-23   8   * Export symbols from the kernel to modules.  Forked from module.h
f50169324df4ad Paul Gortmaker     2011-05-23   9   * to reduce the amount of pointless cruft we feed to gcc when only
f50169324df4ad Paul Gortmaker     2011-05-23  10   * exporting a simple symbol or two.
f50169324df4ad Paul Gortmaker     2011-05-23  11   *
b92021b09df70c Rusty Russell      2013-03-15  12   * Try not to add #includes here.  It slows compilation and makes kernel
b92021b09df70c Rusty Russell      2013-03-15  13   * hackers place grumpy comments in header files.
f50169324df4ad Paul Gortmaker     2011-05-23  14   */
f50169324df4ad Paul Gortmaker     2011-05-23  15  
7b4537199a4a84 Masahiro Yamada    2022-05-13  16  /*
7b4537199a4a84 Masahiro Yamada    2022-05-13  17   * This comment block is used by fixdep. Please do not remove.
7b4537199a4a84 Masahiro Yamada    2022-05-13  18   *
7b4537199a4a84 Masahiro Yamada    2022-05-13  19   * When CONFIG_MODVERSIONS is changed from n to y, all source files having
7b4537199a4a84 Masahiro Yamada    2022-05-13  20   * EXPORT_SYMBOL variants must be re-compiled because genksyms is run as a
7b4537199a4a84 Masahiro Yamada    2022-05-13  21   * side effect of the *.o build rule.
7b4537199a4a84 Masahiro Yamada    2022-05-13  22   */
7b4537199a4a84 Masahiro Yamada    2022-05-13  23  
b92021b09df70c Rusty Russell      2013-03-15  24  #ifndef __ASSEMBLY__
f50169324df4ad Paul Gortmaker     2011-05-23  25  #ifdef MODULE
f50169324df4ad Paul Gortmaker     2011-05-23  26  extern struct module __this_module;
f50169324df4ad Paul Gortmaker     2011-05-23  27  #define THIS_MODULE (&__this_module)
f50169324df4ad Paul Gortmaker     2011-05-23  28  #else
f50169324df4ad Paul Gortmaker     2011-05-23 @29  #define THIS_MODULE ((struct module *)0)
f50169324df4ad Paul Gortmaker     2011-05-23  30  #endif
f50169324df4ad Paul Gortmaker     2011-05-23  31  

:::::: The code at line 29 was first introduced by commit
:::::: f50169324df4ad942e544386d136216c8617636a module.h: split out the EXPORT_SYMBOL into export.h

:::::: TO: Paul Gortmaker <paul.gortmaker@windriver.com>
:::::: CC: Paul Gortmaker <paul.gortmaker@windriver.com>

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
