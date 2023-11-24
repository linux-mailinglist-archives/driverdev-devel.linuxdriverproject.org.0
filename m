Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 85B2D7F7A91
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 Nov 2023 18:48:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7022D615E0;
	Fri, 24 Nov 2023 17:48:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7022D615E0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bbJUpl4SIlR8; Fri, 24 Nov 2023 17:48:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B8A78615C7;
	Fri, 24 Nov 2023 17:48:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B8A78615C7
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5A2541BF5A8
 for <devel@linuxdriverproject.org>; Fri, 24 Nov 2023 17:48:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4068A4181F
 for <devel@linuxdriverproject.org>; Fri, 24 Nov 2023 17:48:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4068A4181F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0aJX6yk9oYML for <devel@linuxdriverproject.org>;
 Fri, 24 Nov 2023 17:48:06 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AFFCA418B5
 for <devel@driverdev.osuosl.org>; Fri, 24 Nov 2023 17:48:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AFFCA418B5
X-IronPort-AV: E=McAfee;i="6600,9927,10904"; a="5677281"
X-IronPort-AV: E=Sophos;i="6.04,224,1695711600"; 
   d="scan'208";a="5677281"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2023 09:48:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,224,1695711600"; 
   d="scan'208";a="9195166"
Received: from lkp-server01.sh.intel.com (HELO d584ee6ebdcc) ([10.239.97.150])
 by fmviesa002.fm.intel.com with ESMTP; 24 Nov 2023 09:48:04 -0800
Received: from kbuild by d584ee6ebdcc with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1r6aHa-00038h-0M;
 Fri, 24 Nov 2023 17:48:02 +0000
Date: Sat, 25 Nov 2023 01:47:40 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 b43d958fbc2359e68d97cc0ce9f05cb4a0b23cbc
Message-ID: <202311250138.MIKBF5FC-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700848087; x=1732384087;
 h=date:from:to:cc:subject:message-id;
 bh=MRbPNLxUdpBlJ1SGvQ0DofIFkImEUvDLGvpjs1IHbIk=;
 b=eBtAiXTqTm1QcqbK+E5aLS2ygRWOeHvEaWn6U0aLgkrLVPL5zKob2NlX
 XjIYLO0ofP51jJ60Ccna4/cE3JG2OdFFmBHv06TJgGpbXcfcRGNNXGhbW
 O69xCJdN+dM2LcjoVW08a1enWhu5mEXadW9wlIya8Pvwe2+fGv/7kvitH
 ZvdABstDweZhw2BRqNQCK7RQcQtnNSSO8CjKKVAgl+88yPcHvPUy44Bfc
 TrY5roTlvPccak2dunMqYLVSDt7HpDLcqRozsPKV3hyvIKKF/QybcMhT8
 Y1+qE8IWlICDG1vfBYXrIblBfb0FaFcF7+nl5eZPKaUyZaeW0DJqhzXy7
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eBtAiXTq
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
Cc: devel@driverdev.osuosl.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
branch HEAD: b43d958fbc2359e68d97cc0ce9f05cb4a0b23cbc  staging: vchiq_arm: move state dump to debugfs

Warning ids grouped by kconfigs:

clang_recent_errors
`-- arm64-allyesconfig
    |-- drivers-gpu-drm-nouveau-nouveau_ioc32.c:warning:Cannot-understand-file-mga_ioc32.c
    |-- drivers-gpu-drm-nouveau-nouveau_ioc32.c:warning:Function-parameter-or-member-arg-not-described-in-nouveau_compat_ioctl
    |-- drivers-gpu-drm-nouveau-nouveau_ioc32.c:warning:Function-parameter-or-member-cmd-not-described-in-nouveau_compat_ioctl
    |-- drivers-gpu-drm-nouveau-nouveau_ioc32.c:warning:Function-parameter-or-member-filp-not-described-in-nouveau_compat_ioctl
    |-- drivers-gpu-drm-nouveau-nouveau_ioc32.c:warning:expecting-prototype-for-Called-whenever-a-bit-process-running-under-a-().-Prototype-was-for-nouveau_compat_ioctl()-instead
    |-- drivers-nvdimm-btt.c:warning:Excess-function-parameter-maxlane-description-in-btt_init
    |-- drivers-nvdimm-btt.c:warning:Function-parameter-or-member-nd_region-not-described-in-btt_init
    |-- drivers-nvdimm-core.c:warning:Function-parameter-or-member-len-not-described-in-nd_uuid_store
    |-- drivers-nvdimm-dimm_devs.c:warning:Excess-function-parameter-nvdimm-description-in-nvdimm_allocated_dpa
    |-- drivers-nvdimm-dimm_devs.c:warning:Excess-function-parameter-nvdimm-description-in-nvdimm_init_nsarea
    |-- drivers-nvdimm-dimm_devs.c:warning:Function-parameter-or-member-ndd-not-described-in-nvdimm_allocated_dpa
    |-- drivers-nvdimm-dimm_devs.c:warning:Function-parameter-or-member-ndd-not-described-in-nvdimm_init_nsarea
    |-- drivers-nvdimm-namespace_devs.c:warning:Excess-function-parameter-nspm-description-in-create_namespace_pmem
    |-- drivers-nvdimm-namespace_devs.c:warning:Function-parameter-or-member-nd_mapping-not-described-in-create_namespace_pmem
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-address-not-described-in-apparmor_socket_bind
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-address-not-described-in-apparmor_socket_connect
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-addrlen-not-described-in-apparmor_socket_bind
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-addrlen-not-described-in-apparmor_socket_connect
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-backlog-not-described-in-apparmor_socket_listen
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_sk_alloc_security
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_socket_create
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_socket_post_create
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-flags-not-described-in-apparmor_sk_alloc_security
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-flags-not-described-in-apparmor_socket_recvmsg
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-how-not-described-in-apparmor_socket_shutdown
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-kern-not-described-in-apparmor_socket_create
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-kern-not-described-in-apparmor_socket_post_create
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-len-not-described-in-apparmor_socket_getpeersec_stream
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-level-not-described-in-apparmor_socket_getsockopt
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-level-not-described-in-apparmor_socket_setsockopt
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-msg-not-described-in-apparmor_socket_recvmsg
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-msg-not-described-in-apparmor_socket_sendmsg
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-newsk-not-described-in-apparmor_sk_clone_security
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-newsock-not-described-in-apparmor_socket_accept
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optlen-not-described-in-apparmor_socket_getpeersec_stream
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optname-not-described-in-apparmor_socket_getsockopt
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optname-not-described-in-apparmor_socket_setsockopt
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optval-not-described-in-apparmor_socket_getpeersec_stream
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-protocol-not-described-in-apparmor_socket_create
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-protocol-not-described-in-apparmor_socket_post_create
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-size-not-described-in-apparmor_socket_recvmsg
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-size-not-described-in-apparmor_socket_sendmsg
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_alloc_security
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_clone_security
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_free_security
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_socket_sock_rcv_skb
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-skb-not-described-in-apparmor_socket_sock_rcv_skb
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_accept
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_bind
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_connect
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getpeername
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getpeersec_stream
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getsockname
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getsockopt
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_listen
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_post_create
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_recvmsg
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_sendmsg
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_setsockopt
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_shutdown
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-type-not-described-in-apparmor_socket_create
    `-- security-apparmor-lsm.c:warning:Function-parameter-or-member-type-not-described-in-apparmor_socket_post_create

elapsed time: 1444m

configs tested: 178
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                          axs103_defconfig   gcc  
arc                                 defconfig   gcc  
arc                        nsim_700_defconfig   gcc  
arc                   randconfig-001-20231124   gcc  
arc                   randconfig-002-20231124   gcc  
arc                    vdk_hs38_smp_defconfig   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                           imxrt_defconfig   gcc  
arm                      integrator_defconfig   gcc  
arm                            mmp2_defconfig   clang
arm                       versatile_defconfig   clang
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20231124   gcc  
csky                  randconfig-002-20231124   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
i386                             allmodconfig   clang
i386                              allnoconfig   clang
i386                             allyesconfig   clang
i386                                defconfig   gcc  
i386                  randconfig-011-20231124   gcc  
i386                  randconfig-012-20231124   gcc  
i386                  randconfig-013-20231124   gcc  
i386                  randconfig-014-20231124   gcc  
i386                  randconfig-015-20231124   gcc  
i386                  randconfig-016-20231124   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20231124   gcc  
loongarch             randconfig-002-20231124   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                          amiga_defconfig   gcc  
m68k                                defconfig   gcc  
m68k                       m5249evb_defconfig   gcc  
m68k                        m5272c3_defconfig   gcc  
m68k                       m5275evb_defconfig   gcc  
m68k                            mac_defconfig   gcc  
m68k                          sun3x_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   clang
mips                             allyesconfig   gcc  
mips                        bcm47xx_defconfig   gcc  
mips                         cobalt_defconfig   gcc  
mips                            gpr_defconfig   gcc  
mips                           jazz_defconfig   gcc  
mips                      loongson3_defconfig   gcc  
mips                      maltasmvp_defconfig   gcc  
mips                  maltasmvp_eva_defconfig   gcc  
mips                          rb532_defconfig   gcc  
nios2                            alldefconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20231124   gcc  
nios2                 randconfig-002-20231124   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                generic-64bit_defconfig   gcc  
parisc                randconfig-001-20231124   gcc  
parisc                randconfig-002-20231124   gcc  
parisc64                            defconfig   gcc  
powerpc                     akebono_defconfig   clang
powerpc                          allmodconfig   clang
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                        cell_defconfig   gcc  
powerpc                      makalu_defconfig   gcc  
powerpc                       maple_defconfig   gcc  
powerpc                      obs600_defconfig   clang
powerpc                      ppc40x_defconfig   gcc  
powerpc                         ps3_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   clang
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                          rv32_defconfig   clang
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20231124   gcc  
s390                  randconfig-002-20231124   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                        apsh4ad0a_defconfig   gcc  
sh                                  defconfig   gcc  
sh                 kfr2r09-romimage_defconfig   gcc  
sh                    randconfig-001-20231124   gcc  
sh                    randconfig-002-20231124   gcc  
sh                   rts7751r2dplus_defconfig   gcc  
sh                           se7206_defconfig   gcc  
sh                           se7343_defconfig   gcc  
sh                           se7705_defconfig   gcc  
sh                           se7712_defconfig   gcc  
sh                   secureedge5410_defconfig   gcc  
sh                   sh7770_generic_defconfig   gcc  
sh                  sh7785lcr_32bit_defconfig   gcc  
sh                            shmin_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                            allyesconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20231124   gcc  
sparc64               randconfig-002-20231124   gcc  
um                               alldefconfig   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20231124   clang
x86_64       buildonly-randconfig-002-20231124   clang
x86_64       buildonly-randconfig-003-20231124   clang
x86_64       buildonly-randconfig-004-20231124   clang
x86_64       buildonly-randconfig-005-20231124   clang
x86_64       buildonly-randconfig-006-20231124   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                randconfig-011-20231124   clang
x86_64                randconfig-012-20231124   clang
x86_64                randconfig-013-20231124   clang
x86_64                randconfig-014-20231124   clang
x86_64                randconfig-015-20231124   clang
x86_64                randconfig-016-20231124   clang
x86_64                randconfig-071-20231124   clang
x86_64                randconfig-072-20231124   clang
x86_64                randconfig-073-20231124   clang
x86_64                randconfig-074-20231124   clang
x86_64                randconfig-075-20231124   clang
x86_64                randconfig-076-20231124   clang
x86_64                           rhel-8.3-bpf   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa                generic_kc705_defconfig   gcc  
xtensa                          iss_defconfig   gcc  
xtensa                  nommu_kc705_defconfig   gcc  
xtensa                randconfig-001-20231124   gcc  
xtensa                randconfig-002-20231124   gcc  
xtensa                    smp_lx200_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
