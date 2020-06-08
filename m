Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E5A461F1503
	for <lists+driverdev-devel@lfdr.de>; Mon,  8 Jun 2020 11:07:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3D1142076E;
	Mon,  8 Jun 2020 09:07:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A8pQyJfjopno; Mon,  8 Jun 2020 09:07:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6526C2051B;
	Mon,  8 Jun 2020 09:07:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1A5111BF3BE
 for <devel@linuxdriverproject.org>; Mon,  8 Jun 2020 09:07:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 11A9C20510
 for <devel@linuxdriverproject.org>; Mon,  8 Jun 2020 09:07:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RMN1XTm2YYFQ for <devel@linuxdriverproject.org>;
 Mon,  8 Jun 2020 09:07:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by silver.osuosl.org (Postfix) with ESMTPS id 4053820474
 for <devel@driverdev.osuosl.org>; Mon,  8 Jun 2020 09:07:00 +0000 (UTC)
IronPort-SDR: AlVfEKX0060CGKw0gGp/HmzOEcpM969ahgMZmvvFrqFQRVWHIZSlcsxeSYs2bNEVuEtKU6NC83
 2R3v1H47K2Bw==
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2020 02:06:59 -0700
IronPort-SDR: mtzKJdAL3rVxMErouR9Ys4qZIOfDr+c/d15HrpOGgzO6hm9ObMbIBo22UYBPt+nN7N+HYNVbrs
 oEP451CsbFhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,487,1583222400"; 
 d="gz'50?scan'50,208,50";a="417965558"
Received: from lkp-server01.sh.intel.com (HELO 3b764b36c89c) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 08 Jun 2020 02:06:57 -0700
Received: from kbuild by 3b764b36c89c with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1jiDk9-0000h8-2l; Mon, 08 Jun 2020 09:06:57 +0000
Date: Mon, 8 Jun 2020 17:06:41 +0800
From: kernel test robot <lkp@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [driver-core:readfile 2/3] arch/arc/kernel/sys.c:13:36: warning:
 excess elements in array initializer
Message-ID: <202006081736.Bx116ACo%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="0F1p//8PRICkK4MW"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: devel@driverdev.osuosl.org, kbuild-all@lists.01.org
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--0F1p//8PRICkK4MW
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git readfile
head:   bfae99ad26b863f0381834ec0983b2149ec54ec6
commit: 2260dd18e6112543fcfdd9b11b6e75378c8ff3e1 [2/3] arch: wire up the readfile syscall
config: arc-axs101_defconfig (attached as .config)
compiler: arc-elf-gcc (GCC) 9.3.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        git checkout 2260dd18e6112543fcfdd9b11b6e75378c8ff3e1
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-9.3.0 make.cross ARCH=arc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>, old ones prefixed by <<):

|                                    ^
include/uapi/asm-generic/unistd.h:844:1: note: in expansion of macro '__SYSCALL'
844 | __SYSCALL(__NR_fsmount, sys_fsmount)
| ^~~~~~~~~
arch/arc/kernel/sys.c:13:36: note: (near initialization for 'sys_call_table[432]')
13 | #define __SYSCALL(nr, call) [nr] = (call),
|                                    ^
include/uapi/asm-generic/unistd.h:844:1: note: in expansion of macro '__SYSCALL'
844 | __SYSCALL(__NR_fsmount, sys_fsmount)
| ^~~~~~~~~
arch/arc/kernel/sys.c:13:36: warning: initialized field overwritten [-Woverride-init]
13 | #define __SYSCALL(nr, call) [nr] = (call),
|                                    ^
include/uapi/asm-generic/unistd.h:846:1: note: in expansion of macro '__SYSCALL'
846 | __SYSCALL(__NR_fspick, sys_fspick)
| ^~~~~~~~~
arch/arc/kernel/sys.c:13:36: note: (near initialization for 'sys_call_table[433]')
13 | #define __SYSCALL(nr, call) [nr] = (call),
|                                    ^
include/uapi/asm-generic/unistd.h:846:1: note: in expansion of macro '__SYSCALL'
846 | __SYSCALL(__NR_fspick, sys_fspick)
| ^~~~~~~~~
arch/arc/kernel/sys.c:13:36: warning: initialized field overwritten [-Woverride-init]
13 | #define __SYSCALL(nr, call) [nr] = (call),
|                                    ^
include/uapi/asm-generic/unistd.h:848:1: note: in expansion of macro '__SYSCALL'
848 | __SYSCALL(__NR_pidfd_open, sys_pidfd_open)
| ^~~~~~~~~
arch/arc/kernel/sys.c:13:36: note: (near initialization for 'sys_call_table[434]')
13 | #define __SYSCALL(nr, call) [nr] = (call),
|                                    ^
include/uapi/asm-generic/unistd.h:848:1: note: in expansion of macro '__SYSCALL'
848 | __SYSCALL(__NR_pidfd_open, sys_pidfd_open)
| ^~~~~~~~~
arch/arc/kernel/sys.c:13:36: warning: initialized field overwritten [-Woverride-init]
13 | #define __SYSCALL(nr, call) [nr] = (call),
|                                    ^
include/uapi/asm-generic/unistd.h:851:1: note: in expansion of macro '__SYSCALL'
851 | __SYSCALL(__NR_clone3, sys_clone3)
| ^~~~~~~~~
arch/arc/kernel/sys.c:13:36: note: (near initialization for 'sys_call_table[435]')
13 | #define __SYSCALL(nr, call) [nr] = (call),
|                                    ^
include/uapi/asm-generic/unistd.h:851:1: note: in expansion of macro '__SYSCALL'
851 | __SYSCALL(__NR_clone3, sys_clone3)
| ^~~~~~~~~
arch/arc/kernel/sys.c:13:36: warning: initialized field overwritten [-Woverride-init]
13 | #define __SYSCALL(nr, call) [nr] = (call),
|                                    ^
include/uapi/asm-generic/unistd.h:855:1: note: in expansion of macro '__SYSCALL'
855 | __SYSCALL(__NR_openat2, sys_openat2)
| ^~~~~~~~~
arch/arc/kernel/sys.c:13:36: note: (near initialization for 'sys_call_table[437]')
13 | #define __SYSCALL(nr, call) [nr] = (call),
|                                    ^
include/uapi/asm-generic/unistd.h:855:1: note: in expansion of macro '__SYSCALL'
855 | __SYSCALL(__NR_openat2, sys_openat2)
| ^~~~~~~~~
arch/arc/kernel/sys.c:13:36: warning: initialized field overwritten [-Woverride-init]
13 | #define __SYSCALL(nr, call) [nr] = (call),
|                                    ^
include/uapi/asm-generic/unistd.h:857:1: note: in expansion of macro '__SYSCALL'
857 | __SYSCALL(__NR_pidfd_getfd, sys_pidfd_getfd)
| ^~~~~~~~~
arch/arc/kernel/sys.c:13:36: note: (near initialization for 'sys_call_table[438]')
13 | #define __SYSCALL(nr, call) [nr] = (call),
|                                    ^
include/uapi/asm-generic/unistd.h:857:1: note: in expansion of macro '__SYSCALL'
857 | __SYSCALL(__NR_pidfd_getfd, sys_pidfd_getfd)
| ^~~~~~~~~
arch/arc/kernel/sys.c:13:36: warning: initialized field overwritten [-Woverride-init]
13 | #define __SYSCALL(nr, call) [nr] = (call),
|                                    ^
include/uapi/asm-generic/unistd.h:859:1: note: in expansion of macro '__SYSCALL'
859 | __SYSCALL(__NR_faccessat2, sys_faccessat2)
| ^~~~~~~~~
arch/arc/kernel/sys.c:13:36: note: (near initialization for 'sys_call_table[439]')
13 | #define __SYSCALL(nr, call) [nr] = (call),
|                                    ^
include/uapi/asm-generic/unistd.h:859:1: note: in expansion of macro '__SYSCALL'
859 | __SYSCALL(__NR_faccessat2, sys_faccessat2)
| ^~~~~~~~~
include/uapi/asm-generic/unistd.h:860:23: error: array index in initializer exceeds array bounds
860 | #define __NR_readfile 440
|                       ^~~
arch/arc/kernel/sys.c:13:30: note: in definition of macro '__SYSCALL'
13 | #define __SYSCALL(nr, call) [nr] = (call),
|                              ^~
include/uapi/asm-generic/unistd.h:861:11: note: in expansion of macro '__NR_readfile'
861 | __SYSCALL(__NR_readfile, sys_readfile)
|           ^~~~~~~~~~~~~
include/uapi/asm-generic/unistd.h:860:23: note: (near initialization for 'sys_call_table')
860 | #define __NR_readfile 440
|                       ^~~
arch/arc/kernel/sys.c:13:30: note: in definition of macro '__SYSCALL'
13 | #define __SYSCALL(nr, call) [nr] = (call),
|                              ^~
include/uapi/asm-generic/unistd.h:861:11: note: in expansion of macro '__NR_readfile'
861 | __SYSCALL(__NR_readfile, sys_readfile)
|           ^~~~~~~~~~~~~
<<                  from arch/arc/kernel/sys.c:3:
>> arch/arc/kernel/sys.c:13:36: warning: excess elements in array initializer
13 | #define __SYSCALL(nr, call) [nr] = (call),
|                                    ^
include/uapi/asm-generic/unistd.h:861:1: note: in expansion of macro '__SYSCALL'
861 | __SYSCALL(__NR_readfile, sys_readfile)
| ^~~~~~~~~
arch/arc/kernel/sys.c:13:36: note: (near initialization for 'sys_call_table')
13 | #define __SYSCALL(nr, call) [nr] = (call),
|                                    ^
include/uapi/asm-generic/unistd.h:861:1: note: in expansion of macro '__SYSCALL'
861 | __SYSCALL(__NR_readfile, sys_readfile)
| ^~~~~~~~~
arch/arc/kernel/sys.c:13:36: warning: initialized field overwritten [-Woverride-init]
13 | #define __SYSCALL(nr, call) [nr] = (call),
|                                    ^
arch/arc/include/uapi/asm/unistd.h:44:1: note: in expansion of macro '__SYSCALL'
44 | __SYSCALL(__NR_cacheflush, sys_cacheflush)
| ^~~~~~~~~
arch/arc/kernel/sys.c:13:36: note: (near initialization for 'sys_call_table[244]')
13 | #define __SYSCALL(nr, call) [nr] = (call),
|                                    ^
arch/arc/include/uapi/asm/unistd.h:44:1: note: in expansion of macro '__SYSCALL'
44 | __SYSCALL(__NR_cacheflush, sys_cacheflush)
| ^~~~~~~~~
arch/arc/kernel/sys.c:13:36: warning: initialized field overwritten [-Woverride-init]
13 | #define __SYSCALL(nr, call) [nr] = (call),
|                                    ^
arch/arc/include/uapi/asm/unistd.h:45:1: note: in expansion of macro '__SYSCALL'
45 | __SYSCALL(__NR_arc_settls, sys_arc_settls)
| ^~~~~~~~~
arch/arc/kernel/sys.c:13:36: note: (near initialization for 'sys_call_table[245]')
13 | #define __SYSCALL(nr, call) [nr] = (call),
|                                    ^
arch/arc/include/uapi/asm/unistd.h:45:1: note: in expansion of macro '__SYSCALL'
45 | __SYSCALL(__NR_arc_settls, sys_arc_settls)
| ^~~~~~~~~
arch/arc/kernel/sys.c:13:36: warning: initialized field overwritten [-Woverride-init]
13 | #define __SYSCALL(nr, call) [nr] = (call),
|                                    ^
arch/arc/include/uapi/asm/unistd.h:46:1: note: in expansion of macro '__SYSCALL'
46 | __SYSCALL(__NR_arc_gettls, sys_arc_gettls)
| ^~~~~~~~~
arch/arc/kernel/sys.c:13:36: note: (near initialization for 'sys_call_table[246]')
13 | #define __SYSCALL(nr, call) [nr] = (call),
|                                    ^
arch/arc/include/uapi/asm/unistd.h:46:1: note: in expansion of macro '__SYSCALL'
46 | __SYSCALL(__NR_arc_gettls, sys_arc_gettls)
| ^~~~~~~~~
arch/arc/kernel/sys.c:13:36: warning: initialized field overwritten [-Woverride-init]
13 | #define __SYSCALL(nr, call) [nr] = (call),
|                                    ^
arch/arc/include/uapi/asm/unistd.h:47:1: note: in expansion of macro '__SYSCALL'
47 | __SYSCALL(__NR_arc_usr_cmpxchg, sys_arc_usr_cmpxchg)
| ^~~~~~~~~
arch/arc/kernel/sys.c:13:36: note: (near initialization for 'sys_call_table[248]')
13 | #define __SYSCALL(nr, call) [nr] = (call),
|                                    ^
arch/arc/include/uapi/asm/unistd.h:47:1: note: in expansion of macro '__SYSCALL'
47 | __SYSCALL(__NR_arc_usr_cmpxchg, sys_arc_usr_cmpxchg)
| ^~~~~~~~~
arch/arc/kernel/sys.c:13:36: warning: initialized field overwritten [-Woverride-init]
13 | #define __SYSCALL(nr, call) [nr] = (call),
|                                    ^
arch/arc/include/uapi/asm/unistd.h:48:1: note: in expansion of macro '__SYSCALL'
48 | __SYSCALL(__NR_sysfs, sys_sysfs)
| ^~~~~~~~~
arch/arc/kernel/sys.c:13:36: note: (near initialization for 'sys_call_table[247]')
13 | #define __SYSCALL(nr, call) [nr] = (call),
|                                    ^
arch/arc/include/uapi/asm/unistd.h:48:1: note: in expansion of macro '__SYSCALL'
48 | __SYSCALL(__NR_sysfs, sys_sysfs)
| ^~~~~~~~~
In file included from include/linux/perf_event.h:25,
from include/linux/trace_events.h:10,
from include/trace/syscall.h:7,
from include/linux/syscalls.h:85,
from arch/arc/kernel/sys.c:3:
arch/arc/include/asm/perf_event.h:126:23: warning: 'arc_pmu_cache_map' defined but not used [-Wunused-const-variable=]
126 | static const unsigned arc_pmu_cache_map[C(MAX)][C(OP_MAX)][C(RESULT_MAX)] = {
|                       ^~~~~~~~~~~~~~~~~
arch/arc/include/asm/perf_event.h:91:27: warning: 'arc_pmu_ev_hw_map' defined but not used [-Wunused-const-variable=]
91 | static const char * const arc_pmu_ev_hw_map[] = {
|                           ^~~~~~~~~~~~~~~~~

vim +13 arch/arc/kernel/sys.c

4adeefe161a743 Vineet Gupta 2013-01-18  11  
4adeefe161a743 Vineet Gupta 2013-01-18  12  #undef __SYSCALL
4adeefe161a743 Vineet Gupta 2013-01-18 @13  #define __SYSCALL(nr, call) [nr] = (call),
4adeefe161a743 Vineet Gupta 2013-01-18  14  

:::::: The code at line 13 was first introduced by commit
:::::: 4adeefe161a74369e44cc8e663f240ece0470dc3 ARC: Syscall support (no-legacy-syscall ABI)

:::::: TO: Vineet Gupta <vgupta@synopsys.com>
:::::: CC: Vineet Gupta <vgupta@synopsys.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--0F1p//8PRICkK4MW
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--0F1p//8PRICkK4MW
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--0F1p//8PRICkK4MW--
