Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B379196DAF
	for <lists+driverdev-devel@lfdr.de>; Sun, 29 Mar 2020 15:40:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C5A7988320;
	Sun, 29 Mar 2020 13:40:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iPwjGYpnailr; Sun, 29 Mar 2020 13:40:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 89642882BB;
	Sun, 29 Mar 2020 13:39:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DFC001BF28B
 for <devel@linuxdriverproject.org>; Sun, 29 Mar 2020 13:39:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DAB8386407
 for <devel@linuxdriverproject.org>; Sun, 29 Mar 2020 13:39:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1S2TMkQse9p9 for <devel@linuxdriverproject.org>;
 Sun, 29 Mar 2020 13:39:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B75A686355
 for <devel@driverdev.osuosl.org>; Sun, 29 Mar 2020 13:39:41 +0000 (UTC)
IronPort-SDR: WQWSBEkGN9FNP4uMt5ODoIyo0P9YAWadbLPEXmjgnpQepKmxGbv5egu0n0wi89ZjmAUfckikjp
 JVXc6uYLz5cw==
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2020 06:39:39 -0700
IronPort-SDR: BDRJpdXE5+bygm5qUlePKc0/5DeteZm9IJ8hiuoiyhwoEJgzpfrynrDr/bDJJCiEXKQibqK2gB
 A6xlHUYRdO6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,320,1580803200"; 
 d="xz'?gz'50?scan'50,208,50";a="447972027"
Received: from shao2-debian.sh.intel.com (HELO localhost) ([10.239.13.3])
 by fmsmga005.fm.intel.com with ESMTP; 29 Mar 2020 06:39:37 -0700
Date: Sun, 29 Mar 2020 21:39:18 +0800
From: kernel test robot <lkp@intel.com>
To: Christian Gromm <christian.gromm@microchip.com>
Subject: b276527539 ("staging: most: move core files out of the staging .."):
 [   12.247349] BUG: kernel NULL pointer dereference, address: 00000000
Message-ID: <20200329133917.GE11705@shao2-debian>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="dUQ3G7okZyz11iOi"
Content-Disposition: inline
User-Agent: Heirloom mailx 12.5 6/20/10
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
 linux-kernel@vger.kernel.org, LKP <lkp@lists.01.org>
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--dUQ3G7okZyz11iOi
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Greetings,

0day kernel testing robot got the below dmesg and the first bad commit is

https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-next

commit b276527539188f1f61c082ebef27803db93e536d
Author:     Christian Gromm <christian.gromm@microchip.com>
AuthorDate: Tue Mar 10 14:02:40 2020 +0100
Commit:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>
CommitDate: Tue Mar 24 13:42:44 2020 +0100

    staging: most: move core files out of the staging area
    
    This patch moves the core module to the /drivers/most directory
    and makes all necessary changes in order to not break the build.
    
    Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
    Link: https://lore.kernel.org/r/1583845362-26707-2-git-send-email-christian.gromm@microchip.com
    Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

22dd4acc80  Staging: speakup: Add identifier name to function declaration arguments.
b276527539  staging: most: move core files out of the staging area
e681bb287f  staging: vt6656: Use DIV_ROUND_UP macro instead of specific code
+-------------------------------------------------------+------------+------------+------------+
|                                                       | 22dd4acc80 | b276527539 | e681bb287f |
+-------------------------------------------------------+------------+------------+------------+
| boot_successes                                        | 26         | 0          | 0          |
| boot_failures                                         | 8          | 11         | 11         |
| WARNING:possible_circular_locking_dependency_detected | 8          |            |            |
| BUG:kernel_NULL_pointer_dereference,address           | 0          | 11         | 11         |
| Oops:#[##]                                            | 0          | 11         | 11         |
| EIP:__list_add_valid                                  | 0          | 11         | 11         |
| Kernel_panic-not_syncing:Fatal_exception              | 0          | 11         | 11         |
+-------------------------------------------------------+------------+------------+------------+

If you fix the issue, kindly add following tag
Reported-by: kernel test robot <lkp@intel.com>

[   12.242090] no options.
[   12.245364] FPGA DOWNLOAD --->
[   12.245723] FPGA image file name: xlinx_fpga_firmware.bit
[   12.246548] GPIO INIT FAIL!!
[   12.246995] most_sound: init()
[   12.247349] BUG: kernel NULL pointer dereference, address: 00000000
[   12.248032] #PF: supervisor read access in kernel mode
[   12.248322] #PF: error_code(0x0000) - not-present page
[   12.248322] *pdpt = 0000000000000000 *pde = f000ff53f000ff53 
[   12.248322] Oops: 0000 [#1] PREEMPT SMP
[   12.248322] CPU: 0 PID: 1 Comm: swapper/0 Not tainted 5.6.0-rc7-00376-gb276527539188 #1
[   12.248322] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.12.0-1 04/01/2014
[   12.248322] EIP: __list_add_valid+0x29/0x77
[   12.248322] Code: c3 55 89 e5 56 53 83 ec 10 8b 59 04 39 d3 74 1a 89 4c 24 0c 89 5c 24 08 89 54 24 04 c7 04 24 00 cc bd c2 e8 84 9e b4 ff 0f 0b <8b> 33 39 ce 74 1a 89 5c 24 0c 89 74 24 08 89 4c 24 04 c7 04 24 7c
[   12.248322] EAX: c2f45800 EBX: 00000000 ECX: c3e8df50 EDX: 00000000
[   12.248322] ESI: 00000000 EDI: ec4a7f68 EBP: ec4a7ee8 ESP: ec4a7ed0
[   12.248322] DS: 007b ES: 007b FS: 00d8 GS: 00e0 SS: 0068 EFLAGS: 00010246
[   12.248322] CR0: 80050033 CR2: 00000000 CR3: 03256000 CR4: 001406b0
[   12.248322] Call Trace:
[   12.248322]  ? vprintk_func+0x9d/0xa7
[   12.248322]  most_register_component+0x33/0x53
[   12.248322]  ? wilc_spi_driver_init+0x11/0x11
[   12.248322]  audio_init+0x2c/0x76
[   12.248322]  do_one_initcall+0xf0/0x284
[   12.248322]  ? __might_sleep+0x70/0x77
[   12.262064]  kernel_init_freeable+0x141/0x1a5
[   12.262064]  ? rest_init+0x205/0x205
[   12.262064]  kernel_init+0xb/0xea
[   12.262064]  ? schedule_tail_wrapper+0x9/0xc
[   12.262064]  ret_from_fork+0x2e/0x38
[   12.262064] Modules linked in:
[   12.262064] CR2: 0000000000000000
[   12.262064] ---[ end trace 7c7a2cb6d11f9c5d ]---
[   12.262064] EIP: __list_add_valid+0x29/0x77

                                                          # HH:MM RESULT GOOD BAD GOOD_BUT_DIRTY DIRTY_NOT_BAD
git bisect start a400b349905677d3561138087528f36718cbd9fc 16fbf79b0f83bc752cee8589279f1ebfe57b3b6e --
git bisect  bad 1fb7e4086438ac799b09b0fcafbe7d6d694d2229  # 10:44  B      0     9   25   0  Merge 'linux-review/Gustavo-A-R-Silva/chrome-cros_ec_chardev-Replace-zero-length-array-with-flexible-array-member/20200321-071741' into devel-hourly-2020032803
git bisect  bad aa5a6dfe7759dceb732db7578fd8e93b558c583f  # 11:03  B      0     6   22   0  Merge 'linux-review/Ravi-Bangoria/perf-dso-Fix-dso-comparison/20200324-152752' into devel-hourly-2020032803
git bisect good 9f5dc12221c99dd30a64be3fbce2130654d1fcc0  # 11:38  G     10     0    3   3  Merge 'linux-review/Mateusz-Gorski/Add-topologies-for-generic-HDA-DSP-machine-driver/20200326-075250' into devel-hourly-2020032803
git bisect good 4f2fa08ebb25660ca706626bf58b0ddccf6e35c6  # 12:13  G     10     0    3   3  Merge 'thermal/next' into devel-hourly-2020032803
git bisect  bad 0b76d1986630dbd2332c91a2f94875ee93ca7e3a  # 12:40  B      0     7   23   0  Merge 'linux-review/Weihang-Li/RDMA-hns-Update-some-configurations-related-to-hardware/20200327-030803' into devel-hourly-2020032803
git bisect good 3817f5f77f139d27a42ff92b0fcbae964665a471  # 13:34  G     11     0    2   2  Merge 'linux-review/Leon-Romanovsky/RDMA-rxe-Set-sys_image_guid-to-be-aligned-with-HW-IB-devices/20200323-235957' into devel-hourly-2020032803
git bisect good 37f479d4be63453151a4e8b1db0d18a102fa6e81  # 14:38  G     10     0    2   2  Merge 'linux-review/sunil-kovvuri-gmail-com/Miscellaneous-fixes/20200326-074148' into devel-hourly-2020032803
git bisect  bad 9e25511121b25d3191aea63e9c2c65d8beed750e  # 14:57  B      0     1   17   0  Merge 'linux-review/Rayagonda-Kokatanur/i2c-iproc-add-support-for-SMBUS-quick-cmd/20200323-045331' into devel-hourly-2020032803
git bisect good 676d651ef12f80cc35ef101bfe610d6a6f12ef10  # 15:40  G     10     0    5   5  Merge 'linux-review/Luiz-Augusto-von-Dentz/Bluetooth-Add-BT_MODE-socket-option/20200327-073534' into devel-hourly-2020032803
git bisect  bad 25c4b63ca26e35d0793bdd2c1b24bed8cf95801d  # 16:29  B      0     2   18   0  Merge 'linux-review/Simran-Singhal/staging-rtl8723bs-Clean-up-tests-if-NULL-returned-on-failure/20200327-012809' into devel-hourly-2020032803
git bisect good 8eb6b39c0ff38fd1bf21454c438fb3a2a52636f9  # 17:36  G     11     0    4   4  staging: qlge: qlge_dbg: remove unneeded spaces
git bisect good fe297f8f048a7a0663479dcf6447ec450b53b905  # 18:35  G     10     0    2   2  iio: dac: Kconfig: sort symbols alphabetically
git bisect good 9791ca0dcb46dcedc5fb93fb4e8791cedc91babd  # 19:31  G     10     0    4   4  staging: mt7621-pci-phy: re-do 'xtal_mode' detection
git bisect  bad c926f022c2560d801545e6b55dacc9082277d18e  # 20:19  B      0     3   19   0  staging: rtl8723bs: Add line after variable declarations
git bisect  bad b276527539188f1f61c082ebef27803db93e536d  # 20:43  B      0     6   22   0  staging: most: move core files out of the staging area
git bisect good 759411a0e0f35c8ae1778a838a97cec9d0140f7f  # 21:11  G     10     0    2   2  staging: wlan-ng: Fix third argument going over 80 characters
git bisect good 7385adece19190f28800e0fc2fa964b96706120a  # 21:42  G     10     0    2   2  staging: hp100: Add space around operator +
git bisect good 7cf9a79dbae127776a6ddd455494faec9f3af9fb  # 22:13  G     11     0    7   7  Staging: speakup: Use sizeof(*var) in kmalloc().
git bisect good 22dd4acc80495ea0fa3a54b36e49ef9dd5bad6c6  # 22:40  G     10     0    1   1  Staging: speakup: Add identifier name to function declaration arguments.
# first bad commit: [b276527539188f1f61c082ebef27803db93e536d] staging: most: move core files out of the staging area
git bisect good 22dd4acc80495ea0fa3a54b36e49ef9dd5bad6c6  # 22:45  G     31     0    7   8  Staging: speakup: Add identifier name to function declaration arguments.
# extra tests with debug options
git bisect good b276527539188f1f61c082ebef27803db93e536d  # 23:05  G     11     0    0   0  staging: most: move core files out of the staging area
# extra tests on head commit of staging/staging-next
git bisect  bad e681bb287f40e7a9dbcb04cef80fd87a2511ab86  # 23:49  B      0     1   17   0  staging: vt6656: Use DIV_ROUND_UP macro instead of specific code
# bad: [e681bb287f40e7a9dbcb04cef80fd87a2511ab86] staging: vt6656: Use DIV_ROUND_UP macro instead of specific code
# extra tests on revert first bad commit
git bisect good 099a66b938bb0368b91c81e4431180ef11a0b66b  # 00:32  G     10     0    1   1  Revert "staging: most: move core files out of the staging area"
# good: [099a66b938bb0368b91c81e4431180ef11a0b66b] Revert "staging: most: move core files out of the staging area"

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/lkp@lists.01.org

--dUQ3G7okZyz11iOi
Content-Type: application/gzip
Content-Disposition: attachment; filename="dmesg-yocto-vm-yocto-28:20200328204408:i386-randconfig-g003-20200327:5.6.0-rc7-00376-gb276527539188:1.gz"
Content-Transfer-Encoding: base64

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
zw1Ac6HbNyCLn3HMeMIt5AAA

--dUQ3G7okZyz11iOi
Content-Type: application/gzip
Content-Disposition: attachment; filename="dmesg-yocto-vm-yocto-17:20200328224405:i386-randconfig-g003-20200327:5.6.0-rc7-00375-g22dd4acc80495:1.gz"
Content-Transfer-Encoding: base64

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
2au331Oy8y+KnmR0floBAA==

--dUQ3G7okZyz11iOi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="reproduce-yocto-vm-yocto-28:20200328204408:i386-randconfig-g003-20200327:5.6.0-rc7-00376-gb276527539188:1"

#!/bin/bash

kernel=$1
initrd=yocto-i386-trinity.cgz

wget --no-clobber https://download.01.org/0day-ci/lkp-qemu/osimage/yocto/$initrd

kvm=(
	qemu-system-x86_64
	-enable-kvm
	-cpu Haswell,+smep,+smap
	-kernel $kernel
	-initrd $initrd
	-m 8192
	-smp 2
	-device e1000,netdev=net0
	-netdev user,id=net0,hostfwd=tcp::32032-:22
	-boot order=nc
	-no-reboot
	-watchdog i6300esb
	-watchdog-action debug
	-rtc base=localtime
	-serial stdio
	-display none
	-monitor null
)

append=(
	root=/dev/ram0
	hung_task_panic=1
	debug
	apic=debug
	sysrq_always_enabled
	rcupdate.rcu_cpu_stall_timeout=100
	net.ifnames=0
	printk.devkmsg=on
	panic=-1
	softlockup_panic=1
	nmi_watchdog=panic
	oops=panic
	load_ramdisk=2
	prompt_ramdisk=0
	drbd.minor_count=8
	systemd.log_level=err
	ignore_loglevel
	console=tty0
	earlyprintk=ttyS0,115200
	console=ttyS0,115200
	vga=normal
	rw
	rcuperf.shutdown=0
	watchdog_thresh=60
)

"${kvm[@]}" -append "${append[*]}"

--dUQ3G7okZyz11iOi
Content-Type: application/x-xz
Content-Disposition: attachment; filename="a400b349905677d3561138087528f36718cbd9fc:gcc-7:i386-randconfig-g003-20200327:EIP:__list_add_valid.xz"
Content-Transfer-Encoding: base64

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
AgAAAAAEWVo=

--dUQ3G7okZyz11iOi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="config-5.6.0-rc7-00376-gb276527539188"

#
# Automatically generated file; DO NOT EDIT.
# Linux/i386 5.6.0-rc7 Kernel Configuration
#

#
# Compiler: gcc-7 (Debian 7.5.0-5) 7.5.0
#
CONFIG_CC_IS_GCC=y
CONFIG_GCC_VERSION=70500
CONFIG_CLANG_VERSION=0
CONFIG_CC_CAN_LINK=y
CONFIG_CC_HAS_ASM_GOTO=y
CONFIG_CC_HAS_ASM_INLINE=y
CONFIG_CC_HAS_WARN_MAYBE_UNINITIALIZED=y
CONFIG_CONSTRUCTORS=y
CONFIG_IRQ_WORK=y
CONFIG_BUILDTIME_TABLE_SORT=y
CONFIG_THREAD_INFO_IN_TASK=y

#
# General setup
#
CONFIG_INIT_ENV_ARG_LIMIT=32
# CONFIG_COMPILE_TEST is not set
CONFIG_UAPI_HEADER_TEST=y
CONFIG_LOCALVERSION=""
CONFIG_LOCALVERSION_AUTO=y
CONFIG_BUILD_SALT=""
CONFIG_HAVE_KERNEL_GZIP=y
CONFIG_HAVE_KERNEL_BZIP2=y
CONFIG_HAVE_KERNEL_LZMA=y
CONFIG_HAVE_KERNEL_XZ=y
CONFIG_HAVE_KERNEL_LZO=y
CONFIG_HAVE_KERNEL_LZ4=y
# CONFIG_KERNEL_GZIP is not set
# CONFIG_KERNEL_BZIP2 is not set
CONFIG_KERNEL_LZMA=y
# CONFIG_KERNEL_XZ is not set
# CONFIG_KERNEL_LZO is not set
# CONFIG_KERNEL_LZ4 is not set
CONFIG_DEFAULT_HOSTNAME="(none)"
CONFIG_SWAP=y
CONFIG_SYSVIPC=y
CONFIG_SYSVIPC_SYSCTL=y
# CONFIG_POSIX_MQUEUE is not set
# CONFIG_CROSS_MEMORY_ATTACH is not set
CONFIG_USELIB=y
# CONFIG_AUDIT is not set
CONFIG_HAVE_ARCH_AUDITSYSCALL=y

#
# IRQ subsystem
#
CONFIG_GENERIC_IRQ_PROBE=y
CONFIG_GENERIC_IRQ_SHOW=y
CONFIG_GENERIC_IRQ_EFFECTIVE_AFF_MASK=y
CONFIG_GENERIC_PENDING_IRQ=y
CONFIG_GENERIC_IRQ_MIGRATION=y
CONFIG_GENERIC_IRQ_CHIP=y
CONFIG_IRQ_DOMAIN=y
CONFIG_IRQ_SIM=y
CONFIG_IRQ_DOMAIN_HIERARCHY=y
CONFIG_GENERIC_IRQ_MATRIX_ALLOCATOR=y
CONFIG_GENERIC_IRQ_RESERVATION_MODE=y
CONFIG_IRQ_FORCED_THREADING=y
CONFIG_SPARSE_IRQ=y
CONFIG_GENERIC_IRQ_DEBUGFS=y
# end of IRQ subsystem

CONFIG_CLOCKSOURCE_WATCHDOG=y
CONFIG_ARCH_CLOCKSOURCE_DATA=y
CONFIG_ARCH_CLOCKSOURCE_INIT=y
CONFIG_CLOCKSOURCE_VALIDATE_LAST_CYCLE=y
CONFIG_GENERIC_TIME_VSYSCALL=y
CONFIG_GENERIC_CLOCKEVENTS=y
CONFIG_GENERIC_CLOCKEVENTS_BROADCAST=y
CONFIG_GENERIC_CLOCKEVENTS_MIN_ADJUST=y
CONFIG_GENERIC_CMOS_UPDATE=y

#
# Timers subsystem
#
CONFIG_TICK_ONESHOT=y
CONFIG_NO_HZ_COMMON=y
# CONFIG_HZ_PERIODIC is not set
CONFIG_NO_HZ_IDLE=y
# CONFIG_NO_HZ is not set
# CONFIG_HIGH_RES_TIMERS is not set
# end of Timers subsystem

# CONFIG_PREEMPT_NONE is not set
# CONFIG_PREEMPT_VOLUNTARY is not set
CONFIG_PREEMPT=y
CONFIG_PREEMPT_COUNT=y
CONFIG_PREEMPTION=y

#
# CPU/Task time and stats accounting
#
CONFIG_TICK_CPU_ACCOUNTING=y
CONFIG_IRQ_TIME_ACCOUNTING=y
CONFIG_HAVE_SCHED_AVG_IRQ=y
CONFIG_BSD_PROCESS_ACCT=y
# CONFIG_BSD_PROCESS_ACCT_V3 is not set
# CONFIG_TASKSTATS is not set
CONFIG_PSI=y
# CONFIG_PSI_DEFAULT_DISABLED is not set
# end of CPU/Task time and stats accounting

CONFIG_CPU_ISOLATION=y

#
# RCU Subsystem
#
CONFIG_TREE_RCU=y
CONFIG_PREEMPT_RCU=y
# CONFIG_RCU_EXPERT is not set
CONFIG_SRCU=y
CONFIG_TREE_SRCU=y
CONFIG_TASKS_RCU=y
CONFIG_RCU_STALL_COMMON=y
CONFIG_RCU_NEED_SEGCBLIST=y
# end of RCU Subsystem

CONFIG_IKCONFIG=y
CONFIG_IKCONFIG_PROC=y
CONFIG_IKHEADERS=y
CONFIG_LOG_BUF_SHIFT=20
CONFIG_LOG_CPU_MAX_BUF_SHIFT=12
CONFIG_PRINTK_SAFE_LOG_BUF_SHIFT=13
CONFIG_HAVE_UNSTABLE_SCHED_CLOCK=y

#
# Scheduler features
#
CONFIG_UCLAMP_TASK=y
CONFIG_UCLAMP_BUCKETS_COUNT=5
# end of Scheduler features

CONFIG_ARCH_WANT_BATCHED_UNMAP_TLB_FLUSH=y
CONFIG_CGROUPS=y
CONFIG_PAGE_COUNTER=y
CONFIG_MEMCG=y
# CONFIG_MEMCG_SWAP is not set
CONFIG_MEMCG_KMEM=y
CONFIG_BLK_CGROUP=y
CONFIG_CGROUP_WRITEBACK=y
CONFIG_CGROUP_SCHED=y
CONFIG_FAIR_GROUP_SCHED=y
CONFIG_CFS_BANDWIDTH=y
# CONFIG_RT_GROUP_SCHED is not set
CONFIG_UCLAMP_TASK_GROUP=y
CONFIG_CGROUP_PIDS=y
# CONFIG_CGROUP_RDMA is not set
CONFIG_CGROUP_FREEZER=y
CONFIG_CGROUP_HUGETLB=y
# CONFIG_CPUSETS is not set
CONFIG_CGROUP_DEVICE=y
# CONFIG_CGROUP_CPUACCT is not set
# CONFIG_CGROUP_PERF is not set
CONFIG_CGROUP_BPF=y
# CONFIG_CGROUP_DEBUG is not set
CONFIG_SOCK_CGROUP_DATA=y
CONFIG_NAMESPACES=y
# CONFIG_UTS_NS is not set
CONFIG_TIME_NS=y
CONFIG_IPC_NS=y
# CONFIG_USER_NS is not set
# CONFIG_PID_NS is not set
CONFIG_NET_NS=y
CONFIG_CHECKPOINT_RESTORE=y
CONFIG_SCHED_AUTOGROUP=y
# CONFIG_SYSFS_DEPRECATED is not set
CONFIG_RELAY=y
CONFIG_BLK_DEV_INITRD=y
CONFIG_INITRAMFS_SOURCE=""
CONFIG_RD_GZIP=y
# CONFIG_RD_BZIP2 is not set
# CONFIG_RD_LZMA is not set
CONFIG_RD_XZ=y
# CONFIG_RD_LZO is not set
# CONFIG_RD_LZ4 is not set
# CONFIG_BOOT_CONFIG is not set
CONFIG_CC_OPTIMIZE_FOR_PERFORMANCE=y
# CONFIG_CC_OPTIMIZE_FOR_SIZE is not set
CONFIG_SYSCTL=y
CONFIG_HAVE_UID16=y
CONFIG_SYSCTL_EXCEPTION_TRACE=y
CONFIG_HAVE_PCSPKR_PLATFORM=y
CONFIG_BPF=y
CONFIG_EXPERT=y
CONFIG_UID16=y
CONFIG_MULTIUSER=y
CONFIG_SGETMASK_SYSCALL=y
CONFIG_SYSFS_SYSCALL=y
CONFIG_FHANDLE=y
CONFIG_POSIX_TIMERS=y
CONFIG_PRINTK=y
CONFIG_PRINTK_NMI=y
CONFIG_BUG=y
CONFIG_ELF_CORE=y
CONFIG_PCSPKR_PLATFORM=y
CONFIG_BASE_FULL=y
CONFIG_FUTEX=y
CONFIG_FUTEX_PI=y
CONFIG_EPOLL=y
CONFIG_SIGNALFD=y
CONFIG_TIMERFD=y
CONFIG_EVENTFD=y
CONFIG_SHMEM=y
CONFIG_AIO=y
CONFIG_IO_URING=y
CONFIG_ADVISE_SYSCALLS=y
CONFIG_MEMBARRIER=y
CONFIG_KALLSYMS=y
CONFIG_KALLSYMS_ALL=y
CONFIG_KALLSYMS_BASE_RELATIVE=y
CONFIG_BPF_SYSCALL=y
CONFIG_USERFAULTFD=y
CONFIG_ARCH_HAS_MEMBARRIER_SYNC_CORE=y
CONFIG_RSEQ=y
# CONFIG_DEBUG_RSEQ is not set
CONFIG_EMBEDDED=y
CONFIG_HAVE_PERF_EVENTS=y
CONFIG_PERF_USE_VMALLOC=y
# CONFIG_PC104 is not set

#
# Kernel Performance Events And Counters
#
CONFIG_PERF_EVENTS=y
CONFIG_DEBUG_PERF_USE_VMALLOC=y
# end of Kernel Performance Events And Counters

CONFIG_VM_EVENT_COUNTERS=y
CONFIG_SLUB_DEBUG=y
# CONFIG_SLUB_MEMCG_SYSFS_ON is not set
# CONFIG_COMPAT_BRK is not set
# CONFIG_SLAB is not set
CONFIG_SLUB=y
# CONFIG_SLOB is not set
CONFIG_SLAB_MERGE_DEFAULT=y
# CONFIG_SLAB_FREELIST_RANDOM is not set
# CONFIG_SLAB_FREELIST_HARDENED is not set
CONFIG_SHUFFLE_PAGE_ALLOCATOR=y
CONFIG_SLUB_CPU_PARTIAL=y
CONFIG_SYSTEM_DATA_VERIFICATION=y
# CONFIG_PROFILING is not set
CONFIG_TRACEPOINTS=y
# end of General setup

CONFIG_X86_32=y
CONFIG_X86=y
CONFIG_INSTRUCTION_DECODER=y
CONFIG_OUTPUT_FORMAT="elf32-i386"
CONFIG_ARCH_DEFCONFIG="arch/x86/configs/i386_defconfig"
CONFIG_LOCKDEP_SUPPORT=y
CONFIG_STACKTRACE_SUPPORT=y
CONFIG_MMU=y
CONFIG_ARCH_MMAP_RND_BITS_MIN=8
CONFIG_ARCH_MMAP_RND_BITS_MAX=16
CONFIG_ARCH_MMAP_RND_COMPAT_BITS_MIN=8
CONFIG_ARCH_MMAP_RND_COMPAT_BITS_MAX=16
CONFIG_GENERIC_ISA_DMA=y
CONFIG_GENERIC_BUG=y
CONFIG_ARCH_MAY_HAVE_PC_FDC=y
CONFIG_GENERIC_CALIBRATE_DELAY=y
CONFIG_ARCH_HAS_CPU_RELAX=y
CONFIG_ARCH_HAS_CACHE_LINE_SIZE=y
CONFIG_ARCH_HAS_FILTER_PGPROT=y
CONFIG_HAVE_SETUP_PER_CPU_AREA=y
CONFIG_NEED_PER_CPU_EMBED_FIRST_CHUNK=y
CONFIG_NEED_PER_CPU_PAGE_FIRST_CHUNK=y
CONFIG_ARCH_HIBERNATION_POSSIBLE=y
CONFIG_ARCH_SUSPEND_POSSIBLE=y
CONFIG_ARCH_WANT_GENERAL_HUGETLB=y
CONFIG_ARCH_SUPPORTS_DEBUG_PAGEALLOC=y
CONFIG_X86_32_SMP=y
CONFIG_ARCH_SUPPORTS_UPROBES=y
CONFIG_FIX_EARLYCON_MEM=y
CONFIG_PGTABLE_LEVELS=3
CONFIG_CC_HAS_SANE_STACKPROTECTOR=y

#
# Processor type and features
#
CONFIG_ZONE_DMA=y
CONFIG_SMP=y
CONFIG_X86_FEATURE_NAMES=y
CONFIG_X86_MPPARSE=y
CONFIG_GOLDFISH=y
CONFIG_RETPOLINE=y
CONFIG_X86_CPU_RESCTRL=y
# CONFIG_X86_BIGSMP is not set
# CONFIG_X86_EXTENDED_PLATFORM is not set
# CONFIG_X86_INTEL_LPSS is not set
# CONFIG_X86_AMD_PLATFORM_DEVICE is not set
CONFIG_IOSF_MBI=y
# CONFIG_IOSF_MBI_DEBUG is not set
CONFIG_X86_32_IRIS=y
# CONFIG_SCHED_OMIT_FRAME_POINTER is not set
CONFIG_HYPERVISOR_GUEST=y
CONFIG_PARAVIRT=y
CONFIG_PARAVIRT_XXL=y
# CONFIG_PARAVIRT_DEBUG is not set
CONFIG_PARAVIRT_SPINLOCKS=y
CONFIG_X86_HV_CALLBACK_VECTOR=y
CONFIG_XEN=y
CONFIG_XEN_PV=y
CONFIG_XEN_PV_SMP=y
CONFIG_XEN_DOM0=y
# CONFIG_XEN_PVHVM is not set
CONFIG_XEN_SAVE_RESTORE=y
CONFIG_XEN_DEBUG_FS=y
CONFIG_KVM_GUEST=y
CONFIG_ARCH_CPUIDLE_HALTPOLL=y
# CONFIG_PVH is not set
# CONFIG_KVM_DEBUG_FS is not set
CONFIG_PARAVIRT_TIME_ACCOUNTING=y
CONFIG_PARAVIRT_CLOCK=y
# CONFIG_M486SX is not set
# CONFIG_M486 is not set
# CONFIG_M586 is not set
# CONFIG_M586TSC is not set
# CONFIG_M586MMX is not set
# CONFIG_M686 is not set
# CONFIG_MPENTIUMII is not set
# CONFIG_MPENTIUMIII is not set
# CONFIG_MPENTIUMM is not set
CONFIG_MPENTIUM4=y
# CONFIG_MK6 is not set
# CONFIG_MK7 is not set
# CONFIG_MK8 is not set
# CONFIG_MCRUSOE is not set
# CONFIG_MEFFICEON is not set
# CONFIG_MWINCHIPC6 is not set
# CONFIG_MWINCHIP3D is not set
# CONFIG_MELAN is not set
# CONFIG_MGEODEGX1 is not set
# CONFIG_MGEODE_LX is not set
# CONFIG_MCYRIXIII is not set
# CONFIG_MVIAC3_2 is not set
# CONFIG_MVIAC7 is not set
# CONFIG_MCORE2 is not set
# CONFIG_MATOM is not set
# CONFIG_X86_GENERIC is not set
CONFIG_X86_INTERNODE_CACHE_SHIFT=7
CONFIG_X86_L1_CACHE_SHIFT=7
CONFIG_X86_INTEL_USERCOPY=y
CONFIG_X86_USE_PPRO_CHECKSUM=y
CONFIG_X86_TSC=y
CONFIG_X86_CMPXCHG64=y
CONFIG_X86_CMOV=y
CONFIG_X86_MINIMUM_CPU_FAMILY=6
CONFIG_X86_DEBUGCTLMSR=y
CONFIG_IA32_FEAT_CTL=y
CONFIG_X86_VMX_FEATURE_NAMES=y
# CONFIG_PROCESSOR_SELECT is not set
CONFIG_CPU_SUP_INTEL=y
CONFIG_CPU_SUP_CYRIX_32=y
CONFIG_CPU_SUP_AMD=y
CONFIG_CPU_SUP_HYGON=y
CONFIG_CPU_SUP_CENTAUR=y
CONFIG_CPU_SUP_TRANSMETA_32=y
CONFIG_CPU_SUP_UMC_32=y
CONFIG_CPU_SUP_ZHAOXIN=y
CONFIG_HPET_TIMER=y
CONFIG_HPET_EMULATE_RTC=y
CONFIG_DMI=y
CONFIG_NR_CPUS_RANGE_BEGIN=2
CONFIG_NR_CPUS_RANGE_END=8
CONFIG_NR_CPUS_DEFAULT=8
CONFIG_NR_CPUS=8
CONFIG_SCHED_SMT=y
# CONFIG_SCHED_MC is not set
CONFIG_X86_LOCAL_APIC=y
CONFIG_X86_IO_APIC=y
# CONFIG_X86_REROUTE_FOR_BROKEN_BOOT_IRQS is not set
# CONFIG_X86_MCE is not set

#
# Performance monitoring
#
CONFIG_PERF_EVENTS_INTEL_UNCORE=y
CONFIG_PERF_EVENTS_INTEL_RAPL=y
CONFIG_PERF_EVENTS_INTEL_CSTATE=y
# CONFIG_PERF_EVENTS_AMD_POWER is not set
# end of Performance monitoring

CONFIG_X86_LEGACY_VM86=y
CONFIG_VM86=y
CONFIG_X86_16BIT=y
CONFIG_X86_ESPFIX32=y
CONFIG_X86_IOPL_IOPERM=y
CONFIG_TOSHIBA=y
CONFIG_I8K=y
CONFIG_X86_REBOOTFIXUPS=y
CONFIG_MICROCODE=y
# CONFIG_MICROCODE_INTEL is not set
CONFIG_MICROCODE_AMD=y
CONFIG_MICROCODE_OLD_INTERFACE=y
# CONFIG_X86_MSR is not set
CONFIG_X86_CPUID=y
# CONFIG_NOHIGHMEM is not set
# CONFIG_HIGHMEM4G is not set
CONFIG_HIGHMEM64G=y
CONFIG_VMSPLIT_3G=y
# CONFIG_VMSPLIT_2G is not set
# CONFIG_VMSPLIT_1G is not set
CONFIG_PAGE_OFFSET=0xC0000000
CONFIG_HIGHMEM=y
CONFIG_X86_PAE=y
CONFIG_X86_CPA_STATISTICS=y
CONFIG_ARCH_FLATMEM_ENABLE=y
CONFIG_ARCH_SPARSEMEM_ENABLE=y
CONFIG_ARCH_SELECT_MEMORY_MODEL=y
CONFIG_ILLEGAL_POINTER_VALUE=0
CONFIG_X86_PMEM_LEGACY_DEVICE=y
CONFIG_X86_PMEM_LEGACY=y
CONFIG_HIGHPTE=y
CONFIG_X86_CHECK_BIOS_CORRUPTION=y
CONFIG_X86_BOOTPARAM_MEMORY_CORRUPTION_CHECK=y
CONFIG_X86_RESERVE_LOW=64
CONFIG_MTRR=y
# CONFIG_MTRR_SANITIZER is not set
CONFIG_X86_PAT=y
CONFIG_ARCH_USES_PG_UNCACHED=y
CONFIG_ARCH_RANDOM=y
CONFIG_X86_SMAP=y
CONFIG_X86_UMIP=y
CONFIG_X86_INTEL_TSX_MODE_OFF=y
# CONFIG_X86_INTEL_TSX_MODE_ON is not set
# CONFIG_X86_INTEL_TSX_MODE_AUTO is not set
CONFIG_EFI=y
# CONFIG_EFI_STUB is not set
# CONFIG_SECCOMP is not set
# CONFIG_HZ_100 is not set
# CONFIG_HZ_250 is not set
CONFIG_HZ_300=y
# CONFIG_HZ_1000 is not set
CONFIG_HZ=300
CONFIG_KEXEC=y
CONFIG_CRASH_DUMP=y
CONFIG_KEXEC_JUMP=y
CONFIG_PHYSICAL_START=0x1000000
# CONFIG_RELOCATABLE is not set
CONFIG_PHYSICAL_ALIGN=0x200000
CONFIG_HOTPLUG_CPU=y
CONFIG_BOOTPARAM_HOTPLUG_CPU0=y
CONFIG_DEBUG_HOTPLUG_CPU0=y
CONFIG_COMPAT_VDSO=y
# CONFIG_CMDLINE_BOOL is not set
CONFIG_MODIFY_LDT_SYSCALL=y
# end of Processor type and features

CONFIG_ARCH_ENABLE_MEMORY_HOTPLUG=y
CONFIG_ARCH_ENABLE_SPLIT_PMD_PTLOCK=y

#
# Power management and ACPI options
#
CONFIG_ARCH_HIBERNATION_HEADER=y
CONFIG_SUSPEND=y
CONFIG_SUSPEND_FREEZER=y
# CONFIG_SUSPEND_SKIP_SYNC is not set
CONFIG_HIBERNATE_CALLBACKS=y
CONFIG_HIBERNATION=y
CONFIG_PM_STD_PARTITION=""
CONFIG_PM_SLEEP=y
CONFIG_PM_SLEEP_SMP=y
# CONFIG_PM_AUTOSLEEP is not set
CONFIG_PM_WAKELOCKS=y
CONFIG_PM_WAKELOCKS_LIMIT=100
CONFIG_PM_WAKELOCKS_GC=y
CONFIG_PM=y
# CONFIG_PM_DEBUG is not set
CONFIG_PM_CLK=y
CONFIG_WQ_POWER_EFFICIENT_DEFAULT=y
# CONFIG_ENERGY_MODEL is not set
CONFIG_ARCH_SUPPORTS_ACPI=y
CONFIG_ACPI=y
CONFIG_ACPI_LEGACY_TABLES_LOOKUP=y
CONFIG_ARCH_MIGHT_HAVE_ACPI_PDC=y
CONFIG_ACPI_SYSTEM_POWER_STATES_SUPPORT=y
# CONFIG_ACPI_DEBUGGER is not set
CONFIG_ACPI_SPCR_TABLE=y
CONFIG_ACPI_SLEEP=y
# CONFIG_ACPI_PROCFS_POWER is not set
CONFIG_ACPI_REV_OVERRIDE_POSSIBLE=y
# CONFIG_ACPI_EC_DEBUGFS is not set
CONFIG_ACPI_AC=y
CONFIG_ACPI_BATTERY=y
CONFIG_ACPI_BUTTON=y
CONFIG_ACPI_VIDEO=y
CONFIG_ACPI_FAN=y
# CONFIG_ACPI_TAD is not set
# CONFIG_ACPI_DOCK is not set
CONFIG_ACPI_CPU_FREQ_PSS=y
CONFIG_ACPI_PROCESSOR_CSTATE=y
CONFIG_ACPI_PROCESSOR_IDLE=y
CONFIG_ACPI_PROCESSOR=y
# CONFIG_ACPI_IPMI is not set
CONFIG_ACPI_HOTPLUG_CPU=y
# CONFIG_ACPI_PROCESSOR_AGGREGATOR is not set
CONFIG_ACPI_THERMAL=y
CONFIG_ARCH_HAS_ACPI_TABLE_UPGRADE=y
CONFIG_ACPI_TABLE_UPGRADE=y
# CONFIG_ACPI_DEBUG is not set
# CONFIG_ACPI_PCI_SLOT is not set
CONFIG_ACPI_CONTAINER=y
CONFIG_ACPI_HOTPLUG_IOAPIC=y
# CONFIG_ACPI_SBS is not set
# CONFIG_ACPI_HED is not set
# CONFIG_ACPI_CUSTOM_METHOD is not set
# CONFIG_ACPI_BGRT is not set
# CONFIG_ACPI_REDUCED_HARDWARE_ONLY is not set
CONFIG_HAVE_ACPI_APEI=y
CONFIG_HAVE_ACPI_APEI_NMI=y
# CONFIG_ACPI_APEI is not set
# CONFIG_DPTF_POWER is not set
# CONFIG_PMIC_OPREGION is not set
# CONFIG_ACPI_CONFIGFS is not set
CONFIG_X86_PM_TIMER=y
# CONFIG_SFI is not set
# CONFIG_APM is not set

#
# CPU Frequency scaling
#
CONFIG_CPU_FREQ=y
CONFIG_CPU_FREQ_GOV_ATTR_SET=y
CONFIG_CPU_FREQ_GOV_COMMON=y
# CONFIG_CPU_FREQ_STAT is not set
# CONFIG_CPU_FREQ_DEFAULT_GOV_PERFORMANCE is not set
# CONFIG_CPU_FREQ_DEFAULT_GOV_POWERSAVE is not set
# CONFIG_CPU_FREQ_DEFAULT_GOV_USERSPACE is not set
# CONFIG_CPU_FREQ_DEFAULT_GOV_ONDEMAND is not set
# CONFIG_CPU_FREQ_DEFAULT_GOV_CONSERVATIVE is not set
CONFIG_CPU_FREQ_DEFAULT_GOV_SCHEDUTIL=y
CONFIG_CPU_FREQ_GOV_PERFORMANCE=y
CONFIG_CPU_FREQ_GOV_POWERSAVE=y
CONFIG_CPU_FREQ_GOV_USERSPACE=y
# CONFIG_CPU_FREQ_GOV_ONDEMAND is not set
CONFIG_CPU_FREQ_GOV_CONSERVATIVE=y
CONFIG_CPU_FREQ_GOV_SCHEDUTIL=y

#
# CPU frequency scaling drivers
#
# CONFIG_X86_INTEL_PSTATE is not set
# CONFIG_X86_PCC_CPUFREQ is not set
# CONFIG_X86_ACPI_CPUFREQ is not set
CONFIG_X86_POWERNOW_K6=y
CONFIG_X86_POWERNOW_K7=y
CONFIG_X86_POWERNOW_K7_ACPI=y
# CONFIG_X86_GX_SUSPMOD is not set
CONFIG_X86_SPEEDSTEP_CENTRINO=y
CONFIG_X86_SPEEDSTEP_CENTRINO_TABLE=y
# CONFIG_X86_SPEEDSTEP_ICH is not set
CONFIG_X86_SPEEDSTEP_SMI=y
CONFIG_X86_P4_CLOCKMOD=y
CONFIG_X86_CPUFREQ_NFORCE2=y
CONFIG_X86_LONGRUN=y
# CONFIG_X86_LONGHAUL is not set
# CONFIG_X86_E_POWERSAVER is not set

#
# shared options
#
CONFIG_X86_SPEEDSTEP_LIB=y
CONFIG_X86_SPEEDSTEP_RELAXED_CAP_CHECK=y
# end of CPU Frequency scaling

#
# CPU Idle
#
CONFIG_CPU_IDLE=y
CONFIG_CPU_IDLE_GOV_LADDER=y
CONFIG_CPU_IDLE_GOV_MENU=y
CONFIG_CPU_IDLE_GOV_TEO=y
CONFIG_CPU_IDLE_GOV_HALTPOLL=y
CONFIG_HALTPOLL_CPUIDLE=y
# end of CPU Idle

# CONFIG_INTEL_IDLE is not set
# end of Power management and ACPI options

#
# Bus options (PCI etc.)
#
# CONFIG_PCI_GOBIOS is not set
# CONFIG_PCI_GOMMCONFIG is not set
CONFIG_PCI_GODIRECT=y
# CONFIG_PCI_GOANY is not set
CONFIG_PCI_DIRECT=y
CONFIG_PCI_XEN=y
# CONFIG_PCI_CNB20LE_QUIRK is not set
# CONFIG_ISA_BUS is not set
CONFIG_ISA_DMA_API=y
# CONFIG_ISA is not set
# CONFIG_SCx200 is not set
# CONFIG_ALIX is not set
CONFIG_NET5501=y
# CONFIG_GEOS is not set
CONFIG_AMD_NB=y
# CONFIG_X86_SYSFB is not set
# end of Bus options (PCI etc.)

#
# Binary Emulations
#
CONFIG_COMPAT_32=y
# end of Binary Emulations

CONFIG_HAVE_ATOMIC_IOMAP=y

#
# Firmware Drivers
#
CONFIG_EDD=y
# CONFIG_EDD_OFF is not set
CONFIG_FIRMWARE_MEMMAP=y
CONFIG_DMIID=y
CONFIG_DMI_SYSFS=y
CONFIG_DMI_SCAN_MACHINE_NON_EFI_FALLBACK=y
# CONFIG_FW_CFG_SYSFS is not set
# CONFIG_GOOGLE_FIRMWARE is not set

#
# EFI (Extensible Firmware Interface) Support
#
# CONFIG_EFI_VARS is not set
CONFIG_EFI_ESRT=y
CONFIG_EFI_RUNTIME_MAP=y
# CONFIG_EFI_FAKE_MEMMAP is not set
CONFIG_EFI_RUNTIME_WRAPPERS=y
CONFIG_EFI_CAPSULE_LOADER=y
CONFIG_EFI_CAPSULE_QUIRK_QUARK_CSH=y
# CONFIG_EFI_TEST is not set
# CONFIG_EFI_RCI2_TABLE is not set
# CONFIG_EFI_DISABLE_PCI_DMA is not set
# end of EFI (Extensible Firmware Interface) Support

CONFIG_EFI_EARLYCON=y

#
# Tegra firmware driver
#
# end of Tegra firmware driver
# end of Firmware Drivers

CONFIG_HAVE_KVM=y
# CONFIG_VIRTUALIZATION is not set

#
# General architecture-dependent options
#
CONFIG_CRASH_CORE=y
CONFIG_KEXEC_CORE=y
CONFIG_HOTPLUG_SMT=y
CONFIG_HAVE_OPROFILE=y
CONFIG_OPROFILE_NMI_TIMER=y
# CONFIG_KPROBES is not set
# CONFIG_JUMP_LABEL is not set
CONFIG_UPROBES=y
CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS=y
CONFIG_ARCH_USE_BUILTIN_BSWAP=y
CONFIG_HAVE_IOREMAP_PROT=y
CONFIG_HAVE_KPROBES=y
CONFIG_HAVE_KRETPROBES=y
CONFIG_HAVE_OPTPROBES=y
CONFIG_HAVE_KPROBES_ON_FTRACE=y
CONFIG_HAVE_FUNCTION_ERROR_INJECTION=y
CONFIG_HAVE_NMI=y
CONFIG_HAVE_ARCH_TRACEHOOK=y
CONFIG_HAVE_DMA_CONTIGUOUS=y
CONFIG_GENERIC_SMP_IDLE_THREAD=y
CONFIG_ARCH_HAS_FORTIFY_SOURCE=y
CONFIG_ARCH_HAS_SET_MEMORY=y
CONFIG_ARCH_HAS_SET_DIRECT_MAP=y
CONFIG_HAVE_ARCH_THREAD_STRUCT_WHITELIST=y
CONFIG_ARCH_WANTS_DYNAMIC_TASK_STRUCT=y
CONFIG_ARCH_32BIT_OFF_T=y
CONFIG_HAVE_ASM_MODVERSIONS=y
CONFIG_HAVE_REGS_AND_STACK_ACCESS_API=y
CONFIG_HAVE_RSEQ=y
CONFIG_HAVE_FUNCTION_ARG_ACCESS_API=y
CONFIG_HAVE_CLK=y
CONFIG_HAVE_HW_BREAKPOINT=y
CONFIG_HAVE_MIXED_BREAKPOINTS_REGS=y
CONFIG_HAVE_USER_RETURN_NOTIFIER=y
CONFIG_HAVE_PERF_EVENTS_NMI=y
CONFIG_HAVE_HARDLOCKUP_DETECTOR_PERF=y
CONFIG_HAVE_PERF_REGS=y
CONFIG_HAVE_PERF_USER_STACK_DUMP=y
CONFIG_HAVE_ARCH_JUMP_LABEL=y
CONFIG_HAVE_ARCH_JUMP_LABEL_RELATIVE=y
CONFIG_MMU_GATHER_TABLE_FREE=y
CONFIG_MMU_GATHER_RCU_TABLE_FREE=y
CONFIG_ARCH_HAVE_NMI_SAFE_CMPXCHG=y
CONFIG_HAVE_ALIGNED_STRUCT_PAGE=y
CONFIG_HAVE_CMPXCHG_LOCAL=y
CONFIG_HAVE_CMPXCHG_DOUBLE=y
CONFIG_ARCH_WANT_IPC_PARSE_VERSION=y
CONFIG_HAVE_ARCH_SECCOMP_FILTER=y
CONFIG_HAVE_ARCH_STACKLEAK=y
CONFIG_HAVE_STACKPROTECTOR=y
CONFIG_CC_HAS_STACKPROTECTOR_NONE=y
CONFIG_STACKPROTECTOR=y
CONFIG_STACKPROTECTOR_STRONG=y
CONFIG_HAVE_ARCH_WITHIN_STACK_FRAMES=y
CONFIG_HAVE_IRQ_TIME_ACCOUNTING=y
CONFIG_HAVE_MOVE_PMD=y
CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE=y
CONFIG_HAVE_ARCH_HUGE_VMAP=y
CONFIG_ARCH_WANT_HUGE_PMD_SHARE=y
CONFIG_HAVE_MOD_ARCH_SPECIFIC=y
CONFIG_MODULES_USE_ELF_REL=y
CONFIG_ARCH_HAS_ELF_RANDOMIZE=y
CONFIG_HAVE_ARCH_MMAP_RND_BITS=y
CONFIG_HAVE_EXIT_THREAD=y
CONFIG_ARCH_MMAP_RND_BITS=8
CONFIG_HAVE_COPY_THREAD_TLS=y
CONFIG_ISA_BUS_API=y
CONFIG_CLONE_BACKWARDS=y
CONFIG_OLD_SIGSUSPEND3=y
CONFIG_OLD_SIGACTION=y
CONFIG_COMPAT_32BIT_TIME=y
CONFIG_ARCH_HAS_STRICT_KERNEL_RWX=y
CONFIG_STRICT_KERNEL_RWX=y
CONFIG_ARCH_HAS_STRICT_MODULE_RWX=y
CONFIG_STRICT_MODULE_RWX=y
CONFIG_HAVE_ARCH_PREL32_RELOCATIONS=y
CONFIG_ARCH_USE_MEMREMAP_PROT=y
# CONFIG_LOCK_EVENT_COUNTS is not set
CONFIG_ARCH_HAS_MEM_ENCRYPT=y

#
# GCOV-based kernel profiling
#
CONFIG_GCOV_KERNEL=y
CONFIG_ARCH_HAS_GCOV_PROFILE_ALL=y
# CONFIG_GCOV_PROFILE_ALL is not set
CONFIG_GCOV_FORMAT_4_7=y
# end of GCOV-based kernel profiling

CONFIG_PLUGIN_HOSTCC="g++"
CONFIG_HAVE_GCC_PLUGINS=y
CONFIG_GCC_PLUGINS=y
# CONFIG_GCC_PLUGIN_CYC_COMPLEXITY is not set
# CONFIG_GCC_PLUGIN_LATENT_ENTROPY is not set
# CONFIG_GCC_PLUGIN_RANDSTRUCT is not set
# end of General architecture-dependent options

CONFIG_RT_MUTEXES=y
CONFIG_BASE_SMALL=0
CONFIG_MODULES=y
# CONFIG_MODULE_FORCE_LOAD is not set
# CONFIG_MODULE_UNLOAD is not set
# CONFIG_MODVERSIONS is not set
# CONFIG_MODULE_SRCVERSION_ALL is not set
# CONFIG_MODULE_SIG is not set
# CONFIG_MODULE_COMPRESS is not set
# CONFIG_MODULE_ALLOW_MISSING_NAMESPACE_IMPORTS is not set
CONFIG_UNUSED_SYMBOLS=y
CONFIG_MODULES_TREE_LOOKUP=y
CONFIG_BLOCK=y
CONFIG_BLK_SCSI_REQUEST=y
CONFIG_BLK_DEV_BSG=y
# CONFIG_BLK_DEV_BSGLIB is not set
CONFIG_BLK_DEV_INTEGRITY=y
CONFIG_BLK_DEV_INTEGRITY_T10=y
CONFIG_BLK_DEV_ZONED=y
# CONFIG_BLK_DEV_THROTTLING is not set
CONFIG_BLK_CMDLINE_PARSER=y
# CONFIG_BLK_WBT is not set
CONFIG_BLK_CGROUP_IOLATENCY=y
# CONFIG_BLK_CGROUP_IOCOST is not set
CONFIG_BLK_DEBUG_FS=y
CONFIG_BLK_DEBUG_FS_ZONED=y
# CONFIG_BLK_SED_OPAL is not set

#
# Partition Types
#
CONFIG_PARTITION_ADVANCED=y
CONFIG_ACORN_PARTITION=y
# CONFIG_ACORN_PARTITION_CUMANA is not set
CONFIG_ACORN_PARTITION_EESOX=y
CONFIG_ACORN_PARTITION_ICS=y
CONFIG_ACORN_PARTITION_ADFS=y
CONFIG_ACORN_PARTITION_POWERTEC=y
CONFIG_ACORN_PARTITION_RISCIX=y
# CONFIG_AIX_PARTITION is not set
CONFIG_OSF_PARTITION=y
CONFIG_AMIGA_PARTITION=y
CONFIG_ATARI_PARTITION=y
# CONFIG_MAC_PARTITION is not set
# CONFIG_MSDOS_PARTITION is not set
# CONFIG_LDM_PARTITION is not set
# CONFIG_SGI_PARTITION is not set
# CONFIG_ULTRIX_PARTITION is not set
CONFIG_SUN_PARTITION=y
CONFIG_KARMA_PARTITION=y
CONFIG_EFI_PARTITION=y
# CONFIG_SYSV68_PARTITION is not set
CONFIG_CMDLINE_PARTITION=y
# end of Partition Types

CONFIG_BLK_MQ_PCI=y
CONFIG_BLK_MQ_VIRTIO=y
CONFIG_BLK_PM=y

#
# IO Schedulers
#
CONFIG_MQ_IOSCHED_DEADLINE=y
CONFIG_MQ_IOSCHED_KYBER=y
# CONFIG_IOSCHED_BFQ is not set
# end of IO Schedulers

CONFIG_PADATA=y
CONFIG_ASN1=y
CONFIG_UNINLINE_SPIN_UNLOCK=y
CONFIG_ARCH_SUPPORTS_ATOMIC_RMW=y
CONFIG_MUTEX_SPIN_ON_OWNER=y
CONFIG_RWSEM_SPIN_ON_OWNER=y
CONFIG_LOCK_SPIN_ON_OWNER=y
CONFIG_ARCH_USE_QUEUED_SPINLOCKS=y
CONFIG_QUEUED_SPINLOCKS=y
CONFIG_ARCH_USE_QUEUED_RWLOCKS=y
CONFIG_QUEUED_RWLOCKS=y
CONFIG_ARCH_HAS_SYNC_CORE_BEFORE_USERMODE=y
CONFIG_FREEZER=y

#
# Executable file formats
#
CONFIG_BINFMT_ELF=y
CONFIG_ELFCORE=y
# CONFIG_CORE_DUMP_DEFAULT_ELF_HEADERS is not set
CONFIG_BINFMT_SCRIPT=y
# CONFIG_BINFMT_MISC is not set
CONFIG_COREDUMP=y
# end of Executable file formats

#
# Memory Management options
#
CONFIG_SELECT_MEMORY_MODEL=y
CONFIG_FLATMEM_MANUAL=y
# CONFIG_SPARSEMEM_MANUAL is not set
CONFIG_FLATMEM=y
CONFIG_FLAT_NODE_MEM_MAP=y
CONFIG_SPARSEMEM_STATIC=y
CONFIG_HAVE_MEMBLOCK_NODE_MAP=y
CONFIG_HAVE_FAST_GUP=y
CONFIG_MEMORY_ISOLATION=y
CONFIG_SPLIT_PTLOCK_CPUS=4
CONFIG_COMPACTION=y
CONFIG_MIGRATION=y
CONFIG_CONTIG_ALLOC=y
CONFIG_PHYS_ADDR_T_64BIT=y
CONFIG_BOUNCE=y
CONFIG_VIRT_TO_BUS=y
CONFIG_MMU_NOTIFIER=y
CONFIG_KSM=y
CONFIG_DEFAULT_MMAP_MIN_ADDR=4096
CONFIG_TRANSPARENT_HUGEPAGE=y
CONFIG_TRANSPARENT_HUGEPAGE_ALWAYS=y
# CONFIG_TRANSPARENT_HUGEPAGE_MADVISE is not set
CONFIG_TRANSPARENT_HUGE_PAGECACHE=y
CONFIG_CLEANCACHE=y
CONFIG_FRONTSWAP=y
CONFIG_CMA=y
# CONFIG_CMA_DEBUG is not set
CONFIG_CMA_DEBUGFS=y
CONFIG_CMA_AREAS=7
CONFIG_ZSWAP=y
CONFIG_ZPOOL=y
CONFIG_ZBUD=y
CONFIG_Z3FOLD=y
# CONFIG_ZSMALLOC is not set
CONFIG_GENERIC_EARLY_IOREMAP=y
CONFIG_IDLE_PAGE_TRACKING=y
CONFIG_FRAME_VECTOR=y
CONFIG_PERCPU_STATS=y
# CONFIG_GUP_BENCHMARK is not set
CONFIG_GUP_GET_PTE_LOW_HIGH=y
CONFIG_READ_ONLY_THP_FOR_FS=y
CONFIG_ARCH_HAS_PTE_SPECIAL=y
CONFIG_MAPPING_DIRTY_HELPERS=y
# end of Memory Management options

CONFIG_NET=y
CONFIG_SKB_EXTENSIONS=y

#
# Networking options
#
CONFIG_PACKET=y
CONFIG_PACKET_DIAG=y
CONFIG_UNIX=y
CONFIG_UNIX_SCM=y
CONFIG_UNIX_DIAG=y
CONFIG_TLS=y
# CONFIG_TLS_DEVICE is not set
# CONFIG_TLS_TOE is not set
CONFIG_XFRM=y
CONFIG_XFRM_ALGO=y
CONFIG_XFRM_USER=y
# CONFIG_XFRM_INTERFACE is not set
CONFIG_XFRM_SUB_POLICY=y
CONFIG_XFRM_MIGRATE=y
# CONFIG_XFRM_STATISTICS is not set
CONFIG_XFRM_IPCOMP=y
CONFIG_NET_KEY=y
CONFIG_NET_KEY_MIGRATE=y
CONFIG_XDP_SOCKETS=y
CONFIG_XDP_SOCKETS_DIAG=y
CONFIG_INET=y
CONFIG_IP_MULTICAST=y
CONFIG_IP_ADVANCED_ROUTER=y
# CONFIG_IP_FIB_TRIE_STATS is not set
CONFIG_IP_MULTIPLE_TABLES=y
# CONFIG_IP_ROUTE_MULTIPATH is not set
# CONFIG_IP_ROUTE_VERBOSE is not set
CONFIG_IP_PNP=y
CONFIG_IP_PNP_DHCP=y
# CONFIG_IP_PNP_BOOTP is not set
# CONFIG_IP_PNP_RARP is not set
CONFIG_NET_IPIP=y
# CONFIG_NET_IPGRE_DEMUX is not set
CONFIG_NET_IP_TUNNEL=y
CONFIG_IP_MROUTE_COMMON=y
CONFIG_IP_MROUTE=y
# CONFIG_IP_MROUTE_MULTIPLE_TABLES is not set
CONFIG_IP_PIMSM_V1=y
CONFIG_IP_PIMSM_V2=y
CONFIG_SYN_COOKIES=y
CONFIG_NET_IPVTI=y
CONFIG_NET_UDP_TUNNEL=y
CONFIG_NET_FOU=y
CONFIG_NET_FOU_IP_TUNNELS=y
CONFIG_INET_AH=y
CONFIG_INET_ESP=y
# CONFIG_INET_ESP_OFFLOAD is not set
# CONFIG_INET_ESPINTCP is not set
CONFIG_INET_IPCOMP=y
CONFIG_INET_XFRM_TUNNEL=y
CONFIG_INET_TUNNEL=y
CONFIG_INET_DIAG=y
CONFIG_INET_TCP_DIAG=y
CONFIG_INET_UDP_DIAG=y
CONFIG_INET_RAW_DIAG=y
CONFIG_INET_DIAG_DESTROY=y
CONFIG_TCP_CONG_ADVANCED=y
CONFIG_TCP_CONG_BIC=y
CONFIG_TCP_CONG_CUBIC=y
CONFIG_TCP_CONG_WESTWOOD=y
CONFIG_TCP_CONG_HTCP=y
CONFIG_TCP_CONG_HSTCP=y
CONFIG_TCP_CONG_HYBLA=y
# CONFIG_TCP_CONG_VEGAS is not set
# CONFIG_TCP_CONG_NV is not set
# CONFIG_TCP_CONG_SCALABLE is not set
CONFIG_TCP_CONG_LP=y
CONFIG_TCP_CONG_VENO=y
# CONFIG_TCP_CONG_YEAH is not set
# CONFIG_TCP_CONG_ILLINOIS is not set
# CONFIG_TCP_CONG_DCTCP is not set
CONFIG_TCP_CONG_CDG=y
# CONFIG_TCP_CONG_BBR is not set
# CONFIG_DEFAULT_BIC is not set
# CONFIG_DEFAULT_CUBIC is not set
CONFIG_DEFAULT_HTCP=y
# CONFIG_DEFAULT_HYBLA is not set
# CONFIG_DEFAULT_VENO is not set
# CONFIG_DEFAULT_WESTWOOD is not set
# CONFIG_DEFAULT_CDG is not set
# CONFIG_DEFAULT_RENO is not set
CONFIG_DEFAULT_TCP_CONG="htcp"
# CONFIG_TCP_MD5SIG is not set
CONFIG_IPV6=y
# CONFIG_IPV6_ROUTER_PREF is not set
# CONFIG_IPV6_OPTIMISTIC_DAD is not set
# CONFIG_INET6_AH is not set
# CONFIG_INET6_ESP is not set
# CONFIG_INET6_IPCOMP is not set
# CONFIG_IPV6_MIP6 is not set
# CONFIG_IPV6_ILA is not set
CONFIG_INET6_TUNNEL=y
# CONFIG_IPV6_VTI is not set
CONFIG_IPV6_SIT=y
# CONFIG_IPV6_SIT_6RD is not set
CONFIG_IPV6_NDISC_NODETYPE=y
CONFIG_IPV6_TUNNEL=y
CONFIG_IPV6_FOU=y
CONFIG_IPV6_FOU_TUNNEL=y
CONFIG_IPV6_MULTIPLE_TABLES=y
# CONFIG_IPV6_SUBTREES is not set
# CONFIG_IPV6_MROUTE is not set
CONFIG_IPV6_SEG6_LWTUNNEL=y
# CONFIG_IPV6_SEG6_HMAC is not set
CONFIG_IPV6_SEG6_BPF=y
CONFIG_MPTCP=y
CONFIG_MPTCP_IPV6=y
# CONFIG_MPTCP_HMAC_TEST is not set
CONFIG_NETWORK_SECMARK=y
CONFIG_NET_PTP_CLASSIFY=y
CONFIG_NETWORK_PHY_TIMESTAMPING=y
CONFIG_NETFILTER=y
CONFIG_NETFILTER_ADVANCED=y
CONFIG_BRIDGE_NETFILTER=y

#
# Core Netfilter Configuration
#
# CONFIG_NETFILTER_INGRESS is not set
CONFIG_NETFILTER_NETLINK=y
CONFIG_NETFILTER_FAMILY_BRIDGE=y
CONFIG_NETFILTER_FAMILY_ARP=y
CONFIG_NETFILTER_NETLINK_ACCT=y
CONFIG_NETFILTER_NETLINK_QUEUE=y
CONFIG_NETFILTER_NETLINK_LOG=y
# CONFIG_NETFILTER_NETLINK_OSF is not set
CONFIG_NF_CONNTRACK=y
CONFIG_NF_LOG_COMMON=y
# CONFIG_NF_LOG_NETDEV is not set
CONFIG_NF_CONNTRACK_MARK=y
CONFIG_NF_CONNTRACK_SECMARK=y
CONFIG_NF_CONNTRACK_ZONES=y
CONFIG_NF_CONNTRACK_PROCFS=y
CONFIG_NF_CONNTRACK_EVENTS=y
# CONFIG_NF_CONNTRACK_TIMEOUT is not set
# CONFIG_NF_CONNTRACK_TIMESTAMP is not set
CONFIG_NF_CONNTRACK_LABELS=y
# CONFIG_NF_CT_PROTO_DCCP is not set
CONFIG_NF_CT_PROTO_GRE=y
CONFIG_NF_CT_PROTO_SCTP=y
CONFIG_NF_CT_PROTO_UDPLITE=y
CONFIG_NF_CONNTRACK_AMANDA=y
# CONFIG_NF_CONNTRACK_FTP is not set
CONFIG_NF_CONNTRACK_H323=y
CONFIG_NF_CONNTRACK_IRC=y
CONFIG_NF_CONNTRACK_BROADCAST=y
CONFIG_NF_CONNTRACK_NETBIOS_NS=y
CONFIG_NF_CONNTRACK_SNMP=y
CONFIG_NF_CONNTRACK_PPTP=y
# CONFIG_NF_CONNTRACK_SANE is not set
CONFIG_NF_CONNTRACK_SIP=y
CONFIG_NF_CONNTRACK_TFTP=y
CONFIG_NF_CT_NETLINK=y
CONFIG_NF_CT_NETLINK_HELPER=y
CONFIG_NETFILTER_NETLINK_GLUE_CT=y
CONFIG_NF_NAT=y
CONFIG_NF_NAT_AMANDA=y
CONFIG_NF_NAT_IRC=y
CONFIG_NF_NAT_SIP=y
CONFIG_NF_NAT_TFTP=y
CONFIG_NF_NAT_REDIRECT=y
CONFIG_NETFILTER_SYNPROXY=y
# CONFIG_NF_TABLES is not set
CONFIG_NETFILTER_XTABLES=y

#
# Xtables combined modules
#
CONFIG_NETFILTER_XT_MARK=y
CONFIG_NETFILTER_XT_CONNMARK=y
# CONFIG_NETFILTER_XT_SET is not set

#
# Xtables targets
#
CONFIG_NETFILTER_XT_TARGET_CHECKSUM=y
CONFIG_NETFILTER_XT_TARGET_CLASSIFY=y
CONFIG_NETFILTER_XT_TARGET_CONNMARK=y
CONFIG_NETFILTER_XT_TARGET_CONNSECMARK=y
CONFIG_NETFILTER_XT_TARGET_DSCP=y
# CONFIG_NETFILTER_XT_TARGET_HL is not set
# CONFIG_NETFILTER_XT_TARGET_HMARK is not set
CONFIG_NETFILTER_XT_TARGET_IDLETIMER=y
CONFIG_NETFILTER_XT_TARGET_LED=y
CONFIG_NETFILTER_XT_TARGET_LOG=y
CONFIG_NETFILTER_XT_TARGET_MARK=y
CONFIG_NETFILTER_XT_NAT=y
CONFIG_NETFILTER_XT_TARGET_NETMAP=y
CONFIG_NETFILTER_XT_TARGET_NFLOG=y
CONFIG_NETFILTER_XT_TARGET_NFQUEUE=y
CONFIG_NETFILTER_XT_TARGET_RATEEST=y
CONFIG_NETFILTER_XT_TARGET_REDIRECT=y
# CONFIG_NETFILTER_XT_TARGET_MASQUERADE is not set
# CONFIG_NETFILTER_XT_TARGET_TEE is not set
CONFIG_NETFILTER_XT_TARGET_TPROXY=y
CONFIG_NETFILTER_XT_TARGET_SECMARK=y
CONFIG_NETFILTER_XT_TARGET_TCPMSS=y
# CONFIG_NETFILTER_XT_TARGET_TCPOPTSTRIP is not set

#
# Xtables matches
#
# CONFIG_NETFILTER_XT_MATCH_ADDRTYPE is not set
# CONFIG_NETFILTER_XT_MATCH_BPF is not set
# CONFIG_NETFILTER_XT_MATCH_CGROUP is not set
# CONFIG_NETFILTER_XT_MATCH_CLUSTER is not set
CONFIG_NETFILTER_XT_MATCH_COMMENT=y
CONFIG_NETFILTER_XT_MATCH_CONNBYTES=y
CONFIG_NETFILTER_XT_MATCH_CONNLABEL=y
# CONFIG_NETFILTER_XT_MATCH_CONNLIMIT is not set
CONFIG_NETFILTER_XT_MATCH_CONNMARK=y
# CONFIG_NETFILTER_XT_MATCH_CONNTRACK is not set
CONFIG_NETFILTER_XT_MATCH_CPU=y
# CONFIG_NETFILTER_XT_MATCH_DCCP is not set
CONFIG_NETFILTER_XT_MATCH_DEVGROUP=y
CONFIG_NETFILTER_XT_MATCH_DSCP=y
CONFIG_NETFILTER_XT_MATCH_ECN=y
CONFIG_NETFILTER_XT_MATCH_ESP=y
CONFIG_NETFILTER_XT_MATCH_HASHLIMIT=y
CONFIG_NETFILTER_XT_MATCH_HELPER=y
# CONFIG_NETFILTER_XT_MATCH_HL is not set
CONFIG_NETFILTER_XT_MATCH_IPCOMP=y
# CONFIG_NETFILTER_XT_MATCH_IPRANGE is not set
CONFIG_NETFILTER_XT_MATCH_IPVS=y
CONFIG_NETFILTER_XT_MATCH_L2TP=y
# CONFIG_NETFILTER_XT_MATCH_LENGTH is not set
CONFIG_NETFILTER_XT_MATCH_LIMIT=y
CONFIG_NETFILTER_XT_MATCH_MAC=y
CONFIG_NETFILTER_XT_MATCH_MARK=y
CONFIG_NETFILTER_XT_MATCH_MULTIPORT=y
CONFIG_NETFILTER_XT_MATCH_NFACCT=y
# CONFIG_NETFILTER_XT_MATCH_OSF is not set
CONFIG_NETFILTER_XT_MATCH_OWNER=y
CONFIG_NETFILTER_XT_MATCH_POLICY=y
# CONFIG_NETFILTER_XT_MATCH_PHYSDEV is not set
# CONFIG_NETFILTER_XT_MATCH_PKTTYPE is not set
# CONFIG_NETFILTER_XT_MATCH_QUOTA is not set
CONFIG_NETFILTER_XT_MATCH_RATEEST=y
# CONFIG_NETFILTER_XT_MATCH_REALM is not set
CONFIG_NETFILTER_XT_MATCH_RECENT=y
# CONFIG_NETFILTER_XT_MATCH_SCTP is not set
CONFIG_NETFILTER_XT_MATCH_SOCKET=y
CONFIG_NETFILTER_XT_MATCH_STATE=y
CONFIG_NETFILTER_XT_MATCH_STATISTIC=y
CONFIG_NETFILTER_XT_MATCH_STRING=y
CONFIG_NETFILTER_XT_MATCH_TCPMSS=y
# CONFIG_NETFILTER_XT_MATCH_TIME is not set
CONFIG_NETFILTER_XT_MATCH_U32=y
# end of Core Netfilter Configuration

CONFIG_IP_SET=y
CONFIG_IP_SET_MAX=256
CONFIG_IP_SET_BITMAP_IP=y
CONFIG_IP_SET_BITMAP_IPMAC=y
CONFIG_IP_SET_BITMAP_PORT=y
CONFIG_IP_SET_HASH_IP=y
# CONFIG_IP_SET_HASH_IPMARK is not set
# CONFIG_IP_SET_HASH_IPPORT is not set
CONFIG_IP_SET_HASH_IPPORTIP=y
CONFIG_IP_SET_HASH_IPPORTNET=y
# CONFIG_IP_SET_HASH_IPMAC is not set
CONFIG_IP_SET_HASH_MAC=y
CONFIG_IP_SET_HASH_NETPORTNET=y
CONFIG_IP_SET_HASH_NET=y
CONFIG_IP_SET_HASH_NETNET=y
# CONFIG_IP_SET_HASH_NETPORT is not set
CONFIG_IP_SET_HASH_NETIFACE=y
# CONFIG_IP_SET_LIST_SET is not set
CONFIG_IP_VS=y
# CONFIG_IP_VS_IPV6 is not set
CONFIG_IP_VS_DEBUG=y
CONFIG_IP_VS_TAB_BITS=12

#
# IPVS transport protocol load balancing support
#
# CONFIG_IP_VS_PROTO_TCP is not set
CONFIG_IP_VS_PROTO_UDP=y
CONFIG_IP_VS_PROTO_AH_ESP=y
CONFIG_IP_VS_PROTO_ESP=y
# CONFIG_IP_VS_PROTO_AH is not set
# CONFIG_IP_VS_PROTO_SCTP is not set

#
# IPVS scheduler
#
CONFIG_IP_VS_RR=y
# CONFIG_IP_VS_WRR is not set
CONFIG_IP_VS_LC=y
CONFIG_IP_VS_WLC=y
# CONFIG_IP_VS_FO is not set
# CONFIG_IP_VS_OVF is not set
CONFIG_IP_VS_LBLC=y
CONFIG_IP_VS_LBLCR=y
# CONFIG_IP_VS_DH is not set
# CONFIG_IP_VS_SH is not set
CONFIG_IP_VS_MH=y
CONFIG_IP_VS_SED=y
CONFIG_IP_VS_NQ=y

#
# IPVS SH scheduler
#
CONFIG_IP_VS_SH_TAB_BITS=8

#
# IPVS MH scheduler
#
CONFIG_IP_VS_MH_TAB_INDEX=12

#
# IPVS application helper
#
# CONFIG_IP_VS_NFCT is not set
CONFIG_IP_VS_PE_SIP=y

#
# IP: Netfilter Configuration
#
CONFIG_NF_DEFRAG_IPV4=y
CONFIG_NF_SOCKET_IPV4=y
CONFIG_NF_TPROXY_IPV4=y
CONFIG_NF_DUP_IPV4=y
# CONFIG_NF_LOG_ARP is not set
CONFIG_NF_LOG_IPV4=y
CONFIG_NF_REJECT_IPV4=y
CONFIG_NF_NAT_SNMP_BASIC=y
CONFIG_NF_NAT_PPTP=y
CONFIG_NF_NAT_H323=y
CONFIG_IP_NF_IPTABLES=y
# CONFIG_IP_NF_MATCH_AH is not set
CONFIG_IP_NF_MATCH_ECN=y
CONFIG_IP_NF_MATCH_RPFILTER=y
# CONFIG_IP_NF_MATCH_TTL is not set
# CONFIG_IP_NF_FILTER is not set
CONFIG_IP_NF_TARGET_SYNPROXY=y
CONFIG_IP_NF_NAT=y
# CONFIG_IP_NF_TARGET_MASQUERADE is not set
# CONFIG_IP_NF_TARGET_NETMAP is not set
CONFIG_IP_NF_TARGET_REDIRECT=y
CONFIG_IP_NF_MANGLE=y
CONFIG_IP_NF_TARGET_CLUSTERIP=y
CONFIG_IP_NF_TARGET_ECN=y
# CONFIG_IP_NF_TARGET_TTL is not set
# CONFIG_IP_NF_RAW is not set
# CONFIG_IP_NF_ARPTABLES is not set
# end of IP: Netfilter Configuration

#
# IPv6: Netfilter Configuration
#
# CONFIG_NF_SOCKET_IPV6 is not set
# CONFIG_NF_TPROXY_IPV6 is not set
# CONFIG_NF_DUP_IPV6 is not set
# CONFIG_NF_REJECT_IPV6 is not set
# CONFIG_NF_LOG_IPV6 is not set
# CONFIG_IP6_NF_IPTABLES is not set
# end of IPv6: Netfilter Configuration

CONFIG_NF_DEFRAG_IPV6=y
# CONFIG_NF_CONNTRACK_BRIDGE is not set
# CONFIG_BRIDGE_NF_EBTABLES is not set
# CONFIG_BPFILTER is not set
# CONFIG_IP_DCCP is not set
CONFIG_IP_SCTP=y
CONFIG_SCTP_DBG_OBJCNT=y
# CONFIG_SCTP_DEFAULT_COOKIE_HMAC_MD5 is not set
# CONFIG_SCTP_DEFAULT_COOKIE_HMAC_SHA1 is not set
CONFIG_SCTP_DEFAULT_COOKIE_HMAC_NONE=y
# CONFIG_SCTP_COOKIE_HMAC_MD5 is not set
# CONFIG_SCTP_COOKIE_HMAC_SHA1 is not set
CONFIG_INET_SCTP_DIAG=y
# CONFIG_RDS is not set
CONFIG_TIPC=y
# CONFIG_TIPC_MEDIA_UDP is not set
CONFIG_TIPC_CRYPTO=y
# CONFIG_TIPC_DIAG is not set
# CONFIG_ATM is not set
# CONFIG_L2TP is not set
CONFIG_STP=y
CONFIG_GARP=y
CONFIG_BRIDGE=y
# CONFIG_BRIDGE_IGMP_SNOOPING is not set
# CONFIG_BRIDGE_VLAN_FILTERING is not set
CONFIG_HAVE_NET_DSA=y
# CONFIG_NET_DSA is not set
CONFIG_VLAN_8021Q=y
CONFIG_VLAN_8021Q_GVRP=y
# CONFIG_VLAN_8021Q_MVRP is not set
# CONFIG_DECNET is not set
CONFIG_LLC=y
CONFIG_LLC2=y
CONFIG_ATALK=y
CONFIG_DEV_APPLETALK=y
CONFIG_IPDDP=y
CONFIG_IPDDP_ENCAP=y
# CONFIG_X25 is not set
CONFIG_LAPB=y
CONFIG_PHONET=y
# CONFIG_6LOWPAN is not set
CONFIG_IEEE802154=y
# CONFIG_IEEE802154_NL802154_EXPERIMENTAL is not set
CONFIG_IEEE802154_SOCKET=y
# CONFIG_MAC802154 is not set
CONFIG_NET_SCHED=y

#
# Queueing/Scheduling
#
# CONFIG_NET_SCH_CBQ is not set
CONFIG_NET_SCH_HTB=y
CONFIG_NET_SCH_HFSC=y
CONFIG_NET_SCH_PRIO=y
# CONFIG_NET_SCH_MULTIQ is not set
# CONFIG_NET_SCH_RED is not set
CONFIG_NET_SCH_SFB=y
CONFIG_NET_SCH_SFQ=y
# CONFIG_NET_SCH_TEQL is not set
CONFIG_NET_SCH_TBF=y
CONFIG_NET_SCH_CBS=y
# CONFIG_NET_SCH_ETF is not set
# CONFIG_NET_SCH_TAPRIO is not set
# CONFIG_NET_SCH_GRED is not set
# CONFIG_NET_SCH_DSMARK is not set
CONFIG_NET_SCH_NETEM=m
CONFIG_NET_SCH_DRR=y
# CONFIG_NET_SCH_MQPRIO is not set
CONFIG_NET_SCH_SKBPRIO=y
CONFIG_NET_SCH_CHOKE=y
CONFIG_NET_SCH_QFQ=y
# CONFIG_NET_SCH_CODEL is not set
# CONFIG_NET_SCH_FQ_CODEL is not set
# CONFIG_NET_SCH_CAKE is not set
# CONFIG_NET_SCH_FQ is not set
CONFIG_NET_SCH_HHF=y
CONFIG_NET_SCH_PIE=y
CONFIG_NET_SCH_FQ_PIE=y
# CONFIG_NET_SCH_PLUG is not set
CONFIG_NET_SCH_ETS=y
# CONFIG_NET_SCH_DEFAULT is not set

#
# Classification
#
CONFIG_NET_CLS=y
CONFIG_NET_CLS_BASIC=y
CONFIG_NET_CLS_TCINDEX=y
# CONFIG_NET_CLS_ROUTE4 is not set
CONFIG_NET_CLS_FW=y
CONFIG_NET_CLS_U32=y
# CONFIG_CLS_U32_PERF is not set
# CONFIG_CLS_U32_MARK is not set
CONFIG_NET_CLS_RSVP=y
# CONFIG_NET_CLS_RSVP6 is not set
CONFIG_NET_CLS_FLOW=y
CONFIG_NET_CLS_CGROUP=y
CONFIG_NET_CLS_BPF=m
# CONFIG_NET_CLS_FLOWER is not set
# CONFIG_NET_CLS_MATCHALL is not set
CONFIG_NET_EMATCH=y
CONFIG_NET_EMATCH_STACK=32
CONFIG_NET_EMATCH_CMP=y
CONFIG_NET_EMATCH_NBYTE=y
# CONFIG_NET_EMATCH_U32 is not set
# CONFIG_NET_EMATCH_META is not set
# CONFIG_NET_EMATCH_TEXT is not set
CONFIG_NET_EMATCH_CANID=y
# CONFIG_NET_EMATCH_IPSET is not set
CONFIG_NET_EMATCH_IPT=y
# CONFIG_NET_CLS_ACT is not set
CONFIG_NET_SCH_FIFO=y
CONFIG_DCB=y
CONFIG_DNS_RESOLVER=y
CONFIG_BATMAN_ADV=y
CONFIG_BATMAN_ADV_BATMAN_V=y
# CONFIG_BATMAN_ADV_BLA is not set
CONFIG_BATMAN_ADV_DAT=y
# CONFIG_BATMAN_ADV_NC is not set
# CONFIG_BATMAN_ADV_MCAST is not set
CONFIG_BATMAN_ADV_DEBUGFS=y
# CONFIG_BATMAN_ADV_DEBUG is not set
CONFIG_BATMAN_ADV_SYSFS=y
# CONFIG_BATMAN_ADV_TRACING is not set
# CONFIG_OPENVSWITCH is not set
CONFIG_VSOCKETS=y
CONFIG_VSOCKETS_DIAG=y
# CONFIG_VSOCKETS_LOOPBACK is not set
CONFIG_VMWARE_VMCI_VSOCKETS=y
CONFIG_VIRTIO_VSOCKETS=y
CONFIG_VIRTIO_VSOCKETS_COMMON=y
CONFIG_NETLINK_DIAG=y
# CONFIG_MPLS is not set
# CONFIG_NET_NSH is not set
# CONFIG_HSR is not set
# CONFIG_NET_SWITCHDEV is not set
CONFIG_NET_L3_MASTER_DEV=y
CONFIG_NET_NCSI=y
# CONFIG_NCSI_OEM_CMD_GET_MAC is not set
CONFIG_RPS=y
CONFIG_RFS_ACCEL=y
CONFIG_XPS=y
# CONFIG_CGROUP_NET_PRIO is not set
CONFIG_CGROUP_NET_CLASSID=y
CONFIG_NET_RX_BUSY_POLL=y
CONFIG_BQL=y
# CONFIG_BPF_JIT is not set
CONFIG_BPF_STREAM_PARSER=y
CONFIG_NET_FLOW_LIMIT=y

#
# Network testing
#
CONFIG_NET_PKTGEN=y
# CONFIG_NET_DROP_MONITOR is not set
# end of Network testing
# end of Networking options

# CONFIG_HAMRADIO is not set
CONFIG_CAN=y
CONFIG_CAN_RAW=y
# CONFIG_CAN_BCM is not set
# CONFIG_CAN_GW is not set
CONFIG_CAN_J1939=y

#
# CAN Device Drivers
#
CONFIG_CAN_VCAN=y
# CONFIG_CAN_VXCAN is not set
CONFIG_CAN_SLCAN=y
CONFIG_CAN_DEV=y
# CONFIG_CAN_CALC_BITTIMING is not set
# CONFIG_CAN_KVASER_PCIEFD is not set
CONFIG_PCH_CAN=y
# CONFIG_CAN_C_CAN is not set
# CONFIG_CAN_CC770 is not set
# CONFIG_CAN_IFI_CANFD is not set
CONFIG_CAN_M_CAN=y
CONFIG_CAN_M_CAN_PLATFORM=y
CONFIG_CAN_M_CAN_TCAN4X5X=y
CONFIG_CAN_PEAK_PCIEFD=y
# CONFIG_CAN_SJA1000 is not set
CONFIG_CAN_SOFTING=y
CONFIG_CAN_SOFTING_CS=y

#
# CAN SPI interfaces
#
CONFIG_CAN_HI311X=y
# CONFIG_CAN_MCP251X is not set
# end of CAN SPI interfaces

# CONFIG_CAN_DEBUG_DEVICES is not set
# end of CAN Device Drivers

CONFIG_BT=y
CONFIG_BT_BREDR=y
CONFIG_BT_RFCOMM=y
# CONFIG_BT_RFCOMM_TTY is not set
CONFIG_BT_BNEP=y
# CONFIG_BT_BNEP_MC_FILTER is not set
# CONFIG_BT_BNEP_PROTO_FILTER is not set
# CONFIG_BT_HIDP is not set
# CONFIG_BT_HS is not set
# CONFIG_BT_LE is not set
CONFIG_BT_LEDS=y
CONFIG_BT_SELFTEST=y
CONFIG_BT_DEBUGFS=y

#
# Bluetooth device drivers
#
CONFIG_BT_INTEL=y
CONFIG_BT_HCIBTSDIO=y
CONFIG_BT_HCIUART=y
CONFIG_BT_HCIUART_H4=y
CONFIG_BT_HCIUART_BCSP=y
CONFIG_BT_HCIUART_ATH3K=y
CONFIG_BT_HCIUART_INTEL=y
# CONFIG_BT_HCIUART_AG6XX is not set
# CONFIG_BT_HCIDTL1 is not set
CONFIG_BT_HCIBT3C=y
# CONFIG_BT_HCIBLUECARD is not set
CONFIG_BT_HCIVHCI=y
# CONFIG_BT_MRVL is not set
CONFIG_BT_MTKSDIO=y
# end of Bluetooth device drivers

# CONFIG_AF_RXRPC is not set
CONFIG_AF_KCM=y
CONFIG_STREAM_PARSER=y
CONFIG_FIB_RULES=y
CONFIG_WIRELESS=y
CONFIG_WIRELESS_EXT=y
CONFIG_WEXT_CORE=y
CONFIG_WEXT_PROC=y
CONFIG_WEXT_SPY=y
CONFIG_WEXT_PRIV=y
CONFIG_CFG80211=y
CONFIG_NL80211_TESTMODE=y
CONFIG_CFG80211_DEVELOPER_WARNINGS=y
# CONFIG_CFG80211_CERTIFICATION_ONUS is not set
CONFIG_CFG80211_REQUIRE_SIGNED_REGDB=y
CONFIG_CFG80211_USE_KERNEL_REGDB_KEYS=y
CONFIG_CFG80211_DEFAULT_PS=y
# CONFIG_CFG80211_DEBUGFS is not set
CONFIG_CFG80211_CRDA_SUPPORT=y
CONFIG_CFG80211_WEXT=y
CONFIG_CFG80211_WEXT_EXPORT=y
CONFIG_LIB80211=y
CONFIG_LIB80211_CRYPT_WEP=y
CONFIG_LIB80211_CRYPT_CCMP=y
CONFIG_LIB80211_CRYPT_TKIP=y
CONFIG_LIB80211_DEBUG=y
# CONFIG_MAC80211 is not set
CONFIG_MAC80211_STA_HASH_MAX_SIZE=0
# CONFIG_WIMAX is not set
# CONFIG_RFKILL is not set
CONFIG_NET_9P=y
CONFIG_NET_9P_VIRTIO=y
CONFIG_NET_9P_XEN=y
# CONFIG_NET_9P_DEBUG is not set
# CONFIG_CAIF is not set
CONFIG_CEPH_LIB=y
CONFIG_CEPH_LIB_PRETTYDEBUG=y
CONFIG_CEPH_LIB_USE_DNS_RESOLVER=y
CONFIG_NFC=y
CONFIG_NFC_DIGITAL=y
# CONFIG_NFC_NCI is not set
# CONFIG_NFC_HCI is not set

#
# Near Field Communication (NFC) devices
#
# CONFIG_NFC_TRF7970A is not set
CONFIG_NFC_SIM=y
CONFIG_NFC_PN533=y
CONFIG_NFC_PN533_I2C=y
CONFIG_NFC_ST95HF=y
# end of Near Field Communication (NFC) devices

CONFIG_PSAMPLE=y
# CONFIG_NET_IFE is not set
CONFIG_LWTUNNEL=y
# CONFIG_LWTUNNEL_BPF is not set
CONFIG_DST_CACHE=y
CONFIG_GRO_CELLS=y
CONFIG_NET_SOCK_MSG=y
CONFIG_NET_DEVLINK=y
CONFIG_FAILOVER=y
# CONFIG_ETHTOOL_NETLINK is not set
CONFIG_HAVE_EBPF_JIT=y

#
# Device Drivers
#
CONFIG_HAVE_EISA=y
# CONFIG_EISA is not set
CONFIG_HAVE_PCI=y
CONFIG_PCI=y
CONFIG_PCI_DOMAINS=y
# CONFIG_PCIEPORTBUS is not set
CONFIG_PCIEASPM=y
# CONFIG_PCIEASPM_DEFAULT is not set
# CONFIG_PCIEASPM_POWERSAVE is not set
# CONFIG_PCIEASPM_POWER_SUPERSAVE is not set
CONFIG_PCIEASPM_PERFORMANCE=y
CONFIG_PCIE_PTM=y
# CONFIG_PCI_MSI is not set
CONFIG_PCI_QUIRKS=y
# CONFIG_PCI_DEBUG is not set
CONFIG_PCI_REALLOC_ENABLE_AUTO=y
CONFIG_PCI_STUB=y
CONFIG_PCI_PF_STUB=y
CONFIG_XEN_PCIDEV_FRONTEND=y
CONFIG_PCI_ATS=y
CONFIG_PCI_LOCKLESS_CONFIG=y
CONFIG_PCI_IOV=y
# CONFIG_PCI_PRI is not set
# CONFIG_PCI_PASID is not set
CONFIG_PCI_LABEL=y
CONFIG_HOTPLUG_PCI=y
# CONFIG_HOTPLUG_PCI_ACPI is not set
CONFIG_HOTPLUG_PCI_CPCI=y
CONFIG_HOTPLUG_PCI_CPCI_ZT5550=y
# CONFIG_HOTPLUG_PCI_CPCI_GENERIC is not set
# CONFIG_HOTPLUG_PCI_SHPC is not set

#
# PCI controller drivers
#

#
# DesignWare PCI Core Support
#
# end of DesignWare PCI Core Support

#
# Cadence PCIe controllers support
#
# end of Cadence PCIe controllers support
# end of PCI controller drivers

#
# PCI Endpoint
#
# CONFIG_PCI_ENDPOINT is not set
# end of PCI Endpoint

#
# PCI switch controller drivers
#
CONFIG_PCI_SW_SWITCHTEC=y
# end of PCI switch controller drivers

CONFIG_PCCARD=y
CONFIG_PCMCIA=y
CONFIG_PCMCIA_LOAD_CIS=y
CONFIG_CARDBUS=y

#
# PC-card bridges
#
CONFIG_YENTA=y
CONFIG_YENTA_O2=y
CONFIG_YENTA_RICOH=y
CONFIG_YENTA_TI=y
CONFIG_YENTA_ENE_TUNE=y
CONFIG_YENTA_TOSHIBA=y
CONFIG_PD6729=y
# CONFIG_I82092 is not set
CONFIG_PCCARD_NONSTATIC=y
CONFIG_RAPIDIO=y
CONFIG_RAPIDIO_DISC_TIMEOUT=30
CONFIG_RAPIDIO_ENABLE_RX_TX_PORTS=y
CONFIG_RAPIDIO_DMA_ENGINE=y
# CONFIG_RAPIDIO_DEBUG is not set
CONFIG_RAPIDIO_ENUM_BASIC=y
CONFIG_RAPIDIO_CHMAN=y
# CONFIG_RAPIDIO_MPORT_CDEV is not set

#
# RapidIO Switch drivers
#
CONFIG_RAPIDIO_TSI57X=y
CONFIG_RAPIDIO_CPS_XX=y
# CONFIG_RAPIDIO_TSI568 is not set
# CONFIG_RAPIDIO_CPS_GEN2 is not set
CONFIG_RAPIDIO_RXS_GEN3=y
# end of RapidIO Switch drivers

#
# Generic Driver Options
#
# CONFIG_UEVENT_HELPER is not set
CONFIG_DEVTMPFS=y
CONFIG_DEVTMPFS_MOUNT=y
CONFIG_STANDALONE=y
CONFIG_PREVENT_FIRMWARE_BUILD=y

#
# Firmware loader
#
CONFIG_FW_LOADER=y
CONFIG_FW_LOADER_PAGED_BUF=y
CONFIG_EXTRA_FIRMWARE=""
CONFIG_FW_LOADER_USER_HELPER=y
CONFIG_FW_LOADER_USER_HELPER_FALLBACK=y
CONFIG_FW_LOADER_COMPRESS=y
CONFIG_FW_CACHE=y
# end of Firmware loader

CONFIG_WANT_DEV_COREDUMP=y
CONFIG_ALLOW_DEV_COREDUMP=y
CONFIG_DEV_COREDUMP=y
# CONFIG_DEBUG_DRIVER is not set
CONFIG_DEBUG_DEVRES=y
CONFIG_DEBUG_TEST_DRIVER_REMOVE=y
# CONFIG_TEST_ASYNC_DRIVER_PROBE is not set
CONFIG_GENERIC_CPU_AUTOPROBE=y
CONFIG_GENERIC_CPU_VULNERABILITIES=y
CONFIG_REGMAP=y
CONFIG_REGMAP_I2C=y
CONFIG_REGMAP_SPI=y
CONFIG_REGMAP_W1=y
CONFIG_REGMAP_MMIO=y
CONFIG_REGMAP_IRQ=y
CONFIG_REGMAP_SCCB=y
CONFIG_DMA_SHARED_BUFFER=y
CONFIG_DMA_FENCE_TRACE=y
# end of Generic Driver Options

#
# Bus devices
#
# end of Bus devices

CONFIG_CONNECTOR=y
CONFIG_PROC_EVENTS=y
CONFIG_GNSS=y
# CONFIG_MTD is not set
# CONFIG_OF is not set
CONFIG_ARCH_MIGHT_HAVE_PC_PARPORT=y
CONFIG_PARPORT=y
CONFIG_PARPORT_PC=y
CONFIG_PARPORT_PC_FIFO=y
# CONFIG_PARPORT_PC_SUPERIO is not set
CONFIG_PARPORT_PC_PCMCIA=y
# CONFIG_PARPORT_AX88796 is not set
CONFIG_PARPORT_1284=y
CONFIG_PNP=y
CONFIG_PNP_DEBUG_MESSAGES=y

#
# Protocols
#
CONFIG_PNPACPI=y
CONFIG_BLK_DEV=y
CONFIG_BLK_DEV_NULL_BLK=y
CONFIG_BLK_DEV_NULL_BLK_FAULT_INJECTION=y
CONFIG_BLK_DEV_FD=y
CONFIG_CDROM=y
# CONFIG_PARIDE is not set
CONFIG_BLK_DEV_PCIESSD_MTIP32XX=y
CONFIG_BLK_DEV_UMEM=y
# CONFIG_BLK_DEV_LOOP is not set
# CONFIG_BLK_DEV_DRBD is not set
CONFIG_BLK_DEV_NBD=y
# CONFIG_BLK_DEV_SX8 is not set
CONFIG_BLK_DEV_RAM=y
CONFIG_BLK_DEV_RAM_COUNT=16
CONFIG_BLK_DEV_RAM_SIZE=4096
CONFIG_CDROM_PKTCDVD=y
CONFIG_CDROM_PKTCDVD_BUFFERS=8
# CONFIG_CDROM_PKTCDVD_WCACHE is not set
# CONFIG_ATA_OVER_ETH is not set
# CONFIG_XEN_BLKDEV_FRONTEND is not set
# CONFIG_XEN_BLKDEV_BACKEND is not set
CONFIG_VIRTIO_BLK=y
CONFIG_BLK_DEV_RBD=y
CONFIG_BLK_DEV_RSXX=y

#
# NVME Support
#
CONFIG_NVME_CORE=y
CONFIG_BLK_DEV_NVME=y
CONFIG_NVME_MULTIPATH=y
CONFIG_NVME_HWMON=y
CONFIG_NVME_FABRICS=y
CONFIG_NVME_FC=y
CONFIG_NVME_TCP=y
CONFIG_NVME_TARGET=y
# CONFIG_NVME_TARGET_LOOP is not set
CONFIG_NVME_TARGET_FC=y
CONFIG_NVME_TARGET_FCLOOP=y
CONFIG_NVME_TARGET_TCP=y
# end of NVME Support

#
# Misc devices
#
CONFIG_SENSORS_LIS3LV02D=y
CONFIG_AD525X_DPOT=y
# CONFIG_AD525X_DPOT_I2C is not set
CONFIG_AD525X_DPOT_SPI=y
# CONFIG_DUMMY_IRQ is not set
# CONFIG_IBM_ASM is not set
CONFIG_PHANTOM=y
CONFIG_TIFM_CORE=y
CONFIG_TIFM_7XX1=y
# CONFIG_ICS932S401 is not set
# CONFIG_ENCLOSURE_SERVICES is not set
# CONFIG_CS5535_MFGPT is not set
# CONFIG_HP_ILO is not set
CONFIG_APDS9802ALS=y
CONFIG_ISL29003=y
CONFIG_ISL29020=y
CONFIG_SENSORS_TSL2550=y
CONFIG_SENSORS_BH1770=y
# CONFIG_SENSORS_APDS990X is not set
# CONFIG_HMC6352 is not set
CONFIG_DS1682=y
# CONFIG_VMWARE_BALLOON is not set
CONFIG_PCH_PHUB=y
CONFIG_LATTICE_ECP3_CONFIG=y
# CONFIG_SRAM is not set
CONFIG_PCI_ENDPOINT_TEST=y
CONFIG_XILINX_SDFEC=y
CONFIG_MISC_RTSX=y
# CONFIG_PVPANIC is not set
# CONFIG_C2PORT is not set

#
# EEPROM support
#
# CONFIG_EEPROM_AT24 is not set
CONFIG_EEPROM_AT25=y
CONFIG_EEPROM_LEGACY=y
CONFIG_EEPROM_MAX6875=y
# CONFIG_EEPROM_93CX6 is not set
CONFIG_EEPROM_93XX46=y
# CONFIG_EEPROM_IDT_89HPESX is not set
CONFIG_EEPROM_EE1004=y
# end of EEPROM support

CONFIG_CB710_CORE=y
CONFIG_CB710_DEBUG=y
CONFIG_CB710_DEBUG_ASSUMPTIONS=y

#
# Texas Instruments shared transport line discipline
#
# CONFIG_TI_ST is not set
# end of Texas Instruments shared transport line discipline

CONFIG_SENSORS_LIS3_I2C=y
CONFIG_ALTERA_STAPL=y
CONFIG_INTEL_MEI=y
# CONFIG_INTEL_MEI_ME is not set
CONFIG_INTEL_MEI_TXE=y
CONFIG_VMWARE_VMCI=y

#
# Intel MIC & related support
#
CONFIG_VOP_BUS=y
CONFIG_VOP=y
CONFIG_VHOST_RING=y
# end of Intel MIC & related support

# CONFIG_ECHO is not set
CONFIG_MISC_ALCOR_PCI=y
CONFIG_MISC_RTSX_PCI=y
CONFIG_HABANA_AI=y
# end of Misc devices

CONFIG_HAVE_IDE=y
CONFIG_IDE=y

#
# Please see Documentation/ide/ide.rst for help/info on IDE drives
#
CONFIG_IDE_XFER_MODE=y
CONFIG_IDE_TIMINGS=y
CONFIG_IDE_ATAPI=y
CONFIG_BLK_DEV_IDE_SATA=y
CONFIG_IDE_GD=y
# CONFIG_IDE_GD_ATA is not set
CONFIG_IDE_GD_ATAPI=y
CONFIG_BLK_DEV_IDECS=y
# CONFIG_BLK_DEV_DELKIN is not set
# CONFIG_BLK_DEV_IDECD is not set
CONFIG_BLK_DEV_IDETAPE=y
# CONFIG_BLK_DEV_IDEACPI is not set
# CONFIG_IDE_TASK_IOCTL is not set
# CONFIG_IDE_PROC_FS is not set

#
# IDE chipset support/bugfixes
#
CONFIG_IDE_GENERIC=y
CONFIG_BLK_DEV_PLATFORM=y
CONFIG_BLK_DEV_CMD640=y
# CONFIG_BLK_DEV_CMD640_ENHANCED is not set
# CONFIG_BLK_DEV_IDEPNP is not set
CONFIG_BLK_DEV_IDEDMA_SFF=y

#
# PCI IDE chipsets support
#
CONFIG_BLK_DEV_IDEPCI=y
CONFIG_IDEPCI_PCIBUS_ORDER=y
# CONFIG_BLK_DEV_OFFBOARD is not set
CONFIG_BLK_DEV_GENERIC=y
CONFIG_BLK_DEV_OPTI621=y
# CONFIG_BLK_DEV_RZ1000 is not set
CONFIG_BLK_DEV_IDEDMA_PCI=y
CONFIG_BLK_DEV_AEC62XX=y
# CONFIG_BLK_DEV_ALI15X3 is not set
CONFIG_BLK_DEV_AMD74XX=y
CONFIG_BLK_DEV_ATIIXP=y
CONFIG_BLK_DEV_CMD64X=y
CONFIG_BLK_DEV_TRIFLEX=y
# CONFIG_BLK_DEV_CS5520 is not set
# CONFIG_BLK_DEV_CS5530 is not set
CONFIG_BLK_DEV_CS5535=y
CONFIG_BLK_DEV_CS5536=y
CONFIG_BLK_DEV_HPT366=y
CONFIG_BLK_DEV_JMICRON=y
CONFIG_BLK_DEV_SC1200=y
CONFIG_BLK_DEV_PIIX=y
# CONFIG_BLK_DEV_IT8172 is not set
CONFIG_BLK_DEV_IT8213=y
# CONFIG_BLK_DEV_IT821X is not set
CONFIG_BLK_DEV_NS87415=y
CONFIG_BLK_DEV_PDC202XX_OLD=y
# CONFIG_BLK_DEV_PDC202XX_NEW is not set
CONFIG_BLK_DEV_SVWKS=y
# CONFIG_BLK_DEV_SIIMAGE is not set
# CONFIG_BLK_DEV_SIS5513 is not set
CONFIG_BLK_DEV_SLC90E66=y
# CONFIG_BLK_DEV_TRM290 is not set
CONFIG_BLK_DEV_VIA82CXXX=y
CONFIG_BLK_DEV_TC86C001=y
CONFIG_BLK_DEV_IDEDMA=y

#
# SCSI device support
#
CONFIG_SCSI_MOD=y
CONFIG_RAID_ATTRS=y
# CONFIG_SCSI is not set
# end of SCSI device support

# CONFIG_ATA is not set
CONFIG_MD=y
CONFIG_BLK_DEV_MD=y
# CONFIG_MD_AUTODETECT is not set
CONFIG_MD_LINEAR=y
CONFIG_MD_RAID0=y
CONFIG_MD_RAID1=y
CONFIG_MD_RAID10=y
CONFIG_MD_RAID456=y
CONFIG_MD_MULTIPATH=y
# CONFIG_MD_FAULTY is not set
CONFIG_MD_CLUSTER=y
# CONFIG_BCACHE is not set
CONFIG_BLK_DEV_DM_BUILTIN=y
CONFIG_BLK_DEV_DM=y
CONFIG_DM_DEBUG=y
CONFIG_DM_BUFIO=y
# CONFIG_DM_DEBUG_BLOCK_MANAGER_LOCKING is not set
CONFIG_DM_BIO_PRISON=y
CONFIG_DM_PERSISTENT_DATA=y
CONFIG_DM_UNSTRIPED=y
# CONFIG_DM_CRYPT is not set
CONFIG_DM_SNAPSHOT=y
# CONFIG_DM_THIN_PROVISIONING is not set
CONFIG_DM_CACHE=y
CONFIG_DM_CACHE_SMQ=y
CONFIG_DM_WRITECACHE=y
# CONFIG_DM_ERA is not set
# CONFIG_DM_CLONE is not set
# CONFIG_DM_MIRROR is not set
CONFIG_DM_RAID=y
# CONFIG_DM_ZERO is not set
# CONFIG_DM_MULTIPATH is not set
CONFIG_DM_DELAY=y
# CONFIG_DM_DUST is not set
# CONFIG_DM_INIT is not set
CONFIG_DM_UEVENT=y
# CONFIG_DM_FLAKEY is not set
# CONFIG_DM_VERITY is not set
# CONFIG_DM_SWITCH is not set
CONFIG_DM_LOG_WRITES=y
CONFIG_DM_INTEGRITY=y
# CONFIG_DM_ZONED is not set
CONFIG_TARGET_CORE=y
# CONFIG_TCM_IBLOCK is not set
# CONFIG_TCM_FILEIO is not set
# CONFIG_TCM_USER2 is not set
CONFIG_ISCSI_TARGET=y
# CONFIG_SBP_TARGET is not set
# CONFIG_FUSION is not set

#
# IEEE 1394 (FireWire) support
#
CONFIG_FIREWIRE=y
CONFIG_FIREWIRE_OHCI=y
# CONFIG_FIREWIRE_NET is not set
CONFIG_FIREWIRE_NOSY=y
# end of IEEE 1394 (FireWire) support

# CONFIG_MACINTOSH_DRIVERS is not set
CONFIG_NETDEVICES=y
# CONFIG_NET_CORE is not set
# CONFIG_ARCNET is not set

#
# Distributed Switch Architecture drivers
#
# end of Distributed Switch Architecture drivers

CONFIG_ETHERNET=y
CONFIG_NET_VENDOR_3COM=y
# CONFIG_PCMCIA_3C574 is not set
# CONFIG_PCMCIA_3C589 is not set
# CONFIG_VORTEX is not set
# CONFIG_TYPHOON is not set
CONFIG_NET_VENDOR_ADAPTEC=y
# CONFIG_ADAPTEC_STARFIRE is not set
CONFIG_NET_VENDOR_AGERE=y
# CONFIG_ET131X is not set
CONFIG_NET_VENDOR_ALACRITECH=y
# CONFIG_SLICOSS is not set
CONFIG_NET_VENDOR_ALTEON=y
# CONFIG_ACENIC is not set
# CONFIG_ALTERA_TSE is not set
CONFIG_NET_VENDOR_AMAZON=y
CONFIG_NET_VENDOR_AMD=y
# CONFIG_AMD8111_ETH is not set
# CONFIG_PCNET32 is not set
# CONFIG_PCMCIA_NMCLAN is not set
# CONFIG_AMD_XGBE is not set
CONFIG_NET_VENDOR_AQUANTIA=y
CONFIG_NET_VENDOR_ARC=y
CONFIG_NET_VENDOR_ATHEROS=y
# CONFIG_ATL2 is not set
# CONFIG_ATL1 is not set
# CONFIG_ATL1E is not set
# CONFIG_ATL1C is not set
# CONFIG_ALX is not set
CONFIG_NET_VENDOR_AURORA=y
# CONFIG_AURORA_NB8800 is not set
CONFIG_NET_VENDOR_BROADCOM=y
# CONFIG_B44 is not set
# CONFIG_BCMGENET is not set
# CONFIG_BNX2 is not set
# CONFIG_CNIC is not set
# CONFIG_TIGON3 is not set
# CONFIG_BNX2X is not set
# CONFIG_SYSTEMPORT is not set
# CONFIG_BNXT is not set
CONFIG_NET_VENDOR_BROCADE=y
# CONFIG_BNA is not set
CONFIG_NET_VENDOR_CADENCE=y
# CONFIG_MACB is not set
CONFIG_NET_VENDOR_CAVIUM=y
CONFIG_NET_VENDOR_CHELSIO=y
# CONFIG_CHELSIO_T1 is not set
# CONFIG_CHELSIO_T3 is not set
# CONFIG_CHELSIO_T4 is not set
# CONFIG_CHELSIO_T4VF is not set
CONFIG_NET_VENDOR_CISCO=y
# CONFIG_ENIC is not set
CONFIG_NET_VENDOR_CORTINA=y
# CONFIG_CX_ECAT is not set
# CONFIG_DNET is not set
CONFIG_NET_VENDOR_DEC=y
# CONFIG_NET_TULIP is not set
CONFIG_NET_VENDOR_DLINK=y
# CONFIG_DL2K is not set
# CONFIG_SUNDANCE is not set
CONFIG_NET_VENDOR_EMULEX=y
# CONFIG_BE2NET is not set
CONFIG_NET_VENDOR_EZCHIP=y
CONFIG_NET_VENDOR_FUJITSU=y
# CONFIG_PCMCIA_FMVJ18X is not set
CONFIG_NET_VENDOR_GOOGLE=y
CONFIG_NET_VENDOR_HUAWEI=y
CONFIG_NET_VENDOR_I825XX=y
CONFIG_NET_VENDOR_INTEL=y
# CONFIG_E100 is not set
CONFIG_E1000=y
# CONFIG_E1000E is not set
# CONFIG_IGB is not set
# CONFIG_IGBVF is not set
# CONFIG_IXGB is not set
# CONFIG_IXGBE is not set
# CONFIG_I40E is not set
# CONFIG_IGC is not set
# CONFIG_JME is not set
CONFIG_NET_VENDOR_MARVELL=y
# CONFIG_MVMDIO is not set
# CONFIG_SKGE is not set
# CONFIG_SKY2 is not set
CONFIG_NET_VENDOR_MELLANOX=y
# CONFIG_MLX4_EN is not set
# CONFIG_MLX5_CORE is not set
# CONFIG_MLXSW_CORE is not set
# CONFIG_MLXFW is not set
CONFIG_NET_VENDOR_MICREL=y
# CONFIG_KS8842 is not set
# CONFIG_KS8851 is not set
# CONFIG_KS8851_MLL is not set
# CONFIG_KSZ884X_PCI is not set
CONFIG_NET_VENDOR_MICROCHIP=y
# CONFIG_ENC28J60 is not set
# CONFIG_ENCX24J600 is not set
# CONFIG_LAN743X is not set
CONFIG_NET_VENDOR_MICROSEMI=y
CONFIG_NET_VENDOR_MYRI=y
# CONFIG_MYRI10GE is not set
# CONFIG_FEALNX is not set
CONFIG_NET_VENDOR_NATSEMI=y
# CONFIG_NATSEMI is not set
# CONFIG_NS83820 is not set
CONFIG_NET_VENDOR_NETERION=y
# CONFIG_S2IO is not set
# CONFIG_VXGE is not set
CONFIG_NET_VENDOR_NETRONOME=y
CONFIG_NET_VENDOR_NI=y
# CONFIG_NI_XGE_MANAGEMENT_ENET is not set
CONFIG_NET_VENDOR_8390=y
# CONFIG_PCMCIA_AXNET is not set
# CONFIG_NE2K_PCI is not set
# CONFIG_PCMCIA_PCNET is not set
CONFIG_NET_VENDOR_NVIDIA=y
# CONFIG_FORCEDETH is not set
CONFIG_NET_VENDOR_OKI=y
# CONFIG_PCH_GBE is not set
# CONFIG_ETHOC is not set
CONFIG_NET_VENDOR_PACKET_ENGINES=y
# CONFIG_HAMACHI is not set
# CONFIG_YELLOWFIN is not set
CONFIG_NET_VENDOR_PENSANDO=y
CONFIG_NET_VENDOR_QLOGIC=y
# CONFIG_QLA3XXX is not set
# CONFIG_QLCNIC is not set
# CONFIG_NETXEN_NIC is not set
# CONFIG_QED is not set
CONFIG_NET_VENDOR_QUALCOMM=y
# CONFIG_QCOM_EMAC is not set
# CONFIG_RMNET is not set
CONFIG_NET_VENDOR_RDC=y
# CONFIG_R6040 is not set
CONFIG_NET_VENDOR_REALTEK=y
# CONFIG_ATP is not set
# CONFIG_8139CP is not set
# CONFIG_8139TOO is not set
# CONFIG_R8169 is not set
CONFIG_NET_VENDOR_RENESAS=y
CONFIG_NET_VENDOR_ROCKER=y
CONFIG_NET_VENDOR_SAMSUNG=y
# CONFIG_SXGBE_ETH is not set
CONFIG_NET_VENDOR_SEEQ=y
CONFIG_NET_VENDOR_SOLARFLARE=y
# CONFIG_SFC is not set
# CONFIG_SFC_FALCON is not set
CONFIG_NET_VENDOR_SILAN=y
# CONFIG_SC92031 is not set
CONFIG_NET_VENDOR_SIS=y
# CONFIG_SIS900 is not set
# CONFIG_SIS190 is not set
CONFIG_NET_VENDOR_SMSC=y
# CONFIG_PCMCIA_SMC91C92 is not set
# CONFIG_EPIC100 is not set
# CONFIG_SMSC911X is not set
# CONFIG_SMSC9420 is not set
CONFIG_NET_VENDOR_SOCIONEXT=y
CONFIG_NET_VENDOR_STMICRO=y
# CONFIG_STMMAC_ETH is not set
CONFIG_NET_VENDOR_SUN=y
# CONFIG_HAPPYMEAL is not set
# CONFIG_SUNGEM is not set
# CONFIG_CASSINI is not set
# CONFIG_NIU is not set
CONFIG_NET_VENDOR_SYNOPSYS=y
# CONFIG_DWC_XLGMAC is not set
CONFIG_NET_VENDOR_TEHUTI=y
# CONFIG_TEHUTI is not set
CONFIG_NET_VENDOR_TI=y
# CONFIG_TI_CPSW_PHY_SEL is not set
# CONFIG_TLAN is not set
CONFIG_NET_VENDOR_VIA=y
# CONFIG_VIA_RHINE is not set
# CONFIG_VIA_VELOCITY is not set
CONFIG_NET_VENDOR_WIZNET=y
# CONFIG_WIZNET_W5100 is not set
# CONFIG_WIZNET_W5300 is not set
CONFIG_NET_VENDOR_XILINX=y
# CONFIG_XILINX_AXI_EMAC is not set
# CONFIG_XILINX_LL_TEMAC is not set
CONFIG_NET_VENDOR_XIRCOM=y
# CONFIG_PCMCIA_XIRC2PS is not set
CONFIG_FDDI=y
CONFIG_DEFXX=y
# CONFIG_DEFXX_MMIO is not set
CONFIG_SKFP=y
# CONFIG_HIPPI is not set
# CONFIG_NET_SB1000 is not set
CONFIG_MDIO_DEVICE=y
CONFIG_MDIO_BUS=y
CONFIG_MDIO_BCM_UNIMAC=y
CONFIG_MDIO_BITBANG=y
# CONFIG_MDIO_GPIO is not set
# CONFIG_MDIO_MSCC_MIIM is not set
CONFIG_PHYLIB=y
CONFIG_LED_TRIGGER_PHY=y

#
# MII PHY device drivers
#
CONFIG_ADIN_PHY=y
# CONFIG_AMD_PHY is not set
# CONFIG_AQUANTIA_PHY is not set
CONFIG_AX88796B_PHY=y
CONFIG_BCM7XXX_PHY=y
CONFIG_BCM87XX_PHY=y
CONFIG_BCM_NET_PHYLIB=y
# CONFIG_BROADCOM_PHY is not set
# CONFIG_BCM84881_PHY is not set
CONFIG_CICADA_PHY=y
# CONFIG_CORTINA_PHY is not set
CONFIG_DAVICOM_PHY=y
CONFIG_DP83822_PHY=y
CONFIG_DP83TC811_PHY=y
CONFIG_DP83848_PHY=y
CONFIG_DP83867_PHY=y
# CONFIG_DP83869_PHY is not set
# CONFIG_FIXED_PHY is not set
CONFIG_ICPLUS_PHY=y
CONFIG_INTEL_XWAY_PHY=y
# CONFIG_LSI_ET1011C_PHY is not set
CONFIG_LXT_PHY=y
CONFIG_MARVELL_PHY=y
CONFIG_MARVELL_10G_PHY=y
CONFIG_MICREL_PHY=y
CONFIG_MICROCHIP_PHY=y
# CONFIG_MICROCHIP_T1_PHY is not set
CONFIG_MICROSEMI_PHY=y
CONFIG_NATIONAL_PHY=y
# CONFIG_NXP_TJA11XX_PHY is not set
CONFIG_AT803X_PHY=y
# CONFIG_QSEMI_PHY is not set
CONFIG_REALTEK_PHY=y
# CONFIG_RENESAS_PHY is not set
CONFIG_ROCKCHIP_PHY=y
CONFIG_SMSC_PHY=y
CONFIG_STE10XP=y
# CONFIG_TERANETICS_PHY is not set
# CONFIG_VITESSE_PHY is not set
CONFIG_XILINX_GMII2RGMII=y
# CONFIG_MICREL_KS8995MA is not set
# CONFIG_PLIP is not set
CONFIG_PPP=y
# CONFIG_PPP_BSDCOMP is not set
CONFIG_PPP_DEFLATE=y
# CONFIG_PPP_FILTER is not set
# CONFIG_PPP_MPPE is not set
# CONFIG_PPP_MULTILINK is not set
CONFIG_PPPOE=y
CONFIG_PPP_ASYNC=y
CONFIG_PPP_SYNC_TTY=y
CONFIG_SLIP=y
CONFIG_SLHC=y
CONFIG_SLIP_COMPRESSED=y
# CONFIG_SLIP_SMART is not set
CONFIG_SLIP_MODE_SLIP6=y

#
# Host-side USB support is needed for USB Network Adapter support
#
CONFIG_WLAN=y
# CONFIG_WIRELESS_WDS is not set
CONFIG_WLAN_VENDOR_ADMTEK=y
# CONFIG_WLAN_VENDOR_ATH is not set
# CONFIG_WLAN_VENDOR_ATMEL is not set
# CONFIG_WLAN_VENDOR_BROADCOM is not set
# CONFIG_WLAN_VENDOR_CISCO is not set
CONFIG_WLAN_VENDOR_INTEL=y
# CONFIG_IPW2100 is not set
CONFIG_IPW2200=y
CONFIG_IPW2200_MONITOR=y
# CONFIG_IPW2200_RADIOTAP is not set
# CONFIG_IPW2200_PROMISCUOUS is not set
CONFIG_IPW2200_QOS=y
# CONFIG_IPW2200_DEBUG is not set
CONFIG_LIBIPW=y
# CONFIG_LIBIPW_DEBUG is not set
CONFIG_IWLWIFI=y

#
# WARNING: iwlwifi is useless without IWLDVM or IWLMVM
#

#
# Debugging Options
#
CONFIG_IWLWIFI_DEBUG=y
# CONFIG_IWLWIFI_DEVICE_TRACING is not set
# end of Debugging Options

# CONFIG_WLAN_VENDOR_INTERSIL is not set
# CONFIG_WLAN_VENDOR_MARVELL is not set
# CONFIG_WLAN_VENDOR_MEDIATEK is not set
# CONFIG_WLAN_VENDOR_RALINK is not set
# CONFIG_WLAN_VENDOR_REALTEK is not set
CONFIG_WLAN_VENDOR_RSI=y
CONFIG_WLAN_VENDOR_ST=y
# CONFIG_WLAN_VENDOR_TI is not set
# CONFIG_WLAN_VENDOR_ZYDAS is not set
CONFIG_WLAN_VENDOR_QUANTENNA=y
# CONFIG_QTNFMAC_PCIE is not set
# CONFIG_PCMCIA_RAYCS is not set
CONFIG_PCMCIA_WL3501=y
CONFIG_VIRT_WIFI=y

#
# Enable WiMAX (Networking options) to see the WiMAX drivers
#
CONFIG_WAN=y
CONFIG_LANMEDIA=y
CONFIG_HDLC=y
CONFIG_HDLC_RAW=y
# CONFIG_HDLC_RAW_ETH is not set
# CONFIG_HDLC_CISCO is not set
CONFIG_HDLC_FR=y
CONFIG_HDLC_PPP=y
# CONFIG_HDLC_X25 is not set
CONFIG_PCI200SYN=y
CONFIG_WANXL=y
CONFIG_PC300TOO=y
# CONFIG_FARSYNC is not set
# CONFIG_DLCI is not set
# CONFIG_SBNI is not set
CONFIG_IEEE802154_DRIVERS=y
CONFIG_XEN_NETDEV_FRONTEND=y
# CONFIG_XEN_NETDEV_BACKEND is not set
# CONFIG_VMXNET3 is not set
# CONFIG_FUJITSU_ES is not set
CONFIG_USB4_NET=y
CONFIG_NETDEVSIM=y
CONFIG_NET_FAILOVER=y
# CONFIG_ISDN is not set
CONFIG_NVM=y
# CONFIG_NVM_PBLK is not set

#
# Input device support
#
CONFIG_INPUT=y
# CONFIG_INPUT_LEDS is not set
CONFIG_INPUT_FF_MEMLESS=y
CONFIG_INPUT_POLLDEV=y
CONFIG_INPUT_SPARSEKMAP=y
CONFIG_INPUT_MATRIXKMAP=y

#
# Userland interfaces
#
CONFIG_INPUT_MOUSEDEV=y
# CONFIG_INPUT_MOUSEDEV_PSAUX is not set
CONFIG_INPUT_MOUSEDEV_SCREEN_X=1024
CONFIG_INPUT_MOUSEDEV_SCREEN_Y=768
CONFIG_INPUT_JOYDEV=y
CONFIG_INPUT_EVDEV=y
CONFIG_INPUT_EVBUG=y

#
# Input Device Drivers
#
CONFIG_INPUT_KEYBOARD=y
CONFIG_KEYBOARD_ADC=y
# CONFIG_KEYBOARD_ADP5588 is not set
CONFIG_KEYBOARD_ADP5589=y
# CONFIG_KEYBOARD_APPLESPI is not set
CONFIG_KEYBOARD_ATKBD=y
CONFIG_KEYBOARD_QT1050=y
# CONFIG_KEYBOARD_QT1070 is not set
CONFIG_KEYBOARD_QT2160=y
# CONFIG_KEYBOARD_DLINK_DIR685 is not set
# CONFIG_KEYBOARD_LKKBD is not set
# CONFIG_KEYBOARD_GPIO is not set
CONFIG_KEYBOARD_GPIO_POLLED=y
# CONFIG_KEYBOARD_TCA6416 is not set
CONFIG_KEYBOARD_TCA8418=y
CONFIG_KEYBOARD_MATRIX=y
CONFIG_KEYBOARD_LM8323=y
# CONFIG_KEYBOARD_LM8333 is not set
CONFIG_KEYBOARD_MAX7359=y
CONFIG_KEYBOARD_MCS=y
# CONFIG_KEYBOARD_MPR121 is not set
CONFIG_KEYBOARD_NEWTON=y
CONFIG_KEYBOARD_OPENCORES=y
CONFIG_KEYBOARD_SAMSUNG=y
# CONFIG_KEYBOARD_GOLDFISH_EVENTS is not set
CONFIG_KEYBOARD_STOWAWAY=y
# CONFIG_KEYBOARD_SUNKBD is not set
CONFIG_KEYBOARD_TM2_TOUCHKEY=y
CONFIG_KEYBOARD_TWL4030=y
# CONFIG_KEYBOARD_XTKBD is not set
CONFIG_KEYBOARD_CROS_EC=y
CONFIG_INPUT_MOUSE=y
# CONFIG_MOUSE_PS2 is not set
# CONFIG_MOUSE_SERIAL is not set
# CONFIG_MOUSE_APPLETOUCH is not set
# CONFIG_MOUSE_BCM5974 is not set
CONFIG_MOUSE_CYAPA=y
CONFIG_MOUSE_ELAN_I2C=y
CONFIG_MOUSE_ELAN_I2C_I2C=y
CONFIG_MOUSE_ELAN_I2C_SMBUS=y
# CONFIG_MOUSE_VSXXXAA is not set
CONFIG_MOUSE_GPIO=y
CONFIG_MOUSE_SYNAPTICS_I2C=y
# CONFIG_MOUSE_SYNAPTICS_USB is not set
# CONFIG_INPUT_JOYSTICK is not set
# CONFIG_INPUT_TABLET is not set
# CONFIG_INPUT_TOUCHSCREEN is not set
# CONFIG_INPUT_MISC is not set
CONFIG_RMI4_CORE=y
# CONFIG_RMI4_I2C is not set
# CONFIG_RMI4_SPI is not set
# CONFIG_RMI4_SMB is not set
CONFIG_RMI4_F03=y
CONFIG_RMI4_F03_SERIO=y
CONFIG_RMI4_2D_SENSOR=y
CONFIG_RMI4_F11=y
CONFIG_RMI4_F12=y
CONFIG_RMI4_F30=y
CONFIG_RMI4_F34=y
CONFIG_RMI4_F54=y
CONFIG_RMI4_F55=y

#
# Hardware I/O ports
#
CONFIG_SERIO=y
CONFIG_ARCH_MIGHT_HAVE_PC_SERIO=y
CONFIG_SERIO_I8042=y
CONFIG_SERIO_SERPORT=y
CONFIG_SERIO_CT82C710=y
CONFIG_SERIO_PARKBD=y
# CONFIG_SERIO_PCIPS2 is not set
CONFIG_SERIO_LIBPS2=y
CONFIG_SERIO_RAW=y
CONFIG_SERIO_ALTERA_PS2=y
# CONFIG_SERIO_PS2MULT is not set
CONFIG_SERIO_ARC_PS2=y
# CONFIG_SERIO_GPIO_PS2 is not set
CONFIG_USERIO=y
# CONFIG_GAMEPORT is not set
# end of Hardware I/O ports
# end of Input device support

#
# Character devices
#
CONFIG_TTY=y
# CONFIG_VT is not set
CONFIG_UNIX98_PTYS=y
# CONFIG_LEGACY_PTYS is not set
# CONFIG_SERIAL_NONSTANDARD is not set
CONFIG_NOZOMI=y
# CONFIG_N_GSM is not set
CONFIG_TRACE_ROUTER=y
CONFIG_TRACE_SINK=y
CONFIG_NULL_TTY=y
CONFIG_GOLDFISH_TTY=y
CONFIG_GOLDFISH_TTY_EARLY_CONSOLE=y
# CONFIG_LDISC_AUTOLOAD is not set
CONFIG_DEVMEM=y
CONFIG_DEVKMEM=y

#
# Serial drivers
#
CONFIG_SERIAL_EARLYCON=y
CONFIG_SERIAL_8250=y
# CONFIG_SERIAL_8250_DEPRECATED_OPTIONS is not set
CONFIG_SERIAL_8250_PNP=y
CONFIG_SERIAL_8250_16550A_VARIANTS=y
# CONFIG_SERIAL_8250_FINTEK is not set
CONFIG_SERIAL_8250_CONSOLE=y
CONFIG_SERIAL_8250_DMA=y
# CONFIG_SERIAL_8250_PCI is not set
CONFIG_SERIAL_8250_CS=y
# CONFIG_SERIAL_8250_MEN_MCB is not set
CONFIG_SERIAL_8250_NR_UARTS=4
CONFIG_SERIAL_8250_RUNTIME_UARTS=4
CONFIG_SERIAL_8250_EXTENDED=y
CONFIG_SERIAL_8250_MANY_PORTS=y
CONFIG_SERIAL_8250_SHARE_IRQ=y
# CONFIG_SERIAL_8250_DETECT_IRQ is not set
# CONFIG_SERIAL_8250_RSA is not set
CONFIG_SERIAL_8250_DWLIB=y
# CONFIG_SERIAL_8250_DW is not set
# CONFIG_SERIAL_8250_RT288X is not set
CONFIG_SERIAL_8250_LPSS=y
CONFIG_SERIAL_8250_MID=y

#
# Non-8250 serial port support
#
# CONFIG_SERIAL_MAX3100 is not set
# CONFIG_SERIAL_MAX310X is not set
CONFIG_SERIAL_UARTLITE=y
# CONFIG_SERIAL_UARTLITE_CONSOLE is not set
CONFIG_SERIAL_UARTLITE_NR_UARTS=1
CONFIG_SERIAL_CORE=y
CONFIG_SERIAL_CORE_CONSOLE=y
CONFIG_SERIAL_JSM=y
# CONFIG_SERIAL_SCCNXP is not set
CONFIG_SERIAL_SC16IS7XX_CORE=y
CONFIG_SERIAL_SC16IS7XX=y
CONFIG_SERIAL_SC16IS7XX_I2C=y
# CONFIG_SERIAL_SC16IS7XX_SPI is not set
# CONFIG_SERIAL_TIMBERDALE is not set
# CONFIG_SERIAL_ALTERA_JTAGUART is not set
CONFIG_SERIAL_ALTERA_UART=y
CONFIG_SERIAL_ALTERA_UART_MAXPORTS=4
CONFIG_SERIAL_ALTERA_UART_BAUDRATE=115200
CONFIG_SERIAL_ALTERA_UART_CONSOLE=y
# CONFIG_SERIAL_IFX6X60 is not set
CONFIG_SERIAL_PCH_UART=y
# CONFIG_SERIAL_PCH_UART_CONSOLE is not set
CONFIG_SERIAL_ARC=y
CONFIG_SERIAL_ARC_CONSOLE=y
CONFIG_SERIAL_ARC_NR_PORTS=1
CONFIG_SERIAL_RP2=y
CONFIG_SERIAL_RP2_NR_UARTS=32
CONFIG_SERIAL_FSL_LPUART=y
# CONFIG_SERIAL_FSL_LPUART_CONSOLE is not set
# CONFIG_SERIAL_FSL_LINFLEXUART is not set
CONFIG_SERIAL_MEN_Z135=y
# end of Serial drivers

CONFIG_SERIAL_MCTRL_GPIO=y
# CONFIG_SERIAL_DEV_BUS is not set
# CONFIG_TTY_PRINTK is not set
CONFIG_PRINTER=y
# CONFIG_LP_CONSOLE is not set
CONFIG_PPDEV=y
CONFIG_HVC_DRIVER=y
CONFIG_HVC_IRQ=y
CONFIG_HVC_XEN=y
CONFIG_HVC_XEN_FRONTEND=y
# CONFIG_VIRTIO_CONSOLE is not set
CONFIG_IPMI_HANDLER=y
CONFIG_IPMI_DMI_DECODE=y
CONFIG_IPMI_PLAT_DATA=y
# CONFIG_IPMI_PANIC_EVENT is not set
# CONFIG_IPMI_DEVICE_INTERFACE is not set
CONFIG_IPMI_SI=y
# CONFIG_IPMI_SSIF is not set
CONFIG_IPMI_WATCHDOG=y
# CONFIG_IPMI_POWEROFF is not set
# CONFIG_IPMB_DEVICE_INTERFACE is not set
CONFIG_HW_RANDOM=y
CONFIG_HW_RANDOM_TIMERIOMEM=y
CONFIG_HW_RANDOM_INTEL=y
CONFIG_HW_RANDOM_AMD=y
CONFIG_HW_RANDOM_GEODE=y
# CONFIG_HW_RANDOM_VIA is not set
CONFIG_HW_RANDOM_VIRTIO=y
CONFIG_NVRAM=y
CONFIG_APPLICOM=y
CONFIG_SONYPI=y

#
# PCMCIA character devices
#
# CONFIG_SYNCLINK_CS is not set
CONFIG_CARDMAN_4000=y
CONFIG_CARDMAN_4040=y
CONFIG_SCR24X=y
# CONFIG_IPWIRELESS is not set
# end of PCMCIA character devices

CONFIG_MWAVE=y
CONFIG_PC8736x_GPIO=y
CONFIG_NSC_GPIO=y
CONFIG_RAW_DRIVER=y
CONFIG_MAX_RAW_DEVS=256
# CONFIG_HPET is not set
CONFIG_HANGCHECK_TIMER=y
# CONFIG_TCG_TPM is not set
CONFIG_TELCLOCK=y
# CONFIG_DEVPORT is not set
# CONFIG_XILLYBUS is not set
# end of Character devices

CONFIG_RANDOM_TRUST_CPU=y
CONFIG_RANDOM_TRUST_BOOTLOADER=y

#
# I2C support
#
CONFIG_I2C=y
CONFIG_ACPI_I2C_OPREGION=y
CONFIG_I2C_BOARDINFO=y
# CONFIG_I2C_COMPAT is not set
# CONFIG_I2C_CHARDEV is not set
CONFIG_I2C_MUX=y

#
# Multiplexer I2C Chip support
#
CONFIG_I2C_MUX_GPIO=y
CONFIG_I2C_MUX_LTC4306=y
CONFIG_I2C_MUX_PCA9541=y
# CONFIG_I2C_MUX_PCA954x is not set
# CONFIG_I2C_MUX_REG is not set
CONFIG_I2C_MUX_MLXCPLD=y
# end of Multiplexer I2C Chip support

CONFIG_I2C_HELPER_AUTO=y
CONFIG_I2C_SMBUS=y
CONFIG_I2C_ALGOBIT=y

#
# I2C Hardware Bus support
#

#
# PC SMBus host controller drivers
#
# CONFIG_I2C_ALI1535 is not set
CONFIG_I2C_ALI1563=y
# CONFIG_I2C_ALI15X3 is not set
CONFIG_I2C_AMD756=y
CONFIG_I2C_AMD756_S4882=y
# CONFIG_I2C_AMD8111 is not set
# CONFIG_I2C_AMD_MP2 is not set
CONFIG_I2C_I801=y
# CONFIG_I2C_ISCH is not set
CONFIG_I2C_ISMT=y
CONFIG_I2C_PIIX4=y
CONFIG_I2C_NFORCE2=y
# CONFIG_I2C_NFORCE2_S4985 is not set
CONFIG_I2C_NVIDIA_GPU=y
# CONFIG_I2C_SIS5595 is not set
# CONFIG_I2C_SIS630 is not set
# CONFIG_I2C_SIS96X is not set
# CONFIG_I2C_VIA is not set
CONFIG_I2C_VIAPRO=y

#
# ACPI drivers
#
# CONFIG_I2C_SCMI is not set

#
# I2C system bus drivers (mostly embedded / system-on-chip)
#
CONFIG_I2C_CBUS_GPIO=y
CONFIG_I2C_DESIGNWARE_CORE=y
# CONFIG_I2C_DESIGNWARE_PLATFORM is not set
CONFIG_I2C_DESIGNWARE_PCI=y
CONFIG_I2C_EG20T=y
CONFIG_I2C_EMEV2=y
# CONFIG_I2C_GPIO is not set
CONFIG_I2C_OCORES=y
# CONFIG_I2C_PCA_PLATFORM is not set
CONFIG_I2C_SIMTEC=y
CONFIG_I2C_XILINX=y

#
# External I2C/SMBus adapter drivers
#
CONFIG_I2C_PARPORT=y
CONFIG_I2C_TAOS_EVM=y

#
# Other I2C/SMBus bus drivers
#
CONFIG_I2C_CROS_EC_TUNNEL=y
# CONFIG_SCx200_ACB is not set
# end of I2C Hardware Bus support

# CONFIG_I2C_STUB is not set
CONFIG_I2C_SLAVE=y
CONFIG_I2C_SLAVE_EEPROM=y
# CONFIG_I2C_DEBUG_CORE is not set
# CONFIG_I2C_DEBUG_ALGO is not set
# CONFIG_I2C_DEBUG_BUS is not set
# end of I2C support

CONFIG_I3C=y
CONFIG_CDNS_I3C_MASTER=y
CONFIG_DW_I3C_MASTER=y
CONFIG_SPI=y
CONFIG_SPI_DEBUG=y
CONFIG_SPI_MASTER=y
# CONFIG_SPI_MEM is not set

#
# SPI Master Controller Drivers
#
CONFIG_SPI_ALTERA=y
# CONFIG_SPI_AXI_SPI_ENGINE is not set
CONFIG_SPI_BITBANG=y
# CONFIG_SPI_BUTTERFLY is not set
# CONFIG_SPI_CADENCE is not set
CONFIG_SPI_DESIGNWARE=y
CONFIG_SPI_DW_PCI=y
CONFIG_SPI_DW_MMIO=y
# CONFIG_SPI_NXP_FLEXSPI is not set
CONFIG_SPI_GPIO=y
# CONFIG_SPI_LM70_LLP is not set
CONFIG_SPI_OC_TINY=y
# CONFIG_SPI_PXA2XX is not set
CONFIG_SPI_ROCKCHIP=y
# CONFIG_SPI_SC18IS602 is not set
CONFIG_SPI_SIFIVE=y
CONFIG_SPI_MXIC=y
# CONFIG_SPI_TOPCLIFF_PCH is not set
CONFIG_SPI_XCOMM=y
# CONFIG_SPI_XILINX is not set
CONFIG_SPI_ZYNQMP_GQSPI=y

#
# SPI Protocol Masters
#
# CONFIG_SPI_SPIDEV is not set
# CONFIG_SPI_LOOPBACK_TEST is not set
# CONFIG_SPI_TLE62X0 is not set
# CONFIG_SPI_SLAVE is not set
# CONFIG_SPMI is not set
# CONFIG_HSI is not set
CONFIG_PPS=y
# CONFIG_PPS_DEBUG is not set

#
# PPS clients support
#
# CONFIG_PPS_CLIENT_KTIMER is not set
# CONFIG_PPS_CLIENT_LDISC is not set
CONFIG_PPS_CLIENT_PARPORT=y
CONFIG_PPS_CLIENT_GPIO=y

#
# PPS generators support
#

#
# PTP clock support
#
CONFIG_PTP_1588_CLOCK=y
# CONFIG_DP83640_PHY is not set
CONFIG_PTP_1588_CLOCK_INES=y
CONFIG_PTP_1588_CLOCK_PCH=y
CONFIG_PTP_1588_CLOCK_KVM=y
# CONFIG_PTP_1588_CLOCK_IDTCM is not set
# end of PTP clock support

CONFIG_PINCTRL=y
CONFIG_PINMUX=y
CONFIG_PINCONF=y
CONFIG_GENERIC_PINCONF=y
CONFIG_DEBUG_PINCTRL=y
# CONFIG_PINCTRL_AMD is not set
CONFIG_PINCTRL_MCP23S08=y
CONFIG_PINCTRL_SX150X=y
# CONFIG_PINCTRL_BAYTRAIL is not set
# CONFIG_PINCTRL_CHERRYVIEW is not set
# CONFIG_PINCTRL_LYNXPOINT is not set
# CONFIG_PINCTRL_BROXTON is not set
# CONFIG_PINCTRL_CANNONLAKE is not set
# CONFIG_PINCTRL_CEDARFORK is not set
# CONFIG_PINCTRL_DENVERTON is not set
# CONFIG_PINCTRL_GEMINILAKE is not set
# CONFIG_PINCTRL_ICELAKE is not set
# CONFIG_PINCTRL_LEWISBURG is not set
# CONFIG_PINCTRL_SUNRISEPOINT is not set
# CONFIG_PINCTRL_TIGERLAKE is not set
CONFIG_GPIOLIB=y
CONFIG_GPIOLIB_FASTPATH_LIMIT=512
CONFIG_GPIO_ACPI=y
CONFIG_GPIOLIB_IRQCHIP=y
# CONFIG_DEBUG_GPIO is not set
CONFIG_GPIO_SYSFS=y
CONFIG_GPIO_GENERIC=y
CONFIG_GPIO_MAX730X=y

#
# Memory mapped GPIO drivers
#
# CONFIG_GPIO_AMDPT is not set
# CONFIG_GPIO_DWAPB is not set
CONFIG_GPIO_GENERIC_PLATFORM=y
CONFIG_GPIO_ICH=y
# CONFIG_GPIO_MB86S7X is not set
# CONFIG_GPIO_MENZ127 is not set
CONFIG_GPIO_VX855=y
CONFIG_GPIO_XILINX=y
CONFIG_GPIO_AMD_FCH=y
# end of Memory mapped GPIO drivers

#
# Port-mapped I/O GPIO drivers
#
# CONFIG_GPIO_F7188X is not set
# CONFIG_GPIO_IT87 is not set
CONFIG_GPIO_SCH=y
CONFIG_GPIO_SCH311X=y
CONFIG_GPIO_WINBOND=y
CONFIG_GPIO_WS16C48=y
# end of Port-mapped I/O GPIO drivers

#
# I2C GPIO expanders
#
# CONFIG_GPIO_ADP5588 is not set
# CONFIG_GPIO_MAX7300 is not set
# CONFIG_GPIO_MAX732X is not set
CONFIG_GPIO_PCA953X=y
CONFIG_GPIO_PCA953X_IRQ=y
CONFIG_GPIO_PCF857X=y
CONFIG_GPIO_TPIC2810=y
# end of I2C GPIO expanders

#
# MFD GPIO expanders
#
CONFIG_GPIO_ARIZONA=y
CONFIG_GPIO_CS5535=y
# CONFIG_GPIO_DA9052 is not set
CONFIG_GPIO_DA9055=y
CONFIG_GPIO_LP873X=y
CONFIG_GPIO_TIMBERDALE=y
CONFIG_GPIO_TPS6586X=y
CONFIG_GPIO_TPS65912=y
# CONFIG_GPIO_TQMX86 is not set
CONFIG_GPIO_TWL4030=y
CONFIG_GPIO_TWL6040=y
CONFIG_GPIO_WM8350=y
CONFIG_GPIO_WM8994=y
# end of MFD GPIO expanders

#
# PCI GPIO expanders
#
# CONFIG_GPIO_AMD8111 is not set
CONFIG_GPIO_BT8XX=y
# CONFIG_GPIO_ML_IOH is not set
CONFIG_GPIO_PCH=y
CONFIG_GPIO_PCI_IDIO_16=y
CONFIG_GPIO_PCIE_IDIO_24=y
# CONFIG_GPIO_RDC321X is not set
# end of PCI GPIO expanders

#
# SPI GPIO expanders
#
# CONFIG_GPIO_MAX3191X is not set
CONFIG_GPIO_MAX7301=y
# CONFIG_GPIO_MC33880 is not set
CONFIG_GPIO_PISOSR=y
CONFIG_GPIO_XRA1403=y
# end of SPI GPIO expanders

CONFIG_GPIO_MOCKUP=y
CONFIG_W1=y
# CONFIG_W1_CON is not set

#
# 1-wire Bus Masters
#
CONFIG_W1_MASTER_MATROX=y
CONFIG_W1_MASTER_DS2482=y
CONFIG_W1_MASTER_DS1WM=y
# CONFIG_W1_MASTER_GPIO is not set
# CONFIG_W1_MASTER_SGI is not set
# end of 1-wire Bus Masters

#
# 1-wire Slaves
#
# CONFIG_W1_SLAVE_THERM is not set
CONFIG_W1_SLAVE_SMEM=y
# CONFIG_W1_SLAVE_DS2405 is not set
CONFIG_W1_SLAVE_DS2408=y
# CONFIG_W1_SLAVE_DS2408_READBACK is not set
# CONFIG_W1_SLAVE_DS2413 is not set
# CONFIG_W1_SLAVE_DS2406 is not set
CONFIG_W1_SLAVE_DS2423=y
CONFIG_W1_SLAVE_DS2805=y
CONFIG_W1_SLAVE_DS2430=y
CONFIG_W1_SLAVE_DS2431=y
# CONFIG_W1_SLAVE_DS2433 is not set
# CONFIG_W1_SLAVE_DS2438 is not set
# CONFIG_W1_SLAVE_DS250X is not set
CONFIG_W1_SLAVE_DS2780=y
# CONFIG_W1_SLAVE_DS2781 is not set
CONFIG_W1_SLAVE_DS28E04=y
# CONFIG_W1_SLAVE_DS28E17 is not set
# end of 1-wire Slaves

CONFIG_POWER_AVS=y
CONFIG_QCOM_CPR=y
CONFIG_POWER_RESET=y
# CONFIG_POWER_RESET_RESTART is not set
CONFIG_POWER_SUPPLY=y
CONFIG_POWER_SUPPLY_DEBUG=y
CONFIG_POWER_SUPPLY_HWMON=y
CONFIG_PDA_POWER=y
CONFIG_GENERIC_ADC_BATTERY=y
CONFIG_WM8350_POWER=y
# CONFIG_TEST_POWER is not set
CONFIG_CHARGER_ADP5061=y
CONFIG_BATTERY_DS2760=y
CONFIG_BATTERY_DS2780=y
# CONFIG_BATTERY_DS2781 is not set
CONFIG_BATTERY_DS2782=y
# CONFIG_BATTERY_SBS is not set
CONFIG_CHARGER_SBS=y
CONFIG_MANAGER_SBS=y
CONFIG_BATTERY_BQ27XXX=y
CONFIG_BATTERY_BQ27XXX_I2C=y
# CONFIG_BATTERY_BQ27XXX_HDQ is not set
# CONFIG_BATTERY_BQ27XXX_DT_UPDATES_NVM is not set
CONFIG_BATTERY_DA9030=y
CONFIG_BATTERY_DA9052=y
CONFIG_CHARGER_DA9150=y
# CONFIG_BATTERY_DA9150 is not set
# CONFIG_BATTERY_MAX17040 is not set
# CONFIG_BATTERY_MAX17042 is not set
CONFIG_BATTERY_MAX1721X=y
CONFIG_CHARGER_PCF50633=y
CONFIG_CHARGER_MAX8903=y
CONFIG_CHARGER_TWL4030=y
CONFIG_CHARGER_LP8727=y
# CONFIG_CHARGER_GPIO is not set
CONFIG_CHARGER_MANAGER=y
CONFIG_CHARGER_LT3651=y
CONFIG_CHARGER_MAX77693=y
# CONFIG_CHARGER_MAX8998 is not set
CONFIG_CHARGER_BQ2415X=y
CONFIG_CHARGER_BQ24190=y
CONFIG_CHARGER_BQ24257=y
# CONFIG_CHARGER_BQ24735 is not set
CONFIG_CHARGER_BQ25890=y
CONFIG_CHARGER_SMB347=y
CONFIG_BATTERY_GAUGE_LTC2941=y
CONFIG_BATTERY_GOLDFISH=y
CONFIG_CHARGER_RT9455=y
CONFIG_CHARGER_CROS_USBPD=y
CONFIG_HWMON=y
CONFIG_HWMON_VID=y
# CONFIG_HWMON_DEBUG_CHIP is not set

#
# Native drivers
#
# CONFIG_SENSORS_ABITUGURU is not set
CONFIG_SENSORS_ABITUGURU3=y
CONFIG_SENSORS_AD7314=y
CONFIG_SENSORS_AD7414=y
CONFIG_SENSORS_AD7418=y
CONFIG_SENSORS_ADM1021=y
CONFIG_SENSORS_ADM1025=y
# CONFIG_SENSORS_ADM1026 is not set
CONFIG_SENSORS_ADM1029=y
# CONFIG_SENSORS_ADM1031 is not set
CONFIG_SENSORS_ADM1177=y
CONFIG_SENSORS_ADM9240=y
CONFIG_SENSORS_ADT7X10=y
CONFIG_SENSORS_ADT7310=y
CONFIG_SENSORS_ADT7410=y
CONFIG_SENSORS_ADT7411=y
CONFIG_SENSORS_ADT7462=y
CONFIG_SENSORS_ADT7470=y
CONFIG_SENSORS_ADT7475=y
CONFIG_SENSORS_AS370=y
# CONFIG_SENSORS_ASC7621 is not set
# CONFIG_SENSORS_K8TEMP is not set
CONFIG_SENSORS_K10TEMP=y
CONFIG_SENSORS_FAM15H_POWER=y
# CONFIG_SENSORS_APPLESMC is not set
CONFIG_SENSORS_ASB100=y
CONFIG_SENSORS_ASPEED=y
CONFIG_SENSORS_ATXP1=y
CONFIG_SENSORS_DS620=y
# CONFIG_SENSORS_DS1621 is not set
CONFIG_SENSORS_DELL_SMM=y
CONFIG_SENSORS_DA9052_ADC=y
CONFIG_SENSORS_DA9055=y
# CONFIG_SENSORS_I5K_AMB is not set
# CONFIG_SENSORS_F71805F is not set
CONFIG_SENSORS_F71882FG=y
CONFIG_SENSORS_F75375S=y
CONFIG_SENSORS_MC13783_ADC=y
# CONFIG_SENSORS_FSCHMD is not set
CONFIG_SENSORS_FTSTEUTATES=y
CONFIG_SENSORS_GL518SM=y
CONFIG_SENSORS_GL520SM=y
CONFIG_SENSORS_G760A=y
# CONFIG_SENSORS_G762 is not set
CONFIG_SENSORS_HIH6130=y
CONFIG_SENSORS_IBMAEM=y
CONFIG_SENSORS_IBMPEX=y
# CONFIG_SENSORS_IIO_HWMON is not set
# CONFIG_SENSORS_I5500 is not set
CONFIG_SENSORS_CORETEMP=y
CONFIG_SENSORS_IT87=y
CONFIG_SENSORS_JC42=y
CONFIG_SENSORS_POWR1220=y
CONFIG_SENSORS_LINEAGE=y
CONFIG_SENSORS_LTC2945=y
# CONFIG_SENSORS_LTC2947_I2C is not set
# CONFIG_SENSORS_LTC2947_SPI is not set
CONFIG_SENSORS_LTC2990=y
# CONFIG_SENSORS_LTC4151 is not set
CONFIG_SENSORS_LTC4215=y
# CONFIG_SENSORS_LTC4222 is not set
CONFIG_SENSORS_LTC4245=y
# CONFIG_SENSORS_LTC4260 is not set
CONFIG_SENSORS_LTC4261=y
CONFIG_SENSORS_MAX1111=y
CONFIG_SENSORS_MAX16065=y
CONFIG_SENSORS_MAX1619=y
CONFIG_SENSORS_MAX1668=y
CONFIG_SENSORS_MAX197=y
CONFIG_SENSORS_MAX31722=y
# CONFIG_SENSORS_MAX31730 is not set
CONFIG_SENSORS_MAX6621=y
# CONFIG_SENSORS_MAX6639 is not set
# CONFIG_SENSORS_MAX6642 is not set
# CONFIG_SENSORS_MAX6650 is not set
CONFIG_SENSORS_MAX6697=y
CONFIG_SENSORS_MAX31790=y
CONFIG_SENSORS_MCP3021=y
CONFIG_SENSORS_TC654=y
# CONFIG_SENSORS_MENF21BMC_HWMON is not set
CONFIG_SENSORS_ADCXX=y
CONFIG_SENSORS_LM63=y
CONFIG_SENSORS_LM70=y
CONFIG_SENSORS_LM73=y
CONFIG_SENSORS_LM75=y
# CONFIG_SENSORS_LM77 is not set
CONFIG_SENSORS_LM78=y
CONFIG_SENSORS_LM80=y
CONFIG_SENSORS_LM83=y
# CONFIG_SENSORS_LM85 is not set
# CONFIG_SENSORS_LM87 is not set
CONFIG_SENSORS_LM90=y
CONFIG_SENSORS_LM92=y
CONFIG_SENSORS_LM93=y
CONFIG_SENSORS_LM95234=y
# CONFIG_SENSORS_LM95241 is not set
# CONFIG_SENSORS_LM95245 is not set
# CONFIG_SENSORS_PC87360 is not set
CONFIG_SENSORS_PC87427=y
CONFIG_SENSORS_NTC_THERMISTOR=y
# CONFIG_SENSORS_NCT6683 is not set
# CONFIG_SENSORS_NCT6775 is not set
CONFIG_SENSORS_NCT7802=y
# CONFIG_SENSORS_NCT7904 is not set
CONFIG_SENSORS_NPCM7XX=y
CONFIG_SENSORS_PCF8591=y
CONFIG_PMBUS=y
# CONFIG_SENSORS_PMBUS is not set
# CONFIG_SENSORS_ADM1275 is not set
# CONFIG_SENSORS_BEL_PFE is not set
# CONFIG_SENSORS_IBM_CFFPS is not set
CONFIG_SENSORS_INSPUR_IPSPS=y
# CONFIG_SENSORS_IR35221 is not set
CONFIG_SENSORS_IR38064=y
CONFIG_SENSORS_IRPS5401=y
# CONFIG_SENSORS_ISL68137 is not set
CONFIG_SENSORS_LM25066=y
CONFIG_SENSORS_LTC2978=y
# CONFIG_SENSORS_LTC2978_REGULATOR is not set
# CONFIG_SENSORS_LTC3815 is not set
CONFIG_SENSORS_MAX16064=y
CONFIG_SENSORS_MAX20730=y
# CONFIG_SENSORS_MAX20751 is not set
CONFIG_SENSORS_MAX31785=y
# CONFIG_SENSORS_MAX34440 is not set
CONFIG_SENSORS_MAX8688=y
CONFIG_SENSORS_PXE1610=y
# CONFIG_SENSORS_TPS40422 is not set
# CONFIG_SENSORS_TPS53679 is not set
CONFIG_SENSORS_UCD9000=y
CONFIG_SENSORS_UCD9200=y
# CONFIG_SENSORS_XDPE122 is not set
CONFIG_SENSORS_ZL6100=y
CONFIG_SENSORS_SHT15=y
CONFIG_SENSORS_SHT21=y
# CONFIG_SENSORS_SHT3x is not set
CONFIG_SENSORS_SHTC1=y
CONFIG_SENSORS_SIS5595=y
CONFIG_SENSORS_DME1737=y
CONFIG_SENSORS_EMC1403=y
# CONFIG_SENSORS_EMC2103 is not set
CONFIG_SENSORS_EMC6W201=y
# CONFIG_SENSORS_SMSC47M1 is not set
# CONFIG_SENSORS_SMSC47M192 is not set
CONFIG_SENSORS_SMSC47B397=y
CONFIG_SENSORS_SCH56XX_COMMON=y
# CONFIG_SENSORS_SCH5627 is not set
CONFIG_SENSORS_SCH5636=y
CONFIG_SENSORS_STTS751=y
# CONFIG_SENSORS_SMM665 is not set
CONFIG_SENSORS_ADC128D818=y
CONFIG_SENSORS_ADS7828=y
# CONFIG_SENSORS_ADS7871 is not set
CONFIG_SENSORS_AMC6821=y
# CONFIG_SENSORS_INA209 is not set
CONFIG_SENSORS_INA2XX=y
# CONFIG_SENSORS_INA3221 is not set
# CONFIG_SENSORS_TC74 is not set
# CONFIG_SENSORS_THMC50 is not set
CONFIG_SENSORS_TMP102=y
# CONFIG_SENSORS_TMP103 is not set
CONFIG_SENSORS_TMP108=y
# CONFIG_SENSORS_TMP401 is not set
# CONFIG_SENSORS_TMP421 is not set
CONFIG_SENSORS_TMP513=y
# CONFIG_SENSORS_VIA_CPUTEMP is not set
CONFIG_SENSORS_VIA686A=y
CONFIG_SENSORS_VT1211=y
CONFIG_SENSORS_VT8231=y
CONFIG_SENSORS_W83773G=y
CONFIG_SENSORS_W83781D=y
# CONFIG_SENSORS_W83791D is not set
CONFIG_SENSORS_W83792D=y
# CONFIG_SENSORS_W83793 is not set
CONFIG_SENSORS_W83795=y
# CONFIG_SENSORS_W83795_FANCTRL is not set
CONFIG_SENSORS_W83L785TS=y
# CONFIG_SENSORS_W83L786NG is not set
CONFIG_SENSORS_W83627HF=y
CONFIG_SENSORS_W83627EHF=y
CONFIG_SENSORS_WM8350=y

#
# ACPI drivers
#
# CONFIG_SENSORS_ACPI_POWER is not set
# CONFIG_SENSORS_ATK0110 is not set
CONFIG_THERMAL=y
CONFIG_THERMAL_STATISTICS=y
CONFIG_THERMAL_EMERGENCY_POWEROFF_DELAY_MS=0
CONFIG_THERMAL_HWMON=y
CONFIG_THERMAL_WRITABLE_TRIPS=y
CONFIG_THERMAL_DEFAULT_GOV_STEP_WISE=y
# CONFIG_THERMAL_DEFAULT_GOV_FAIR_SHARE is not set
# CONFIG_THERMAL_DEFAULT_GOV_USER_SPACE is not set
CONFIG_THERMAL_GOV_FAIR_SHARE=y
CONFIG_THERMAL_GOV_STEP_WISE=y
# CONFIG_THERMAL_GOV_BANG_BANG is not set
CONFIG_THERMAL_GOV_USER_SPACE=y
CONFIG_CLOCK_THERMAL=y
# CONFIG_DEVFREQ_THERMAL is not set
# CONFIG_THERMAL_EMULATION is not set

#
# Intel thermal drivers
#
CONFIG_INTEL_POWERCLAMP=y
# CONFIG_INTEL_SOC_DTS_THERMAL is not set

#
# ACPI INT340X thermal drivers
#
# CONFIG_INT340X_THERMAL is not set
# end of ACPI INT340X thermal drivers

CONFIG_INTEL_PCH_THERMAL=y
# end of Intel thermal drivers

# CONFIG_GENERIC_ADC_THERMAL is not set
CONFIG_WATCHDOG=y
CONFIG_WATCHDOG_CORE=y
CONFIG_WATCHDOG_NOWAYOUT=y
# CONFIG_WATCHDOG_HANDLE_BOOT_ENABLED is not set
CONFIG_WATCHDOG_OPEN_TIMEOUT=0
CONFIG_WATCHDOG_SYSFS=y

#
# Watchdog Pretimeout Governors
#
CONFIG_WATCHDOG_PRETIMEOUT_GOV=y
CONFIG_WATCHDOG_PRETIMEOUT_GOV_SEL=m
CONFIG_WATCHDOG_PRETIMEOUT_GOV_NOOP=y
CONFIG_WATCHDOG_PRETIMEOUT_GOV_PANIC=y
# CONFIG_WATCHDOG_PRETIMEOUT_DEFAULT_GOV_NOOP is not set
CONFIG_WATCHDOG_PRETIMEOUT_DEFAULT_GOV_PANIC=y

#
# Watchdog Device Drivers
#
CONFIG_SOFT_WATCHDOG=y
CONFIG_SOFT_WATCHDOG_PRETIMEOUT=y
CONFIG_DA9052_WATCHDOG=y
CONFIG_DA9055_WATCHDOG=y
# CONFIG_DA9063_WATCHDOG is not set
CONFIG_DA9062_WATCHDOG=y
CONFIG_MENF21BMC_WATCHDOG=y
CONFIG_MENZ069_WATCHDOG=y
# CONFIG_WDAT_WDT is not set
CONFIG_WM8350_WATCHDOG=y
CONFIG_XILINX_WATCHDOG=y
CONFIG_ZIIRAVE_WATCHDOG=y
CONFIG_CADENCE_WATCHDOG=y
CONFIG_DW_WATCHDOG=y
# CONFIG_TWL4030_WATCHDOG is not set
# CONFIG_MAX63XX_WATCHDOG is not set
# CONFIG_ACQUIRE_WDT is not set
CONFIG_ADVANTECH_WDT=y
CONFIG_ALIM1535_WDT=y
CONFIG_ALIM7101_WDT=y
# CONFIG_EBC_C384_WDT is not set
CONFIG_F71808E_WDT=y
CONFIG_SP5100_TCO=y
# CONFIG_SBC_FITPC2_WATCHDOG is not set
# CONFIG_EUROTECH_WDT is not set
CONFIG_IB700_WDT=y
CONFIG_IBMASR=y
CONFIG_WAFER_WDT=y
CONFIG_I6300ESB_WDT=y
CONFIG_IE6XX_WDT=y
CONFIG_ITCO_WDT=y
# CONFIG_ITCO_VENDOR_SUPPORT is not set
CONFIG_IT8712F_WDT=y
# CONFIG_IT87_WDT is not set
# CONFIG_HP_WATCHDOG is not set
# CONFIG_SC1200_WDT is not set
# CONFIG_PC87413_WDT is not set
CONFIG_NV_TCO=y
# CONFIG_60XX_WDT is not set
CONFIG_SBC8360_WDT=y
CONFIG_SBC7240_WDT=y
# CONFIG_CPU5_WDT is not set
CONFIG_SMSC_SCH311X_WDT=y
CONFIG_SMSC37B787_WDT=y
CONFIG_TQMX86_WDT=y
CONFIG_VIA_WDT=y
CONFIG_W83627HF_WDT=y
CONFIG_W83877F_WDT=y
# CONFIG_W83977F_WDT is not set
CONFIG_MACHZ_WDT=y
CONFIG_SBC_EPX_C3_WATCHDOG=y
CONFIG_INTEL_MEI_WDT=y
# CONFIG_NI903X_WDT is not set
# CONFIG_NIC7018_WDT is not set
# CONFIG_MEN_A21_WDT is not set
CONFIG_XEN_WDT=y

#
# PCI-based Watchdog Cards
#
# CONFIG_PCIPCWATCHDOG is not set
CONFIG_WDTPCI=y
CONFIG_SSB_POSSIBLE=y
CONFIG_SSB=y
CONFIG_SSB_SPROM=y
CONFIG_SSB_PCIHOST_POSSIBLE=y
CONFIG_SSB_PCIHOST=y
CONFIG_SSB_PCMCIAHOST_POSSIBLE=y
CONFIG_SSB_PCMCIAHOST=y
CONFIG_SSB_SDIOHOST_POSSIBLE=y
CONFIG_SSB_SDIOHOST=y
CONFIG_SSB_DRIVER_PCICORE_POSSIBLE=y
CONFIG_SSB_DRIVER_PCICORE=y
CONFIG_SSB_DRIVER_GPIO=y
CONFIG_BCMA_POSSIBLE=y
# CONFIG_BCMA is not set

#
# Multifunction device drivers
#
CONFIG_MFD_CORE=y
CONFIG_MFD_CS5535=y
CONFIG_MFD_AS3711=y
# CONFIG_PMIC_ADP5520 is not set
CONFIG_MFD_AAT2870_CORE=y
CONFIG_MFD_BCM590XX=y
# CONFIG_MFD_BD9571MWV is not set
# CONFIG_MFD_AXP20X_I2C is not set
CONFIG_MFD_CROS_EC_DEV=y
# CONFIG_MFD_MADERA is not set
CONFIG_PMIC_DA903X=y
CONFIG_PMIC_DA9052=y
# CONFIG_MFD_DA9052_SPI is not set
CONFIG_MFD_DA9052_I2C=y
CONFIG_MFD_DA9055=y
CONFIG_MFD_DA9062=y
CONFIG_MFD_DA9063=y
CONFIG_MFD_DA9150=y
CONFIG_MFD_MC13XXX=y
# CONFIG_MFD_MC13XXX_SPI is not set
CONFIG_MFD_MC13XXX_I2C=y
CONFIG_HTC_PASIC3=y
CONFIG_HTC_I2CPLD=y
# CONFIG_MFD_INTEL_QUARK_I2C_GPIO is not set
CONFIG_LPC_ICH=y
CONFIG_LPC_SCH=y
# CONFIG_INTEL_SOC_PMIC_CHTDC_TI is not set
# CONFIG_MFD_INTEL_LPSS_ACPI is not set
# CONFIG_MFD_INTEL_LPSS_PCI is not set
# CONFIG_MFD_JANZ_CMODIO is not set
# CONFIG_MFD_KEMPLD is not set
CONFIG_MFD_88PM800=y
CONFIG_MFD_88PM805=y
# CONFIG_MFD_88PM860X is not set
# CONFIG_MFD_MAX14577 is not set
CONFIG_MFD_MAX77693=y
# CONFIG_MFD_MAX77843 is not set
CONFIG_MFD_MAX8907=y
# CONFIG_MFD_MAX8925 is not set
# CONFIG_MFD_MAX8997 is not set
CONFIG_MFD_MAX8998=y
# CONFIG_MFD_MT6397 is not set
CONFIG_MFD_MENF21BMC=y
# CONFIG_EZX_PCAP is not set
# CONFIG_MFD_RETU is not set
CONFIG_MFD_PCF50633=y
CONFIG_PCF50633_ADC=y
# CONFIG_PCF50633_GPIO is not set
CONFIG_MFD_RDC321X=y
# CONFIG_MFD_RT5033 is not set
# CONFIG_MFD_RC5T583 is not set
CONFIG_MFD_SEC_CORE=y
CONFIG_MFD_SI476X_CORE=y
CONFIG_MFD_SM501=y
# CONFIG_MFD_SM501_GPIO is not set
# CONFIG_MFD_SKY81452 is not set
# CONFIG_MFD_SMSC is not set
CONFIG_ABX500_CORE=y
CONFIG_AB3100_CORE=y
CONFIG_AB3100_OTP=y
CONFIG_MFD_SYSCON=y
CONFIG_MFD_TI_AM335X_TSCADC=y
# CONFIG_MFD_LP3943 is not set
# CONFIG_MFD_LP8788 is not set
CONFIG_MFD_TI_LMU=y
# CONFIG_MFD_PALMAS is not set
CONFIG_TPS6105X=y
# CONFIG_TPS65010 is not set
# CONFIG_TPS6507X is not set
# CONFIG_MFD_TPS65086 is not set
# CONFIG_MFD_TPS65090 is not set
CONFIG_MFD_TI_LP873X=y
CONFIG_MFD_TPS6586X=y
# CONFIG_MFD_TPS65910 is not set
CONFIG_MFD_TPS65912=y
CONFIG_MFD_TPS65912_I2C=y
# CONFIG_MFD_TPS65912_SPI is not set
CONFIG_MFD_TPS80031=y
CONFIG_TWL4030_CORE=y
CONFIG_MFD_TWL4030_AUDIO=y
CONFIG_TWL6040_CORE=y
# CONFIG_MFD_WL1273_CORE is not set
# CONFIG_MFD_LM3533 is not set
CONFIG_MFD_TIMBERDALE=y
CONFIG_MFD_TQMX86=y
CONFIG_MFD_VX855=y
CONFIG_MFD_ARIZONA=y
CONFIG_MFD_ARIZONA_I2C=y
CONFIG_MFD_ARIZONA_SPI=y
# CONFIG_MFD_CS47L24 is not set
CONFIG_MFD_WM5102=y
# CONFIG_MFD_WM5110 is not set
# CONFIG_MFD_WM8997 is not set
CONFIG_MFD_WM8998=y
CONFIG_MFD_WM8400=y
# CONFIG_MFD_WM831X_I2C is not set
# CONFIG_MFD_WM831X_SPI is not set
CONFIG_MFD_WM8350=y
CONFIG_MFD_WM8350_I2C=y
CONFIG_MFD_WM8994=y
# end of Multifunction device drivers

CONFIG_REGULATOR=y
CONFIG_REGULATOR_DEBUG=y
CONFIG_REGULATOR_FIXED_VOLTAGE=y
CONFIG_REGULATOR_VIRTUAL_CONSUMER=y
# CONFIG_REGULATOR_USERSPACE_CONSUMER is not set
CONFIG_REGULATOR_88PG86X=y
# CONFIG_REGULATOR_88PM800 is not set
CONFIG_REGULATOR_ACT8865=y
CONFIG_REGULATOR_AD5398=y
# CONFIG_REGULATOR_ANATOP is not set
CONFIG_REGULATOR_AAT2870=y
# CONFIG_REGULATOR_AB3100 is not set
# CONFIG_REGULATOR_AS3711 is not set
CONFIG_REGULATOR_BCM590XX=y
CONFIG_REGULATOR_DA903X=y
CONFIG_REGULATOR_DA9052=y
# CONFIG_REGULATOR_DA9055 is not set
# CONFIG_REGULATOR_DA9062 is not set
CONFIG_REGULATOR_DA9210=y
CONFIG_REGULATOR_DA9211=y
CONFIG_REGULATOR_FAN53555=y
CONFIG_REGULATOR_GPIO=y
# CONFIG_REGULATOR_ISL9305 is not set
CONFIG_REGULATOR_ISL6271A=y
# CONFIG_REGULATOR_LM363X is not set
CONFIG_REGULATOR_LP3971=y
# CONFIG_REGULATOR_LP3972 is not set
CONFIG_REGULATOR_LP872X=y
CONFIG_REGULATOR_LP8755=y
# CONFIG_REGULATOR_LTC3589 is not set
CONFIG_REGULATOR_LTC3676=y
CONFIG_REGULATOR_MAX1586=y
# CONFIG_REGULATOR_MAX8649 is not set
# CONFIG_REGULATOR_MAX8660 is not set
CONFIG_REGULATOR_MAX8907=y
CONFIG_REGULATOR_MAX8952=y
CONFIG_REGULATOR_MAX8998=y
# CONFIG_REGULATOR_MAX77693 is not set
# CONFIG_REGULATOR_MC13783 is not set
# CONFIG_REGULATOR_MC13892 is not set
CONFIG_REGULATOR_MP8859=y
CONFIG_REGULATOR_MT6311=y
CONFIG_REGULATOR_PCF50633=y
CONFIG_REGULATOR_PFUZE100=y
CONFIG_REGULATOR_PV88060=y
# CONFIG_REGULATOR_PV88080 is not set
# CONFIG_REGULATOR_PV88090 is not set
CONFIG_REGULATOR_PWM=y
# CONFIG_REGULATOR_S2MPA01 is not set
# CONFIG_REGULATOR_S2MPS11 is not set
CONFIG_REGULATOR_S5M8767=y
CONFIG_REGULATOR_SLG51000=y
CONFIG_REGULATOR_TPS51632=y
# CONFIG_REGULATOR_TPS6105X is not set
CONFIG_REGULATOR_TPS62360=y
CONFIG_REGULATOR_TPS65023=y
CONFIG_REGULATOR_TPS6507X=y
# CONFIG_REGULATOR_TPS65132 is not set
CONFIG_REGULATOR_TPS6524X=y
# CONFIG_REGULATOR_TPS6586X is not set
# CONFIG_REGULATOR_TPS65912 is not set
CONFIG_REGULATOR_TPS80031=y
CONFIG_REGULATOR_TWL4030=y
CONFIG_REGULATOR_WM8350=y
# CONFIG_REGULATOR_WM8400 is not set
CONFIG_REGULATOR_WM8994=y
CONFIG_CEC_CORE=y
CONFIG_CEC_NOTIFIER=y
CONFIG_RC_CORE=m
CONFIG_RC_MAP=m
CONFIG_LIRC=y
CONFIG_RC_DECODERS=y
# CONFIG_IR_NEC_DECODER is not set
# CONFIG_IR_RC5_DECODER is not set
# CONFIG_IR_RC6_DECODER is not set
# CONFIG_IR_JVC_DECODER is not set
# CONFIG_IR_SONY_DECODER is not set
# CONFIG_IR_SANYO_DECODER is not set
CONFIG_IR_SHARP_DECODER=m
# CONFIG_IR_MCE_KBD_DECODER is not set
# CONFIG_IR_XMP_DECODER is not set
CONFIG_IR_IMON_DECODER=m
# CONFIG_IR_RCMM_DECODER is not set
CONFIG_RC_DEVICES=y
# CONFIG_RC_ATI_REMOTE is not set
# CONFIG_IR_ENE is not set
# CONFIG_IR_IMON is not set
# CONFIG_IR_IMON_RAW is not set
# CONFIG_IR_MCEUSB is not set
# CONFIG_IR_ITE_CIR is not set
# CONFIG_IR_FINTEK is not set
# CONFIG_IR_NUVOTON is not set
# CONFIG_IR_REDRAT3 is not set
# CONFIG_IR_STREAMZAP is not set
# CONFIG_IR_WINBOND_CIR is not set
# CONFIG_IR_IGORPLUGUSB is not set
# CONFIG_IR_IGUANA is not set
# CONFIG_IR_TTUSBIR is not set
CONFIG_RC_LOOPBACK=m
# CONFIG_IR_SERIAL is not set
# CONFIG_IR_SIR is not set
# CONFIG_RC_XBOX_DVD is not set
CONFIG_MEDIA_SUPPORT=y

#
# Multimedia core support
#
CONFIG_MEDIA_CAMERA_SUPPORT=y
CONFIG_MEDIA_ANALOG_TV_SUPPORT=y
# CONFIG_MEDIA_DIGITAL_TV_SUPPORT is not set
# CONFIG_MEDIA_RADIO_SUPPORT is not set
CONFIG_MEDIA_SDR_SUPPORT=y
# CONFIG_MEDIA_CEC_SUPPORT is not set
# CONFIG_MEDIA_CONTROLLER is not set
CONFIG_VIDEO_DEV=y
CONFIG_VIDEO_V4L2=y
CONFIG_VIDEO_V4L2_I2C=y
CONFIG_VIDEO_ADV_DEBUG=y
# CONFIG_VIDEO_FIXED_MINOR_RANGES is not set
CONFIG_V4L2_MEM2MEM_DEV=y
CONFIG_V4L2_FWNODE=y

#
# Media drivers
#
# CONFIG_MEDIA_PCI_SUPPORT is not set
# CONFIG_V4L_PLATFORM_DRIVERS is not set
# CONFIG_V4L_MEM2MEM_DRIVERS is not set
CONFIG_V4L_TEST_DRIVERS=y
# CONFIG_VIDEO_VIVID is not set
CONFIG_VIDEO_VIM2M=y
# CONFIG_VIDEO_VICODEC is not set
# CONFIG_SDR_PLATFORM_DRIVERS is not set

#
# Supported MMC/SDIO adapters
#
CONFIG_VIDEOBUF2_CORE=y
CONFIG_VIDEOBUF2_V4L2=y
CONFIG_VIDEOBUF2_MEMOPS=y
CONFIG_VIDEOBUF2_VMALLOC=y

#
# Media ancillary drivers (tuners, sensors, i2c, spi, frontends)
#
# CONFIG_MEDIA_SUBDRV_AUTOSELECT is not set
CONFIG_MEDIA_ATTACH=y
CONFIG_VIDEO_IR_I2C=m

#
# I2C Encoders, decoders, sensors and other helper chips
#

#
# Audio decoders, processors and mixers
#
# CONFIG_VIDEO_TVAUDIO is not set
# CONFIG_VIDEO_TDA7432 is not set
CONFIG_VIDEO_TDA9840=y
CONFIG_VIDEO_TEA6415C=y
CONFIG_VIDEO_TEA6420=y
CONFIG_VIDEO_MSP3400=y
CONFIG_VIDEO_CS3308=y
CONFIG_VIDEO_CS5345=y
CONFIG_VIDEO_CS53L32A=y
CONFIG_VIDEO_TLV320AIC23B=y
CONFIG_VIDEO_UDA1342=y
CONFIG_VIDEO_WM8775=y
CONFIG_VIDEO_WM8739=y
# CONFIG_VIDEO_VP27SMPX is not set
CONFIG_VIDEO_SONY_BTF_MPX=y

#
# RDS decoders
#
CONFIG_VIDEO_SAA6588=y

#
# Video decoders
#
CONFIG_VIDEO_ADV7183=y
# CONFIG_VIDEO_BT819 is not set
CONFIG_VIDEO_BT856=y
# CONFIG_VIDEO_BT866 is not set
CONFIG_VIDEO_KS0127=y
CONFIG_VIDEO_ML86V7667=y
CONFIG_VIDEO_SAA7110=y
CONFIG_VIDEO_SAA711X=y
# CONFIG_VIDEO_TVP514X is not set
CONFIG_VIDEO_TVP5150=y
CONFIG_VIDEO_TVP7002=y
CONFIG_VIDEO_TW2804=y
CONFIG_VIDEO_TW9903=y
# CONFIG_VIDEO_TW9906 is not set
CONFIG_VIDEO_TW9910=y
# CONFIG_VIDEO_VPX3220 is not set

#
# Video and audio decoders
#
CONFIG_VIDEO_SAA717X=y
CONFIG_VIDEO_CX25840=y

#
# Video encoders
#
CONFIG_VIDEO_SAA7127=y
CONFIG_VIDEO_SAA7185=y
CONFIG_VIDEO_ADV7170=y
CONFIG_VIDEO_ADV7175=y
CONFIG_VIDEO_ADV7343=y
CONFIG_VIDEO_ADV7393=y
CONFIG_VIDEO_AK881X=y
# CONFIG_VIDEO_THS8200 is not set

#
# Camera sensor devices
#
CONFIG_VIDEO_OV2640=y
CONFIG_VIDEO_OV2659=y
CONFIG_VIDEO_OV6650=y
CONFIG_VIDEO_OV5695=y
CONFIG_VIDEO_OV772X=y
# CONFIG_VIDEO_OV7640 is not set
CONFIG_VIDEO_OV7670=y
# CONFIG_VIDEO_OV7740 is not set
CONFIG_VIDEO_OV9640=y
# CONFIG_VIDEO_VS6624 is not set
# CONFIG_VIDEO_MT9M111 is not set
# CONFIG_VIDEO_MT9T112 is not set
CONFIG_VIDEO_MT9V011=y
CONFIG_VIDEO_MT9V111=y
CONFIG_VIDEO_SR030PC30=y
# CONFIG_VIDEO_RJ54N1 is not set

#
# Lens drivers
#

#
# Flash devices
#

#
# Video improvement chips
#
CONFIG_VIDEO_UPD64031A=y
CONFIG_VIDEO_UPD64083=y

#
# Audio/Video compression chips
#
CONFIG_VIDEO_SAA6752HS=y

#
# SDR tuner chips
#
# CONFIG_SDR_MAX2175 is not set

#
# Miscellaneous helper chips
#
CONFIG_VIDEO_THS7303=y
CONFIG_VIDEO_M52790=y
CONFIG_VIDEO_I2C=y
# end of I2C Encoders, decoders, sensors and other helper chips

#
# SPI helper chips
#
# end of SPI helper chips

#
# Media SPI Adapters
#
# end of Media SPI Adapters

CONFIG_MEDIA_TUNER=y

#
# Customize TV tuners
#
CONFIG_MEDIA_TUNER_SIMPLE=y
CONFIG_MEDIA_TUNER_TDA18250=y
CONFIG_MEDIA_TUNER_TDA8290=y
CONFIG_MEDIA_TUNER_TDA827X=y
CONFIG_MEDIA_TUNER_TDA18271=y
CONFIG_MEDIA_TUNER_TDA9887=y
CONFIG_MEDIA_TUNER_TEA5761=y
# CONFIG_MEDIA_TUNER_TEA5767 is not set
CONFIG_MEDIA_TUNER_MSI001=y
CONFIG_MEDIA_TUNER_MT20XX=y
CONFIG_MEDIA_TUNER_MT2060=y
CONFIG_MEDIA_TUNER_MT2063=y
CONFIG_MEDIA_TUNER_MT2266=y
# CONFIG_MEDIA_TUNER_MT2131 is not set
# CONFIG_MEDIA_TUNER_QT1010 is not set
CONFIG_MEDIA_TUNER_XC2028=y
# CONFIG_MEDIA_TUNER_XC5000 is not set
# CONFIG_MEDIA_TUNER_XC4000 is not set
# CONFIG_MEDIA_TUNER_MXL5005S is not set
# CONFIG_MEDIA_TUNER_MXL5007T is not set
# CONFIG_MEDIA_TUNER_MC44S803 is not set
CONFIG_MEDIA_TUNER_MAX2165=y
# CONFIG_MEDIA_TUNER_TDA18218 is not set
CONFIG_MEDIA_TUNER_FC0011=y
CONFIG_MEDIA_TUNER_FC0012=y
# CONFIG_MEDIA_TUNER_FC0013 is not set
CONFIG_MEDIA_TUNER_TDA18212=y
CONFIG_MEDIA_TUNER_E4000=y
CONFIG_MEDIA_TUNER_FC2580=y
# CONFIG_MEDIA_TUNER_M88RS6000T is not set
# CONFIG_MEDIA_TUNER_TUA9001 is not set
CONFIG_MEDIA_TUNER_SI2157=y
CONFIG_MEDIA_TUNER_IT913X=y
# CONFIG_MEDIA_TUNER_R820T is not set
CONFIG_MEDIA_TUNER_MXL301RF=y
# CONFIG_MEDIA_TUNER_QM1D1C0042 is not set
CONFIG_MEDIA_TUNER_QM1D1B0004=y
# end of Customize TV tuners

#
# Customise DVB Frontends
#

#
# Tools to develop new frontends
#
# end of Customise DVB Frontends

#
# Graphics support
#
CONFIG_AGP=y
CONFIG_AGP_ALI=y
CONFIG_AGP_ATI=y
CONFIG_AGP_AMD=y
# CONFIG_AGP_AMD64 is not set
# CONFIG_AGP_INTEL is not set
CONFIG_AGP_NVIDIA=y
CONFIG_AGP_SIS=y
CONFIG_AGP_SWORKS=y
CONFIG_AGP_VIA=y
CONFIG_AGP_EFFICEON=y
CONFIG_VGA_ARB=y
CONFIG_VGA_ARB_MAX_GPUS=16
# CONFIG_VGA_SWITCHEROO is not set
CONFIG_DRM=y
CONFIG_DRM_MIPI_DBI=y
# CONFIG_DRM_DP_AUX_CHARDEV is not set
CONFIG_DRM_DEBUG_MM=y
CONFIG_DRM_EXPORT_FOR_TESTS=y
CONFIG_DRM_DEBUG_SELFTEST=m
CONFIG_DRM_KMS_HELPER=y
# CONFIG_DRM_DEBUG_DP_MST_TOPOLOGY_REFS is not set
# CONFIG_DRM_FBDEV_EMULATION is not set
# CONFIG_DRM_LOAD_EDID_FIRMWARE is not set
CONFIG_DRM_DP_CEC=y
CONFIG_DRM_TTM=y
CONFIG_DRM_TTM_DMA_PAGE_POOL=y
CONFIG_DRM_VRAM_HELPER=y
CONFIG_DRM_TTM_HELPER=y
CONFIG_DRM_GEM_CMA_HELPER=y
CONFIG_DRM_KMS_CMA_HELPER=y
CONFIG_DRM_GEM_SHMEM_HELPER=y
CONFIG_DRM_VM=y
CONFIG_DRM_SCHED=y

#
# I2C encoder or helper chips
#
CONFIG_DRM_I2C_CH7006=y
# CONFIG_DRM_I2C_SIL164 is not set
CONFIG_DRM_I2C_NXP_TDA998X=y
CONFIG_DRM_I2C_NXP_TDA9950=y
# end of I2C encoder or helper chips

#
# ARM devices
#
# end of ARM devices

# CONFIG_DRM_RADEON is not set
# CONFIG_DRM_AMDGPU is not set

#
# ACP (Audio CoProcessor) Configuration
#
# end of ACP (Audio CoProcessor) Configuration

# CONFIG_DRM_NOUVEAU is not set
# CONFIG_DRM_I915 is not set
# CONFIG_DRM_VGEM is not set
CONFIG_DRM_VKMS=y
CONFIG_DRM_VMWGFX=y
CONFIG_DRM_VMWGFX_FBCON=y
CONFIG_DRM_GMA500=y
# CONFIG_DRM_GMA600 is not set
CONFIG_DRM_GMA3600=y
CONFIG_DRM_AST=y
CONFIG_DRM_MGAG200=y
CONFIG_DRM_CIRRUS_QEMU=y
CONFIG_DRM_QXL=y
# CONFIG_DRM_BOCHS is not set
# CONFIG_DRM_VIRTIO_GPU is not set
CONFIG_DRM_PANEL=y

#
# Display Panels
#
# end of Display Panels

CONFIG_DRM_BRIDGE=y
CONFIG_DRM_PANEL_BRIDGE=y

#
# Display Interface Bridges
#
CONFIG_DRM_ANALOGIX_ANX78XX=y
CONFIG_DRM_ANALOGIX_DP=y
# end of Display Interface Bridges

CONFIG_DRM_ETNAVIV=y
CONFIG_DRM_ETNAVIV_THERMAL=y
CONFIG_TINYDRM_HX8357D=y
CONFIG_TINYDRM_ILI9225=y
# CONFIG_TINYDRM_ILI9341 is not set
CONFIG_TINYDRM_MI0283QT=y
# CONFIG_TINYDRM_REPAPER is not set
CONFIG_TINYDRM_ST7586=y
CONFIG_TINYDRM_ST7735R=y
CONFIG_DRM_XEN=y
CONFIG_DRM_XEN_FRONTEND=y
# CONFIG_DRM_VBOXVIDEO is not set
CONFIG_DRM_LEGACY=y
CONFIG_DRM_TDFX=y
CONFIG_DRM_R128=y
CONFIG_DRM_MGA=y
CONFIG_DRM_SIS=y
CONFIG_DRM_VIA=y
# CONFIG_DRM_SAVAGE is not set
CONFIG_DRM_PANEL_ORIENTATION_QUIRKS=y
CONFIG_DRM_LIB_RANDOM=y

#
# Frame buffer Devices
#
CONFIG_FB_CMDLINE=y
CONFIG_FB_NOTIFY=y
CONFIG_FB=y
CONFIG_FIRMWARE_EDID=y
CONFIG_FB_DDC=y
CONFIG_FB_BOOT_VESA_SUPPORT=y
CONFIG_FB_CFB_FILLRECT=y
CONFIG_FB_CFB_COPYAREA=y
CONFIG_FB_CFB_IMAGEBLIT=y
CONFIG_FB_SYS_FILLRECT=y
CONFIG_FB_SYS_COPYAREA=y
CONFIG_FB_SYS_IMAGEBLIT=y
CONFIG_FB_FOREIGN_ENDIAN=y
# CONFIG_FB_BOTH_ENDIAN is not set
CONFIG_FB_BIG_ENDIAN=y
# CONFIG_FB_LITTLE_ENDIAN is not set
CONFIG_FB_SYS_FOPS=y
CONFIG_FB_DEFERRED_IO=y
CONFIG_FB_HECUBA=y
CONFIG_FB_SVGALIB=y
CONFIG_FB_BACKLIGHT=y
CONFIG_FB_MODE_HELPERS=y
CONFIG_FB_TILEBLITTING=y

#
# Frame buffer hardware drivers
#
CONFIG_FB_CIRRUS=y
# CONFIG_FB_PM2 is not set
CONFIG_FB_CYBER2000=y
CONFIG_FB_CYBER2000_DDC=y
# CONFIG_FB_ARC is not set
# CONFIG_FB_ASILIANT is not set
CONFIG_FB_IMSTT=y
# CONFIG_FB_VGA16 is not set
CONFIG_FB_UVESA=y
CONFIG_FB_VESA=y
# CONFIG_FB_EFI is not set
CONFIG_FB_N411=y
CONFIG_FB_HGA=y
# CONFIG_FB_OPENCORES is not set
# CONFIG_FB_S1D13XXX is not set
CONFIG_FB_NVIDIA=y
CONFIG_FB_NVIDIA_I2C=y
# CONFIG_FB_NVIDIA_DEBUG is not set
CONFIG_FB_NVIDIA_BACKLIGHT=y
# CONFIG_FB_RIVA is not set
CONFIG_FB_I740=y
# CONFIG_FB_LE80578 is not set
# CONFIG_FB_MATROX is not set
CONFIG_FB_RADEON=y
# CONFIG_FB_RADEON_I2C is not set
# CONFIG_FB_RADEON_BACKLIGHT is not set
# CONFIG_FB_RADEON_DEBUG is not set
CONFIG_FB_ATY128=y
CONFIG_FB_ATY128_BACKLIGHT=y
CONFIG_FB_ATY=y
# CONFIG_FB_ATY_CT is not set
# CONFIG_FB_ATY_GX is not set
CONFIG_FB_ATY_BACKLIGHT=y
CONFIG_FB_S3=y
# CONFIG_FB_S3_DDC is not set
CONFIG_FB_SAVAGE=y
# CONFIG_FB_SAVAGE_I2C is not set
# CONFIG_FB_SAVAGE_ACCEL is not set
# CONFIG_FB_SIS is not set
CONFIG_FB_VIA=y
# CONFIG_FB_VIA_DIRECT_PROCFS is not set
CONFIG_FB_VIA_X_COMPATIBILITY=y
# CONFIG_FB_NEOMAGIC is not set
CONFIG_FB_KYRO=y
CONFIG_FB_3DFX=y
# CONFIG_FB_3DFX_ACCEL is not set
CONFIG_FB_3DFX_I2C=y
# CONFIG_FB_VOODOO1 is not set
CONFIG_FB_VT8623=y
# CONFIG_FB_TRIDENT is not set
CONFIG_FB_ARK=y
# CONFIG_FB_PM3 is not set
# CONFIG_FB_CARMINE is not set
# CONFIG_FB_GEODE is not set
# CONFIG_FB_SM501 is not set
# CONFIG_FB_IBM_GXT4500 is not set
# CONFIG_FB_GOLDFISH is not set
CONFIG_FB_VIRTUAL=y
CONFIG_XEN_FBDEV_FRONTEND=y
# CONFIG_FB_METRONOME is not set
# CONFIG_FB_MB862XX is not set
CONFIG_FB_SIMPLE=y
# CONFIG_FB_SM712 is not set
# end of Frame buffer Devices

#
# Backlight & LCD device support
#
CONFIG_LCD_CLASS_DEVICE=y
# CONFIG_LCD_L4F00242T03 is not set
CONFIG_LCD_LMS283GF05=y
CONFIG_LCD_LTV350QV=y
# CONFIG_LCD_ILI922X is not set
CONFIG_LCD_ILI9320=y
CONFIG_LCD_TDO24M=y
# CONFIG_LCD_VGG2432A4 is not set
# CONFIG_LCD_PLATFORM is not set
CONFIG_LCD_AMS369FG06=y
CONFIG_LCD_LMS501KF03=y
CONFIG_LCD_HX8357=y
CONFIG_LCD_OTM3225A=y
CONFIG_BACKLIGHT_CLASS_DEVICE=y
# CONFIG_BACKLIGHT_GENERIC is not set
CONFIG_BACKLIGHT_PWM=y
CONFIG_BACKLIGHT_DA903X=y
CONFIG_BACKLIGHT_DA9052=y
# CONFIG_BACKLIGHT_APPLE is not set
CONFIG_BACKLIGHT_QCOM_WLED=y
CONFIG_BACKLIGHT_SAHARA=y
# CONFIG_BACKLIGHT_ADP8860 is not set
# CONFIG_BACKLIGHT_ADP8870 is not set
# CONFIG_BACKLIGHT_PCF50633 is not set
# CONFIG_BACKLIGHT_AAT2870 is not set
# CONFIG_BACKLIGHT_LM3630A is not set
CONFIG_BACKLIGHT_LM3639=y
# CONFIG_BACKLIGHT_LP855X is not set
CONFIG_BACKLIGHT_PANDORA=y
CONFIG_BACKLIGHT_AS3711=y
# CONFIG_BACKLIGHT_GPIO is not set
CONFIG_BACKLIGHT_LV5207LP=y
CONFIG_BACKLIGHT_BD6107=y
# CONFIG_BACKLIGHT_ARCXCNN is not set
# end of Backlight & LCD device support

CONFIG_VGASTATE=y
CONFIG_VIDEOMODE_HELPERS=y
CONFIG_HDMI=y
CONFIG_LOGO=y
# CONFIG_LOGO_LINUX_MONO is not set
CONFIG_LOGO_LINUX_VGA16=y
CONFIG_LOGO_LINUX_CLUT224=y
# end of Graphics support

CONFIG_SOUND=y
CONFIG_SND=y
CONFIG_SND_TIMER=y
CONFIG_SND_PCM=y
CONFIG_SND_HWDEP=y
CONFIG_SND_SEQ_DEVICE=y
CONFIG_SND_RAWMIDI=y
# CONFIG_SND_OSSEMUL is not set
CONFIG_SND_PCM_TIMER=y
# CONFIG_SND_DYNAMIC_MINORS is not set
CONFIG_SND_SUPPORT_OLD_API=y
CONFIG_SND_PROC_FS=y
# CONFIG_SND_VERBOSE_PROCFS is not set
# CONFIG_SND_VERBOSE_PRINTK is not set
# CONFIG_SND_DEBUG is not set
CONFIG_SND_DMA_SGBUF=y
CONFIG_SND_SEQUENCER=y
CONFIG_SND_SEQ_DUMMY=y
CONFIG_SND_SEQ_MIDI_EVENT=y
CONFIG_SND_SEQ_MIDI=y
CONFIG_SND_VX_LIB=y
# CONFIG_SND_DRIVERS is not set
# CONFIG_SND_PCI is not set

#
# HD-Audio
#
# end of HD-Audio

CONFIG_SND_HDA_PREALLOC_SIZE=0
CONFIG_SND_SPI=y
CONFIG_SND_FIREWIRE=y
CONFIG_SND_FIREWIRE_LIB=y
CONFIG_SND_DICE=y
CONFIG_SND_OXFW=y
CONFIG_SND_ISIGHT=y
CONFIG_SND_FIREWORKS=y
# CONFIG_SND_BEBOB is not set
CONFIG_SND_FIREWIRE_DIGI00X=y
CONFIG_SND_FIREWIRE_TASCAM=y
CONFIG_SND_FIREWIRE_MOTU=y
CONFIG_SND_FIREFACE=y
CONFIG_SND_PCMCIA=y
CONFIG_SND_VXPOCKET=y
CONFIG_SND_PDAUDIOCF=y
# CONFIG_SND_SOC is not set
# CONFIG_SND_X86 is not set
CONFIG_SND_XEN_FRONTEND=y

#
# HID support
#
CONFIG_HID=y
CONFIG_HID_BATTERY_STRENGTH=y
# CONFIG_HIDRAW is not set
CONFIG_UHID=y
CONFIG_HID_GENERIC=y

#
# Special HID drivers
#
# CONFIG_HID_A4TECH is not set
CONFIG_HID_ACRUX=y
# CONFIG_HID_ACRUX_FF is not set
CONFIG_HID_APPLE=y
# CONFIG_HID_ASUS is not set
CONFIG_HID_AUREAL=y
# CONFIG_HID_BELKIN is not set
CONFIG_HID_CHERRY=y
CONFIG_HID_CHICONY=y
CONFIG_HID_COUGAR=y
CONFIG_HID_MACALLY=y
CONFIG_HID_PRODIKEYS=y
CONFIG_HID_CMEDIA=y
CONFIG_HID_CYPRESS=y
CONFIG_HID_DRAGONRISE=y
# CONFIG_DRAGONRISE_FF is not set
# CONFIG_HID_EMS_FF is not set
CONFIG_HID_ELECOM=y
# CONFIG_HID_EZKEY is not set
CONFIG_HID_GEMBIRD=y
# CONFIG_HID_GFRM is not set
# CONFIG_HID_KEYTOUCH is not set
CONFIG_HID_KYE=y
CONFIG_HID_WALTOP=y
# CONFIG_HID_VIEWSONIC is not set
CONFIG_HID_GYRATION=y
CONFIG_HID_ICADE=y
CONFIG_HID_ITE=y
CONFIG_HID_JABRA=y
CONFIG_HID_TWINHAN=y
CONFIG_HID_KENSINGTON=y
CONFIG_HID_LCPOWER=y
CONFIG_HID_LED=y
CONFIG_HID_LENOVO=y
# CONFIG_HID_LOGITECH is not set
# CONFIG_HID_MAGICMOUSE is not set
# CONFIG_HID_MALTRON is not set
CONFIG_HID_MAYFLASH=y
CONFIG_HID_REDRAGON=y
CONFIG_HID_MICROSOFT=y
CONFIG_HID_MONTEREY=y
CONFIG_HID_MULTITOUCH=y
# CONFIG_HID_NTI is not set
CONFIG_HID_ORTEK=y
CONFIG_HID_PANTHERLORD=y
CONFIG_PANTHERLORD_FF=y
CONFIG_HID_PETALYNX=y
CONFIG_HID_PICOLCD=y
CONFIG_HID_PICOLCD_FB=y
CONFIG_HID_PICOLCD_BACKLIGHT=y
CONFIG_HID_PICOLCD_LCD=y
CONFIG_HID_PICOLCD_LEDS=y
# CONFIG_HID_PLANTRONICS is not set
# CONFIG_HID_PRIMAX is not set
CONFIG_HID_SAITEK=y
# CONFIG_HID_SAMSUNG is not set
CONFIG_HID_SPEEDLINK=y
CONFIG_HID_STEAM=y
CONFIG_HID_STEELSERIES=y
# CONFIG_HID_SUNPLUS is not set
CONFIG_HID_RMI=y
CONFIG_HID_GREENASIA=y
# CONFIG_GREENASIA_FF is not set
CONFIG_HID_SMARTJOYPLUS=y
# CONFIG_SMARTJOYPLUS_FF is not set
# CONFIG_HID_TIVO is not set
CONFIG_HID_TOPSEED=y
# CONFIG_HID_THINGM is not set
CONFIG_HID_THRUSTMASTER=y
# CONFIG_THRUSTMASTER_FF is not set
CONFIG_HID_UDRAW_PS3=y
CONFIG_HID_WIIMOTE=y
CONFIG_HID_XINMO=y
CONFIG_HID_ZEROPLUS=y
# CONFIG_ZEROPLUS_FF is not set
# CONFIG_HID_ZYDACRON is not set
CONFIG_HID_SENSOR_HUB=y
CONFIG_HID_SENSOR_CUSTOM_SENSOR=y
CONFIG_HID_ALPS=y
# end of Special HID drivers

#
# I2C HID support
#
# CONFIG_I2C_HID is not set
# end of I2C HID support
# end of HID support

CONFIG_USB_OHCI_LITTLE_ENDIAN=y
CONFIG_USB_SUPPORT=y
# CONFIG_USB_LED_TRIG is not set
# CONFIG_USB_ULPI_BUS is not set
# CONFIG_USB_CONN_GPIO is not set
CONFIG_USB_ARCH_HAS_HCD=y
# CONFIG_USB is not set
CONFIG_USB_PCI=y

#
# USB port drivers
#

#
# USB Physical Layer drivers
#
# CONFIG_NOP_USB_XCEIV is not set
# CONFIG_USB_GPIO_VBUS is not set
# end of USB Physical Layer drivers

# CONFIG_USB_GADGET is not set
# CONFIG_TYPEC is not set
# CONFIG_USB_ROLE_SWITCH is not set
CONFIG_MMC=y
# CONFIG_MMC_BLOCK is not set
CONFIG_SDIO_UART=y
# CONFIG_MMC_TEST is not set

#
# MMC/SD/SDIO Host Controller Drivers
#
# CONFIG_MMC_DEBUG is not set
# CONFIG_MMC_SDHCI is not set
CONFIG_MMC_WBSD=y
CONFIG_MMC_ALCOR=y
# CONFIG_MMC_TIFM_SD is not set
CONFIG_MMC_GOLDFISH=y
CONFIG_MMC_SPI=y
CONFIG_MMC_SDRICOH_CS=y
CONFIG_MMC_CB710=y
# CONFIG_MMC_VIA_SDMMC is not set
CONFIG_MMC_USDHI6ROL0=y
CONFIG_MMC_REALTEK_PCI=y
CONFIG_MMC_CQHCI=y
CONFIG_MMC_TOSHIBA_PCI=y
CONFIG_MMC_MTK=y
CONFIG_MEMSTICK=y
CONFIG_MEMSTICK_DEBUG=y

#
# MemoryStick drivers
#
CONFIG_MEMSTICK_UNSAFE_RESUME=y
CONFIG_MSPRO_BLOCK=y
# CONFIG_MS_BLOCK is not set

#
# MemoryStick Host Controller Drivers
#
CONFIG_MEMSTICK_TIFM_MS=y
CONFIG_MEMSTICK_JMICRON_38X=y
# CONFIG_MEMSTICK_R592 is not set
# CONFIG_MEMSTICK_REALTEK_PCI is not set
CONFIG_NEW_LEDS=y
CONFIG_LEDS_CLASS=y
CONFIG_LEDS_CLASS_FLASH=y
# CONFIG_LEDS_BRIGHTNESS_HW_CHANGED is not set

#
# LED drivers
#
CONFIG_LEDS_APU=y
# CONFIG_LEDS_AS3645A is not set
CONFIG_LEDS_LM3530=y
CONFIG_LEDS_LM3532=y
CONFIG_LEDS_LM3642=y
# CONFIG_LEDS_LM3601X is not set
# CONFIG_LEDS_PCA9532 is not set
CONFIG_LEDS_GPIO=y
# CONFIG_LEDS_LP3944 is not set
CONFIG_LEDS_LP3952=y
CONFIG_LEDS_LP55XX_COMMON=y
CONFIG_LEDS_LP5521=y
CONFIG_LEDS_LP5523=y
CONFIG_LEDS_LP5562=y
# CONFIG_LEDS_LP8501 is not set
# CONFIG_LEDS_CLEVO_MAIL is not set
CONFIG_LEDS_PCA955X=y
# CONFIG_LEDS_PCA955X_GPIO is not set
# CONFIG_LEDS_PCA963X is not set
# CONFIG_LEDS_WM8350 is not set
CONFIG_LEDS_DA903X=y
CONFIG_LEDS_DA9052=y
# CONFIG_LEDS_DAC124S085 is not set
CONFIG_LEDS_PWM=y
# CONFIG_LEDS_REGULATOR is not set
# CONFIG_LEDS_BD2802 is not set
# CONFIG_LEDS_INTEL_SS4200 is not set
# CONFIG_LEDS_MC13783 is not set
# CONFIG_LEDS_TCA6507 is not set
CONFIG_LEDS_TLC591XX=y
# CONFIG_LEDS_LM355x is not set
CONFIG_LEDS_OT200=y
CONFIG_LEDS_MENF21BMC=y

#
# LED driver for blink(1) USB RGB LED is under Special HID drivers (HID_THINGM)
#
# CONFIG_LEDS_BLINKM is not set
CONFIG_LEDS_MLXCPLD=y
CONFIG_LEDS_MLXREG=y
CONFIG_LEDS_USER=y
# CONFIG_LEDS_NIC78BX is not set
CONFIG_LEDS_TI_LMU_COMMON=y
CONFIG_LEDS_LM36274=y
# CONFIG_LEDS_TPS6105X is not set

#
# LED Triggers
#
CONFIG_LEDS_TRIGGERS=y
# CONFIG_LEDS_TRIGGER_TIMER is not set
CONFIG_LEDS_TRIGGER_ONESHOT=y
# CONFIG_LEDS_TRIGGER_HEARTBEAT is not set
CONFIG_LEDS_TRIGGER_BACKLIGHT=y
CONFIG_LEDS_TRIGGER_CPU=y
CONFIG_LEDS_TRIGGER_ACTIVITY=y
# CONFIG_LEDS_TRIGGER_GPIO is not set
CONFIG_LEDS_TRIGGER_DEFAULT_ON=y

#
# iptables trigger is under Netfilter config (LED target)
#
CONFIG_LEDS_TRIGGER_TRANSIENT=y
CONFIG_LEDS_TRIGGER_CAMERA=y
CONFIG_LEDS_TRIGGER_PANIC=y
CONFIG_LEDS_TRIGGER_NETDEV=y
CONFIG_LEDS_TRIGGER_PATTERN=y
# CONFIG_LEDS_TRIGGER_AUDIO is not set
CONFIG_ACCESSIBILITY=y
# CONFIG_INFINIBAND is not set
CONFIG_EDAC_ATOMIC_SCRUB=y
CONFIG_EDAC_SUPPORT=y
CONFIG_RTC_LIB=y
CONFIG_RTC_MC146818_LIB=y
CONFIG_RTC_CLASS=y
# CONFIG_RTC_HCTOSYS is not set
CONFIG_RTC_SYSTOHC=y
CONFIG_RTC_SYSTOHC_DEVICE="rtc0"
CONFIG_RTC_DEBUG=y
CONFIG_RTC_NVMEM=y

#
# RTC interfaces
#
CONFIG_RTC_INTF_SYSFS=y
# CONFIG_RTC_INTF_PROC is not set
# CONFIG_RTC_INTF_DEV is not set
# CONFIG_RTC_DRV_TEST is not set

#
# I2C RTC drivers
#
CONFIG_RTC_DRV_88PM80X=y
# CONFIG_RTC_DRV_ABB5ZES3 is not set
CONFIG_RTC_DRV_ABEOZ9=y
CONFIG_RTC_DRV_ABX80X=y
# CONFIG_RTC_DRV_DS1307 is not set
# CONFIG_RTC_DRV_DS1374 is not set
CONFIG_RTC_DRV_DS1672=y
CONFIG_RTC_DRV_MAX6900=y
# CONFIG_RTC_DRV_MAX8907 is not set
CONFIG_RTC_DRV_MAX8998=y
CONFIG_RTC_DRV_RS5C372=y
CONFIG_RTC_DRV_ISL1208=y
CONFIG_RTC_DRV_ISL12022=y
CONFIG_RTC_DRV_X1205=y
# CONFIG_RTC_DRV_PCF8523 is not set
CONFIG_RTC_DRV_PCF85063=y
CONFIG_RTC_DRV_PCF85363=y
CONFIG_RTC_DRV_PCF8563=y
# CONFIG_RTC_DRV_PCF8583 is not set
CONFIG_RTC_DRV_M41T80=y
# CONFIG_RTC_DRV_M41T80_WDT is not set
CONFIG_RTC_DRV_BQ32K=y
CONFIG_RTC_DRV_TPS6586X=y
# CONFIG_RTC_DRV_TPS80031 is not set
# CONFIG_RTC_DRV_S35390A is not set
CONFIG_RTC_DRV_FM3130=y
# CONFIG_RTC_DRV_RX8010 is not set
# CONFIG_RTC_DRV_RX8581 is not set
CONFIG_RTC_DRV_RX8025=y
CONFIG_RTC_DRV_EM3027=y
CONFIG_RTC_DRV_RV3028=y
CONFIG_RTC_DRV_RV8803=y
# CONFIG_RTC_DRV_S5M is not set
CONFIG_RTC_DRV_SD3078=y

#
# SPI RTC drivers
#
CONFIG_RTC_DRV_M41T93=y
CONFIG_RTC_DRV_M41T94=y
CONFIG_RTC_DRV_DS1302=y
# CONFIG_RTC_DRV_DS1305 is not set
# CONFIG_RTC_DRV_DS1343 is not set
# CONFIG_RTC_DRV_DS1347 is not set
# CONFIG_RTC_DRV_DS1390 is not set
# CONFIG_RTC_DRV_MAX6916 is not set
CONFIG_RTC_DRV_R9701=y
# CONFIG_RTC_DRV_RX4581 is not set
CONFIG_RTC_DRV_RX6110=y
CONFIG_RTC_DRV_RS5C348=y
CONFIG_RTC_DRV_MAX6902=y
# CONFIG_RTC_DRV_PCF2123 is not set
CONFIG_RTC_DRV_MCP795=y
CONFIG_RTC_I2C_AND_SPI=y

#
# SPI and I2C RTC drivers
#
CONFIG_RTC_DRV_DS3232=y
# CONFIG_RTC_DRV_DS3232_HWMON is not set
# CONFIG_RTC_DRV_PCF2127 is not set
# CONFIG_RTC_DRV_RV3029C2 is not set

#
# Platform RTC drivers
#
CONFIG_RTC_DRV_CMOS=y
CONFIG_RTC_DRV_DS1286=y
# CONFIG_RTC_DRV_DS1511 is not set
CONFIG_RTC_DRV_DS1553=y
# CONFIG_RTC_DRV_DS1685_FAMILY is not set
# CONFIG_RTC_DRV_DS1742 is not set
CONFIG_RTC_DRV_DS2404=y
# CONFIG_RTC_DRV_DA9052 is not set
CONFIG_RTC_DRV_DA9055=y
# CONFIG_RTC_DRV_DA9063 is not set
CONFIG_RTC_DRV_STK17TA8=y
# CONFIG_RTC_DRV_M48T86 is not set
# CONFIG_RTC_DRV_M48T35 is not set
CONFIG_RTC_DRV_M48T59=y
# CONFIG_RTC_DRV_MSM6242 is not set
CONFIG_RTC_DRV_BQ4802=y
CONFIG_RTC_DRV_RP5C01=y
# CONFIG_RTC_DRV_V3020 is not set
CONFIG_RTC_DRV_WM8350=y
CONFIG_RTC_DRV_PCF50633=y
CONFIG_RTC_DRV_AB3100=y
# CONFIG_RTC_DRV_CROS_EC is not set

#
# on-CPU RTC drivers
#
# CONFIG_RTC_DRV_FTRTC010 is not set
CONFIG_RTC_DRV_MC13XXX=y

#
# HID Sensor RTC drivers
#
CONFIG_DMADEVICES=y
# CONFIG_DMADEVICES_DEBUG is not set

#
# DMA Devices
#
CONFIG_DMA_ENGINE=y
CONFIG_DMA_VIRTUAL_CHANNELS=y
CONFIG_DMA_ACPI=y
CONFIG_ALTERA_MSGDMA=y
CONFIG_INTEL_IDMA64=y
# CONFIG_PCH_DMA is not set
CONFIG_PLX_DMA=y
# CONFIG_TIMB_DMA is not set
# CONFIG_QCOM_HIDMA_MGMT is not set
CONFIG_QCOM_HIDMA=y
CONFIG_DW_DMAC_CORE=y
CONFIG_DW_DMAC=y
# CONFIG_DW_DMAC_PCI is not set
CONFIG_HSU_DMA=y
CONFIG_SF_PDMA=y

#
# DMA Clients
#
# CONFIG_ASYNC_TX_DMA is not set
CONFIG_DMATEST=y
CONFIG_DMA_ENGINE_RAID=y

#
# DMABUF options
#
CONFIG_SYNC_FILE=y
CONFIG_SW_SYNC=y
# CONFIG_UDMABUF is not set
CONFIG_DMABUF_SELFTESTS=y
CONFIG_DMABUF_HEAPS=y
# CONFIG_DMABUF_HEAPS_SYSTEM is not set
CONFIG_DMABUF_HEAPS_CMA=y
# end of DMABUF options

CONFIG_AUXDISPLAY=y
# CONFIG_HD44780 is not set
CONFIG_KS0108=y
CONFIG_KS0108_PORT=0x378
CONFIG_KS0108_DELAY=2
CONFIG_CFAG12864B=y
CONFIG_CFAG12864B_RATE=20
# CONFIG_IMG_ASCII_LCD is not set
CONFIG_PARPORT_PANEL=y
CONFIG_PANEL_PARPORT=0
CONFIG_PANEL_PROFILE=5
# CONFIG_PANEL_CHANGE_MESSAGE is not set
# CONFIG_CHARLCD_BL_OFF is not set
# CONFIG_CHARLCD_BL_ON is not set
CONFIG_CHARLCD_BL_FLASH=y
CONFIG_PANEL=y
CONFIG_CHARLCD=y
CONFIG_UIO=y
CONFIG_UIO_CIF=y
CONFIG_UIO_PDRV_GENIRQ=y
CONFIG_UIO_DMEM_GENIRQ=y
CONFIG_UIO_AEC=y
# CONFIG_UIO_SERCOS3 is not set
CONFIG_UIO_PCI_GENERIC=y
CONFIG_UIO_NETX=y
CONFIG_UIO_PRUSS=y
CONFIG_UIO_MF624=y
CONFIG_VIRT_DRIVERS=y
CONFIG_VBOXGUEST=y
CONFIG_VIRTIO=y
# CONFIG_VIRTIO_MENU is not set

#
# Microsoft Hyper-V guest support
#
# CONFIG_HYPERV is not set
# end of Microsoft Hyper-V guest support

#
# Xen driver support
#
# CONFIG_XEN_BALLOON is not set
CONFIG_XEN_DEV_EVTCHN=y
CONFIG_XEN_BACKEND=y
CONFIG_XENFS=y
# CONFIG_XEN_COMPAT_XENFS is not set
# CONFIG_XEN_SYS_HYPERVISOR is not set
CONFIG_XEN_XENBUS_FRONTEND=y
CONFIG_XEN_GNTDEV=y
# CONFIG_XEN_GNTDEV_DMABUF is not set
# CONFIG_XEN_GRANT_DEV_ALLOC is not set
CONFIG_XEN_GRANT_DMA_ALLOC=y
CONFIG_SWIOTLB_XEN=y
CONFIG_XEN_PCIDEV_BACKEND=y
# CONFIG_XEN_PVCALLS_FRONTEND is not set
# CONFIG_XEN_PVCALLS_BACKEND is not set
# CONFIG_XEN_SCSI_BACKEND is not set
CONFIG_XEN_PRIVCMD=y
CONFIG_XEN_ACPI_PROCESSOR=m
CONFIG_XEN_HAVE_PVMMU=y
CONFIG_XEN_ACPI=y
CONFIG_XEN_SYMS=y
CONFIG_XEN_HAVE_VPMU=y
CONFIG_XEN_FRONT_PGDIR_SHBUF=y
# end of Xen driver support

CONFIG_GREYBUS=y
CONFIG_STAGING=y
CONFIG_COMEDI=y
CONFIG_COMEDI_DEBUG=y
CONFIG_COMEDI_DEFAULT_BUF_SIZE_KB=2048
CONFIG_COMEDI_DEFAULT_BUF_MAXSIZE_KB=20480
# CONFIG_COMEDI_MISC_DRIVERS is not set
# CONFIG_COMEDI_ISA_DRIVERS is not set
# CONFIG_COMEDI_PCI_DRIVERS is not set
# CONFIG_COMEDI_PCMCIA_DRIVERS is not set
CONFIG_COMEDI_8255=y
CONFIG_COMEDI_8255_SA=y
# CONFIG_COMEDI_KCOMEDILIB is not set
# CONFIG_RTLLIB is not set
# CONFIG_RTL8723BS is not set

#
# IIO staging drivers
#

#
# Accelerometers
#
CONFIG_ADIS16203=y
CONFIG_ADIS16240=y
# end of Accelerometers

#
# Analog to digital converters
#
CONFIG_AD7816=y
CONFIG_AD7280=y
# end of Analog to digital converters

#
# Analog digital bi-direction converters
#
# CONFIG_ADT7316 is not set
# end of Analog digital bi-direction converters

#
# Capacitance to digital converters
#
# CONFIG_AD7150 is not set
CONFIG_AD7746=y
# end of Capacitance to digital converters

#
# Direct Digital Synthesis
#
CONFIG_AD9832=y
CONFIG_AD9834=y
# end of Direct Digital Synthesis

#
# Network Analyzer, Impedance Converters
#
CONFIG_AD5933=y
# end of Network Analyzer, Impedance Converters

#
# Active energy metering IC
#
# CONFIG_ADE7854 is not set
# end of Active energy metering IC

#
# Resolver to digital converters
#
CONFIG_AD2S1210=y
# end of Resolver to digital converters
# end of IIO staging drivers

CONFIG_FB_SM750=y

#
# Speakup console speech
#
# end of Speakup console speech

# CONFIG_STAGING_MEDIA is not set

#
# Android
#
# CONFIG_ASHMEM is not set
CONFIG_ION=y
CONFIG_ION_SYSTEM_HEAP=y
# CONFIG_ION_CMA_HEAP is not set
# end of Android

CONFIG_FIREWIRE_SERIAL=y
CONFIG_FWTTY_MAX_TOTAL_PORTS=64
CONFIG_FWTTY_MAX_CARD_PORTS=32
CONFIG_GOLDFISH_AUDIO=y
CONFIG_GS_FPGABOOT=y
CONFIG_UNISYSSPAR=y
# CONFIG_FB_TFT is not set
CONFIG_WILC1000=y
# CONFIG_WILC1000_SDIO is not set
CONFIG_WILC1000_SPI=y
CONFIG_MOST_COMPONENTS=y
# CONFIG_MOST_CDEV is not set
# CONFIG_MOST_NET is not set
CONFIG_MOST_SOUND=y
CONFIG_MOST_VIDEO=y
CONFIG_MOST_I2C=y
CONFIG_KS7010=y
# CONFIG_GREYBUS_AUDIO is not set
CONFIG_GREYBUS_BOOTROM=y
CONFIG_GREYBUS_FIRMWARE=y
# CONFIG_GREYBUS_HID is not set
# CONFIG_GREYBUS_LIGHT is not set
# CONFIG_GREYBUS_LOG is not set
# CONFIG_GREYBUS_LOOPBACK is not set
CONFIG_GREYBUS_POWER=y
# CONFIG_GREYBUS_RAW is not set
# CONFIG_GREYBUS_VIBRATOR is not set
# CONFIG_GREYBUS_BRIDGED_PHY is not set
# CONFIG_PI433 is not set

#
# Gasket devices
#
# end of Gasket devices

CONFIG_FIELDBUS_DEV=y
CONFIG_KPC2000=y
CONFIG_KPC2000_CORE=y
CONFIG_KPC2000_SPI=y
CONFIG_KPC2000_I2C=y
# CONFIG_KPC2000_DMA is not set
# CONFIG_QLGE is not set
CONFIG_NET_VENDOR_HP=y
# CONFIG_HP100 is not set
# CONFIG_X86_PLATFORM_DEVICES is not set
CONFIG_PMC_ATOM=y
CONFIG_GOLDFISH_PIPE=y
# CONFIG_MFD_CROS_EC is not set
CONFIG_CHROME_PLATFORMS=y
CONFIG_CHROMEOS_LAPTOP=y
CONFIG_CHROMEOS_PSTORE=y
# CONFIG_CHROMEOS_TBMC is not set
CONFIG_CROS_EC=y
CONFIG_CROS_EC_I2C=y
CONFIG_CROS_EC_SPI=y
# CONFIG_CROS_EC_LPC is not set
CONFIG_CROS_EC_PROTO=y
# CONFIG_CROS_KBD_LED_BACKLIGHT is not set
CONFIG_CROS_EC_CHARDEV=y
CONFIG_CROS_EC_LIGHTBAR=y
# CONFIG_CROS_EC_DEBUGFS is not set
CONFIG_CROS_EC_SENSORHUB=y
# CONFIG_CROS_EC_SYSFS is not set
CONFIG_CROS_USBPD_LOGGER=y
# CONFIG_MELLANOX_PLATFORM is not set
CONFIG_CLKDEV_LOOKUP=y
CONFIG_HAVE_CLK_PREPARE=y
CONFIG_COMMON_CLK=y

#
# Common Clock Framework
#
# CONFIG_COMMON_CLK_MAX9485 is not set
# CONFIG_COMMON_CLK_SI5341 is not set
CONFIG_COMMON_CLK_SI5351=y
# CONFIG_COMMON_CLK_SI544 is not set
CONFIG_COMMON_CLK_CDCE706=y
CONFIG_COMMON_CLK_CS2000_CP=y
CONFIG_COMMON_CLK_S2MPS11=y
# CONFIG_CLK_TWL6040 is not set
CONFIG_COMMON_CLK_PWM=y
# end of Common Clock Framework

CONFIG_HWSPINLOCK=y

#
# Clock Source drivers
#
CONFIG_CLKSRC_I8253=y
CONFIG_CLKEVT_I8253=y
CONFIG_I8253_LOCK=y
CONFIG_CLKBLD_I8253=y
# end of Clock Source drivers

CONFIG_MAILBOX=y
# CONFIG_PCC is not set
CONFIG_ALTERA_MBOX=y
CONFIG_IOMMU_SUPPORT=y

#
# Generic IOMMU Pagetable Support
#
# end of Generic IOMMU Pagetable Support

CONFIG_IOMMU_DEBUGFS=y

#
# Remoteproc drivers
#
# CONFIG_REMOTEPROC is not set
# end of Remoteproc drivers

#
# Rpmsg drivers
#
CONFIG_RPMSG=y
# CONFIG_RPMSG_CHAR is not set
CONFIG_RPMSG_QCOM_GLINK_NATIVE=y
CONFIG_RPMSG_QCOM_GLINK_RPM=y
CONFIG_RPMSG_VIRTIO=y
# end of Rpmsg drivers

# CONFIG_SOUNDWIRE is not set

#
# SOC (System On Chip) specific Drivers
#

#
# Amlogic SoC drivers
#
# end of Amlogic SoC drivers

#
# Aspeed SoC drivers
#
# end of Aspeed SoC drivers

#
# Broadcom SoC drivers
#
# end of Broadcom SoC drivers

#
# NXP/Freescale QorIQ SoC drivers
#
# end of NXP/Freescale QorIQ SoC drivers

#
# i.MX SoC drivers
#
# end of i.MX SoC drivers

#
# Qualcomm SoC drivers
#
# end of Qualcomm SoC drivers

CONFIG_SOC_TI=y

#
# Xilinx SoC drivers
#
CONFIG_XILINX_VCU=y
# end of Xilinx SoC drivers
# end of SOC (System On Chip) specific Drivers

CONFIG_PM_DEVFREQ=y

#
# DEVFREQ Governors
#
CONFIG_DEVFREQ_GOV_SIMPLE_ONDEMAND=y
# CONFIG_DEVFREQ_GOV_PERFORMANCE is not set
# CONFIG_DEVFREQ_GOV_POWERSAVE is not set
CONFIG_DEVFREQ_GOV_USERSPACE=y
CONFIG_DEVFREQ_GOV_PASSIVE=y

#
# DEVFREQ Drivers
#
CONFIG_PM_DEVFREQ_EVENT=y
CONFIG_EXTCON=y

#
# Extcon Device Drivers
#
CONFIG_EXTCON_ADC_JACK=y
CONFIG_EXTCON_FSA9480=y
# CONFIG_EXTCON_GPIO is not set
# CONFIG_EXTCON_INTEL_INT3496 is not set
CONFIG_EXTCON_MAX3355=y
CONFIG_EXTCON_MAX77693=y
# CONFIG_EXTCON_PTN5150 is not set
CONFIG_EXTCON_RT8973A=y
CONFIG_EXTCON_SM5502=y
# CONFIG_EXTCON_USB_GPIO is not set
# CONFIG_EXTCON_USBC_CROS_EC is not set
CONFIG_MEMORY=y
CONFIG_IIO=y
CONFIG_IIO_BUFFER=y
CONFIG_IIO_BUFFER_CB=y
CONFIG_IIO_BUFFER_HW_CONSUMER=y
CONFIG_IIO_KFIFO_BUF=y
CONFIG_IIO_TRIGGERED_BUFFER=y
CONFIG_IIO_CONFIGFS=y
CONFIG_IIO_TRIGGER=y
CONFIG_IIO_CONSUMERS_PER_TRIGGER=2
CONFIG_IIO_SW_DEVICE=y
# CONFIG_IIO_SW_TRIGGER is not set
CONFIG_IIO_TRIGGERED_EVENT=y

#
# Accelerometers
#
CONFIG_ADIS16201=y
# CONFIG_ADIS16209 is not set
CONFIG_ADXL345=y
# CONFIG_ADXL345_I2C is not set
CONFIG_ADXL345_SPI=y
CONFIG_ADXL372=y
# CONFIG_ADXL372_SPI is not set
CONFIG_ADXL372_I2C=y
# CONFIG_BMA180 is not set
CONFIG_BMA220=y
# CONFIG_BMA400 is not set
# CONFIG_BMC150_ACCEL is not set
# CONFIG_DA280 is not set
CONFIG_DA311=y
# CONFIG_DMARD09 is not set
# CONFIG_DMARD10 is not set
CONFIG_HID_SENSOR_ACCEL_3D=y
CONFIG_IIO_CROS_EC_ACCEL_LEGACY=y
CONFIG_KXSD9=y
CONFIG_KXSD9_SPI=y
CONFIG_KXSD9_I2C=y
CONFIG_KXCJK1013=y
CONFIG_MC3230=y
CONFIG_MMA7455=y
CONFIG_MMA7455_I2C=y
CONFIG_MMA7455_SPI=y
CONFIG_MMA7660=y
CONFIG_MMA8452=y
CONFIG_MMA9551_CORE=y
# CONFIG_MMA9551 is not set
CONFIG_MMA9553=y
CONFIG_MXC4005=y
CONFIG_MXC6255=y
CONFIG_SCA3000=y
CONFIG_STK8312=y
# CONFIG_STK8BA50 is not set
# end of Accelerometers

#
# Analog to digital converters
#
CONFIG_AD_SIGMA_DELTA=y
# CONFIG_AD7091R5 is not set
CONFIG_AD7124=y
# CONFIG_AD7192 is not set
CONFIG_AD7266=y
CONFIG_AD7291=y
# CONFIG_AD7292 is not set
# CONFIG_AD7298 is not set
CONFIG_AD7476=y
# CONFIG_AD7606_IFACE_PARALLEL is not set
# CONFIG_AD7606_IFACE_SPI is not set
CONFIG_AD7766=y
CONFIG_AD7768_1=y
CONFIG_AD7780=y
CONFIG_AD7791=y
CONFIG_AD7793=y
CONFIG_AD7887=y
CONFIG_AD7923=y
CONFIG_AD7949=y
# CONFIG_AD799X is not set
CONFIG_CC10001_ADC=y
CONFIG_DA9150_GPADC=y
CONFIG_HI8435=y
CONFIG_HX711=y
CONFIG_LTC2471=y
CONFIG_LTC2485=y
# CONFIG_LTC2496 is not set
CONFIG_LTC2497=y
CONFIG_MAX1027=y
# CONFIG_MAX11100 is not set
CONFIG_MAX1118=y
# CONFIG_MAX1363 is not set
CONFIG_MAX9611=y
# CONFIG_MCP320X is not set
CONFIG_MCP3422=y
CONFIG_MCP3911=y
CONFIG_MEN_Z188_ADC=y
CONFIG_NAU7802=y
# CONFIG_TI_ADC081C is not set
CONFIG_TI_ADC0832=y
CONFIG_TI_ADC084S021=y
CONFIG_TI_ADC12138=y
CONFIG_TI_ADC108S102=y
CONFIG_TI_ADC128S052=y
CONFIG_TI_ADC161S626=y
# CONFIG_TI_ADS1015 is not set
CONFIG_TI_ADS7950=y
CONFIG_TI_AM335X_ADC=y
CONFIG_TI_TLC4541=y
# CONFIG_TWL4030_MADC is not set
CONFIG_TWL6030_GPADC=y
CONFIG_XILINX_XADC=y
# end of Analog to digital converters

#
# Analog Front Ends
#
# end of Analog Front Ends

#
# Amplifiers
#
CONFIG_AD8366=y
CONFIG_HMC425=y
# end of Amplifiers

#
# Chemical Sensors
#
# CONFIG_ATLAS_PH_SENSOR is not set
CONFIG_BME680=y
CONFIG_BME680_I2C=y
CONFIG_BME680_SPI=y
# CONFIG_CCS811 is not set
# CONFIG_IAQCORE is not set
CONFIG_SENSIRION_SGP30=y
CONFIG_SPS30=y
# CONFIG_VZ89X is not set
# end of Chemical Sensors

CONFIG_IIO_CROS_EC_SENSORS_CORE=y
# CONFIG_IIO_CROS_EC_SENSORS is not set
# CONFIG_IIO_CROS_EC_SENSORS_LID_ANGLE is not set

#
# Hid Sensor IIO Common
#
CONFIG_HID_SENSOR_IIO_COMMON=y
CONFIG_HID_SENSOR_IIO_TRIGGER=y
# end of Hid Sensor IIO Common

CONFIG_IIO_MS_SENSORS_I2C=y

#
# SSP Sensor Common
#
# CONFIG_IIO_SSP_SENSORHUB is not set
# end of SSP Sensor Common

CONFIG_IIO_ST_SENSORS_I2C=y
CONFIG_IIO_ST_SENSORS_SPI=y
CONFIG_IIO_ST_SENSORS_CORE=y

#
# Digital to analog converters
#
CONFIG_AD5064=y
# CONFIG_AD5360 is not set
CONFIG_AD5380=y
CONFIG_AD5421=y
# CONFIG_AD5446 is not set
CONFIG_AD5449=y
CONFIG_AD5592R_BASE=y
# CONFIG_AD5592R is not set
CONFIG_AD5593R=y
CONFIG_AD5504=y
CONFIG_AD5624R_SPI=y
# CONFIG_AD5686_SPI is not set
# CONFIG_AD5696_I2C is not set
# CONFIG_AD5755 is not set
CONFIG_AD5758=y
CONFIG_AD5761=y
CONFIG_AD5764=y
# CONFIG_AD5770R is not set
CONFIG_AD5791=y
# CONFIG_AD7303 is not set
CONFIG_AD8801=y
CONFIG_DS4424=y
CONFIG_LTC1660=y
CONFIG_LTC2632=y
# CONFIG_M62332 is not set
# CONFIG_MAX517 is not set
# CONFIG_MCP4725 is not set
CONFIG_MCP4922=y
# CONFIG_TI_DAC082S085 is not set
# CONFIG_TI_DAC5571 is not set
CONFIG_TI_DAC7311=y
# CONFIG_TI_DAC7612 is not set
# end of Digital to analog converters

#
# IIO dummy driver
#
CONFIG_IIO_DUMMY_EVGEN=y
CONFIG_IIO_SIMPLE_DUMMY=y
CONFIG_IIO_SIMPLE_DUMMY_EVENTS=y
# CONFIG_IIO_SIMPLE_DUMMY_BUFFER is not set
# end of IIO dummy driver

#
# Frequency Synthesizers DDS/PLL
#

#
# Clock Generator/Distribution
#
CONFIG_AD9523=y
# end of Clock Generator/Distribution

#
# Phase-Locked Loop (PLL) frequency synthesizers
#
CONFIG_ADF4350=y
CONFIG_ADF4371=y
# end of Phase-Locked Loop (PLL) frequency synthesizers
# end of Frequency Synthesizers DDS/PLL

#
# Digital gyroscope sensors
#
CONFIG_ADIS16080=y
# CONFIG_ADIS16130 is not set
CONFIG_ADIS16136=y
# CONFIG_ADIS16260 is not set
CONFIG_ADXRS450=y
CONFIG_BMG160=y
CONFIG_BMG160_I2C=y
CONFIG_BMG160_SPI=y
CONFIG_FXAS21002C=y
CONFIG_FXAS21002C_I2C=y
CONFIG_FXAS21002C_SPI=y
CONFIG_HID_SENSOR_GYRO_3D=y
CONFIG_MPU3050=y
CONFIG_MPU3050_I2C=y
# CONFIG_IIO_ST_GYRO_3AXIS is not set
CONFIG_ITG3200=y
# end of Digital gyroscope sensors

#
# Health Sensors
#

#
# Heart Rate Monitors
#
CONFIG_AFE4403=y
CONFIG_AFE4404=y
CONFIG_MAX30100=y
CONFIG_MAX30102=y
# end of Heart Rate Monitors
# end of Health Sensors

#
# Humidity sensors
#
CONFIG_AM2315=y
CONFIG_DHT11=y
# CONFIG_HDC100X is not set
CONFIG_HID_SENSOR_HUMIDITY=y
# CONFIG_HTS221 is not set
CONFIG_HTU21=y
# CONFIG_SI7005 is not set
CONFIG_SI7020=y
# end of Humidity sensors

#
# Inertial measurement units
#
CONFIG_ADIS16400=y
CONFIG_ADIS16460=y
# CONFIG_ADIS16480 is not set
CONFIG_BMI160=y
# CONFIG_BMI160_I2C is not set
CONFIG_BMI160_SPI=y
CONFIG_FXOS8700=y
CONFIG_FXOS8700_I2C=y
CONFIG_FXOS8700_SPI=y
CONFIG_KMX61=y
# CONFIG_INV_MPU6050_I2C is not set
# CONFIG_INV_MPU6050_SPI is not set
# CONFIG_IIO_ST_LSM6DSX is not set
# end of Inertial measurement units

CONFIG_IIO_ADIS_LIB=y
CONFIG_IIO_ADIS_LIB_BUFFER=y

#
# Light sensors
#
# CONFIG_ACPI_ALS is not set
CONFIG_ADJD_S311=y
CONFIG_ADUX1020=y
CONFIG_AL3010=y
CONFIG_AL3320A=y
CONFIG_APDS9300=y
# CONFIG_APDS9960 is not set
# CONFIG_BH1750 is not set
CONFIG_BH1780=y
# CONFIG_CM32181 is not set
CONFIG_CM3232=y
CONFIG_CM3323=y
# CONFIG_CM36651 is not set
# CONFIG_IIO_CROS_EC_LIGHT_PROX is not set
# CONFIG_GP2AP002 is not set
CONFIG_GP2AP020A00F=y
CONFIG_SENSORS_ISL29018=y
# CONFIG_SENSORS_ISL29028 is not set
CONFIG_ISL29125=y
CONFIG_HID_SENSOR_ALS=y
# CONFIG_HID_SENSOR_PROX is not set
CONFIG_JSA1212=y
CONFIG_RPR0521=y
CONFIG_LTR501=y
# CONFIG_LV0104CS is not set
CONFIG_MAX44000=y
# CONFIG_MAX44009 is not set
# CONFIG_NOA1305 is not set
CONFIG_OPT3001=y
# CONFIG_PA12203001 is not set
# CONFIG_SI1133 is not set
# CONFIG_SI1145 is not set
CONFIG_STK3310=y
# CONFIG_ST_UVIS25 is not set
CONFIG_TCS3414=y
CONFIG_TCS3472=y
CONFIG_SENSORS_TSL2563=y
# CONFIG_TSL2583 is not set
CONFIG_TSL2772=y
CONFIG_TSL4531=y
# CONFIG_US5182D is not set
CONFIG_VCNL4000=y
CONFIG_VCNL4035=y
CONFIG_VEML6030=y
CONFIG_VEML6070=y
# CONFIG_VL6180 is not set
CONFIG_ZOPT2201=y
# end of Light sensors

#
# Magnetometer sensors
#
# CONFIG_AK8975 is not set
# CONFIG_AK09911 is not set
CONFIG_BMC150_MAGN=y
CONFIG_BMC150_MAGN_I2C=y
# CONFIG_BMC150_MAGN_SPI is not set
# CONFIG_MAG3110 is not set
CONFIG_HID_SENSOR_MAGNETOMETER_3D=y
CONFIG_MMC35240=y
CONFIG_IIO_ST_MAGN_3AXIS=y
CONFIG_IIO_ST_MAGN_I2C_3AXIS=y
CONFIG_IIO_ST_MAGN_SPI_3AXIS=y
CONFIG_SENSORS_HMC5843=y
CONFIG_SENSORS_HMC5843_I2C=y
CONFIG_SENSORS_HMC5843_SPI=y
CONFIG_SENSORS_RM3100=y
CONFIG_SENSORS_RM3100_I2C=y
CONFIG_SENSORS_RM3100_SPI=y
# end of Magnetometer sensors

#
# Multiplexers
#
# end of Multiplexers

#
# Inclinometer sensors
#
CONFIG_HID_SENSOR_INCLINOMETER_3D=y
# CONFIG_HID_SENSOR_DEVICE_ROTATION is not set
# end of Inclinometer sensors

#
# Triggers - standalone
#
# CONFIG_IIO_INTERRUPT_TRIGGER is not set
CONFIG_IIO_SYSFS_TRIGGER=y
# end of Triggers - standalone

#
# Digital potentiometers
#
CONFIG_AD5272=y
CONFIG_DS1803=y
CONFIG_MAX5432=y
CONFIG_MAX5481=y
# CONFIG_MAX5487 is not set
CONFIG_MCP4018=y
CONFIG_MCP4131=y
CONFIG_MCP4531=y
CONFIG_MCP41010=y
CONFIG_TPL0102=y
# end of Digital potentiometers

#
# Digital potentiostats
#
CONFIG_LMP91000=y
# end of Digital potentiostats

#
# Pressure sensors
#
CONFIG_ABP060MG=y
CONFIG_BMP280=y
CONFIG_BMP280_I2C=y
CONFIG_BMP280_SPI=y
CONFIG_IIO_CROS_EC_BARO=y
CONFIG_DLHL60D=y
# CONFIG_DPS310 is not set
# CONFIG_HID_SENSOR_PRESS is not set
CONFIG_HP03=y
CONFIG_ICP10100=y
# CONFIG_MPL115_I2C is not set
# CONFIG_MPL115_SPI is not set
CONFIG_MPL3115=y
# CONFIG_MS5611 is not set
CONFIG_MS5637=y
# CONFIG_IIO_ST_PRESS is not set
# CONFIG_T5403 is not set
CONFIG_HP206C=y
CONFIG_ZPA2326=y
CONFIG_ZPA2326_I2C=y
CONFIG_ZPA2326_SPI=y
# end of Pressure sensors

#
# Lightning sensors
#
# CONFIG_AS3935 is not set
# end of Lightning sensors

#
# Proximity and distance sensors
#
CONFIG_ISL29501=y
# CONFIG_LIDAR_LITE_V2 is not set
CONFIG_MB1232=y
# CONFIG_PING is not set
CONFIG_RFD77402=y
CONFIG_SRF04=y
# CONFIG_SX9500 is not set
# CONFIG_SRF08 is not set
CONFIG_VL53L0X_I2C=y
# end of Proximity and distance sensors

#
# Resolver to digital converters
#
CONFIG_AD2S90=y
CONFIG_AD2S1200=y
# end of Resolver to digital converters

#
# Temperature sensors
#
# CONFIG_LTC2983 is not set
CONFIG_MAXIM_THERMOCOUPLE=y
# CONFIG_HID_SENSOR_TEMP is not set
# CONFIG_MLX90614 is not set
CONFIG_MLX90632=y
CONFIG_TMP006=y
CONFIG_TMP007=y
CONFIG_TSYS01=y
CONFIG_TSYS02D=y
# CONFIG_MAX31856 is not set
# end of Temperature sensors

CONFIG_NTB=y
# CONFIG_NTB_IDT is not set
# CONFIG_NTB_SWITCHTEC is not set
CONFIG_NTB_PINGPONG=y
CONFIG_NTB_TOOL=y
# CONFIG_NTB_PERF is not set
CONFIG_NTB_TRANSPORT=y
CONFIG_VME_BUS=y

#
# VME Bridge Drivers
#
# CONFIG_VME_CA91CX42 is not set
# CONFIG_VME_TSI148 is not set
CONFIG_VME_FAKE=y

#
# VME Board Drivers
#
CONFIG_VMIVME_7805=y

#
# VME Device Drivers
#
CONFIG_VME_USER=y
CONFIG_PWM=y
CONFIG_PWM_SYSFS=y
CONFIG_PWM_CROS_EC=y
CONFIG_PWM_LPSS=y
CONFIG_PWM_LPSS_PCI=y
# CONFIG_PWM_LPSS_PLATFORM is not set
# CONFIG_PWM_PCA9685 is not set
CONFIG_PWM_TWL=y
CONFIG_PWM_TWL_LED=y

#
# IRQ chip support
#
# end of IRQ chip support

CONFIG_IPACK_BUS=y
# CONFIG_BOARD_TPCI200 is not set
# CONFIG_SERIAL_IPOCTAL is not set
CONFIG_RESET_CONTROLLER=y
CONFIG_RESET_BRCMSTB_RESCAL=y
CONFIG_RESET_TI_SYSCON=y

#
# PHY Subsystem
#
CONFIG_GENERIC_PHY=y
CONFIG_BCM_KONA_USB2_PHY=y
# CONFIG_PHY_PXA_28NM_HSIC is not set
CONFIG_PHY_PXA_28NM_USB2=y
# CONFIG_PHY_CPCAP_USB is not set
# CONFIG_PHY_INTEL_EMMC is not set
# end of PHY Subsystem

# CONFIG_POWERCAP is not set
CONFIG_MCB=y
CONFIG_MCB_PCI=y
# CONFIG_MCB_LPC is not set

#
# Performance monitor support
#
# end of Performance monitor support

# CONFIG_RAS is not set
CONFIG_USB4=y

#
# Android
#
CONFIG_ANDROID=y
CONFIG_ANDROID_BINDER_IPC=y
CONFIG_ANDROID_BINDERFS=y
CONFIG_ANDROID_BINDER_DEVICES="binder,hwbinder,vndbinder"
# CONFIG_ANDROID_BINDER_IPC_SELFTEST is not set
# end of Android

CONFIG_LIBNVDIMM=y
CONFIG_BLK_DEV_PMEM=y
CONFIG_ND_BLK=y
# CONFIG_BTT is not set
CONFIG_DAX_DRIVER=y
CONFIG_DAX=y
CONFIG_DEV_DAX=y
CONFIG_NVMEM=y
CONFIG_NVMEM_SYSFS=y

#
# HW tracing support
#
# CONFIG_STM is not set
CONFIG_INTEL_TH=y
CONFIG_INTEL_TH_PCI=y
# CONFIG_INTEL_TH_ACPI is not set
# CONFIG_INTEL_TH_GTH is not set
CONFIG_INTEL_TH_MSU=y
CONFIG_INTEL_TH_PTI=y
# CONFIG_INTEL_TH_DEBUG is not set
# end of HW tracing support

# CONFIG_FPGA is not set
# CONFIG_TEE is not set
CONFIG_PM_OPP=y
# CONFIG_SIOX is not set
# CONFIG_SLIMBUS is not set
# CONFIG_INTERCONNECT is not set
CONFIG_COUNTER=y
CONFIG_MOST=y
# end of Device Drivers

#
# File systems
#
CONFIG_DCACHE_WORD_ACCESS=y
CONFIG_VALIDATE_FS_PARSER=y
CONFIG_FS_IOMAP=y
CONFIG_EXT2_FS=y
CONFIG_EXT2_FS_XATTR=y
CONFIG_EXT2_FS_POSIX_ACL=y
CONFIG_EXT2_FS_SECURITY=y
CONFIG_EXT3_FS=y
# CONFIG_EXT3_FS_POSIX_ACL is not set
# CONFIG_EXT3_FS_SECURITY is not set
CONFIG_EXT4_FS=y
CONFIG_EXT4_FS_POSIX_ACL=y
CONFIG_EXT4_FS_SECURITY=y
# CONFIG_EXT4_DEBUG is not set
CONFIG_JBD2=y
# CONFIG_JBD2_DEBUG is not set
CONFIG_FS_MBCACHE=y
CONFIG_REISERFS_FS=y
CONFIG_REISERFS_CHECK=y
# CONFIG_REISERFS_PROC_INFO is not set
# CONFIG_REISERFS_FS_XATTR is not set
# CONFIG_JFS_FS is not set
CONFIG_XFS_FS=m
CONFIG_XFS_QUOTA=y
# CONFIG_XFS_POSIX_ACL is not set
CONFIG_XFS_RT=y
# CONFIG_XFS_ONLINE_SCRUB is not set
# CONFIG_XFS_WARN is not set
# CONFIG_XFS_DEBUG is not set
CONFIG_GFS2_FS=y
CONFIG_GFS2_FS_LOCKING_DLM=y
CONFIG_OCFS2_FS=y
# CONFIG_OCFS2_FS_O2CB is not set
# CONFIG_OCFS2_FS_USERSPACE_CLUSTER is not set
# CONFIG_OCFS2_FS_STATS is not set
CONFIG_OCFS2_DEBUG_MASKLOG=y
CONFIG_OCFS2_DEBUG_FS=y
CONFIG_BTRFS_FS=m
CONFIG_BTRFS_FS_POSIX_ACL=y
# CONFIG_BTRFS_FS_CHECK_INTEGRITY is not set
# CONFIG_BTRFS_FS_RUN_SANITY_TESTS is not set
CONFIG_BTRFS_DEBUG=y
# CONFIG_BTRFS_ASSERT is not set
CONFIG_BTRFS_FS_REF_VERIFY=y
# CONFIG_NILFS2_FS is not set
# CONFIG_F2FS_FS is not set
CONFIG_ZONEFS_FS=y
# CONFIG_FS_DAX is not set
CONFIG_FS_POSIX_ACL=y
CONFIG_EXPORTFS=y
CONFIG_EXPORTFS_BLOCK_OPS=y
CONFIG_FILE_LOCKING=y
CONFIG_MANDATORY_FILE_LOCKING=y
# CONFIG_FS_ENCRYPTION is not set
CONFIG_FS_VERITY=y
# CONFIG_FS_VERITY_DEBUG is not set
CONFIG_FS_VERITY_BUILTIN_SIGNATURES=y
CONFIG_FSNOTIFY=y
CONFIG_DNOTIFY=y
CONFIG_INOTIFY_USER=y
# CONFIG_FANOTIFY is not set
CONFIG_QUOTA=y
CONFIG_QUOTA_NETLINK_INTERFACE=y
CONFIG_PRINT_QUOTA_WARNING=y
CONFIG_QUOTA_DEBUG=y
CONFIG_QUOTA_TREE=y
CONFIG_QFMT_V1=y
# CONFIG_QFMT_V2 is not set
CONFIG_QUOTACTL=y
CONFIG_AUTOFS4_FS=y
CONFIG_AUTOFS_FS=y
# CONFIG_FUSE_FS is not set
CONFIG_OVERLAY_FS=y
CONFIG_OVERLAY_FS_REDIRECT_DIR=y
# CONFIG_OVERLAY_FS_REDIRECT_ALWAYS_FOLLOW is not set
CONFIG_OVERLAY_FS_INDEX=y
CONFIG_OVERLAY_FS_METACOPY=y

#
# Caches
#
# CONFIG_FSCACHE is not set
# end of Caches

#
# CD-ROM/DVD Filesystems
#
CONFIG_ISO9660_FS=y
# CONFIG_JOLIET is not set
CONFIG_ZISOFS=y
CONFIG_UDF_FS=y
# end of CD-ROM/DVD Filesystems

#
# DOS/FAT/NT Filesystems
#
CONFIG_FAT_FS=y
# CONFIG_MSDOS_FS is not set
CONFIG_VFAT_FS=y
CONFIG_FAT_DEFAULT_CODEPAGE=437
CONFIG_FAT_DEFAULT_IOCHARSET="iso8859-1"
CONFIG_FAT_DEFAULT_UTF8=y
# CONFIG_NTFS_FS is not set
# end of DOS/FAT/NT Filesystems

#
# Pseudo filesystems
#
CONFIG_PROC_FS=y
CONFIG_PROC_KCORE=y
CONFIG_PROC_VMCORE=y
CONFIG_PROC_VMCORE_DEVICE_DUMP=y
CONFIG_PROC_SYSCTL=y
CONFIG_PROC_PAGE_MONITOR=y
CONFIG_PROC_CHILDREN=y
CONFIG_PROC_PID_ARCH_STATUS=y
CONFIG_PROC_CPU_RESCTRL=y
CONFIG_KERNFS=y
CONFIG_SYSFS=y
CONFIG_TMPFS=y
CONFIG_TMPFS_POSIX_ACL=y
CONFIG_TMPFS_XATTR=y
CONFIG_HUGETLBFS=y
CONFIG_HUGETLB_PAGE=y
CONFIG_MEMFD_CREATE=y
CONFIG_CONFIGFS_FS=y
CONFIG_EFIVAR_FS=m
# end of Pseudo filesystems

CONFIG_MISC_FILESYSTEMS=y
# CONFIG_ORANGEFS_FS is not set
CONFIG_ADFS_FS=y
CONFIG_ADFS_FS_RW=y
# CONFIG_AFFS_FS is not set
# CONFIG_ECRYPT_FS is not set
# CONFIG_HFS_FS is not set
# CONFIG_HFSPLUS_FS is not set
# CONFIG_BEFS_FS is not set
# CONFIG_BFS_FS is not set
CONFIG_EFS_FS=y
CONFIG_CRAMFS=y
CONFIG_CRAMFS_BLOCKDEV=y
# CONFIG_SQUASHFS is not set
# CONFIG_VXFS_FS is not set
CONFIG_MINIX_FS=y
CONFIG_OMFS_FS=y
# CONFIG_HPFS_FS is not set
# CONFIG_QNX4FS_FS is not set
CONFIG_QNX6FS_FS=y
# CONFIG_QNX6FS_DEBUG is not set
CONFIG_ROMFS_FS=y
CONFIG_ROMFS_BACKED_BY_BLOCK=y
CONFIG_ROMFS_ON_BLOCK=y
CONFIG_PSTORE=y
CONFIG_PSTORE_DEFLATE_COMPRESS=y
# CONFIG_PSTORE_LZO_COMPRESS is not set
# CONFIG_PSTORE_LZ4_COMPRESS is not set
# CONFIG_PSTORE_LZ4HC_COMPRESS is not set
# CONFIG_PSTORE_842_COMPRESS is not set
# CONFIG_PSTORE_ZSTD_COMPRESS is not set
CONFIG_PSTORE_COMPRESS=y
CONFIG_PSTORE_DEFLATE_COMPRESS_DEFAULT=y
CONFIG_PSTORE_COMPRESS_DEFAULT="deflate"
CONFIG_PSTORE_CONSOLE=y
CONFIG_PSTORE_PMSG=y
CONFIG_PSTORE_RAM=m
CONFIG_SYSV_FS=y
# CONFIG_UFS_FS is not set
CONFIG_EROFS_FS=y
CONFIG_EROFS_FS_DEBUG=y
CONFIG_EROFS_FS_XATTR=y
# CONFIG_EROFS_FS_POSIX_ACL is not set
CONFIG_EROFS_FS_SECURITY=y
# CONFIG_EROFS_FS_ZIP is not set
# CONFIG_VBOXSF_FS is not set
# CONFIG_NETWORK_FILESYSTEMS is not set
CONFIG_NLS=y
CONFIG_NLS_DEFAULT="iso8859-1"
CONFIG_NLS_CODEPAGE_437=y
# CONFIG_NLS_CODEPAGE_737 is not set
CONFIG_NLS_CODEPAGE_775=y
# CONFIG_NLS_CODEPAGE_850 is not set
# CONFIG_NLS_CODEPAGE_852 is not set
CONFIG_NLS_CODEPAGE_855=y
CONFIG_NLS_CODEPAGE_857=y
CONFIG_NLS_CODEPAGE_860=y
CONFIG_NLS_CODEPAGE_861=y
# CONFIG_NLS_CODEPAGE_862 is not set
CONFIG_NLS_CODEPAGE_863=y
CONFIG_NLS_CODEPAGE_864=y
CONFIG_NLS_CODEPAGE_865=y
CONFIG_NLS_CODEPAGE_866=y
# CONFIG_NLS_CODEPAGE_869 is not set
CONFIG_NLS_CODEPAGE_936=y
# CONFIG_NLS_CODEPAGE_950 is not set
CONFIG_NLS_CODEPAGE_932=y
CONFIG_NLS_CODEPAGE_949=y
# CONFIG_NLS_CODEPAGE_874 is not set
CONFIG_NLS_ISO8859_8=y
# CONFIG_NLS_CODEPAGE_1250 is not set
CONFIG_NLS_CODEPAGE_1251=y
CONFIG_NLS_ASCII=y
CONFIG_NLS_ISO8859_1=y
CONFIG_NLS_ISO8859_2=y
CONFIG_NLS_ISO8859_3=y
CONFIG_NLS_ISO8859_4=y
CONFIG_NLS_ISO8859_5=y
CONFIG_NLS_ISO8859_6=y
# CONFIG_NLS_ISO8859_7 is not set
CONFIG_NLS_ISO8859_9=y
CONFIG_NLS_ISO8859_13=y
CONFIG_NLS_ISO8859_14=y
CONFIG_NLS_ISO8859_15=y
CONFIG_NLS_KOI8_R=y
CONFIG_NLS_KOI8_U=y
CONFIG_NLS_MAC_ROMAN=y
CONFIG_NLS_MAC_CELTIC=y
CONFIG_NLS_MAC_CENTEURO=y
CONFIG_NLS_MAC_CROATIAN=y
CONFIG_NLS_MAC_CYRILLIC=y
# CONFIG_NLS_MAC_GAELIC is not set
CONFIG_NLS_MAC_GREEK=y
# CONFIG_NLS_MAC_ICELAND is not set
# CONFIG_NLS_MAC_INUIT is not set
# CONFIG_NLS_MAC_ROMANIAN is not set
CONFIG_NLS_MAC_TURKISH=y
CONFIG_NLS_UTF8=y
CONFIG_DLM=y
# CONFIG_DLM_DEBUG is not set
CONFIG_UNICODE=y
# CONFIG_UNICODE_NORMALIZATION_SELFTEST is not set
CONFIG_IO_WQ=y
# end of File systems

#
# Security options
#
CONFIG_KEYS=y
CONFIG_KEYS_REQUEST_CACHE=y
# CONFIG_PERSISTENT_KEYRINGS is not set
CONFIG_BIG_KEYS=y
# CONFIG_ENCRYPTED_KEYS is not set
# CONFIG_KEY_DH_OPERATIONS is not set
CONFIG_SECURITY_DMESG_RESTRICT=y
# CONFIG_SECURITY is not set
CONFIG_SECURITYFS=y
# CONFIG_PAGE_TABLE_ISOLATION is not set
CONFIG_HAVE_HARDENED_USERCOPY_ALLOCATOR=y
# CONFIG_HARDENED_USERCOPY is not set
# CONFIG_FORTIFY_SOURCE is not set
# CONFIG_STATIC_USERMODEHELPER is not set
CONFIG_DEFAULT_SECURITY_DAC=y
CONFIG_LSM="lockdown,yama,loadpin,safesetid,integrity"

#
# Kernel hardening options
#
CONFIG_GCC_PLUGIN_STRUCTLEAK=y

#
# Memory initialization
#
# CONFIG_INIT_STACK_NONE is not set
# CONFIG_GCC_PLUGIN_STRUCTLEAK_USER is not set
# CONFIG_GCC_PLUGIN_STRUCTLEAK_BYREF is not set
CONFIG_GCC_PLUGIN_STRUCTLEAK_BYREF_ALL=y
# CONFIG_GCC_PLUGIN_STRUCTLEAK_VERBOSE is not set
# CONFIG_GCC_PLUGIN_STACKLEAK is not set
CONFIG_INIT_ON_ALLOC_DEFAULT_ON=y
# CONFIG_INIT_ON_FREE_DEFAULT_ON is not set
# end of Memory initialization
# end of Kernel hardening options
# end of Security options

CONFIG_XOR_BLOCKS=y
CONFIG_ASYNC_CORE=y
CONFIG_ASYNC_MEMCPY=y
CONFIG_ASYNC_XOR=y
CONFIG_ASYNC_PQ=y
CONFIG_ASYNC_RAID6_RECOV=y
CONFIG_CRYPTO=y

#
# Crypto core or helper
#
CONFIG_CRYPTO_ALGAPI=y
CONFIG_CRYPTO_ALGAPI2=y
CONFIG_CRYPTO_AEAD=y
CONFIG_CRYPTO_AEAD2=y
CONFIG_CRYPTO_SKCIPHER=y
CONFIG_CRYPTO_SKCIPHER2=y
CONFIG_CRYPTO_HASH=y
CONFIG_CRYPTO_HASH2=y
CONFIG_CRYPTO_RNG=y
CONFIG_CRYPTO_RNG2=y
CONFIG_CRYPTO_RNG_DEFAULT=y
CONFIG_CRYPTO_AKCIPHER2=y
CONFIG_CRYPTO_AKCIPHER=y
CONFIG_CRYPTO_KPP2=y
CONFIG_CRYPTO_KPP=y
CONFIG_CRYPTO_ACOMP2=y
CONFIG_CRYPTO_MANAGER=y
CONFIG_CRYPTO_MANAGER2=y
# CONFIG_CRYPTO_USER is not set
CONFIG_CRYPTO_MANAGER_DISABLE_TESTS=y
CONFIG_CRYPTO_GF128MUL=y
CONFIG_CRYPTO_NULL=y
CONFIG_CRYPTO_NULL2=y
CONFIG_CRYPTO_PCRYPT=y
CONFIG_CRYPTO_CRYPTD=y
CONFIG_CRYPTO_AUTHENC=y
# CONFIG_CRYPTO_TEST is not set
CONFIG_CRYPTO_SIMD=y
CONFIG_CRYPTO_GLUE_HELPER_X86=y

#
# Public-key cryptography
#
CONFIG_CRYPTO_RSA=y
CONFIG_CRYPTO_DH=y
CONFIG_CRYPTO_ECC=y
CONFIG_CRYPTO_ECDH=y
CONFIG_CRYPTO_ECRDSA=y
# CONFIG_CRYPTO_CURVE25519 is not set

#
# Authenticated Encryption with Associated Data
#
CONFIG_CRYPTO_CCM=y
CONFIG_CRYPTO_GCM=y
CONFIG_CRYPTO_CHACHA20POLY1305=y
# CONFIG_CRYPTO_AEGIS128 is not set
CONFIG_CRYPTO_SEQIV=y
CONFIG_CRYPTO_ECHAINIV=y

#
# Block modes
#
CONFIG_CRYPTO_CBC=y
CONFIG_CRYPTO_CFB=y
CONFIG_CRYPTO_CTR=y
CONFIG_CRYPTO_CTS=y
CONFIG_CRYPTO_ECB=y
CONFIG_CRYPTO_LRW=y
CONFIG_CRYPTO_OFB=y
# CONFIG_CRYPTO_PCBC is not set
CONFIG_CRYPTO_XTS=y
CONFIG_CRYPTO_KEYWRAP=y
CONFIG_CRYPTO_NHPOLY1305=y
CONFIG_CRYPTO_ADIANTUM=y
# CONFIG_CRYPTO_ESSIV is not set

#
# Hash modes
#
CONFIG_CRYPTO_CMAC=y
CONFIG_CRYPTO_HMAC=y
CONFIG_CRYPTO_XCBC=y
CONFIG_CRYPTO_VMAC=y

#
# Digest
#
CONFIG_CRYPTO_CRC32C=y
CONFIG_CRYPTO_CRC32C_INTEL=y
CONFIG_CRYPTO_CRC32=y
CONFIG_CRYPTO_CRC32_PCLMUL=y
CONFIG_CRYPTO_XXHASH=y
CONFIG_CRYPTO_BLAKE2B=y
# CONFIG_CRYPTO_BLAKE2S is not set
CONFIG_CRYPTO_CRCT10DIF=y
CONFIG_CRYPTO_GHASH=y
CONFIG_CRYPTO_POLY1305=y
CONFIG_CRYPTO_MD4=y
CONFIG_CRYPTO_MD5=y
CONFIG_CRYPTO_MICHAEL_MIC=y
CONFIG_CRYPTO_RMD128=y
# CONFIG_CRYPTO_RMD160 is not set
# CONFIG_CRYPTO_RMD256 is not set
CONFIG_CRYPTO_RMD320=y
CONFIG_CRYPTO_SHA1=y
CONFIG_CRYPTO_SHA256=y
# CONFIG_CRYPTO_SHA512 is not set
CONFIG_CRYPTO_SHA3=y
# CONFIG_CRYPTO_SM3 is not set
CONFIG_CRYPTO_STREEBOG=y
# CONFIG_CRYPTO_TGR192 is not set
CONFIG_CRYPTO_WP512=y

#
# Ciphers
#
CONFIG_CRYPTO_AES=y
CONFIG_CRYPTO_AES_TI=y
# CONFIG_CRYPTO_AES_NI_INTEL is not set
CONFIG_CRYPTO_ANUBIS=y
CONFIG_CRYPTO_ARC4=y
# CONFIG_CRYPTO_BLOWFISH is not set
# CONFIG_CRYPTO_CAMELLIA is not set
# CONFIG_CRYPTO_CAST5 is not set
# CONFIG_CRYPTO_CAST6 is not set
CONFIG_CRYPTO_DES=y
CONFIG_CRYPTO_FCRYPT=y
# CONFIG_CRYPTO_KHAZAD is not set
CONFIG_CRYPTO_SALSA20=y
CONFIG_CRYPTO_CHACHA20=y
CONFIG_CRYPTO_SEED=y
CONFIG_CRYPTO_SERPENT=y
CONFIG_CRYPTO_SERPENT_SSE2_586=y
CONFIG_CRYPTO_SM4=y
# CONFIG_CRYPTO_TEA is not set
# CONFIG_CRYPTO_TWOFISH is not set
CONFIG_CRYPTO_TWOFISH_COMMON=y
CONFIG_CRYPTO_TWOFISH_586=y

#
# Compression
#
CONFIG_CRYPTO_DEFLATE=y
CONFIG_CRYPTO_LZO=y
CONFIG_CRYPTO_842=y
CONFIG_CRYPTO_LZ4=y
CONFIG_CRYPTO_LZ4HC=y
CONFIG_CRYPTO_ZSTD=y

#
# Random Number Generation
#
CONFIG_CRYPTO_ANSI_CPRNG=y
CONFIG_CRYPTO_DRBG_MENU=y
CONFIG_CRYPTO_DRBG_HMAC=y
# CONFIG_CRYPTO_DRBG_HASH is not set
# CONFIG_CRYPTO_DRBG_CTR is not set
CONFIG_CRYPTO_DRBG=y
CONFIG_CRYPTO_JITTERENTROPY=y
CONFIG_CRYPTO_USER_API=y
CONFIG_CRYPTO_USER_API_HASH=y
CONFIG_CRYPTO_USER_API_SKCIPHER=y
CONFIG_CRYPTO_USER_API_RNG=y
CONFIG_CRYPTO_USER_API_AEAD=y
CONFIG_CRYPTO_HASH_INFO=y

#
# Crypto library routines
#
CONFIG_CRYPTO_LIB_AES=y
CONFIG_CRYPTO_LIB_ARC4=y
# CONFIG_CRYPTO_LIB_BLAKE2S is not set
CONFIG_CRYPTO_LIB_CHACHA_GENERIC=y
CONFIG_CRYPTO_LIB_CHACHA=y
CONFIG_CRYPTO_LIB_CURVE25519_GENERIC=y
CONFIG_CRYPTO_LIB_CURVE25519=y
CONFIG_CRYPTO_LIB_DES=y
CONFIG_CRYPTO_LIB_POLY1305_RSIZE=1
CONFIG_CRYPTO_LIB_POLY1305_GENERIC=y
CONFIG_CRYPTO_LIB_POLY1305=y
CONFIG_CRYPTO_LIB_CHACHA20POLY1305=y
CONFIG_CRYPTO_LIB_SHA256=y
# CONFIG_CRYPTO_HW is not set
CONFIG_ASYMMETRIC_KEY_TYPE=y
CONFIG_ASYMMETRIC_PUBLIC_KEY_SUBTYPE=y
CONFIG_X509_CERTIFICATE_PARSER=y
# CONFIG_PKCS8_PRIVATE_KEY_PARSER is not set
CONFIG_PKCS7_MESSAGE_PARSER=y
CONFIG_PKCS7_TEST_KEY=y
# CONFIG_SIGNED_PE_FILE_VERIFICATION is not set

#
# Certificates for signature checking
#
CONFIG_SYSTEM_TRUSTED_KEYRING=y
CONFIG_SYSTEM_TRUSTED_KEYS=""
CONFIG_SYSTEM_EXTRA_CERTIFICATE=y
CONFIG_SYSTEM_EXTRA_CERTIFICATE_SIZE=4096
CONFIG_SECONDARY_TRUSTED_KEYRING=y
CONFIG_SYSTEM_BLACKLIST_KEYRING=y
CONFIG_SYSTEM_BLACKLIST_HASH_LIST=""
# end of Certificates for signature checking

CONFIG_BINARY_PRINTF=y

#
# Library routines
#
CONFIG_RAID6_PQ=y
# CONFIG_RAID6_PQ_BENCHMARK is not set
CONFIG_PACKING=y
CONFIG_BITREVERSE=y
CONFIG_GENERIC_STRNCPY_FROM_USER=y
CONFIG_GENERIC_STRNLEN_USER=y
CONFIG_GENERIC_NET_UTILS=y
CONFIG_GENERIC_FIND_FIRST_BIT=y
CONFIG_CORDIC=y
CONFIG_PRIME_NUMBERS=m
CONFIG_RATIONAL=y
CONFIG_GENERIC_PCI_IOMAP=y
CONFIG_GENERIC_IOMAP=y
CONFIG_ARCH_HAS_FAST_MULTIPLIER=y
CONFIG_CRC_CCITT=y
CONFIG_CRC16=y
CONFIG_CRC_T10DIF=y
CONFIG_CRC_ITU_T=y
CONFIG_CRC32=y
# CONFIG_CRC32_SELFTEST is not set
# CONFIG_CRC32_SLICEBY8 is not set
# CONFIG_CRC32_SLICEBY4 is not set
# CONFIG_CRC32_SARWATE is not set
CONFIG_CRC32_BIT=y
CONFIG_CRC64=y
CONFIG_CRC4=y
CONFIG_CRC7=y
CONFIG_LIBCRC32C=y
CONFIG_CRC8=y
CONFIG_XXHASH=y
CONFIG_RANDOM32_SELFTEST=y
CONFIG_842_COMPRESS=y
CONFIG_842_DECOMPRESS=y
CONFIG_ZLIB_INFLATE=y
CONFIG_ZLIB_DEFLATE=y
CONFIG_LZO_COMPRESS=y
CONFIG_LZO_DECOMPRESS=y
CONFIG_LZ4_COMPRESS=y
CONFIG_LZ4HC_COMPRESS=y
CONFIG_LZ4_DECOMPRESS=y
CONFIG_ZSTD_COMPRESS=y
CONFIG_ZSTD_DECOMPRESS=y
CONFIG_XZ_DEC=y
CONFIG_XZ_DEC_X86=y
CONFIG_XZ_DEC_POWERPC=y
CONFIG_XZ_DEC_IA64=y
CONFIG_XZ_DEC_ARM=y
CONFIG_XZ_DEC_ARMTHUMB=y
CONFIG_XZ_DEC_SPARC=y
CONFIG_XZ_DEC_BCJ=y
# CONFIG_XZ_DEC_TEST is not set
CONFIG_DECOMPRESS_GZIP=y
CONFIG_DECOMPRESS_XZ=y
CONFIG_GENERIC_ALLOCATOR=y
CONFIG_REED_SOLOMON=m
CONFIG_REED_SOLOMON_ENC8=y
CONFIG_REED_SOLOMON_DEC8=y
CONFIG_TEXTSEARCH=y
CONFIG_TEXTSEARCH_KMP=y
CONFIG_TEXTSEARCH_BM=y
CONFIG_TEXTSEARCH_FSM=y
CONFIG_INTERVAL_TREE=y
CONFIG_XARRAY_MULTI=y
CONFIG_ASSOCIATIVE_ARRAY=y
CONFIG_HAS_IOMEM=y
CONFIG_HAS_IOPORT_MAP=y
CONFIG_HAS_DMA=y
CONFIG_NEED_SG_DMA_LENGTH=y
CONFIG_NEED_DMA_MAP_STATE=y
CONFIG_ARCH_DMA_ADDR_T_64BIT=y
CONFIG_SWIOTLB=y
CONFIG_DMA_CMA=y

#
# Default contiguous memory area size:
#
CONFIG_CMA_SIZE_MBYTES=0
CONFIG_CMA_SIZE_PERCENTAGE=0
# CONFIG_CMA_SIZE_SEL_MBYTES is not set
# CONFIG_CMA_SIZE_SEL_PERCENTAGE is not set
# CONFIG_CMA_SIZE_SEL_MIN is not set
CONFIG_CMA_SIZE_SEL_MAX=y
CONFIG_CMA_ALIGNMENT=8
# CONFIG_DMA_API_DEBUG is not set
CONFIG_SGL_ALLOC=y
CONFIG_CHECK_SIGNATURE=y
CONFIG_CPU_RMAP=y
CONFIG_DQL=y
CONFIG_GLOB=y
# CONFIG_GLOB_SELFTEST is not set
CONFIG_NLATTR=y
CONFIG_CLZ_TAB=y
CONFIG_IRQ_POLL=y
CONFIG_MPILIB=y
CONFIG_OID_REGISTRY=y
CONFIG_UCS2_STRING=y
CONFIG_HAVE_GENERIC_VDSO=y
CONFIG_GENERIC_GETTIMEOFDAY=y
CONFIG_GENERIC_VDSO_32=y
CONFIG_GENERIC_VDSO_TIME_NS=y
CONFIG_FONT_SUPPORT=y
CONFIG_FONT_8x16=y
CONFIG_FONT_AUTOSELECT=y
CONFIG_SG_POOL=y
CONFIG_MEMREGION=y
CONFIG_ARCH_STACKWALK=y
CONFIG_STACKDEPOT=y
CONFIG_SBITMAP=y
CONFIG_STRING_SELFTEST=y
# end of Library routines

#
# Kernel hacking
#

#
# printk and dmesg options
#
CONFIG_PRINTK_TIME=y
# CONFIG_PRINTK_CALLER is not set
CONFIG_CONSOLE_LOGLEVEL_DEFAULT=7
CONFIG_CONSOLE_LOGLEVEL_QUIET=4
CONFIG_MESSAGE_LOGLEVEL_DEFAULT=4
CONFIG_BOOT_PRINTK_DELAY=y
CONFIG_DYNAMIC_DEBUG=y
# CONFIG_SYMBOLIC_ERRNAME is not set
CONFIG_DEBUG_BUGVERBOSE=y
# end of printk and dmesg options

#
# Compile-time checks and compiler options
#
CONFIG_DEBUG_INFO=y
CONFIG_DEBUG_INFO_REDUCED=y
# CONFIG_DEBUG_INFO_SPLIT is not set
# CONFIG_DEBUG_INFO_DWARF4 is not set
# CONFIG_DEBUG_INFO_BTF is not set
# CONFIG_GDB_SCRIPTS is not set
CONFIG_ENABLE_MUST_CHECK=y
CONFIG_FRAME_WARN=1024
# CONFIG_STRIP_ASM_SYMS is not set
CONFIG_READABLE_ASM=y
CONFIG_HEADERS_INSTALL=y
CONFIG_OPTIMIZE_INLINING=y
CONFIG_DEBUG_SECTION_MISMATCH=y
CONFIG_SECTION_MISMATCH_WARN_ONLY=y
CONFIG_FRAME_POINTER=y
CONFIG_DEBUG_FORCE_WEAK_PER_CPU=y
# end of Compile-time checks and compiler options

#
# Generic Kernel Debugging Instruments
#
CONFIG_MAGIC_SYSRQ=y
CONFIG_MAGIC_SYSRQ_DEFAULT_ENABLE=0x1
CONFIG_MAGIC_SYSRQ_SERIAL=y
CONFIG_DEBUG_FS=y
CONFIG_HAVE_ARCH_KGDB=y
# CONFIG_KGDB is not set
CONFIG_ARCH_HAS_UBSAN_SANITIZE_ALL=y
# CONFIG_UBSAN is not set
CONFIG_UBSAN_ALIGNMENT=y
# end of Generic Kernel Debugging Instruments

CONFIG_DEBUG_KERNEL=y
CONFIG_DEBUG_MISC=y

#
# Memory Debugging
#
CONFIG_PAGE_EXTENSION=y
# CONFIG_DEBUG_PAGEALLOC is not set
# CONFIG_PAGE_OWNER is not set
CONFIG_PAGE_POISONING=y
CONFIG_PAGE_POISONING_NO_SANITY=y
CONFIG_PAGE_POISONING_ZERO=y
CONFIG_DEBUG_PAGE_REF=y
# CONFIG_DEBUG_RODATA_TEST is not set
CONFIG_GENERIC_PTDUMP=y
CONFIG_PTDUMP_CORE=y
CONFIG_PTDUMP_DEBUGFS=y
CONFIG_DEBUG_OBJECTS=y
CONFIG_DEBUG_OBJECTS_SELFTEST=y
CONFIG_DEBUG_OBJECTS_FREE=y
# CONFIG_DEBUG_OBJECTS_TIMERS is not set
CONFIG_DEBUG_OBJECTS_WORK=y
# CONFIG_DEBUG_OBJECTS_RCU_HEAD is not set
# CONFIG_DEBUG_OBJECTS_PERCPU_COUNTER is not set
CONFIG_DEBUG_OBJECTS_ENABLE_DEFAULT=1
# CONFIG_SLUB_DEBUG_ON is not set
CONFIG_SLUB_STATS=y
CONFIG_HAVE_DEBUG_KMEMLEAK=y
# CONFIG_DEBUG_KMEMLEAK is not set
CONFIG_DEBUG_STACK_USAGE=y
CONFIG_SCHED_STACK_END_CHECK=y
# CONFIG_DEBUG_VM is not set
CONFIG_ARCH_HAS_DEBUG_VIRTUAL=y
CONFIG_DEBUG_VIRTUAL=y
CONFIG_DEBUG_MEMORY_INIT=y
# CONFIG_DEBUG_PER_CPU_MAPS is not set
# CONFIG_DEBUG_HIGHMEM is not set
CONFIG_HAVE_DEBUG_STACKOVERFLOW=y
CONFIG_DEBUG_STACKOVERFLOW=y
CONFIG_CC_HAS_KASAN_GENERIC=y
CONFIG_KASAN_STACK=1
# end of Memory Debugging

# CONFIG_DEBUG_SHIRQ is not set

#
# Debug Oops, Lockups and Hangs
#
# CONFIG_PANIC_ON_OOPS is not set
CONFIG_PANIC_ON_OOPS_VALUE=0
CONFIG_PANIC_TIMEOUT=0
CONFIG_LOCKUP_DETECTOR=y
CONFIG_SOFTLOCKUP_DETECTOR=y
# CONFIG_BOOTPARAM_SOFTLOCKUP_PANIC is not set
CONFIG_BOOTPARAM_SOFTLOCKUP_PANIC_VALUE=0
# CONFIG_HARDLOCKUP_DETECTOR is not set
# CONFIG_DETECT_HUNG_TASK is not set
CONFIG_WQ_WATCHDOG=y
# end of Debug Oops, Lockups and Hangs

#
# Scheduler Debugging
#
CONFIG_SCHED_DEBUG=y
CONFIG_SCHED_INFO=y
CONFIG_SCHEDSTATS=y
# end of Scheduler Debugging

CONFIG_DEBUG_TIMEKEEPING=y
# CONFIG_DEBUG_PREEMPT is not set

#
# Lock Debugging (spinlocks, mutexes, etc...)
#
CONFIG_LOCK_DEBUGGING_SUPPORT=y
CONFIG_PROVE_LOCKING=y
CONFIG_LOCK_STAT=y
CONFIG_DEBUG_RT_MUTEXES=y
CONFIG_DEBUG_SPINLOCK=y
CONFIG_DEBUG_MUTEXES=y
CONFIG_DEBUG_WW_MUTEX_SLOWPATH=y
CONFIG_DEBUG_RWSEMS=y
CONFIG_DEBUG_LOCK_ALLOC=y
CONFIG_LOCKDEP=y
# CONFIG_DEBUG_LOCKDEP is not set
CONFIG_DEBUG_ATOMIC_SLEEP=y
CONFIG_DEBUG_LOCKING_API_SELFTESTS=y
CONFIG_LOCK_TORTURE_TEST=y
CONFIG_WW_MUTEX_SELFTEST=m
# end of Lock Debugging (spinlocks, mutexes, etc...)

CONFIG_TRACE_IRQFLAGS=y
CONFIG_STACKTRACE=y
# CONFIG_WARN_ALL_UNSEEDED_RANDOM is not set
# CONFIG_DEBUG_KOBJECT is not set

#
# Debug kernel data structures
#
CONFIG_DEBUG_LIST=y
# CONFIG_DEBUG_PLIST is not set
CONFIG_DEBUG_SG=y
# CONFIG_DEBUG_NOTIFIERS is not set
CONFIG_BUG_ON_DATA_CORRUPTION=y
# end of Debug kernel data structures

# CONFIG_DEBUG_CREDENTIALS is not set

#
# RCU Debugging
#
CONFIG_PROVE_RCU=y
CONFIG_TORTURE_TEST=y
# CONFIG_RCU_PERF_TEST is not set
# CONFIG_RCU_TORTURE_TEST is not set
CONFIG_RCU_CPU_STALL_TIMEOUT=21
# CONFIG_RCU_TRACE is not set
CONFIG_RCU_EQS_DEBUG=y
# end of RCU Debugging

# CONFIG_DEBUG_WQ_FORCE_RR_CPU is not set
# CONFIG_DEBUG_BLOCK_EXT_DEVT is not set
CONFIG_CPU_HOTPLUG_STATE_CONTROL=y
CONFIG_LATENCYTOP=y
CONFIG_USER_STACKTRACE_SUPPORT=y
CONFIG_NOP_TRACER=y
CONFIG_HAVE_FUNCTION_TRACER=y
CONFIG_HAVE_FUNCTION_GRAPH_TRACER=y
CONFIG_HAVE_DYNAMIC_FTRACE=y
CONFIG_HAVE_DYNAMIC_FTRACE_WITH_REGS=y
CONFIG_HAVE_DYNAMIC_FTRACE_WITH_DIRECT_CALLS=y
CONFIG_HAVE_FTRACE_MCOUNT_RECORD=y
CONFIG_HAVE_SYSCALL_TRACEPOINTS=y
CONFIG_HAVE_C_RECORDMCOUNT=y
CONFIG_TRACE_CLOCK=y
CONFIG_RING_BUFFER=y
CONFIG_EVENT_TRACING=y
CONFIG_CONTEXT_SWITCH_TRACER=y
CONFIG_PREEMPTIRQ_TRACEPOINTS=y
CONFIG_TRACING=y
CONFIG_TRACING_SUPPORT=y
CONFIG_FTRACE=y
# CONFIG_BOOTTIME_TRACING is not set
# CONFIG_FUNCTION_TRACER is not set
# CONFIG_STACK_TRACER is not set
# CONFIG_PREEMPTIRQ_EVENTS is not set
# CONFIG_IRQSOFF_TRACER is not set
# CONFIG_PREEMPT_TRACER is not set
# CONFIG_SCHED_TRACER is not set
# CONFIG_HWLAT_TRACER is not set
# CONFIG_MMIOTRACE is not set
# CONFIG_ENABLE_DEFAULT_TRACERS is not set
# CONFIG_FTRACE_SYSCALLS is not set
# CONFIG_TRACER_SNAPSHOT is not set
CONFIG_BRANCH_PROFILE_NONE=y
# CONFIG_PROFILE_ANNOTATED_BRANCHES is not set
# CONFIG_PROFILE_ALL_BRANCHES is not set
# CONFIG_BLK_DEV_IO_TRACE is not set
CONFIG_UPROBE_EVENTS=y
CONFIG_BPF_EVENTS=y
CONFIG_DYNAMIC_EVENTS=y
CONFIG_PROBE_EVENTS=y
CONFIG_TRACING_MAP=y
CONFIG_HIST_TRIGGERS=y
# CONFIG_TRACE_EVENT_INJECT is not set
# CONFIG_TRACEPOINT_BENCHMARK is not set
# CONFIG_RING_BUFFER_BENCHMARK is not set
# CONFIG_TRACE_EVAL_MAP_FILE is not set
# CONFIG_GCOV_PROFILE_FTRACE is not set
# CONFIG_RING_BUFFER_STARTUP_TEST is not set
# CONFIG_PREEMPTIRQ_DELAY_TEST is not set
# CONFIG_SYNTH_EVENT_GEN_TEST is not set
# CONFIG_PROVIDE_OHCI1394_DMA_INIT is not set
# CONFIG_SAMPLES is not set
CONFIG_ARCH_HAS_DEVMEM_IS_ALLOWED=y
# CONFIG_STRICT_DEVMEM is not set

#
# x86 Debugging
#
CONFIG_TRACE_IRQFLAGS_SUPPORT=y
CONFIG_X86_VERBOSE_BOOTUP=y
CONFIG_EARLY_PRINTK=y
# CONFIG_EARLY_PRINTK_DBGP is not set
# CONFIG_EARLY_PRINTK_USB_XDBC is not set
# CONFIG_EFI_PGT_DUMP is not set
CONFIG_DEBUG_WX=y
CONFIG_DOUBLEFAULT=y
CONFIG_DEBUG_TLBFLUSH=y
CONFIG_HAVE_MMIOTRACE_SUPPORT=y
# CONFIG_X86_DECODER_SELFTEST is not set
# CONFIG_IO_DELAY_0X80 is not set
# CONFIG_IO_DELAY_0XED is not set
CONFIG_IO_DELAY_UDELAY=y
# CONFIG_IO_DELAY_NONE is not set
# CONFIG_DEBUG_BOOT_PARAMS is not set
# CONFIG_CPA_DEBUG is not set
# CONFIG_DEBUG_ENTRY is not set
CONFIG_DEBUG_NMI_SELFTEST=y
CONFIG_X86_DEBUG_FPU=y
CONFIG_PUNIT_ATOM_DEBUG=y
CONFIG_UNWINDER_FRAME_POINTER=y
# end of x86 Debugging

#
# Kernel Testing and Coverage
#
# CONFIG_KUNIT is not set
CONFIG_NOTIFIER_ERROR_INJECTION=y
# CONFIG_PM_NOTIFIER_ERROR_INJECT is not set
CONFIG_NETDEV_NOTIFIER_ERROR_INJECT=y
CONFIG_FAULT_INJECTION=y
# CONFIG_FAILSLAB is not set
CONFIG_FAIL_PAGE_ALLOC=y
CONFIG_FAIL_MAKE_REQUEST=y
CONFIG_FAIL_IO_TIMEOUT=y
CONFIG_FAIL_FUTEX=y
CONFIG_FAULT_INJECTION_DEBUG_FS=y
CONFIG_FAIL_MMC_REQUEST=y
# CONFIG_FAULT_INJECTION_STACKTRACE_FILTER is not set
CONFIG_CC_HAS_SANCOV_TRACE_PC=y
CONFIG_RUNTIME_TESTING_MENU=y
# CONFIG_LKDTM is not set
# CONFIG_TEST_LIST_SORT is not set
# CONFIG_TEST_SORT is not set
# CONFIG_BACKTRACE_SELF_TEST is not set
# CONFIG_RBTREE_TEST is not set
# CONFIG_REED_SOLOMON_TEST is not set
# CONFIG_INTERVAL_TREE_TEST is not set
# CONFIG_PERCPU_TEST is not set
# CONFIG_ATOMIC64_SELFTEST is not set
# CONFIG_ASYNC_RAID6_TEST is not set
# CONFIG_TEST_HEXDUMP is not set
# CONFIG_TEST_STRING_HELPERS is not set
CONFIG_TEST_STRSCPY=m
# CONFIG_TEST_KSTRTOX is not set
CONFIG_TEST_PRINTF=m
CONFIG_TEST_BITMAP=m
# CONFIG_TEST_BITFIELD is not set
# CONFIG_TEST_UUID is not set
# CONFIG_TEST_XARRAY is not set
# CONFIG_TEST_OVERFLOW is not set
# CONFIG_TEST_RHASHTABLE is not set
# CONFIG_TEST_HASH is not set
# CONFIG_TEST_IDA is not set
CONFIG_TEST_LKM=m
CONFIG_TEST_VMALLOC=m
CONFIG_TEST_USER_COPY=m
CONFIG_TEST_BPF=m
CONFIG_TEST_BLACKHOLE_DEV=m
# CONFIG_FIND_BIT_BENCHMARK is not set
CONFIG_TEST_FIRMWARE=m
CONFIG_TEST_SYSCTL=m
# CONFIG_TEST_UDELAY is not set
CONFIG_TEST_STATIC_KEYS=m
# CONFIG_TEST_DEBUG_VIRTUAL is not set
# CONFIG_TEST_MEMCAT_P is not set
CONFIG_TEST_STACKINIT=y
CONFIG_TEST_MEMINIT=y
# CONFIG_MEMTEST is not set
# end of Kernel Testing and Coverage
# end of Kernel hacking

--dUQ3G7okZyz11iOi
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--dUQ3G7okZyz11iOi--
