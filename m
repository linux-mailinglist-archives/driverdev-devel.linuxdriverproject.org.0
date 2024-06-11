Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C36890374A
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Jun 2024 10:59:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AF77680DBB;
	Tue, 11 Jun 2024 08:59:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JqSLRwCHWKf9; Tue, 11 Jun 2024 08:59:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 959CA80DBF
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 959CA80DBF;
	Tue, 11 Jun 2024 08:59:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8914F1BF39D
 for <devel@linuxdriverproject.org>; Tue, 11 Jun 2024 08:59:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 74C4480DB6
 for <devel@linuxdriverproject.org>; Tue, 11 Jun 2024 08:59:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wOUqSdFqz3Aq for <devel@linuxdriverproject.org>;
 Tue, 11 Jun 2024 08:59:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 48BDE80DB4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 48BDE80DB4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 48BDE80DB4
 for <devel@driverdev.osuosl.org>; Tue, 11 Jun 2024 08:59:09 +0000 (UTC)
X-CSE-ConnectionGUID: G403GwZ3T3qXvnK0JmKBIw==
X-CSE-MsgGUID: EkLIr+xjR+uQ5vA89apLlg==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="40194328"
X-IronPort-AV: E=Sophos;i="6.08,229,1712646000"; d="scan'208";a="40194328"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 01:59:09 -0700
X-CSE-ConnectionGUID: WmVQdflITz+at+cdjYnIuw==
X-CSE-MsgGUID: 62seSpLyTEa8T/F7jia7XA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,229,1712646000"; d="scan'208";a="70152225"
Received: from lkp-server01.sh.intel.com (HELO 628d7d8b9fc6) ([10.239.97.150])
 by orviesa002.jf.intel.com with ESMTP; 11 Jun 2024 01:59:08 -0700
Received: from kbuild by 628d7d8b9fc6 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sGxLO-0000Fa-05;
 Tue, 11 Jun 2024 08:59:06 +0000
Date: Tue, 11 Jun 2024 16:59:02 +0800
From: kernel test robot <lkp@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [driver-core:const_driver 8/8] drivers/s390/cio/device.c:64:21:
 error: initializing 'struct ccw_driver *' with an expression of type 'const
 struct ccw_driver *' discards qualifiers
Message-ID: <202406111607.3OiraQK0-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718096350; x=1749632350;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=HYqgkl04zqLdbPcuqAZMYldfDQQSBLgVFDNzDgBP8Ag=;
 b=XBxpsiXPV31KVB7EjRN7UWyvqqR5WQHk6sepVyJMOiMd5k2vJyAqL+hx
 Ypbz2a0/6mvqfm4OsFcPNDET4zYd39yjBMXw8gR3iuYJIc2bmr88TDdVg
 UUTIOAyKlFGsZw4QvoFOlbH7IQ7DZigb3X2YMlR1TlC0ZcKirso4RNC4M
 Ke24K6FjnNIbNJqF/7ZX/3z2m8O1Oxhy7AhI98vTJDfZ6ml2hu3WKImds
 1Uk5qAs1Gzs/gHFlMciMlPTia5FVH1BQMYbYzV9+tUe45jJaQYOMEUjKP
 1cyUyAwrAxJcjd2be9tL2WTOK77j2FIPhThnM0GIFWwKx6x50cTMj6gud
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XBxpsiXP
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

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git const_driver
head:   8e41ff96c9c6e36d7f4887ad6f6224fcd889ac38
commit: 8e41ff96c9c6e36d7f4887ad6f6224fcd889ac38 [8/8] driver core: have match() callback in struct bus_type take a const *
config: s390-allnoconfig (https://download.01.org/0day-ci/archive/20240611/202406111607.3OiraQK0-lkp@intel.com/config)
compiler: clang version 19.0.0git (https://github.com/llvm/llvm-project 4403cdbaf01379de96f8d0d6ea4f51a085e37766)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240611/202406111607.3OiraQK0-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202406111607.3OiraQK0-lkp@intel.com/

All errors (new ones prefixed by >>):

   In file included from drivers/s390/cio/device.c:21:
   In file included from include/linux/device.h:32:
   In file included from include/linux/device/driver.h:21:
   In file included from include/linux/module.h:19:
   In file included from include/linux/elf.h:6:
   In file included from arch/s390/include/asm/elf.h:173:
   In file included from arch/s390/include/asm/mmu_context.h:11:
   In file included from arch/s390/include/asm/pgalloc.h:18:
   In file included from include/linux/mm.h:2253:
   include/linux/vmstat.h:514:36: warning: arithmetic between different enumeration types ('enum node_stat_item' and 'enum lru_list') [-Wenum-enum-conversion]
     514 |         return node_stat_name(NR_LRU_BASE + lru) + 3; // skip "nr_"
         |                               ~~~~~~~~~~~ ^ ~~~
   In file included from drivers/s390/cio/device.c:27:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:93:
   include/asm-generic/io.h:548:31: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
     548 |         val = __raw_readb(PCI_IOBASE + addr);
         |                           ~~~~~~~~~~ ^
   include/asm-generic/io.h:561:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
     561 |         val = __le16_to_cpu((__le16 __force)__raw_readw(PCI_IOBASE + addr));
         |                                                         ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:37:59: note: expanded from macro '__le16_to_cpu'
      37 | #define __le16_to_cpu(x) __swab16((__force __u16)(__le16)(x))
         |                                                           ^
   include/uapi/linux/swab.h:102:54: note: expanded from macro '__swab16'
     102 | #define __swab16(x) (__u16)__builtin_bswap16((__u16)(x))
         |                                                      ^
   In file included from drivers/s390/cio/device.c:27:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:93:
   include/asm-generic/io.h:574:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
     574 |         val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
         |                                                         ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:35:59: note: expanded from macro '__le32_to_cpu'
      35 | #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
         |                                                           ^
   include/uapi/linux/swab.h:115:54: note: expanded from macro '__swab32'
     115 | #define __swab32(x) (__u32)__builtin_bswap32((__u32)(x))
         |                                                      ^
   In file included from drivers/s390/cio/device.c:27:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:93:
   include/asm-generic/io.h:585:33: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
     585 |         __raw_writeb(value, PCI_IOBASE + addr);
         |                             ~~~~~~~~~~ ^
   include/asm-generic/io.h:595:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
     595 |         __raw_writew((u16 __force)cpu_to_le16(value), PCI_IOBASE + addr);
         |                                                       ~~~~~~~~~~ ^
   include/asm-generic/io.h:605:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
     605 |         __raw_writel((u32 __force)cpu_to_le32(value), PCI_IOBASE + addr);
         |                                                       ~~~~~~~~~~ ^
   include/asm-generic/io.h:693:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
     693 |         readsb(PCI_IOBASE + addr, buffer, count);
         |                ~~~~~~~~~~ ^
   include/asm-generic/io.h:701:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
     701 |         readsw(PCI_IOBASE + addr, buffer, count);
         |                ~~~~~~~~~~ ^
   include/asm-generic/io.h:709:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
     709 |         readsl(PCI_IOBASE + addr, buffer, count);
         |                ~~~~~~~~~~ ^
   include/asm-generic/io.h:718:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
     718 |         writesb(PCI_IOBASE + addr, buffer, count);
         |                 ~~~~~~~~~~ ^
   include/asm-generic/io.h:727:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
     727 |         writesw(PCI_IOBASE + addr, buffer, count);
         |                 ~~~~~~~~~~ ^
   include/asm-generic/io.h:736:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
     736 |         writesl(PCI_IOBASE + addr, buffer, count);
         |                 ~~~~~~~~~~ ^
>> drivers/s390/cio/device.c:64:21: error: initializing 'struct ccw_driver *' with an expression of type 'const struct ccw_driver *' discards qualifiers [-Werror,-Wincompatible-pointer-types-discards-qualifiers]
      64 |         struct ccw_driver *cdrv = to_ccwdrv(drv);
         |                            ^      ~~~~~~~~~~~~~~
   13 warnings and 1 error generated.


vim +64 drivers/s390/cio/device.c

^1da177e4c3f41 Linus Torvalds     2005-04-16  55  
^1da177e4c3f41 Linus Torvalds     2005-04-16  56  /* The Linux driver model distinguishes between a bus type and
^1da177e4c3f41 Linus Torvalds     2005-04-16  57   * the bus itself. Of course we only have one channel
^1da177e4c3f41 Linus Torvalds     2005-04-16  58   * subsystem driver and one channel system per machine, but
^1da177e4c3f41 Linus Torvalds     2005-04-16  59   * we still use the abstraction. T.R. says it's a good idea. */
^1da177e4c3f41 Linus Torvalds     2005-04-16  60  static int
8e41ff96c9c6e3 Greg Kroah-Hartman 2024-06-10  61  ccw_bus_match (struct device * dev, const struct device_driver * drv)
^1da177e4c3f41 Linus Torvalds     2005-04-16  62  {
^1da177e4c3f41 Linus Torvalds     2005-04-16  63  	struct ccw_device *cdev = to_ccwdev(dev);
^1da177e4c3f41 Linus Torvalds     2005-04-16 @64  	struct ccw_driver *cdrv = to_ccwdrv(drv);
^1da177e4c3f41 Linus Torvalds     2005-04-16  65  	const struct ccw_device_id *ids = cdrv->ids, *found;
^1da177e4c3f41 Linus Torvalds     2005-04-16  66  
^1da177e4c3f41 Linus Torvalds     2005-04-16  67  	if (!ids)
^1da177e4c3f41 Linus Torvalds     2005-04-16  68  		return 0;
^1da177e4c3f41 Linus Torvalds     2005-04-16  69  
^1da177e4c3f41 Linus Torvalds     2005-04-16  70  	found = ccw_device_id_match(ids, &cdev->id);
^1da177e4c3f41 Linus Torvalds     2005-04-16  71  	if (!found)
^1da177e4c3f41 Linus Torvalds     2005-04-16  72  		return 0;
^1da177e4c3f41 Linus Torvalds     2005-04-16  73  
^1da177e4c3f41 Linus Torvalds     2005-04-16  74  	cdev->id.driver_info = found->driver_info;
^1da177e4c3f41 Linus Torvalds     2005-04-16  75  
^1da177e4c3f41 Linus Torvalds     2005-04-16  76  	return 1;
^1da177e4c3f41 Linus Torvalds     2005-04-16  77  }
^1da177e4c3f41 Linus Torvalds     2005-04-16  78  

:::::: The code at line 64 was first introduced by commit
:::::: 1da177e4c3f41524e886b7f1b8a0c1fc7321cac2 Linux-2.6.12-rc2

:::::: TO: Linus Torvalds <torvalds@ppc970.osdl.org>
:::::: CC: Linus Torvalds <torvalds@ppc970.osdl.org>

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
