Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E60C1F958
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 May 2019 19:29:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A2F982FC48;
	Wed, 15 May 2019 17:29:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZQ2kw7e5RMNf; Wed, 15 May 2019 17:29:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3FFA830C96;
	Wed, 15 May 2019 17:28:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C0D3B1BF3A3
 for <devel@linuxdriverproject.org>; Wed, 15 May 2019 17:27:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BB63686227
 for <devel@linuxdriverproject.org>; Wed, 15 May 2019 17:27:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ajRyxxI6661O for <devel@linuxdriverproject.org>;
 Wed, 15 May 2019 17:27:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
 [209.85.167.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F0E4D861F6
 for <devel@driverdev.osuosl.org>; Wed, 15 May 2019 17:27:36 +0000 (UTC)
Received: by mail-oi1-f196.google.com with SMTP id m204so413576oib.0
 for <devel@driverdev.osuosl.org>; Wed, 15 May 2019 10:27:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=r8iyo43aoLk8+I9P0qHUsq546XVEPcbdFUU7OKZMGTg=;
 b=sWj5eI97140UX7NbXrNFp1C7c+k2S3M3hdAWHe0evcLhE82o0i7URhItCSkZPY205o
 1ArNOsrY3XeQ8eSqk6vUVFj0boxVxqDxAgWx++/SY8qvupoI/01qazNwxtua/97uM6YN
 EiKdrjEtXHfp/baKPOG4nY5V7nSe/itMFzYK3dId9IuWunlD/AINZsAqQJe21/09h1I/
 Jq1axoKPCEbXNotOLRUd20jJOz8jZFPlsNwZL5nnBlmHXfxa5ecYnXZMxQpeFaFVhi6X
 oE1OYqmpTcxZCC0hcgK5EBCobHJ+k7Aae0N4z+S9TkO2LB8eeQEeScMCUFQCPrwjcb/8
 JA8A==
X-Gm-Message-State: APjAAAWEqc25F3TZN8ZiAdi7t2YAaW3s8kh05nRbIxNfS1Lg49adWfYm
 EMi4ql/JGM2sPEOQyNSfhHk=
X-Google-Smtp-Source: APXvYqx1GP6spyxWTAHHzPATitLqFMlAFjCGM6JPPti4nkjCsvXiPB4DE4IvJG3IvrBfBOZlSf7qEQ==
X-Received: by 2002:aca:3f84:: with SMTP id m126mr6809179oia.164.1557941253962; 
 Wed, 15 May 2019 10:27:33 -0700 (PDT)
Received: from sultan-box.localdomain ([107.193.118.89])
 by smtp.gmail.com with ESMTPSA id f5sm1057594oih.39.2019.05.15.10.27.30
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 15 May 2019 10:27:32 -0700 (PDT)
Date: Wed, 15 May 2019 10:27:28 -0700
From: Sultan Alsawaf <sultan@kerneltoast.com>
To: Oleg Nesterov <oleg@redhat.com>
Subject: Re: [RFC] simple_lmk: Introduce Simple Low Memory Killer for Android
Message-ID: <20190515172728.GA14047@sultan-box.localdomain>
References: <20190319231020.tdcttojlbmx57gke@brauner.io>
 <20190320015249.GC129907@google.com>
 <20190507021622.GA27300@sultan-box.localdomain>
 <20190507153154.GA5750@redhat.com>
 <20190507163520.GA1131@sultan-box.localdomain>
 <20190509155646.GB24526@redhat.com>
 <20190509183353.GA13018@sultan-box.localdomain>
 <20190510151024.GA21421@redhat.com>
 <20190513164555.GA30128@sultan-box.localdomain>
 <20190515145831.GD18892@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190515145831.GD18892@redhat.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 Daniel Colascione <dancol@google.com>, kernel-team <kernel-team@android.com>,
 Todd Kjos <tkjos@android.com>, Kees Cook <keescook@chromium.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Tim Murray <timmurray@google.com>,
 Michal Hocko <mhocko@kernel.org>, linux-mm <linux-mm@kvack.org>,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Ingo Molnar <mingo@redhat.com>, Martijn Coenen <maco@android.com>,
 Steven Rostedt <rostedt@goodmis.org>, Joel Fernandes <joel@joelfernandes.org>,
 Andy Lutomirski <luto@amacapital.net>, Suren Baghdasaryan <surenb@google.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, May 15, 2019 at 04:58:32PM +0200, Oleg Nesterov wrote:
> Could you explain in detail what exactly did you do and what do you see in dmesg?
> 
> Just in case, lockdep complains only once, print_circular_bug() does debug_locks_off()
> so it it has already reported another false positive __lock_acquire() will simply
> return after that.
> 
> Oleg.

This is what I did:
diff --git a/kernel/locking/lockdep.c b/kernel/locking/lockdep.c
index 774ab79d3ec7..009e7d431a88 100644
--- a/kernel/locking/lockdep.c
+++ b/kernel/locking/lockdep.c
@@ -3078,6 +3078,7 @@ static int __lock_acquire(struct lockdep_map *lock, unsigned int subclass,
        int class_idx;
        u64 chain_key;

+       BUG_ON(!debug_locks || !prove_locking);
        if (unlikely(!debug_locks))
                return 0;

diff --git a/lib/debug_locks.c b/lib/debug_locks.c
index 124fdf238b3d..4003a18420fb 100644
--- a/lib/debug_locks.c
+++ b/lib/debug_locks.c
@@ -37,6 +37,7 @@ EXPORT_SYMBOL_GPL(debug_locks_silent);
  */
 int debug_locks_off(void)
 {
+       return 0;
        if (debug_locks && __debug_locks_off()) {
                if (!debug_locks_silent) {
                        console_verbose();

And this is my full dmesg, with simple_lmk invoked for the first time near the
bottom:
[    0.000000] Booting Linux on physical CPU 0x0
[    0.000000] Initializing cgroup subsys cpuset
[    0.000000] Initializing cgroup subsys cpu
[    0.000000] Initializing cgroup subsys cpuacct
[    0.000000] Initializing cgroup subsys schedtune
[    0.000000] Linux version 4.4.169-Sultan (sultan@sultan-box) (gcc version 8.1.0 (GCC)) #15 SMP PREEMPT Wed May 15 10:11:03 PDT 2019
[    0.000000] Boot CPU: AArch64 Processor [51af8014]
[    0.000000] Machine: Qualcomm Technologies, Inc. MSM8998 v2.1
[    0.000000] Memory limited to 2048MB
[    0.000000] Reserved memory: reserved region for node 'removed_regions@85800000': base 0x0000000000000000, size 55 MiB
[    0.000000] Reserved memory: reserved region for node 'pil_ipa_gpu_region@95200000': base 0x0000000000000000, size 1 MiB
[    0.000000] Reserved memory: reserved region for node 'pil_slpi_region@94300000': base 0x0000000000000000, size 15 MiB
[    0.000000] Reserved memory: reserved region for node 'pil_mba_region@94100000': base 0x0000000000000000, size 2 MiB
[    0.000000] Reserved memory: reserved region for node 'pil_video_region@93c00000': base 0x0000000000000000, size 5 MiB
[    0.000000] Reserved memory: reserved region for node 'modem_region@8cc00000': base 0x0000000000000000, size 120 MiB
[    0.000000] Reserved memory: reserved region for node 'pil_adsp_region@0x8b200000': base 0x0000000000000000, size 26 MiB
[    0.000000] Reserved memory: reserved region for node 'spss_region@8ab00000': base 0x0000000000000000, size 7 MiB
[    0.000000] Reserved memory: reserved region for node 'alt_ramoops_region@b0e00000': base 0x0000000000000000, size 2 MiB
[    0.000000] Reserved memory: reserved region for node 'ramoops_region@b0000000': base 0x0000000000000000, size 2 MiB
[    0.000000] Reserved memory: reserved region for node 'ramoops_meta_region@affff000': base 0x0000000000000000, size 0 MiB
[    0.000000] Reserved memory: reserved region for node 'easel_mem@96000000': base 0x0000000000000000, size 64 MiB
[    0.000000] Reserved memory: allocated memory for 'linux,cma' node: base 0x0000000000000000, size 32 MiB
[    0.000000] Reserved memory: created CMA memory pool at 0x0000000000000000, size 32 MiB
[    0.000000] Reserved memory: initialized node linux,cma, compatible id shared-dma-pool
[    0.000000] Reserved memory: allocated memory for 'qseecom_region' node: base 0x0000000000000000, size 20 MiB
[    0.000000] Reserved memory: created CMA memory pool at 0x0000000000000000, size 20 MiB
[    0.000000] Reserved memory: initialized node qseecom_region, compatible id shared-dma-pool
[    0.000000] Reserved memory: allocated memory for 'adsp_region' node: base 0x0000000000000000, size 8 MiB
[    0.000000] Reserved memory: created CMA memory pool at 0x0000000000000000, size 8 MiB
[    0.000000] Reserved memory: initialized node adsp_region, compatible id shared-dma-pool
[    0.000000] Reserved memory: allocated memory for 'sp_region' node: base 0x0000000000000000, size 8 MiB
[    0.000000] Reserved memory: created CMA memory pool at 0x0000000000000000, size 8 MiB
[    0.000000] Reserved memory: initialized node sp_region, compatible id shared-dma-pool
[    0.000000] Reserved memory: allocated memory for 'secure_region' node: base 0x0000000000000000, size 92 MiB
[    0.000000] Reserved memory: created CMA memory pool at 0x0000000000000000, size 92 MiB
[    0.000000] Reserved memory: initialized node secure_region, compatible id shared-dma-pool
[    0.000000] Removed memory: created DMA memory pool at 0x0000000000000000, size 55 MiB
[    0.000000] Reserved memory: initialized node removed_regions@85800000, compatible id removed-dma-pool
[    0.000000] Removed memory: created DMA memory pool at 0x0000000000000000, size 7 MiB
[    0.000000] Reserved memory: initialized node spss_region@8ab00000, compatible id removed-dma-pool
[    0.000000] Removed memory: created DMA memory pool at 0x0000000000000000, size 26 MiB
[    0.000000] Reserved memory: initialized node pil_adsp_region@0x8b200000, compatible id removed-dma-pool
[    0.000000] Removed memory: created DMA memory pool at 0x0000000000000000, size 120 MiB
[    0.000000] Reserved memory: initialized node modem_region@8cc00000, compatible id removed-dma-pool
[    0.000000] Removed memory: created DMA memory pool at 0x0000000000000000, size 5 MiB
[    0.000000] Reserved memory: initialized node pil_video_region@93c00000, compatible id removed-dma-pool
[    0.000000] Removed memory: created DMA memory pool at 0x0000000000000000, size 2 MiB
[    0.000000] Reserved memory: initialized node pil_mba_region@94100000, compatible id removed-dma-pool
[    0.000000] Removed memory: created DMA memory pool at 0x0000000000000000, size 15 MiB
[    0.000000] Reserved memory: initialized node pil_slpi_region@94300000, compatible id removed-dma-pool
[    0.000000] Removed memory: created DMA memory pool at 0x0000000000000000, size 1 MiB
[    0.000000] Reserved memory: initialized node pil_ipa_gpu_region@95200000, compatible id removed-dma-pool
[    0.000000] Removed memory: created DMA memory pool at 0x0000000000000000, size 0 MiB
[    0.000000] Reserved memory: initialized node ramoops_meta_region@affff000, compatible id removed-dma-pool
[    0.000000] Removed memory: created DMA memory pool at 0x0000000000000000, size 2 MiB
[    0.000000] Reserved memory: initialized node ramoops_region@b0000000, compatible id removed-dma-pool
[    0.000000] Removed memory: created DMA memory pool at 0x0000000000000000, size 2 MiB
[    0.000000] Reserved memory: initialized node alt_ramoops_region@b0e00000, compatible id removed-dma-pool
[    0.000000] On node 0 totalpages: 464127
[    0.000000] DMA zone: 7252 pages used for memmap
[    0.000000] DMA zone: 0 pages reserved
[    0.000000] DMA zone: 464127 pages, LIFO batch:31
[    0.000000] psci: probing for conduit method from DT.
[    0.000000] psci: PSCIv1.0 detected in firmware.
[    0.000000] psci: Using standard PSCI v0.2 function IDs
[    0.000000] psci: MIGRATE_INFO_TYPE not supported.
[    0.000000] psci: Initializing psci_cpu_init
[    0.000000] psci: Initializing psci_cpu_init
[    0.000000] psci: Initializing psci_cpu_init
[    0.000000] psci: Initializing psci_cpu_init
[    0.000000] psci: Initializing psci_cpu_init
[    0.000000] psci: Initializing psci_cpu_init
[    0.000000] psci: Initializing psci_cpu_init
[    0.000000] PERCPU: Embedded 467 pages/cpu @0000000000000000 s1880984 r0 d31848 u1912832
[    0.000000] pcpu-alloc: s1880984 r0 d31848 u1912832 alloc=467*4096
[    0.000000] pcpu-alloc: [0] 0 [0] 1 [0] 2 [0] 3 [0] 4 [0] 5 [0] 6 [0] 7 
[    0.000000] CPU features: enabling workaround for Kryo2xx Silver erratum 845719
[    0.000000] Built 1 zonelists in Zone order, mobility grouping on.  Total pages: 456875
[    0.000000] Kernel command line: rcupdate.rcu_expedited=1 mem=2G androidboot.hardware=taimen lpm_levels.sleep_disabled=1 user_debug=31 msm_rtb.filter=0 ehci-hcd.park=3 service_locator.enable=1 swiotlb=2048 firmware_class.path=/vendor/firmware loop.max_part=7 raid=noautodetect usbcore.autosuspend=7 androidboot.dtbo_idx=12 buildvariant=user androidboot.revision=rev_10 androidboot.bootreason androidboot.hardware.sku=G011C bootcable.type=400MA androidboot.ddr_size=4096MB androidboot.ddr_info=HYNIX msm_poweroff.download_mode=0 androidboot.ramdump_enable=0 androidboot.hardware.display=MP androidboot.hardware.ufs=128GB,SAMSUNG androidboot.cid=00000000 androidboot.hardware.color=VB androidboot.hardware.variant=GA00137-US androidboot.hardware.mid=2 androidboot.boottime=1BLL:132,1BLE:549,2BLL:29,2BLE:12702,AVB:54,KL:0,KD:1741,ODT:191,SW:10000 androidboot.verifiedbootstate=orange androidboot.keymaster=1 dm="1 vroot none ro 1,0 5159992 verity 1 PARTUUID=73d84a99-00e6-d82f-51d0-c7461b8
 99ae8 PARTUUID
[    0.000000] device-mapper: init: will configure 1 devices
[    0.000000] log_buf_len individual max cpu contribution: 131072 bytes
[    0.000000] log_buf_len total cpu_extra contributions: 917504 bytes
[    0.000000] log_buf_len min size: 131072 bytes
[    0.000000] log_buf_len: 1048576 bytes
[    0.000000] early log buf free: 122244(93%)
[    0.000000] PID hash table entries: 4096 (order: 3, 32768 bytes)
[    0.000000] Dentry cache hash table entries: 262144 (order: 9, 2097152 bytes)
[    0.000000] Inode-cache hash table entries: 131072 (order: 8, 1048576 bytes)
[    0.000000] software IO TLB: mapped [mem 0xf252b000-0xf292b000] (4MB)
[    0.000000] Memory: 1514204K/1856508K available (15870K kernel code, 2071K rwdata, 8788K rodata, 8192K init, 17231K bss, 178464K reserved, 163840K cma-reserved)
[    0.000000] Virtual kernel memory layout:\x0a    modules : 0xffffff8000000000 - 0xffffff8008000000   (   128 MB)\x0a    vmalloc : 0xffffff8008000000 - 0xffffffbdbfff0000   (   246 GB)\x0a      .init : 0x0000000000000000 - 0x0000000000000000   (  8192 KB)\x0a      .text : 0x0000000000000000 - 0x0000000000000000   ( 15872 KB)\x0a    .rodata : 0x0000000000000000 - 0x0000000000000000   ( 10240 KB)\x0a      .data : 0x0000000000000000 - 0x0000000000000000   (  2072 KB)\x0a    vmemmap : 0xffffffbdc0000000 - 0xffffffbfc0000000   (     8 GB maximum)\x0a              0xffffffbe45000000 - 0xffffffbe47000000   (    32 MB actual)\x0a    fixed   : 0xffffffbffe7fd000 - 0xffffffbffec00000   (  4108 KB)\x0a    PCI I/O : 0xffffffbffee00000 - 0xffffffbfffe00000   (    16 MB)\x0a    memory  : 0xffffffe140000000 - 0xffffffe1c0000000   (  2048 MB)
[    0.000000] SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=8, Nodes=1
[    0.000000] Running RCU self tests
[    0.000000] Preemptible hierarchical RCU implementation.
[    0.000000] \x09RCU dyntick-idle grace-period acceleration is enabled.
[    0.000000] \x09RCU lockdep checking is enabled.
[    0.000000] NR_IRQS:64 nr_irqs:64 0
[    0.000000] mpm_init_irq_domain(): Cannot find irq controller for qcom,gpio-parent
[    0.000000] MPM 1 irq mapping errored -517
[    0.000000] \x09Offload RCU callbacks from all CPUs
[    0.000000] \x09Offload RCU callbacks from CPUs: 0-7.
[    0.000000] Architected cp15 and mmio timer(s) running at 19.20MHz (virt/virt).
[    0.000000] clocksource: arch_sys_counter: mask: 0xffffffffffffff max_cycles: 0x46d987e47, max_idle_ns: 440795202767 ns
[    0.000003] sched_clock: 56 bits at 19MHz, resolution 52ns, wraps every 4398046511078ns
[    0.000025] clocksource: Switched to clocksource arch_sys_counter
[    0.001905] Lock dependency validator: Copyright (c) 2006 Red Hat, Inc., Ingo Molnar
[    0.001913] ... MAX_LOCKDEP_SUBCLASSES:  8
[    0.001917] ... MAX_LOCK_DEPTH:          48
[    0.001921] ... MAX_LOCKDEP_KEYS:        8191
[    0.001926] ... CLASSHASH_SIZE:          4096
[    0.001930] ... MAX_LOCKDEP_ENTRIES:     32768
[    0.001935] ... MAX_LOCKDEP_CHAINS:      65536
[    0.001940] ... CHAINHASH_SIZE:          32768
[    0.001945] memory used by lock dependency info: 8671 kB
[    0.001949] per task-struct memory footprint: 2688 bytes
[    0.001970] Calibrating delay loop (skipped), value calculated using timer frequency.. 38.40 BogoMIPS (lpj=192000)
[    0.001980] pid_max: default: 32768 minimum: 301
[    0.002190] Security Framework initialized
[    0.002198] SELinux:  Initializing.
[    0.002321] SELinux:  Starting in enforcing mode
[    0.002395] Mount-cache hash table entries: 4096 (order: 3, 32768 bytes)
[    0.002405] Mountpoint-cache hash table entries: 4096 (order: 3, 32768 bytes)
[    0.003810] Initializing cgroup subsys freezer
[    0.005710] sched-energy: Sched-energy-costs installed from DT
[    0.005750] ASID allocator initialised with 65536 entries
[    0.009737] NOHZ: local_softirq_pending 02
[    0.010052] NOHZ: local_softirq_pending 02
[    0.296328] Brought up 8 CPUs
[    0.296341] SMP: Total of 8 processors activated.
[    0.296349] CPU features: detected feature: GIC system register CPU interface
[    0.296356] CPU features: detected feature: 32-bit EL0 Support
[    0.296365] CPU: All CPU(s) started at EL1
[    0.296579] alternatives: patching kernel code
[    0.296864] CPU7: update max cpu_capacity 1024
[    0.300249] CPU7: update max cpu_capacity 1024
[    0.653767] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 19112604462750000 ns
[    0.653804] futex hash table entries: 2048 (order: 6, 262144 bytes)
[    0.668499] pinctrl core: initialized pinctrl subsystem
[    0.670775] NET: Registered protocol family 16
[    0.673633] schedtune: init normalization constants...
[    0.673644] schedtune: CLUSTER[0-3]      min_pwr:     0 max_pwr:    66
[    0.673652] schedtune: CPU[0]            min_pwr:     0 max_pwr:   619
[    0.673659] schedtune: CPU[1]            min_pwr:     0 max_pwr:   619
[    0.673666] schedtune: CPU[2]            min_pwr:     0 max_pwr:   619
[    0.673675] schedtune: CPU[3]            min_pwr:     0 max_pwr:   619
[    0.673682] schedtune: CLUSTER[4-7]      min_pwr:     0 max_pwr:   203
[    0.673689] schedtune: CPU[4]            min_pwr:     0 max_pwr:  1683
[    0.673697] schedtune: CPU[5]            min_pwr:     0 max_pwr:  1683
[    0.673705] schedtune: CPU[6]            min_pwr:     0 max_pwr:  1683
[    0.673713] schedtune: CPU[7]            min_pwr:     0 max_pwr:  1683
[    0.673720] schedtune: SYSTEM            min_pwr:     0 max_pwr:  9477
[    0.673727] schedtune: using normalization constants mul: 3130245765 sh1: 1 sh2: 13
[    0.673733] schedtune: verify normalization constants...
[    0.673739] schedtune: max_pwr/2^0: 9477 => norm_pwr:  1024
[    0.673745] schedtune: max_pwr/2^1: 4738 => norm_pwr:   511
[    0.673750] schedtune: max_pwr/2^2: 2369 => norm_pwr:   255
[    0.673756] schedtune: max_pwr/2^3: 1184 => norm_pwr:   127
[    0.673761] schedtune: max_pwr/2^4:  592 => norm_pwr:    63
[    0.673767] schedtune: max_pwr/2^5:  296 => norm_pwr:    31
[    0.673775] schedtune: configured to support 5 boost groups
[    0.675945] cpuidle: using governor menu
[    0.675969] cpuidle: using governor qcom
[    0.676801] vdso: 2 pages (1 code @ 0000000000000000, 1 data @ 0000000000000000)
[    0.676815] vdso32: 2 pages (1 code @ 0000000000000000, 1 data @ 0000000000000000)
[    0.676847] hw-breakpoint: found 6 breakpoint and 4 watchpoint registers.
[    0.678790] DMA: preallocated 256 KiB pool for atomic allocations
[    0.679023] msm_smem_init: unable to create logging context
[    0.679128] msm_smd_init: unable to create SMD logging context
[    0.679134] msm_smd_init: unable to create SMSM logging context
[    0.689885] <CORE> glink_init: unable to create log context
[    0.690275] <CORE> glink_core_register_transport: unable to create log context for [dsps:smd_trans]
[    0.690570] <CORE> glink_core_register_transport: unable to create log context for [lpass:smd_trans]
[    0.690823] <CORE> glink_core_register_transport: unable to create log context for [mpss:smd_trans]
[    0.691083] <CORE> glink_core_register_transport: unable to create log context for [wcnss:smd_trans]
[    0.691336] <CORE> glink_core_register_transport: unable to create log context for [rpm:smd_trans]
[    0.693345] Failed to create IPC log0
[    0.693351] Failed to create IPC log1
[    0.693356] Failed to create IPC log2
[    0.693361] Failed to create IPC log3
[    0.693366] Failed to create IPC log4
[    0.703899] exit: IPA_USB init success!
[    0.728143] unable to find DT imem restart info node
[    0.728171] restart_handler_init failure
[    0.729717] unable to find DT imem DLOAD mode node
[    0.731089] unable to find DT imem EDLOAD mode node
[    0.733041] spmi spmi-0: PMIC arbiter version v3 (0x30000000)
[    0.756677] sps:sps is ready.
[    0.769428] (NULL device *): msm_gsi_probe:2842 failed to create IPC log, continue...
[    0.774662] platform soc:qcom,msm-adsprpc-mem: assigned reserved memory node adsp_region
[    0.776184] msm_rpm_dev_probe: APSS-RPM communication over GLINK
[    0.799741] <CORE> glink_core_register_transport: unable to create log context for [mpss:smem]
[    0.801887] <CORE> glink_core_register_transport: unable to create log context for [lpass:smem]
[    0.803573] <CORE> glink_core_register_transport: unable to create log context for [dsps:smem]
[    0.804895] <CORE> glink_core_register_transport: unable to create log context for [rpm:smem]
[    0.806695] <CORE> glink_core_register_transport: unable to create log context for [spss:mailbox]
[    0.812618] msm_rpm_trans_notify_state: glink config params: transport=(null), edge=rpm, name=rpm_requests
[    0.817405] platform 17300000.qcom,lpass: assigned reserved memory node pil_adsp_region@0x8b200000
[    0.818715] platform 4080000.qcom,mss: assigned reserved memory node modem_region@8cc00000
[    0.825292] msm-thermal soc:qcom,msm-thermal: probe_psm:Failed reading node=/soc/qcom,msm-thermal, key=qcom,pmic-sw-mode-temp. err=-22. KTM continues
[    0.825383] msm_thermal:vdd_restriction_reg_init Defer regulator vdd-dig probe
[    0.825389] msm_thermal:probe_vdd_rstr Err regulator init. err:-517. KTM continues.
[    0.825397] msm-thermal soc:qcom,msm-thermal: probe_vdd_rstr:Failed reading node=/soc/qcom,msm-thermal, key=qcom,max-freq-level. err=-517. KTM continues
[    0.842089] platform 5c00000.qcom,ssc: assigned reserved memory node pil_slpi_region@94300000
[    0.842624] platform cce0000.qcom,venus: assigned reserved memory node pil_video_region@93c00000
[    0.843573] msm_watchdog 17817000.qcom,wdt: wdog absent resource not present
[    0.844074] msm_watchdog 17817000.qcom,wdt: MSM Watchdog Initialized
[    0.844557] platform 1d0101c.qcom,spss: assigned reserved memory node spss_region@8ab00000
[    0.861513] msm_mpm_dev_probe(): Cannot get clk resource for XO: -517
[    0.920274] __of_mpm_init(): MPM driver mapping exists
[    0.936435] irq: no irq domain found for /soc/qcom,mdss_mdp@c900000 !
[    0.944570] i2c-msm-v2 c179000.i2c: probing driver i2c-msm-v2
[    0.944673] i2c-msm-v2 c179000.i2c: error on clk_get(core_clk):-517
[    0.944686] i2c-msm-v2 c179000.i2c: error probe() failed with err:-517
[    0.945749] i2c-msm-v2 c17a000.i2c: probing driver i2c-msm-v2
[    0.945826] i2c-msm-v2 c17a000.i2c: error on clk_get(core_clk):-517
[    0.945837] i2c-msm-v2 c17a000.i2c: error probe() failed with err:-517
[    0.946886] i2c-msm-v2 c1b5000.i2c: probing driver i2c-msm-v2
[    0.946962] i2c-msm-v2 c1b5000.i2c: error on clk_get(core_clk):-517
[    0.946974] i2c-msm-v2 c1b5000.i2c: error probe() failed with err:-517
[    0.947991] i2c-msm-v2 c1b6000.i2c: probing driver i2c-msm-v2
[    0.948068] i2c-msm-v2 c1b6000.i2c: error on clk_get(core_clk):-517
[    0.948079] i2c-msm-v2 c1b6000.i2c: error probe() failed with err:-517
[    0.949321] i2c-msm-v2 c1b7000.i2c: probing driver i2c-msm-v2
[    0.949396] i2c-msm-v2 c1b7000.i2c: error on clk_get(core_clk):-517
[    0.949407] i2c-msm-v2 c1b7000.i2c: error probe() failed with err:-517
[    0.957792] irq: no irq domain found for /soc/qcom,sde_kms@c900000 !
[    0.962256] platform soc:access_ramoops@0: assigned reserved memory node ramoops_meta_region@affff000
[    0.962725] platform soc:access_ramoops@1: assigned reserved memory node alt_ramoops_region@b0e00000
[    0.963184] platform soc:ramoops: assigned reserved memory node ramoops_region@b0000000
[    0.983492] console [pstore0] enabled
[    0.983836] pstore: Registered ramoops as persistent store backend
[    0.984141] ramoops: attached 0x200000@0xb0000000, ecc: 0/0
[    0.985757] bldr_log_init: can't find compatible 'htc,bldr_log'
[    1.065674] msm-thermal soc:qcom,msm-thermal: probe_psm:Failed reading node=/soc/qcom,msm-thermal, key=qcom,pmic-sw-mode-temp. err=-22. KTM continues
[    1.065995] msm_thermal:vdd_restriction_reg_init Defer regulator vdd-gfx probe
[    1.066003] msm_thermal:probe_vdd_rstr Err regulator init. err:-517. KTM continues.
[    1.066013] msm-thermal soc:qcom,msm-thermal: probe_vdd_rstr:Failed reading node=/soc/qcom,msm-thermal, key=qcom,max-freq-level. err=-517. KTM continues
[    1.067408] msm_mpm_dev_probe(): Cannot get clk resource for XO: -517
[    1.068500] i2c-msm-v2 c179000.i2c: probing driver i2c-msm-v2
[    1.068603] i2c-msm-v2 c179000.i2c: error on clk_get(core_clk):-517
[    1.068617] i2c-msm-v2 c179000.i2c: error probe() failed with err:-517
[    1.069308] i2c-msm-v2 c17a000.i2c: probing driver i2c-msm-v2
[    1.069391] i2c-msm-v2 c17a000.i2c: error on clk_get(core_clk):-517
[    1.069404] i2c-msm-v2 c17a000.i2c: error probe() failed with err:-517
[    1.070145] i2c-msm-v2 c1b5000.i2c: probing driver i2c-msm-v2
[    1.070230] i2c-msm-v2 c1b5000.i2c: error on clk_get(core_clk):-517
[    1.070243] i2c-msm-v2 c1b5000.i2c: error probe() failed with err:-517
[    1.070912] i2c-msm-v2 c1b6000.i2c: probing driver i2c-msm-v2
[    1.070995] i2c-msm-v2 c1b6000.i2c: error on clk_get(core_clk):-517
[    1.071008] i2c-msm-v2 c1b6000.i2c: error probe() failed with err:-517
[    1.071910] i2c-msm-v2 c1b7000.i2c: probing driver i2c-msm-v2
[    1.071994] i2c-msm-v2 c1b7000.i2c: error on clk_get(core_clk):-517
[    1.072007] i2c-msm-v2 c1b7000.i2c: error probe() failed with err:-517
[    1.084611] gcc_mss_q6_bimc_axi_clk: status stuck off
[    1.084652] ------------[ cut here ]------------
[    1.084661] WARNING: at ../drivers/clk/msm/clock-local2.c:670
[    1.084667] 
[    1.084676] CPU: 0 PID: 84 Comm: kworker/u16:1 Not tainted 4.4.169-Sultan #15
[    1.084682] Hardware name: Qualcomm Technologies, Inc. MSM8998 v2.1 (DT)
[    1.084700] Workqueue: deferwq deferred_probe_work_func
[    1.084710] task: 0000000000000000 task.stack: 0000000000000000
[    1.084720] PC is at branch_clk_halt_check+0xa4/0x130
[    1.084727] LR is at branch_clk_halt_check+0xa4/0x130
[    1.084735] pc : [<ffffff9f2f3cf9dc>] lr : [<ffffff9f2f3cf9dc>] pstate: 804000c5
[    1.084741] sp : ffffffe1b14af920
[    1.084746] x29: ffffffe1b14af920 x28: 0000000000000000 
[    1.084758] x27: 0000000000000000 x26: 00000000000000a0 
[    1.084770] x25: ffffff9f2fcd29f0 x24: ffffff9f30b4cce0 
[    1.084782] x23: 0000000080000000 x22: 00000000d0000000 
[    1.084794] x21: ffffff8008f8a040 x20: 0000000000000000 
[    1.084806] x19: 0000000000000000 x18: 0000000000000001 
[    1.084818] x17: 0000000000000001 x16: 00000000024636b2 
[    1.084830] x15: ffffff9f30a05d90 x14: 0000000000000010 
[    1.084842] x13: ffffff9fb1925227 x12: ffffff9f31925230 
[    1.084854] x11: 7f7f7f7f7f7f7f7f x10: ffffffe1b14af700 
[    1.084866] x9 : 00000000ffffffd0 x8 : 00000000000000fd 
[    1.084878] x7 : 0000000000000001 x6 : ffffff9f2e90dff8 
[    1.084890] x5 : 0000000000000000 x4 : 0000000000000001 
[    1.084902] x3 : 0000000000000002 x2 : 403a4a6d7a81e143 
[    1.084914] x1 : 0000000000000000 x0 : 0000000000000029 
[    1.084926] \x0aPC: 0xffffff9f2f3cf99c:
[    1.084933] f99c  d28218e0 7100069f 54000260 6a16003f 54000280 97de0f68 71000673 54ffff01
[    1.084969] f9bc  b4000518 b140071f 540004c8 f9400b01 aa1903e2 f0004c00 912ca000 97d66e11
[    1.085004] f9dc  d4210000 12800da0 a9425bf5 a94363f7 14000007 12040c21 6b17003f 54fffdc1
[    1.085039] f9fc  a9425bf5 52800000 a94363f7 a94153f3 f94023f9 a8c57bfd d65f03c0 d2989580
[    1.085076] \x0aLR: 0xffffff9f2f3cf99c:
[    1.085082] f99c  d28218e0 7100069f 54000260 6a16003f 54000280 97de0f68 71000673 54ffff01
[    1.085118] f9bc  b4000518 b140071f 540004c8 f9400b01 aa1903e2 f0004c00 912ca000 97d66e11
[    1.085154] f9dc  d4210000 12800da0 a9425bf5 a94363f7 14000007 12040c21 6b17003f 54fffdc1
[    1.085189] f9fc  a9425bf5 52800000 a94363f7 a94153f3 f94023f9 a8c57bfd d65f03c0 d2989580
[    1.085225] \x0aSP: 0xffffffe1b14af8e0:
[    1.085232] f8e0  2f3cf9dc ffffff9f b14af920 ffffffe1 2f3cf9dc ffffff9f 804000c5 00000000
[    1.085267] f900  2fcd29f0 ffffff9f 00001ffe 00000000 ffffffff ffffffff 30ede370 ffffff9f
[    1.085301] f920  b14af970 ffffffe1 2f3d0698 ffffff9f 30b4ccd8 ffffff9f 30b44608 ffffff9f
[    1.085336] f940  30b4cce0 ffffff9f 00000040 00000000 00000000 00000000 2fd52830 ffffff9f
[    1.085373] 
[    1.085402] ---[ end trace 24ec051baadc3c82 ]---
[    1.085409] Call trace:
[    1.085416] Exception stack(0xffffffe1b14af730 to 0xffffffe1b14af860)
[    1.085424] f720:                                   0000000000000000 0000008000000000
[    1.085433] f740: 00000000834df000 ffffff9f2f3cf9dc 00000000804000c5 0000000000000029
[    1.085442] f760: ffffff9f31924cb0 0000000030a22a30 ffffffe1b14af780 ffffff9f2e90e584
[    1.085450] f780: ffffffe1b14af820 ffffff9f2e90e8a8 ffffff9f30a05d90 ffffff9f2e90e8b0
[    1.085460] f7a0: ffffff9f2fd52b28 00000000d0000000 0000000080000000 ffffff9f30b4cce0
[    1.085468] f7c0: ffffff9f2fcd29f0 00000000000000a0 0000000000000000 0000000000000000
[    1.085477] f7e0: ffffff9f31925680 403a4a6d7a81e143 0000000000000029 0000000000000000
[    1.085486] f800: 403a4a6d7a81e143 0000000000000002 0000000000000001 0000000000000000
[    1.085495] f820: ffffff9f2e90dff8 0000000000000001 00000000000000fd 00000000ffffffd0
[    1.085505] f840: ffffffe1b14af700 7f7f7f7f7f7f7f7f ffffff9f31925230 ffffff9fb1925227
[    1.085514] [<ffffff9f2f3cf9dc>] branch_clk_halt_check+0xa4/0x130
[    1.085523] [<ffffff9f2f3d0698>] branch_clk_enable+0x80/0xf8
[    1.085531] [<ffffff9f2f3cc6f0>] clk_enable+0xe8/0x148
[    1.085539] [<ffffff9f2f3cd204>] __handoff_clk+0x254/0x358
[    1.085547] [<ffffff9f2f3cd678>] msm_clock_register+0x138/0x280
[    1.085554] [<ffffff9f2f3cd830>] of_msm_clock_register+0x70/0x98
[    1.085565] [<ffffff9f2f3d5ea0>] msm_gcc_8998_probe+0x220/0x398
[    1.085573] [<ffffff9f2ed921fc>] platform_drv_probe+0x3c/0xb0
[    1.085580] [<ffffff9f2ed90a78>] driver_probe_device+0x1b8/0x2f8
[    1.085589] [<ffffff9f2ed90cc0>] __device_attach_driver+0x70/0xb0
[    1.085598] [<ffffff9f2ed8f0d8>] bus_for_each_drv+0x78/0xc8
[    1.085605] [<ffffff9f2ed90738>] __device_attach+0xd0/0x138
[    1.085613] [<ffffff9f2ed90d38>] device_initial_probe+0x10/0x18
[    1.085621] [<ffffff9f2ed8f3a0>] bus_probe_device+0x98/0xa0
[    1.085628] [<ffffff9f2ed9050c>] deferred_probe_work_func+0x74/0xd0
[    1.085638] [<ffffff9f2e8c3e38>] process_one_work+0x250/0x458
[    1.085645] [<ffffff9f2e8c4174>] worker_thread+0x134/0x4e0
[    1.085654] [<ffffff9f2e8cb218>] kthread+0x100/0x108
[    1.085661] [<ffffff9f2e883260>] ret_from_fork+0x10/0x30
[    1.085677] failed to enable always-on clock gcc_mss_q6_bimc_axi_clk
[    1.086318] qcom,gcc-8998 100000.qcom,gcc: Registered GCC clocks
[    1.092962] qcom,mmsscc-8998 c8c0000.qcom,mmsscc: Registered MMSS clocks.
[    1.095349] qcom,gpucc-8998 5065000.qcom,gpucc: Registered GPU clocks (barring gfx3d clocks)
[    1.100823] msm-thermal soc:qcom,msm-thermal: probe_psm:Failed reading node=/soc/qcom,msm-thermal, key=qcom,pmic-sw-mode-temp. err=-22. KTM continues
[    1.101081] msm_thermal:vdd_restriction_reg_init Defer regulator vdd-gfx probe
[    1.101090] msm_thermal:probe_vdd_rstr Err regulator init. err:-517. KTM continues.
[    1.101099] msm-thermal soc:qcom,msm-thermal: probe_vdd_rstr:Failed reading node=/soc/qcom,msm-thermal, key=qcom,max-freq-level. err=-517. KTM continues
[    1.101664] cprh_kbss_read_fuse_data: apc0_pwrcl_corner: speed bin = 2
[    1.101675] cprh_msm8998_kbss_read_fuse_data: apc0_pwrcl_corner: CPR fusing revision = 3
[    1.101931] cprh_kbss_calculate_open_loop_voltages: apc0_pwrcl_corner: fused   LowSVS: open-loop= 598000 uV
[    1.101939] cprh_kbss_calculate_open_loop_voltages: apc0_pwrcl_corner: fused      SVS: open-loop= 656000 uV
[    1.101947] cprh_kbss_calculate_open_loop_voltages: apc0_pwrcl_corner: fused      NOM: open-loop= 768000 uV
[    1.101956] cprh_kbss_calculate_open_loop_voltages: apc0_pwrcl_corner: fused TURBO_L1: open-loop= 876000 uV
[    1.102122] cprh_kbss_calculate_target_quotients: apc0_pwrcl_corner: fused   LowSVS: quot[11]= 572
[    1.102132] cprh_kbss_calculate_target_quotients: apc0_pwrcl_corner: fused      SVS: quot[11]= 714, quot_offset[11]= 140
[    1.102141] cprh_kbss_calculate_target_quotients: apc0_pwrcl_corner: fused      NOM: quot[11]=1018, quot_offset[11]= 300
[    1.102151] cprh_kbss_calculate_target_quotients: apc0_pwrcl_corner: fused TURBO_L1: quot[11]=1287, quot_offset[11]= 265
[    1.103022] cpr3_regulator_init_ctrl: apc0: Default CPR mode = full HW closed-loop
[    1.103667] cpr3_regulator_debugfs_ctrl_add: apc0: cpr3-regulator debugfs base directory creation failed
[    1.104151] cprh_kbss_read_fuse_data: apc1_perfcl_corner: speed bin = 2
[    1.104161] cprh_msm8998_kbss_read_fuse_data: apc1_perfcl_corner: CPR fusing revision = 3
[    1.104445] cprh_kbss_calculate_open_loop_voltages: apc1_perfcl_corner: fused   LowSVS: open-loop= 626000 uV
[    1.104454] cprh_kbss_calculate_open_loop_voltages: apc1_perfcl_corner: fused      SVS: open-loop= 626000 uV
[    1.104462] cprh_kbss_calculate_open_loop_voltages: apc1_perfcl_corner: fused      NOM: open-loop= 748000 uV
[    1.104470] cprh_kbss_calculate_open_loop_voltages: apc1_perfcl_corner: fused TURBO_L1: open-loop= 966000 uV
[    1.104499] cprh_kbss_calculate_open_loop_voltages: apc1_perfcl_corner: fuse corner 1 voltage=626000 uV < fuse corner 0 voltage=634000 uV; overriding: fuse corner 1 voltage=634000
[    1.104680] cprh_kbss_calculate_target_quotients: apc1_perfcl_corner: fused   LowSVS: quot[11]=1034
[    1.104690] cprh_kbss_calculate_target_quotients: apc1_perfcl_corner: fused      SVS: quot[11]=1034, quot_offset[11]=   0
[    1.104698] cprh_kbss_calculate_target_quotients: apc1_perfcl_corner: fused      NOM: quot[11]=1387, quot_offset[11]= 350
[    1.104707] cprh_kbss_calculate_target_quotients: apc1_perfcl_corner: fused TURBO_L1: quot[11]=1891, quot_offset[11]= 500
[    1.105433] cpr3_regulator_init_ctrl: apc1: Default CPR mode = full HW closed-loop
[    1.105882] cpr3_regulator_debugfs_ctrl_add: apc1: cpr3-regulator debugfs base directory creation failed
[    1.106538] cpr3_msm8996_mmss_read_fuse_data: gfx_corner: CPR fusing revision = 2
[    1.106549] cpr3_msm8996_mmss_read_fuse_data: gfx_corner: CPR limitation = none
[    1.107305] cpr3_msm8996_mmss_calculate_open_loop_voltages: gfx_corner: fuse_corner[0] open-loop= 586000 uV
[    1.107313] cpr3_msm8996_mmss_calculate_open_loop_voltages: gfx_corner: fuse_corner[1] open-loop= 658000 uV
[    1.107321] cpr3_msm8996_mmss_calculate_open_loop_voltages: gfx_corner: fuse_corner[2] open-loop= 792000 uV
[    1.107329] cpr3_msm8996_mmss_calculate_open_loop_voltages: gfx_corner: fuse_corner[3] open-loop= 944000 uV
[    1.107754] cpr3_regulator_init_ctrl: gfx: Default CPR mode = closed-loop
[    1.108999] cpr3_regulator_debugfs_ctrl_add: gfx: cpr3-regulator debugfs base directory creation failed
[    1.121105] i2c-msm-v2 c179000.i2c: probing driver i2c-msm-v2
[    1.121312] AXI: msm_bus_scale_register_client(): msm_bus_scale_register_client: Bus driver not ready.
[    1.121321] i2c-msm-v2 c179000.i2c: msm_bus_scale_register_client(mstr-id:86):0 (not a problem)
[    1.122599] AXI: msm_bus_scale_register_client(): msm_bus_scale_register_client: Bus driver not ready.
[    1.123991] i2c-msm-v2 c17a000.i2c: probing driver i2c-msm-v2
[    1.124176] AXI: msm_bus_scale_register_client(): msm_bus_scale_register_client: Bus driver not ready.
[    1.124185] i2c-msm-v2 c17a000.i2c: msm_bus_scale_register_client(mstr-id:86):0 (not a problem)
[    1.125138] AXI: msm_bus_scale_register_client(): msm_bus_scale_register_client: Bus driver not ready.
[    1.126202] i2c-msm-v2 c1b5000.i2c: probing driver i2c-msm-v2
[    1.126388] AXI: msm_bus_scale_register_client(): msm_bus_scale_register_client: Bus driver not ready.
[    1.126398] i2c-msm-v2 c1b5000.i2c: msm_bus_scale_register_client(mstr-id:84):0 (not a problem)
[    1.127397] AXI: msm_bus_scale_register_client(): msm_bus_scale_register_client: Bus driver not ready.
[    1.128949] i2c-msm-v2 c1b6000.i2c: probing driver i2c-msm-v2
[    1.129135] AXI: msm_bus_scale_register_client(): msm_bus_scale_register_client: Bus driver not ready.
[    1.129144] i2c-msm-v2 c1b6000.i2c: msm_bus_scale_register_client(mstr-id:84):0 (not a problem)
[    1.130489] AXI: msm_bus_scale_register_client(): msm_bus_scale_register_client: Bus driver not ready.
[    1.132002] i2c-msm-v2 c1b7000.i2c: probing driver i2c-msm-v2
[    1.132195] AXI: msm_bus_scale_register_client(): msm_bus_scale_register_client: Bus driver not ready.
[    1.132204] i2c-msm-v2 c1b7000.i2c: msm_bus_scale_register_client(mstr-id:84):0 (not a problem)
[    1.133364] AXI: msm_bus_scale_register_client(): msm_bus_scale_register_client: Bus driver not ready.
[    1.136064] gfx3d_clk_src: set OPP pair(257000000 Hz: 648000 uV) on 5000000.qcom,kgsl-3d0
[    1.136134] gfx3d_clk_src: set OPP pair(710000000 Hz: 916000 uV) on 5000000.qcom,kgsl-3d0
[    1.136319] possible reason: unannotated irqs-off.
[    1.136345] ------------[ cut here ]------------
[    1.136352] WARNING: at ../drivers/regulator/core.c:2113
[    1.136359] 
[    1.136369] CPU: 0 PID: 84 Comm: kworker/u16:1 Tainted: G        W       4.4.169-Sultan #15
[    1.136376] Hardware name: Qualcomm Technologies, Inc. MSM8998 v2.1 (DT)
[    1.136393] Workqueue: deferwq deferred_probe_work_func
[    1.136404] task: 0000000000000000 task.stack: 0000000000000000
[    1.136415] PC is at regulator_enable+0x114/0x1c8
[    1.136424] LR is at regulator_enable+0x100/0x1c8
[    1.136432] pc : [<ffffff9f2ece6544>] lr : [<ffffff9f2ece6530>] pstate: 60400045
[    1.136438] sp : ffffffe1b14af8b0
[    1.136445] x29: ffffffe1b14af8b0 x28: 0000000000000000 
[    1.136460] x27: 0000000000000000 x26: 0000000000000010 
[    1.136476] x25: 0000000000000000 x24: 0000000000000000 
[    1.136492] x23: ffffffe1b1077698 x22: ffffffe1b1bda0e8 
[    1.136507] x21: ffffffe1b1066080 x20: 0000000000000000 
[    1.136523] x19: ffffffe1b1bda000 x18: 0000000000000000 
[    1.136538] x17: 0000000000000003 x16: 00000000072d9597 
[    1.136554] x15: ffffff9f30a05d90 x14: 0000000000000008 
[    1.136569] x13: 0000000000001c52 x12: 0000000000001c4b 
[    1.136584] x11: ffffff9f30c0cb00 x10: ffffffe1b105a958 
[    1.136600] x9 : ffffff9f30c0c000 x8 : ffffff9f313598e8 
[    1.136615] x7 : 0000000000000038 x6 : 0000000000000005 
[    1.136631] x5 : 0000000000000040 x4 : 00000042828e1000 
[    1.136646] x3 : 0000000000000004 x2 : 0000000000000007 
[    1.136661] x1 : 0000000000000000 x0 : ffffff9f30c04892 
[    1.136676] \x0aPC: 0xffffff9f2ece6504:
[    1.136683] 6504  2a1403e0 a94153f3 a8c37bfd d65f03c0 2a1403e0 a94153f3 a9425bf5 a8c37bfd
[    1.136730] 6524  d65f03c0 91056260 97f06859 35fffaa0 d000f8e0 91224800 39401001 35fffa21
[    1.136776] 6544  d4210000 52800021 39001001 17ffffcd aa1303e0 97fffe4c b9400e60 35fffc00
[    1.136822] 6564  17ffffce aa1303e0 97fff627 7100001f 2a0003f4 3a561804 54fff980 37f80060
[    1.136870] \x0aLR: 0xffffff9f2ece64f0:
[    1.136877] 64f0  b9402aa1 11000421 b9002aa1 942ae5cf a9425bf5 2a1403e0 a94153f3 a8c37bfd
[    1.136923] 6510  d65f03c0 2a1403e0 a94153f3 a9425bf5 a8c37bfd d65f03c0 91056260 97f06859
[    1.136970] 6530  35fffaa0 d000f8e0 91224800 39401001 35fffa21 d4210000 52800021 39001001
[    1.137017] 6550  17ffffcd aa1303e0 97fffe4c b9400e60 35fffc00 17ffffce aa1303e0 97fff627
[    1.137063] \x0aSP: 0xffffffe1b14af870:
[    1.137071] f870  2ece6530 ffffff9f b14af8b0 ffffffe1 2ece6544 ffffff9f 60400045 00000000
[    1.137118] f890  b1bda000 ffffffe1 00000000 00000000 ffffffff ffffffff 7a81e143 403a4a6d
[    1.137164] f8b0  b14af8e0 ffffffe1 2ecf8e18 ffffff9f 00000000 00000000 b1055e18 ffffffe1
[    1.137212] f8d0  b1b9ec18 ffffffe1 b1b9ec78 ffffffe1 b14af910 ffffffe1 2ece507c ffffff9f
[    1.137259] 
[    1.137267] ---[ end trace 24ec051baadc3c83 ]---
[    1.137274] Call trace:
[    1.137284] Exception stack(0xffffffe1b14af6c0 to 0xffffffe1b14af7f0)
[    1.137294] f6c0: ffffffe1b1bda000 0000008000000000 00000000834df000 ffffff9f2ece6544
[    1.137305] f6e0: 0000000060400045 0000000000000040 ffffffe1b14b0000 ffffffe1b1bda158
[    1.137316] f700: 0000000000000001 000000000004d7c0 ffffff9f31344ba8 0000000000000040
[    1.137326] f720: ffffffe1b14af730 ffffff9f2e88a160 ffffffe1b14af780 ffffff9f2e8ff8c4
[    1.137337] f740: 0000000000000007 0000000000000007 ffffffe1b14b0000 0000000000000038
[    1.137346] f760: ffffffe1b14af790 ffffff9f2e88d248 ffffffe1b14af7b0 403a4a6d7a81e143
[    1.137357] f780: ffffff9f30c04892 0000000000000000 0000000000000007 0000000000000004
[    1.137367] f7a0: 00000042828e1000 0000000000000040 0000000000000005 0000000000000038
[    1.137377] f7c0: ffffff9f313598e8 ffffff9f30c0c000 ffffffe1b105a958 ffffff9f30c0cb00
[    1.137386] f7e0: 0000000000001c4b 0000000000001c52
[    1.137396] [<ffffff9f2ece6544>] regulator_enable+0x114/0x1c8
[    1.137406] [<ffffff9f2ecf8e18>] cpr3_regulator_enable+0x68/0x150
[    1.137415] [<ffffff9f2ece507c>] _regulator_do_enable+0xdc/0x160
[    1.137424] [<ffffff9f2ece64c4>] regulator_enable+0x94/0x1c8
[    1.137436] [<ffffff9f2f3cbb00>] update_vdd+0x278/0x310
[    1.137445] [<ffffff9f2f3cc384>] vote_vdd_level+0x4c/0x90
[    1.137454] [<ffffff9f2f3cd754>] msm_clock_register+0x214/0x280
[    1.137463] [<ffffff9f2f3cd830>] of_msm_clock_register+0x70/0x98
[    1.137473] [<ffffff9f2f3d65e0>] msm_gfxcc_8998_probe+0x198/0x4b0
[    1.137482] [<ffffff9f2ed921fc>] platform_drv_probe+0x3c/0xb0
[    1.137489] [<ffffff9f2ed90a78>] driver_probe_device+0x1b8/0x2f8
[    1.137498] [<ffffff9f2ed90cc0>] __device_attach_driver+0x70/0xb0
[    1.137509] [<ffffff9f2ed8f0d8>] bus_for_each_drv+0x78/0xc8
[    1.137517] [<ffffff9f2ed90738>] __device_attach+0xd0/0x138
[    1.137525] [<ffffff9f2ed90d38>] device_initial_probe+0x10/0x18
[    1.137535] [<ffffff9f2ed8f3a0>] bus_probe_device+0x98/0xa0
[    1.137543] [<ffffff9f2ed9050c>] deferred_probe_work_func+0x74/0xd0
[    1.137555] [<ffffff9f2e8c3e38>] process_one_work+0x250/0x458
[    1.137564] [<ffffff9f2e8c4174>] worker_thread+0x134/0x4e0
[    1.137573] [<ffffff9f2e8cb218>] kthread+0x100/0x108
[    1.137583] [<ffffff9f2e883260>] ret_from_fork+0x10/0x30
[    1.137591] possible reason: unannotated irqs-on.
[    1.137614] ------------[ cut here ]------------
[    1.137620] WARNING: at ../drivers/regulator/core.c:709
[    1.137626] 
[    1.137634] CPU: 0 PID: 84 Comm: kworker/u16:1 Tainted: G        W       4.4.169-Sultan #15
[    1.137642] Hardware name: Qualcomm Technologies, Inc. MSM8998 v2.1 (DT)
[    1.137650] Workqueue: deferwq deferred_probe_work_func
[    1.137661] task: 0000000000000000 task.stack: 0000000000000000
[    1.137670] PC is at drms_uA_update+0x218/0x368
[    1.137678] LR is at drms_uA_update+0x204/0x368
[    1.137685] pc : [<ffffff9f2ece60a0>] lr : [<ffffff9f2ece608c>] pstate: 60400045
[    1.137692] sp : ffffffe1b14af860
[    1.137699] x29: ffffffe1b14af860 x28: 0000000000000000 
[    1.137713] x27: 0000000000000000 x26: 0000000000000010 
[    1.137728] x25: 0000000000000000 x24: 0000000000000000 
[    1.137743] x23: ffffffe1b1077698 x22: ffffffe1b1bda0e8 
[    1.137758] x21: ffffff9f30a05d90 x20: ffffffe1b1bda000 
[    1.137773] x19: ffffffe1b1bda000 x18: 0000000000000000 
[    1.137788] x17: 0000000000000003 x16: 00000000072d9597 
[    1.137803] x15: ffffff9f30a05d90 x14: 0000000000000010 
[    1.137818] x13: ffffff9fb1925227 x12: ffffff9f3192522f 
[    1.137833] x11: ffffff9f31924000 x10: ffffffe1b14af550 
[    1.137848] x9 : 00000000ffffffd0 x8 : 00000000000001d5 
[    1.137863] x7 : 0000000000000001 x6 : ffffff9f2e90dff8 
[    1.137878] x5 : 0000000000000000 x4 : 0000000000000001 
[    1.137894] x3 : 0000000000000004 x2 : 0000000000000007 
[    1.137909] x1 : 0000000000000000 x0 : ffffff9f30c04892 
[    1.137925] \x0aPC: 0xffffff9f2ece6060:
[    1.137932] 6060  f0007b60 91346000 97f2146d a94363f7 17ffffbc f9405800 b5fff360 128002b6
[    1.137979] 6080  17ffffb8 91056280 97f06982 35fff180 d000f8e0 91224800 39400801 35fff101
[    1.138025] 60a0  d4210000 52800021 39000801 17ffff84 f9405800 b5fff180 52800016 17ffffa9
[    1.138072] 60c0  52800016 a94363f7 17ffffa6 a90363f7 97eefbb2 f9431e80 b4000240 f9400001
[    1.138119] \x0aLR: 0xffffff9f2ece604c:
[    1.138126] 604c  f9431e80 b4000b60 f9400001 b4000b21 b94047e2 f0007b60 91346000 97f2146d
[    1.138173] 606c  a94363f7 17ffffbc f9405800 b5fff360 128002b6 17ffffb8 91056280 97f06982
[    1.138219] 608c  35fff180 d000f8e0 91224800 39400801 35fff101 d4210000 52800021 39000801
[    1.138266] 60ac  17ffff84 f9405800 b5fff180 52800016 17ffffa9 52800016 a94363f7 17ffffa6
[    1.138313] \x0aSP: 0xffffffe1b14af820:
[    1.138320] f820  2ece608c ffffff9f b14af860 ffffffe1 2ece60a0 ffffff9f 60400045 00000000
[    1.138367] f840  b1bda000 ffffffe1 b1bda000 ffffffe1 ffffffff ffffffff 00000000 00000000
[    1.138413] f860  b14af8b0 ffffffe1 2ece655c ffffff9f b1bda000 ffffffe1 00000000 00000000
[    1.138460] f880  b1066080 ffffffe1 b1bda0e8 ffffffe1 b1bda000 ffffffe1 00000000 00000000
[    1.138507] 
[    1.138513] ---[ end trace 24ec051baadc3c84 ]---
[    1.138519] Call trace:
[    1.138527] Exception stack(0xffffffe1b14af670 to 0xffffffe1b14af7a0)
[    1.138536] f660:                                   ffffffe1b1bda000 0000008000000000
[    1.138546] f680: 00000000834df000 ffffff9f2ece60a0 0000000060400045 ffffffe1b1bda0e8
[    1.138557] f6a0: ffffffe1b1077698 0000000000000000 0000000000000000 0000000000000010
[    1.138567] f6c0: 0000000000000000 0000000000000000 ffffff9f31925680 0000000000000000
[    1.138577] f6e0: ffffff9f2e90e8a8 ffffff9f00000080 ffffffe1b14af810 ffffffe1b14af810
[    1.138587] f700: ffffffe1b14af7d0 00000000ffffffc8 ffffffe1b14af740 ffffff9f2e90e8bc
[    1.138597] f720: ffffffe1b14af810 403a4a6d7a81e143 ffffff9f30c04892 0000000000000000
[    1.138607] f740: 0000000000000007 0000000000000004 0000000000000001 0000000000000000
[    1.138617] f760: ffffff9f2e90dff8 0000000000000001 00000000000001d5 00000000ffffffd0
[    1.138627] f780: ffffffe1b14af550 ffffff9f31924000 ffffff9f3192522f ffffff9fb1925227
[    1.138636] [<ffffff9f2ece60a0>] drms_uA_update+0x218/0x368
[    1.138645] [<ffffff9f2ece655c>] regulator_enable+0x12c/0x1c8
[    1.138654] [<ffffff9f2ecf8e18>] cpr3_regulator_enable+0x68/0x150
[    1.138664] [<ffffff9f2ece507c>] _regulator_do_enable+0xdc/0x160
[    1.138672] [<ffffff9f2ece64c4>] regulator_enable+0x94/0x1c8
[    1.138682] [<ffffff9f2f3cbb00>] update_vdd+0x278/0x310
[    1.138691] [<ffffff9f2f3cc384>] vote_vdd_level+0x4c/0x90
[    1.138699] [<ffffff9f2f3cd754>] msm_clock_register+0x214/0x280
[    1.138707] [<ffffff9f2f3cd830>] of_msm_clock_register+0x70/0x98
[    1.138717] [<ffffff9f2f3d65e0>] msm_gfxcc_8998_probe+0x198/0x4b0
[    1.138727] [<ffffff9f2ed921fc>] platform_drv_probe+0x3c/0xb0
[    1.138735] [<ffffff9f2ed90a78>] driver_probe_device+0x1b8/0x2f8
[    1.138743] [<ffffff9f2ed90cc0>] __device_attach_driver+0x70/0xb0
[    1.138753] [<ffffff9f2ed8f0d8>] bus_for_each_drv+0x78/0xc8
[    1.138761] [<ffffff9f2ed90738>] __device_attach+0xd0/0x138
[    1.138770] [<ffffff9f2ed90d38>] device_initial_probe+0x10/0x18
[    1.138779] [<ffffff9f2ed8f3a0>] bus_probe_device+0x98/0xa0
[    1.138787] [<ffffff9f2ed9050c>] deferred_probe_work_func+0x74/0xd0
[    1.138796] [<ffffff9f2e8c3e38>] process_one_work+0x250/0x458
[    1.138805] [<ffffff9f2e8c4174>] worker_thread+0x134/0x4e0
[    1.138813] [<ffffff9f2e8cb218>] kthread+0x100/0x108
[    1.138821] [<ffffff9f2e883260>] ret_from_fork+0x10/0x30
[    1.141957] qcom,gfxcc-8998 5065000.qcom,gfxcc: Completed registering all GPU clocks
[    1.145211] cpu-clock-osm 179c0000.qcom,cpu-clock-8998: using pwrcl speed bin 0 and pvs_ver 0
[    1.145256] cpu-clock-osm 179c0000.qcom,cpu-clock-8998: using perfcl speed bin 2 and pvs_ver 0
[    1.153216] add_opp: Set OPP pair (300000000 Hz, 636000 uv) on cpu0
[    1.153372] add_opp: Set OPP pair (1900800000 Hz, 880000 uv) on cpu0
[    1.153417] add_opp: Set OPP pair (300000000 Hz, 636000 uv) on cpu1
[    1.153568] add_opp: Set OPP pair (1900800000 Hz, 880000 uv) on cpu1
[    1.153612] add_opp: Set OPP pair (300000000 Hz, 636000 uv) on cpu2
[    1.153758] add_opp: Set OPP pair (1900800000 Hz, 880000 uv) on cpu2
[    1.153813] add_opp: Set OPP pair (300000000 Hz, 636000 uv) on cpu3
[    1.153962] add_opp: Set OPP pair (1900800000 Hz, 880000 uv) on cpu3
[    1.154005] add_opp: Set OPP pair (300000000 Hz, 632000 uv) on cpu4
[    1.154215] add_opp: Set OPP pair (2457600000 Hz, 992000 uv) on cpu4
[    1.154256] add_opp: Set OPP pair (300000000 Hz, 632000 uv) on cpu5
[    1.154472] add_opp: Set OPP pair (2457600000 Hz, 992000 uv) on cpu5
[    1.154514] add_opp: Set OPP pair (300000000 Hz, 632000 uv) on cpu6
[    1.154725] add_opp: Set OPP pair (2457600000 Hz, 992000 uv) on cpu6
[    1.154766] add_opp: Set OPP pair (300000000 Hz, 632000 uv) on cpu7
[    1.154976] add_opp: Set OPP pair (2457600000 Hz, 992000 uv) on cpu7
[    1.154985] populate_debugfs_dir: osm debugfs base directory creation failed
[    1.154992] populate_debugfs_dir: osm debugfs base directory creation failed
[    1.156539] cpu_clock_osm_driver_probe: OSM driver inited
[    1.156801] msm-thermal soc:qcom,msm-thermal: probe_psm:Failed reading node=/soc/qcom,msm-thermal, key=qcom,pmic-sw-mode-temp. err=-22. KTM continues
[    1.157141] msm-thermal soc:qcom,msm-thermal: probe_ocr:Failed reading node=/soc/qcom,msm-thermal, key=qcom,pmic-opt-curr-temp err:-22. KTM continues
[    1.157155] msm-thermal soc:qcom,msm-thermal: probe_vdd_mx:Failed reading node=/soc/qcom,msm-thermal, key=qcom,mx-restriction-temp. KTM continues
[    1.157817] msm-thermal soc:qcom,msm-thermal: probe_freq_mitigation:Failed reading node=/soc/qcom,msm-thermal, key=qcom,limit-temp. err=-22. KTM continues
[    1.157833] msm-thermal soc:qcom,msm-thermal: msm_thermal:Failed reading node=/soc/qcom,msm-thermal, key=qcom,rpm-phase-resource-type err=-22. KTM continues
[    1.157850] msm-thermal soc:qcom,msm-thermal: msm_thermal:Failed reading node=/soc/qcom,msm-thermal, key=qcom,gfx-sensor-id. err=-22. KTM continues
[    1.248867] socinfo_print: v0.11, id=292, ver=2.1, raw_id=94, raw_ver=2, hw_plat=8, hw_plat_ver=10\x0a accessory_chip=0, hw_plat_subtype=0, pmic_model=65556, pmic_die_revision=131072 foundry_id=3 serial_number=813649624 num_pmics=3
[    1.248887] msm_bus_fabric_init_driver
[    1.317390] msm_bus_dev_init_qos: Skipping QOS init for 1
[    1.317609] msm-bus-type fab-mnoc: Error: Failed to get regulator clk-camss-ahb-no-rate:-517
[    1.317741] msm-bus-type fab-mnoc: Error: Failed to get regulator clk-camss-ahb-no-rate:-517
[    1.317884] fab-mnoc supply clk-mdss-ahb-no-rate not found, using dummy regulator
[    1.318156] fab-mnoc supply clk-mdss-axi-no-rate not found, using dummy regulator
[    1.318382] msm-bus-type fab-mnoc: Error: Failed to get regulator clk-camss-ahb-no-rate:-517
[    1.318516] msm-bus-type fab-mnoc: Error: Failed to get regulator clk-camss-ahb-no-rate:-517
[    1.318641] msm-bus-type fab-mnoc: Error: Failed to get regulator clk-camss-ahb-no-rate:-517
[    1.318768] msm-bus-type fab-mnoc: Error: Failed to get regulator clk-camss-ahb-no-rate:-517
[    1.318893] msm-bus-type fab-mnoc: Error: Failed to get regulator clk-camss-ahb-no-rate:-517
[    1.319004] msm_bus_dev_init_qos: Skipping QOS init for 727
[    1.327029] SCSI subsystem initialized
[    1.329470] usbcore: registered new interface driver usbfs
[    1.329587] usbcore: registered new interface driver hub
[    1.330080] usbcore: registered new device driver usb
[    1.331151] soc:usb_nop_phy supply vcc not found, using dummy regulator
[    1.332977] qcom,qpnp-power-on 800f000.qcom,spmi:qcom,pm8998@0:qcom,power-on@800: PMIC@SID0 Power-on reason: Triggered from Hard Reset and 'warm' boot
[    1.333012] qcom,qpnp-power-on 800f000.qcom,spmi:qcom,pm8998@0:qcom,power-on@800: PMIC@SID0: Power-off reason: Triggered from PS_HOLD (PS_HOLD/MSM controlled shutdown)
[    1.333797] input: qpnp_pon as /devices/virtual/input/input0
[    1.334931] qcom,qpnp-power-on 800f000.qcom,spmi:qcom,pm8998@0:qcom,power-on@800: qcom,report-key:true
[    1.335070] qcom,qpnp-power-on 800f000.qcom,spmi:qcom,pmi8998@2:qcom,power-on@800: No PON config. specified
[    1.335129] qcom,qpnp-power-on 800f000.qcom,spmi:qcom,pmi8998@2:qcom,power-on@800: PMIC@SID2 Power-on reason: Triggered from PON1 (secondary PMIC) and 'warm' boot
[    1.335162] qcom,qpnp-power-on 800f000.qcom,spmi:qcom,pmi8998@2:qcom,power-on@800: PMIC@SID2: Power-off reason: Triggered from GP1 (Keypad_Reset1)
[    1.335235] qcom,qpnp-power-on 800f000.qcom,spmi:qcom,pmi8998@2:qcom,power-on@800: qcom,report-key:false
[    1.337033] media: Linux media interface: v0.10
[    1.337151] Linux video capture interface: v2.00
[    1.347988] EDAC MC: Ver: 3.0.0
[    1.362613] cpufreq: driver msm up and running
[    1.364360] platform soc:qcom,ion:qcom,ion-heap@22: assigned reserved memory node adsp_region
[    1.364979] platform soc:qcom,ion:qcom,ion-heap@27: assigned reserved memory node qseecom_region
[    1.365479] platform soc:qcom,ion:qcom,ion-heap@13: assigned reserved memory node sp_region
[    1.365972] platform soc:qcom,ion:qcom,ion-heap@10: assigned reserved memory node secure_region
[    1.367661] ION heap system created
[    1.368080] ION heap adsp created at 0x0000000000000000 with size 800000
[    1.368091] ION heap qsecom created at 0x0000000000000000 with size 1400000
[    1.368101] ION heap spss created at 0x0000000000000000 with size 800000
[    1.368111] ION heap secure_display created at 0x0000000000000000 with size 5c00000
[    1.368121] ION heap secure_heap created
[    1.383312] ION heap easel_mem created at 0x0000000000000000 with size 4000000
[    1.384877] PMIC@SID0: PM8998 v2.0 options: 0, 0, 0, 0
[    1.385077] PMIC@SID2: PMI8998 v2.1 options: 0, 0, 0, 0
[    1.385294] PMIC@SID4: PM8005 v2.0 options: 0, 0, 0, 0
[    1.389327] ipa ipa_smmu_wlan_cb_probe:5137 could not alloc iommu domain
[    1.389889] IPA smmu_info.s1_bypass=1 smmu_info.fast_map=0
[    1.392195] ipa ipa_smmu_wlan_cb_probe:5137 could not alloc iommu domain
[    1.405953] mdss_pll_probe: MDSS pll label = MDSS DSI 0 PLL
[    1.405967] mdss_pll_probe: mdss_pll_probe: label=MDSS DSI 0 PLL PLL SSC enabled
[    1.420188] dp_pll_lock_status: dp_pll_lock_status: C_READY status is not high. Status=0
[    1.421460] mdss_pll_probe: MDSS pll label = MDSS DSI 1 PLL
[    1.421473] mdss_pll_probe: mdss_pll_probe: label=MDSS DSI 1 PLL PLL SSC enabled
[    1.424810] mdss_pll_probe: MDSS pll label = MDSS DP PLL
[    1.426363] mdss_pll_probe: MDSS pll label = MDSS HDMI PLL
[    1.451589] arm-smmu cd00000.arm,smmu-mmss: found 20 context interrupt(s) but have 17 context banks. assuming 17 context interrupts.
[    1.462272] iommu: Adding device soc:usb_audio_qmi_dev to group 0
[    1.462679] iommu: Adding device 1c00000.qcom,pcie to group 1
[    1.463030] iommu: Adding device 18800000.qcom,icnss to group 2
[    1.463592] iommu: Adding device soc:iommu_test_device to group 3
[    1.466095] iommu: Adding device soc:qcom,msm-audio-ion to group 4
[    1.467231] iommu: Adding device c900000.qcom,sde_kms to group 5
[    1.469187] iommu: Adding device 1e00000.qcom,ipa:ipa_smmu_ap to group 6
[    1.469221] iommu: Adding device 1e00000.qcom,ipa:ipa_smmu_wlan to group 7
[    1.469253] iommu: Adding device 1e00000.qcom,ipa:ipa_smmu_uc to group 8
[    1.470590] Advanced Linux Sound Architecture Driver Initialized.
[    1.471643] Bluetooth: 0000000000000000
[    1.471663] NET: Registered protocol family 31
[    1.471668] Bluetooth: 0000000000000000
[    1.471700] Bluetooth: 0000000000000000
[    1.471710] Bluetooth: 0000000000000000
[    1.471741] Bluetooth: 0000000000000000
[    1.472610] NetLabel: Initializing
[    1.472615] NetLabel:  domain hash size = 128
[    1.472617] cfg80211: World regulatory domain updated:
[    1.472620] cfg80211:  DFS Master region: unset
[    1.472620] cfg80211:   (start_freq - end_freq @ bandwidth), (max_antenna_gain, max_eirp), (dfs_cac_time)
[    1.472621] NetLabel:  protocols = UNLABELED CIPSOv4
[    1.472630] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (N/A, 2000 mBm), (N/A)
[    1.472634] cfg80211:   (2457000 KHz - 2482000 KHz @ 40000 KHz), (N/A, 2000 mBm), (N/A)
[    1.472638] cfg80211:   (2474000 KHz - 2494000 KHz @ 20000 KHz), (N/A, 2000 mBm), (N/A)
[    1.472642] cfg80211:   (5170000 KHz - 5250000 KHz @ 80000 KHz), (N/A, 2000 mBm), (N/A)
[    1.472645] cfg80211:   (5250000 KHz - 5330000 KHz @ 80000 KHz), (N/A, 2000 mBm), (N/A)
[    1.472649] cfg80211:   (5490000 KHz - 5710000 KHz @ 80000 KHz), (N/A, 2000 mBm), (N/A)
[    1.472652] cfg80211:   (5735000 KHz - 5835000 KHz @ 80000 KHz), (N/A, 2000 mBm), (N/A)
[    1.472656] cfg80211:   (57240000 KHz - 63720000 KHz @ 2160000 KHz), (N/A, 0 mBm), (N/A)
[    1.472788] NetLabel:  unlabeled traffic allowed by default
[    1.472900] pcie:pcie_init.
[    1.472905] pcie_init: unable to create IPC log context for pcie0-short
[    1.472908] pcie_init: unable to create IPC log context for pcie0-long
[    1.472912] pcie_init: unable to create IPC log context for pcie0-dump
[    1.472916] pcie_init: unable to create IPC log context for pcie1-short
[    1.472919] pcie_init: unable to create IPC log context for pcie1-long
[    1.472922] pcie_init: unable to create IPC log context for pcie1-dump
[    1.472926] pcie_init: unable to create IPC log context for pcie2-short
[    1.472929] pcie_init: unable to create IPC log context for pcie2-long
[    1.472932] pcie_init: unable to create IPC log context for pcie2-dump
[    1.473672] 1c00000.qcom,pcie supply vreg-3.3 not found, using dummy regulator
[    1.473920] 1c00000.qcom,pcie supply gdsc-smmu not found, using dummy regulator
[    1.474695] msm_pcie_get_resources: PCIe: RC0 can't get tcsr resource.
[    1.474721] msm_pcie_probe: PCIe: RC0 could not get pinctrl sleep state
[    1.477480] qpnp_labibb_regulator_probe: LAB/IBB registered successfully, lab_vreg enable=0 ibb_vreg enable=0 swire_control=0
[    1.480736] ipa ipa3_pre_init:4316 failed to create IPC log, continue...
[    1.482118] ipa ipa3_uc_state_check:302 uC interface not initialized
[    1.485312] ipa ipa3_set_resorce_groups_min_max_limits:3412 skip configuring ipa_rx_hps_clients from HLOS
[    1.486829] ipa ipa3_uc_state_check:302 uC interface not initialized
[    1.490286] clocksource: Switched to clocksource arch_sys_counter
[    1.492128] BUG: key 0000000000000000 not in .data!
[    1.492141] BUG: key 0000000000000000 not in .data!
[    1.492152] BUG: key 0000000000000000 not in .data!
[    1.492228] BUG: key 0000000000000000 not in .data!
[    1.492238] BUG: key 0000000000000000 not in .data!
[    1.492248] BUG: key 0000000000000000 not in .data!
[    1.496388] NET: Registered protocol family 2
[    1.497223] TCP established hash table entries: 16384 (order: 5, 131072 bytes)
[    1.497307] TCP bind hash table entries: 16384 (order: 8, 1310720 bytes)
[    1.497835] TCP: Hash tables configured (established 16384 bind 16384)
[    1.497939] UDP hash table entries: 1024 (order: 5, 196608 bytes)
[    1.498029] UDP-Lite hash table entries: 1024 (order: 5, 196608 bytes)
[    1.498418] NET: Registered protocol family 1
[    1.498462] PCI: CLS 0 bytes, default 64
[    1.500383] hw perfevents: enabled with armv8_pmuv3 PMU driver, 7 counters available
[    1.521157] Initialise system trusted keyring
[    1.521413] vmscan: error setting kswapd cpu affinity mask
[    1.541313] VFS: Disk quotas dquot_6.6.0
[    1.541499] VFS: Dquot-cache hash table entries: 512 (order 0, 4096 bytes)
[    1.543491] Registering sdcardfs 0.1
[    1.544141] fuse init (API version 7.23)
[    1.544551] SELinux:  Registering netfilter hooks
[    1.545415] pfk_ecryptfs [pfk_ecryptfs_init]: PFK ecryptfs inited successfully
[    1.545421] pfk_ext4 [pfk_ext4_init]: PFK EXT4 inited successfully
[    1.545454] pfk [pfk_init]: Driver initialized successfully
[    1.550579] Key type asymmetric registered
[    1.550616] Asymmetric key parser 'x509' registered
[    1.550669] io scheduler noop registered
[    1.550853] io scheduler cfq registered (default)
[    1.562465] msm_dss_get_res_byname: 'vbif_nrt_phys' resource not found
[    1.562479] mdss_mdp_probe+0x1e4/0x1390->msm_dss_ioremap_byname: 'vbif_nrt_phys' msm_dss_get_res_byname failed
[    1.565076] No change in context(0==0), skip
[    1.567178] mdss_mdp_pipe_addr_setup: type:0 ftchid:-1 xinid:0 num:0 rect:0 ndx:0x1 prio:0
[    1.567186] mdss_mdp_pipe_addr_setup: type:0 ftchid:-1 xinid:4 num:1 rect:0 ndx:0x2 prio:1
[    1.567193] mdss_mdp_pipe_addr_setup: type:0 ftchid:-1 xinid:8 num:2 rect:0 ndx:0x4 prio:2
[    1.567199] mdss_mdp_pipe_addr_setup: type:0 ftchid:-1 xinid:12 num:8 rect:0 ndx:0x100 prio:3
[    1.567235] mdss_mdp_pipe_addr_setup: type:2 ftchid:-1 xinid:1 num:6 rect:0 ndx:0x40 prio:4
[    1.567243] mdss_mdp_pipe_addr_setup: type:2 ftchid:-1 xinid:1 num:6 rect:1 ndx:0x40 prio:4
[    1.567248] mdss_mdp_pipe_addr_setup: type:2 ftchid:-1 xinid:5 num:7 rect:0 ndx:0x80 prio:5
[    1.567260] mdss_mdp_pipe_addr_setup: type:2 ftchid:-1 xinid:5 num:7 rect:1 ndx:0x80 prio:5
[    1.567265] mdss_mdp_pipe_addr_setup: type:2 ftchid:-1 xinid:9 num:12 rect:0 ndx:0x1000 prio:6
[    1.567277] mdss_mdp_pipe_addr_setup: type:2 ftchid:-1 xinid:9 num:12 rect:1 ndx:0x1000 prio:6
[    1.567283] mdss_mdp_pipe_addr_setup: type:2 ftchid:-1 xinid:13 num:13 rect:0 ndx:0x2000 prio:7
[    1.567293] mdss_mdp_pipe_addr_setup: type:2 ftchid:-1 xinid:13 num:13 rect:1 ndx:0x2000 prio:7
[    1.567310] mdss_mdp_pipe_addr_setup: type:3 ftchid:-1 xinid:2 num:10 rect:0 ndx:0x400 prio:0
[    1.567316] mdss_mdp_pipe_addr_setup: type:3 ftchid:-1 xinid:10 num:11 rect:0 ndx:0x800 prio:1
[    1.567327] mdss_mdp_parse_dt_handler: Error from prop qcom,mdss-pipe-sw-reset-off : u32 array read
[    1.567403] mdss_mdp_parse_dt_handler: Error from prop qcom,mdss-ib-factor-overlap : u32 array read
[    1.568253] iommu: Adding device c900000.qcom,mdss_mdp:qcom,smmu_mdp_unsec_cb to group 9
[    1.568648] iommu: Adding device c900000.qcom,mdss_mdp:qcom,smmu_mdp_sec_cb to group 10
[    1.568921] mdss_mdp_probe: mdss version = 0x30000001, bootloader display is on, num 1, intf_sel=0x00000100
[    1.571429] mdss_smmu_probe: iommu v2 domain[0] mapping and clk register successful!
[    1.571665] mdss_smmu_probe: iommu v2 domain[2] mapping and clk register successful!
[    1.574961] mdss_dsi_ctrl_probe: DSI Ctrl name = MDSS DSI CTRL->0
[    1.575523] mdss_dsi_find_panel_of_node: cmdline:0:qcom,mdss_dsi_sw43402_dsc_qhd_cmd:1:none:cfg:single_dsi panel_name:qcom,mdss_dsi_sw43402_dsc_qhd_cmd
[    1.575735] mdss_dsi_panel_init: Panel Name = SW43402 cmd mode dsc dsi panel
[    1.575855] mdss_dsi_panel_timing_from_dt: found new timing "qcom,mdss_dsi_sw43402_dsc_qhd_cmd" (0000000000000000)
[    1.575876] mdss_dsi_panel_get_dsc_cfg_np: cannot find dsc config node:
[    1.575931] mdss_dsi_parse_topology_config: cfg_node name config0 lm_split:720x720 pp_split:no
[    1.576027] mdss_dsi_parse_partial_update_caps: partial_update_enabled=0
[    1.576035] mdss_dsi_parse_panel_features: ulps feature enabled
[    1.576043] mdss_dsi_parse_panel_features: ulps during suspend feature disabled
[    1.576051] mdss_dsi_parse_dms_config: dynamic switch feature enabled: 0
[    1.576118] mdss_dsi_set_refresh_rate_range:2599, Unable to read min refresh rate
[    1.576127] mdss_dsi_set_refresh_rate_range:2614, Unable to read max refresh rate
[    1.576132] dyn_fps: min = 60, max = 60
[    1.576377] c994000.qcom,mdss_dsi_ctrl0 supply wqhd-vddio not found, using dummy regulator
[    1.576485] mdss_dsi_parse_ctrl_params:4417 Unable to read qcom,display-id, data=0000000000000000,len=20
[    1.576520] mdss_dsi_parse_gpio_params:4455: ERR_FG gpio not specified
[    1.576549] mdss_dsi_parse_gpio_params: bklt_en gpio not specified
[    1.576622] mdss_dsi_parse_gpio_params: lcd vcl gpio not specified
[    1.576701] msm_dss_get_res_byname: 'dsi_phy_regulator' resource not found
[    1.576720] mdss_dsi_retrieve_ctrl_resources+0xc4/0x230->msm_dss_ioremap_byname: 'dsi_phy_regulator' msm_dss_get_res_byname failed
[    1.576727] mdss_dsi_retrieve_ctrl_resources: ctrl_base=0000000000000000 ctrl_size=400 phy_base=0000000000000000 phy_size=7c0
[    1.577026] dsi_panel_device_register: Continuous splash enabled
[    1.577274] Unable to find fb node for device: c994000.qcom,mdss_dsi_ctrl0
[    1.577858] mdss_register_panel: adding framebuffer device c994000.qcom,mdss_dsi_ctrl0
[    1.585730] request disp ERR_DETECT irq
[    1.586155] mdss_dsi_ctrl_probe: Dsi Ctrl->0 initialized, DSI rev:0x20000000, PHY rev:0x3
[    1.586705] mdss_dsi_status_init: DSI status check interval:3000
[    1.589853] mdss_register_panel: adding framebuffer device soc:qcom,mdss_wb_panel
[    1.591230] mdss_fb_probe: fb0: split_mode:1 left:720 right:720
[    1.591733] mdss_panel_debugfs_init: Debugfs create dir failed with error: -19
[    1.591739] mdss_fb_register: FrameBuffer[0] 1440x2880 registered successfully!
[    1.591847] mdss_dsi_debugfs_setup: debugfs_create_dir dsi fail, error -19
[    1.591857] mdss_dsi_debugfs_init: Error in initilizing dsi ctrl debugfs
[    1.593140] mdss_mdp_splash_parse_dt: mem reservation for splash screen fb not present
[    1.593148] mdss_mdp_splash_parse_dt: no rsvd mem found in DT for splash screen
[    1.593154] mdss_mdp_splash_init: splash memory reserve failed
[    1.593212] mdss_fb_probe: fb1: split_mode:0 left:0 right:0
[    1.593399] mdss_fb_register: FrameBuffer[1] 640x480 registered successfully!
[    1.593733] mdss_mdp_splash_parse_dt: splash mem child node is not present
[    1.596600] glink_loopback_server_init: unable to create log context
[    1.598334] msm_smp2p_init: unable to create log context
[    1.600519] qmi_log_init: Unable to create QMI IPC logging for Req/Resp
[    1.600527] logging for Indications: Unable to create QMI IPC qmi_log_init
[    1.602842] spcom [spcom_init]: spcom driver Ver 1.0 23-Nov-2015.
[    1.603374] spcom [spcom_probe]: Driver Initialization ok.
[    1.604121] apr_init: Unable to create ipc log context
[    1.604178] audio_notifer_reg_service: service SSR_MODEM is in use
[    1.615319] memshare_child soc:qcom,memshare:qcom,client_1: for memshare_GPS segments only will be dumped.
[    1.615901] memshare_child soc:qcom,memshare:qcom,client_2: for memshare_FTM segments only will be dumped.
[    1.616322] memshare_child soc:qcom,memshare:qcom,client_3: for memshare_DIAG segments only will be dumped.
[    1.616458] In memshare_probe, Memshare probe success
[    1.617972] subsys-pil-tz soc:qcom,ipa_fws@1e08000: for ipa_fws segments only will be dumped.
[    1.620319] subsys-pil-tz cce0000.qcom,venus: for venus segments only will be dumped.
[    1.620894] subsys-pil-tz 1d0101c.qcom,spss: for spss segments only will be dumped.
[    1.621672] subsys-pil-tz soc:qcom,kgsl-hyp: for a540_zap segments only will be dumped.
[    1.623958] pil-q6v5-mss 4080000.qcom,mss: No pas_id found.
[    1.625380] msm-dcc 10b3000.dcc: DCC XPU is not specified
[    1.625862] msm-dcc 10b3000.dcc: DCC REG dump setup failed
[    1.625878] msm-dcc 10b3000.dcc: DCC SRAM dump setup failed
[    1.626369] icnss: Unable to create log context
[    1.626374] icnss: Unable to create log long context
[    1.630011] icnss 18800000.qcom,icnss: for wcss_msa0 segments only will be dumped.
[    1.630608] icnss: Unable to create debugfs -19
[    1.630798] icnss: Platform driver probed successfully
[    1.634052] msm_rpmstats_create_sysfs: Cannot find module_kset
[    1.636892] qiib_driver_data_init: unable to create logging context
[    1.640425] msm_serial_hs: Cannot create debugfs dir
[    1.641933] uart_tx_gpio is not available
[    1.641940] uart_rx_gpio is not available
[    1.641945] uart_cts_gpio is not available
[    1.641951] uart_rfr_gpio is not available
[    1.642491] msm_serial_hs c171000.uart: msm_hs_probe: error creating logging context
[    1.643172] sps: BAM device 0x0000000000000000 is not registered yet.
[    1.643271] sps_register_bam_device : unable to create IPC Logging 0 for bam 0x0000000000000000
[    1.643280] sps_register_bam_device : unable to create IPC Logging 1 for bam 0x0000000000000000
[    1.643287] sps_register_bam_device : unable to create IPC Logging 2 for bam 0x0000000000000000
[    1.643294] sps_register_bam_device : unable to create IPC Logging 3 for bam 0x0000000000000000
[    1.643300] sps_register_bam_device : unable to create IPC Logging 4 for bam 0x0000000000000000
[    1.643307] sps:BAM 0x0000000000000000 is registered.
[    1.643522] msm_serial_hs c171000.uart: msm_hs_probe: error creating tx logging context
[    1.643529] msm_serial_hs c171000.uart: msm_hs_probe: error creating rx logging context
[    1.643535] msm_serial_hs c171000.uart: msm_hs_probe: error creating usr logging context
[    1.646234] msm_serial_debugfs_init(): Cannot create loopback.0 debug entry
[    1.646364] c171000.uart: ttyHS0 at MMIO 0xc171000 (irq = 361, base_baud = 460800) is a MSM HS UART
[    1.648294] msm_serial_hs module loaded
[    1.648315] smd_tty_log_init: Unable to create IPC log
[    1.651923] random: nonblocking pool is initialized
[    1.652729] diag: Failed to create IPC logging context
[    1.669856] gdsc_gpu_gx: supplied by gfx_corner
[    1.672285] iommu: Adding device 5040000.qcom,kgsl-iommu:gfx3d_user to group 11
[    1.672843] iommu: Adding device 5040000.qcom,kgsl-iommu:gfx3d_secure to group 12
[    1.697458] brd: module loaded
[    1.706526] loop: module loaded
[    1.707753] zram: Added device: zram0
[    1.709109] QSEECOM: qseecom_probe: qseecom.qsee_version = 0x1001000
[    1.709143] QSEECOM: qseecom_retrieve_ce_data: Device does not support PFE
[    1.709156] QSEECOM: qseecom_probe: no-clock-support=0x1
[    1.709167] QSEECOM: qseecom_probe: qseecom.qsee_reentrancy_support = 2
[    1.709870] QSEECOM: qseecom_probe: qseecom.whitelist_support = 1
[    1.715936] thermal thermal_zone0: failed to read out thermal zone (-5)
[    1.716179] thermal thermal_zone1: failed to read out thermal zone (-5)
[    1.716377] thermal thermal_zone2: failed to read out thermal zone (-5)
[    1.716611] thermal thermal_zone3: failed to read out thermal zone (-5)
[    1.716622] mnh_thermal soc:mnh_thermal: mnh_thermal_probe: initialized
[    1.717031] misc easelcomm-client: registered at misc device minor 60
[    1.718755] fpc1020 soc:fp_fpc1020: found pin control fpc1020_reset_reset
[    1.718765] fpc1020 soc:fp_fpc1020: found pin control fpc1020_reset_active
[    1.718773] fpc1020 soc:fp_fpc1020: found pin control fpc1020_irq_active
[    1.718820] fpc1020 soc:fp_fpc1020: Selected 'fpc1020_reset_reset'
[    1.718843] fpc1020 soc:fp_fpc1020: Selected 'fpc1020_irq_active'
[    1.719407] fpc1020 soc:fp_fpc1020: Selected 'fpc1020_reset_active'
[    1.719682] fpc1020 soc:fp_fpc1020: Selected 'fpc1020_reset_reset'
[    1.724856] fpc1020 soc:fp_fpc1020: Selected 'fpc1020_reset_active'
[    1.730005] fpc1020 soc:fp_fpc1020: IRQ after reset 1
[    1.730013] fpc1020 soc:fp_fpc1020: fpc1020_probe: ok
[    1.730334] fpc1020_init OK
[    1.732818] misc access-metadata: registered 'metadata' 10:59, (1000@0x0000000000000000)
[    1.733057] misc access-ramoops: registered 'ramoops' 10:58, (200000@0x0000000000000000)
[    1.734211] i2c-msm-v2 c1b5000.i2c: msm_bus_scale_register_client(mstr-id:84):0xe (ok)
[    1.738585] prom_parse: Bad cell count for /soc/i2c@c1b5000/qcom,smb138x@8
[    1.738602] prom_parse: Bad cell count for /soc/i2c@c1b5000/qcom,smb138x@8
[    1.741441] PMIC@SID0: (null) v2.1 options: 0, 0, 0, 0
[    1.741480] prom_parse: Bad cell count for /soc/i2c@c1b5000/qcom,smb138x@8
[    1.741801] prom_parse: Bad cell count for /soc/i2c@c1b5000/qcom,smb138x@8
[    1.742278] prom_parse: Bad cell count for /soc/i2c@c1b5000/qcom,smb138x@8
[    1.742294] prom_parse: Bad cell count for /soc/i2c@c1b5000/qcom,smb138x@8
[    1.742615] I2C PMIC: i2c_pmic_probe: I2C PMIC probe successful
[    1.745623] nq-nci 8-0028: nqx_probe: probing NFCC NQxxx exited successfully
[    1.747572] qce 1de0000.qcedev: Qualcomm Crypto 5.3.4 device found @0x1de0000
[    1.747584] qce 1de0000.qcedev: CE device = 0x0\x0a, IO base, CE = 0x0000000000000000\x0a, Consumer (IN) PIPE 2,    Producer (OUT) PIPE 3\x0aIO base BAM = 0x0000000000000000\x0aBAM IRQ 62\x0aEngines Availability = 0x2011053
[    1.747667] sps_register_bam_device : unable to create IPC Logging 0 for bam 0x0000000000000000
[    1.747676] sps_register_bam_device : unable to create IPC Logging 1 for bam 0x0000000000000000
[    1.747686] sps_register_bam_device : unable to create IPC Logging 2 for bam 0x0000000000000000
[    1.747692] sps_register_bam_device : unable to create IPC Logging 3 for bam 0x0000000000000000
[    1.747701] sps_register_bam_device : unable to create IPC Logging 4 for bam 0x0000000000000000
[    1.747709] sps:BAM 0x0000000000000000 is registered.
[    1.748055] sps:BAM 0x0000000000000000 (va:0x0000000000000000) enabled: ver:0x27, number of pipes:16
[    1.748424] QCE50: qce_sps_init:  Qualcomm MSM CE-BAM at 0x0000000001dc4000 irq 62
[    1.762806] qcrypto 1de0000.qcrypto: Qualcomm Crypto 5.3.4 device found @0x1de0000
[    1.762819] qcrypto 1de0000.qcrypto: CE device = 0x0\x0a, IO base, CE = 0x0000000000000000\x0a, Consumer (IN) PIPE 4,    Producer (OUT) PIPE 5\x0aIO base BAM = 0x0000000000000000\x0aBAM IRQ 62\x0aEngines Availability = 0x2011053
[    1.763288] QCE50: qce_sps_init:  Qualcomm MSM CE-BAM at 0x0000000001dc4000 irq 62
[    1.774824] qcrypto 1de0000.qcrypto: qcrypto-ecb-aes
[    1.775135] qcrypto 1de0000.qcrypto: qcrypto-cbc-aes
[    1.775302] qcrypto 1de0000.qcrypto: qcrypto-ctr-aes
[    1.775474] qcrypto 1de0000.qcrypto: qcrypto-ecb-des
[    1.775605] qcrypto 1de0000.qcrypto: qcrypto-cbc-des
[    1.775749] qcrypto 1de0000.qcrypto: qcrypto-ecb-3des
[    1.775892] qcrypto 1de0000.qcrypto: qcrypto-cbc-3des
[    1.776031] qcrypto 1de0000.qcrypto: qcrypto-xts-aes
[    1.776172] qcrypto 1de0000.qcrypto: qcrypto-sha1
[    1.776308] qcrypto 1de0000.qcrypto: qcrypto-sha256
[    1.776448] qcrypto 1de0000.qcrypto: qcrypto-aead-hmac-sha1-cbc-aes
[    1.776584] qcrypto 1de0000.qcrypto: qcrypto-aead-hmac-sha1-cbc-des
[    1.776722] qcrypto 1de0000.qcrypto: qcrypto-aead-hmac-sha1-cbc-3des
[    1.776860] qcrypto 1de0000.qcrypto: qcrypto-aead-hmac-sha256-cbc-aes
[    1.776997] qcrypto 1de0000.qcrypto: qcrypto-aead-hmac-sha256-cbc-des
[    1.777142] qcrypto 1de0000.qcrypto: qcrypto-aead-hmac-sha256-cbc-3des
[    1.777276] qcrypto 1de0000.qcrypto: qcrypto-hmac-sha1
[    1.777412] qcrypto 1de0000.qcrypto: qcrypto-hmac-sha256
[    1.777544] qcrypto 1de0000.qcrypto: qcrypto-aes-ccm
[    1.777681] qcrypto 1de0000.qcrypto: qcrypto-rfc4309-aes-ccm
[    1.785009] qcom_ice_get_pdevice: found ice device 0000000000000000
[    1.785026] qcom_ice_get_pdevice: matching platform device 0000000000000000
[    1.785777] scm_call failed: func id 0x42000c02, ret: -2, syscall returns: 0xfffffffffffffffc, 0x0, 0x0
[    1.786854] ufshcd-qcom 1da4000.ufshc: ufs_qcom_parse_reg_info: Unable to find qcom,vddp-ref-clk-supply regulator, assuming enabled
[    1.788943] scsi host0: ufshcd
[    1.794260] qcom_ice 1db0000.ufsice: QC ICE 3.0.65 device found @0x0000000000000000
[    1.819424] pn81a spi1.0: pn81a_probe: device tree set '8-0028' as eSE power controller
[    1.819624] pn81a spi1.0: pn81a_probe: eSE is configured
[    1.822198] sps: BAM device 0x0000000000000000 is not registered yet.
[    1.822222] sps_register_bam_device : unable to create IPC Logging 0 for bam 0x0000000000000000
[    1.822233] sps_register_bam_device : unable to create IPC Logging 1 for bam 0x0000000000000000
[    1.822242] sps_register_bam_device : unable to create IPC Logging 2 for bam 0x0000000000000000
[    1.822248] sps_register_bam_device : unable to create IPC Logging 3 for bam 0x0000000000000000
[    1.822257] sps_register_bam_device : unable to create IPC Logging 4 for bam 0x0000000000000000
[    1.822264] sps:BAM 0x0000000000000000 is registered.
[    1.824020] sps:BAM 0x0000000000000000 (va:0x0000000000000000) enabled: ver:0x19, number of pipes:18
[    1.825938] Ethernet Channel Bonding Driver: v3.7.1 (April 27, 2011)
[    1.828506] ufshcd-qcom 1da4000.ufshc: ufshcd_print_pwr_info:[RX, TX]: gear=[1, 1], lane[1, 1], pwr[SLOWAUTO_MODE, SLOWAUTO_MODE], rate = 0
[    1.830103] tun: Universal TUN/TAP device driver, 1.6
[    1.830113] tun: (C) 1999-2004 Max Krasnyansky <maxk@qualcomm.com>
[    1.830255] PPP generic driver version 2.4.2
[    1.830498] PPP BSD Compression module registered
[    1.830511] PPP Deflate Compression module registered
[    1.830560] PPP MPPE Compression module registered
[    1.830577] NET: Registered protocol family 24
[    1.830709] wcnss_pre_alloc_init: Failed to create debugfs dir
[    1.830720] CLD80211: Initializing
[    1.830858] usbcore: registered new interface driver rtl8150
[    1.830910] usbcore: registered new interface driver r8152
[    1.830960] usbcore: registered new interface driver asix
[    1.831011] usbcore: registered new interface driver ax88179_178a
[    1.831061] usbcore: registered new interface driver cdc_ether
[    1.831260] usbcore: registered new interface driver cdc_ncm
[    1.833447] msm_sharedmem: sharedmem_register_qmi: qmi init successful
[    1.833456] msm_sharedmem: debugfs_init: Failed to create debug_fs directory
[    1.841981] msm_sharedmem: msm_sharedmem_probe: Device created for client 'rmtfs'
[    1.847173] branch_clk_set_rate: Cannot scale gcc_rx1_usb2_clkref_clk clock while HW gating is enabled. Use corresponding hw_ctl_clk to scale it
[    1.847333] pm8998_l24: supplied by pm8998_l12
[    1.851487] msm-dwc3 a800000.ssusb: unable to get dbm device
[    1.854353] usbcore: registered new interface driver usb-storage
[    1.857322] qpnp-pdphy 800f000.qcom,spmi:qcom,pmi8998@2:qcom,usb-pdphy@1700: usbpd_create failed: -517
[    1.859833] usbcore: registered new interface driver xpad
[    1.861301] [Touch] touch_get_device_type = [1]
[    1.861310] [Touch] touch_device_init, sw49408 start
[    1.862532] fts_touch 5-0049: Failed to get tspid gpio
[    1.862542] fts_touch 5-0049: Failed to get tspid2 gpio
[    1.862618] fts_touch 5-0049: irq_gpio = 125
[    1.862646] fts_touch 5-0049: client->irq = 499
[    1.862655] fts_touch 5-0049: Failed to get grip_area property
[    1.862665] fts_touch 5-0049: Failed to get vdd_gpio gpio
[    1.862672] fts_touch 5-0049: Failed to get vio_gpio gpio
[    1.862997] fts_touch 5-0049: FTS Support Hover Event
[    1.863030] fts_touch 5-0049: switch_gpio = 75
[    1.863155] fts_touch 5-0049: fts_power_ctrl: on
[    1.885109] i2c-msm-v2 c179000.i2c: msm_bus_scale_register_client(mstr-id:86):0x12 (ok)
[    1.886204] fts_touch 5-0049: FTS Enable WBCRC
[    1.923913] ufshcd-qcom 1da4000.ufshc: ufshcd_print_pwr_info:[RX, TX]: gear=[3, 3], lane[2, 2], pwr[FAST MODE, FAST MODE], rate = 2
[    1.931416] fts_touch 5-0049: get_pure_autotune_status: PureAutotune : 1 (E)
[    1.931424] fts_touch 5-0049: IC Firmware Version: 0x2064 [v0.44] IC Config Version: 0x0228 IC Main Version: 0x002C AFE Version: 0x07
[    1.931429] fts_touch 5-0049: product id: [51 59 02]
[    1.931434] fts_touch 5-0049: Chip revision: 0, fpc: 5, t_sensor: 1, site: 1, inspector_no: 69
[    1.931439] fts_touch 5-0049: date : 17.09.17 03:23:15
[    1.931844] fts_touch 5-0049: FTS Chip ID : 36 70
[    1.937106] scsi 0:0:0:49488: Well-known LUN    SAMSUNG  KLUDG8V1EE-B0C1  0400 PQ: 0 ANSI: 6
[    1.949521] scsi 0:0:0:49456: Well-known LUN    SAMSUNG  KLUDG8V1EE-B0C1  0400 PQ: 0 ANSI: 6
[    1.961104] ufshcd-qcom 1da4000.ufshc: Change queue_depth to 16
[    1.961281] scsi 0:0:0:49476: Well-known LUN    SAMSUNG  KLUDG8V1EE-B0C1  0400 PQ: 0 ANSI: 6
[    1.963145] ufshcd-qcom 1da4000.ufshc: Change queue_depth to 16
[    1.963351] scsi 0:0:0:0: Direct-Access     SAMSUNG  KLUDG8V1EE-B0C1  0400 PQ: 0 ANSI: 6
[    1.964769] ufshcd-qcom 1da4000.ufshc: Change queue_depth to 16
[    1.964976] scsi 0:0:0:1: Direct-Access     SAMSUNG  KLUDG8V1EE-B0C1  0400 PQ: 0 ANSI: 6
[    1.966020] ufshcd-qcom 1da4000.ufshc: Change queue_depth to 16
[    1.966201] scsi 0:0:0:2: Direct-Access     SAMSUNG  KLUDG8V1EE-B0C1  0400 PQ: 0 ANSI: 6
[    1.967228] ufshcd-qcom 1da4000.ufshc: Change queue_depth to 16
[    1.967407] scsi 0:0:0:3: Direct-Access     SAMSUNG  KLUDG8V1EE-B0C1  0400 PQ: 0 ANSI: 6
[    1.968432] ufshcd-qcom 1da4000.ufshc: Change queue_depth to 16
[    1.968611] scsi 0:0:0:4: Direct-Access     SAMSUNG  KLUDG8V1EE-B0C1  0400 PQ: 0 ANSI: 6
[    1.969650] ufshcd-qcom 1da4000.ufshc: Change queue_depth to 16
[    1.969832] scsi 0:0:0:5: Direct-Access     SAMSUNG  KLUDG8V1EE-B0C1  0400 PQ: 0 ANSI: 6
[    1.970869] ufshcd-qcom 1da4000.ufshc: Change queue_depth to 16
[    1.971057] scsi 0:0:0:6: Direct-Access     SAMSUNG  KLUDG8V1EE-B0C1  0400 PQ: 0 ANSI: 6
[    1.971117] fts_touch 5-0049: FTS Initialized
[    1.971333] input: touchscreen as /devices/soc/c179000.i2c/i2c-5/5-0049/input/input1
[    1.971348] fts_touch 5-0049: fts_input_open
[    1.971366] fts_touch 5-0049: fts_start_device already power on
[    1.971371] fts_touch 5-0049: FTS cmd after wakeup : h0
[    1.971966] fts_touch 5-0049: installing direct irq on GPIO 125
[    1.972508] power_supply touch: Not all required supplies found, defer probe
[    1.972758] drv2624 6-005a: drv2624_i2c_probe enter
[    1.972904] drv2624 6-005a: Looking up ti,irq-gpio property in node /soc/i2c@c17a000/drv2624@5a failed -2
[    1.973325] fts_touch 5-0049: [FTS] Received Force Cal Event [ 0 ]
[    1.974951] sd 0:0:0:0: [sda] Write Protect is off
[    1.974957] sd 0:0:0:0: [sda] Mode Sense: 00 32 00 10
[    1.975392] sd 0:0:0:1: [sdb] Write Protect is off
[    1.975398] sd 0:0:0:1: [sdb] Mode Sense: 00 32 00 10
[    1.977035] drv2624 6-005a: drv2624_i2c_probe, ID status (0x3)
[    1.977518] i2c-msm-v2 c17a000.i2c: msm_bus_scale_register_client(mstr-id:86):0x13 (ok)
[    1.978714] drv2624 6-005a: dev_init_platform_data, LRA = 155, drive_time=0x1b
[    1.982407] sda: sda1 sda2 sda3 sda4 sda5 sda6 sda7 sda8 sda9 sda10 sda11 sda12 sda13
[    1.982518] sd 0:0:0:2: [sdc] Write Protect is off
[    1.982525] sd 0:0:0:2: [sdc] Mode Sense: 00 32 00 10
[    1.982678] sdb: sdb1
[    1.985818] sd 0:0:0:3: [sdd] Write Protect is off
[    1.985824] sd 0:0:0:3: [sdd] Mode Sense: 00 32 00 10
[    1.986743] sdc: sdc1
[    1.989211] sd 0:0:0:4: [sde] Write Protect is off
[    1.989217] sd 0:0:0:4: [sde] Mode Sense: 00 32 00 10
[    1.990699] sdd: sdd1 sdd2
[    1.991423] drv2624 6-005a: drv2624 probe succeeded
[    1.991856] sd 0:0:0:5: [sdf] Write Protect is off
[    1.991862] sd 0:0:0:5: [sdf] Mode Sense: 00 32 00 10
[    1.992897] sd 0:0:0:6: [sdg] Write Protect is off
[    1.992903] sd 0:0:0:6: [sdg] Mode Sense: 00 32 00 10
[    1.993271] [LASER] stmvl53l0_init: Enter
[    1.993276] [LASER] stmvl53l0_init_i2c: Enter
[    1.993323] [LASER] stmvl53l0_init_i2c: End with rc:0
[    1.993327] [LASER] stmvl53l0_init: End
[    1.994968] [LASER] stmvl53l0_probe: Enter++
[    1.994976] [LASER] Laser_parse_dt: calib_file = /persist/ldaf_cal
[    1.994980] [LASER] Laser_parse_dt: pwdn_gpio = 0
[    1.995009] [LASER] Laser_parse_dt: pwdn_gpio = 39
[    1.995283] [LASER] Laser_parse_dt: laser_irq_gpio = 62
[    1.995350] [LASER] Laser_parse_dt: Laser_parse_dt: sensor cali_size = 0
[    1.995411] [LASER] stmvl53l0_read_calibration: Could not read calibration from /persist/ldaf_cal
[    1.995415] [LASER] stmvl53l0_parse_vdd: Enter++
[    1.995507] 9-0029 supply vdd not found, using dummy regulator
[    1.995523] [LASER] stmvl53l0_parse_vdd: End--
[    1.995526] [LASER] Laser_pinctrl_init: Enter++
[    1.995664] qcom,qpnp-rtc 800f000.qcom,spmi:qcom,pm8998@0:qcom,pm8998_rtc: rtc core: registered qpnp_rtc as rtc0
[    1.996016] sdf: sdf1 sdf2 sdf3
[    1.996397] [LASER] Laser_pinctrl_init: End--
[    1.996402] [LASER] stmvl53l0_setup: Enter++
[    1.996423] [LASER] stmvl53l0_setup: register_irq: 259
[    1.996721] fts_touch 5-0049: [FTS] Received Basic Autotune Protection Event [ 0 ]
[    1.996727] fts_touch 5-0049: [FTS] Received Force Cal Done Event
[    1.996816] sde: sde1 sde2 sde3 sde4 sde5 sde6 sde7 sde8 sde9 sde10 sde11 sde12 sde13 sde14 sde15 sde16 sde17 sde18 sde19 sde20 sde21 sde22 sde23 sde24 sde25 sde26 sde27 sde28 sde29 sde30 sde31 sde32 sde33 sde34 sde35 sde36 sde37 sde38 sde39 sde40 sde41
[    1.997311] sdg: sdg1
[    1.997865] i2c /dev entries driver
[    1.998434] [LASER] stmvl53l0_setup: interrupt is hooked
[    1.999814] input: STM VL53L0 proximity sensor as /devices/virtual/input/input2
[    2.006608] [LASER] stmvl53l0_setup: Misc device registration name:9-0029
[    2.008450] i2c-msm-v2 c1b7000.i2c: msm_bus_scale_register_client(mstr-id:84):0x14 (ok)
[    2.009577] iommu: Adding device soc:qcom,cam_smmu:msm_cam_smmu_cb1 to group 13
[    2.009905] CAM-SMMU cam_smmu_populate_sids:2326 __debug cnt = 8, cb->name: :vfe sid [0] = 3072\x0a,
[    2.009912] CAM-SMMU cam_smmu_populate_sids:2326 __debug cnt = 8, cb->name: :vfe sid [1] = 3073\x0a,
[    2.009918] CAM-SMMU cam_smmu_populate_sids:2326 __debug cnt = 8, cb->name: :vfe sid [2] = 3074\x0a,
[    2.009922] CAM-SMMU cam_smmu_populate_sids:2326 __debug cnt = 8, cb->name: :vfe sid [3] = 3075\x0a,
[    2.010149] iommu: Adding device soc:qcom,cam_smmu:msm_cam_smmu_cb2 to group 14
[    2.010379] [LASER] stmvl53l0_setupAPIFunctions: read REVISION_ID: 0x10\x0a API_VERSION: 1.1.20.2
[    2.010384] CAM-SMMU cam_smmu_populate_sids:2326 __debug cnt = 2, cb->name: :cpp sid [0] = 2560\x0a,
[    2.010385] [LASER] stmvl53l0_setupAPIFunctions: to setup API cut 1.1
[    2.010389] [LASER] stmvl53l0_init_client: Enter
[    2.010391] [LASER] stmvl53l0_init_client: Call of VL53L0_DataInit
[    2.010569] iommu: Adding device soc:qcom,cam_smmu:msm_cam_smmu_cb3 to group 15
[    2.010807] CAM-SMMU cam_smmu_populate_sids:2326 __debug cnt = 2, cb->name: :camera_fd sid [0] = 2561\x0a,
[    2.010978] iommu: Adding device soc:qcom,cam_smmu:msm_cam_smmu_cb4 to group 16
[    2.011207] CAM-SMMU cam_smmu_populate_sids:2326 __debug cnt = 2, cb->name: :jpeg_enc0 sid [0] = 2048\x0a,
[    2.011376] iommu: Adding device soc:qcom,cam_smmu:msm_cam_smmu_cb5 to group 17
[    2.011605] CAM-SMMU cam_smmu_populate_sids:2326 __debug cnt = 2, cb->name: :jpeg_dma sid [0] = 2049\x0a,
[    2.020238] CAM-SOC msm_camera_get_reg_base:864 err: mem resource csiphy_clk_mux not found
[    2.020247] csiphy_probe: no mem resource?
[    2.020769] [LASER] stmvl53l0_init_client: Call of VL53L0_StaticInit
[    2.020871] CAM-SOC msm_camera_get_reg_base:864 err: mem resource csiphy_clk_mux not found
[    2.020876] csiphy_probe: no mem resource?
[    2.021481] CAM-SOC msm_camera_get_reg_base:864 err: mem resource csiphy_clk_mux not found
[    2.021485] csiphy_probe: no mem resource?
[    2.025925] msm_actuator_platform_probe:1949 msm_actuator_platform_probe: No/Error Actuator GPIOs
[    2.027191] msm_eeprom_platform_probe failed 1712
[    2.028688] msm_eeprom_platform_probe failed 1782
[    2.029979] msm_camera_pinctrl_init:1265 Getting pinctrl handle failed
[    2.029983] msm_ois_platform_probe:1253 ERR:msm_ois_platform_probe: Error in reading OIS pinctrl
[    2.030128] qcom,ois: probe of ca0c000.qcom,cci:qcom,ois@20 failed with error -22
[    2.036228] gdsc_cpp: supplied by gdsc_camss_top
[    2.040253] MSM-CPP cpp_init_hardware:1138 CPP HW Version: 0x60010000
[    2.040267] MSM-CPP cpp_init_hardware:1156 stream_cnt:0
[    2.040581] MSM-CPP cpp_release_hardware:1219 cpp hw release done
[    2.042024] CAM-SOC msm_camera_get_reg_base:864 err: mem resource vfe_fuse not found
[    2.042029] CAM-SOC msm_camera_get_res_size:907 err: mem resource vfe_fuse not found
[    2.042134] gdsc_vfe0: supplied by gdsc_camss_top
[    2.043372] CAM-SOC msm_camera_get_reg_base:864 err: mem resource vfe_fuse not found
[    2.043377] CAM-SOC msm_camera_get_res_size:907 err: mem resource vfe_fuse not found
[    2.043478] gdsc_vfe1: supplied by gdsc_camss_top
[    2.050365] __msm_jpeg_init:1537] Jpeg Device id 0
[    2.056231] msm_fd_hw_set_dt_parms_by_name: Error property does not exist
[    2.056925] msm_vidc:  err: Failed to create debugfs for msm_vidc
[    2.059820] msm_vidc:  err: Failed to create debugfs for msm_vidc
[    2.061859] iommu: Adding device cc00000.qcom,vidc:non_secure_cb to group 18
[    2.068721] iommu: Adding device cc00000.qcom,vidc:firmware_cb to group 19
[    2.069344] iommu: Adding device cc00000.qcom,vidc:secure_bitstream_cb to group 20
[    2.072291] iommu: Adding device cc00000.qcom,vidc:secure_pixel_cb to group 21
[    2.073790] iommu: Adding device cc00000.qcom,vidc:secure_non_pixel_cb to group 22
[    2.078749] c880000.qcom,vmem supply vdd not found, using dummy regulator
[    2.080974] [LASER] stmvl53l0_read_calibration: Could not read calibration from /persist/ldaf_cal
[    2.080983] [LASER] stmvl53l0_init_client: failed: no calibration data
[    2.080991] [LASER] stmvl53l0_setup: support ver. 1.1.20.2(1.0.5.1) enabled
[    2.080998] [LASER] stmvl53l0_setup: End--
[    2.081988] [LASER] stmvl53l0_probe: Success--
[    2.083261] msm_vidc_vmem: Up and running with 4 banks of memory from [mem size 0x1e4eafc8c9]
[    2.083271] Failed to create '<debugfs>/vmem'
[    2.085975] sde_mdp_parse_dt_prop_len: <SDEROT_INFO> prop qcom,mdss-rot-xin-id : doesn't exist in device tree
[    2.087106] iommu: Adding device c900000.qcom,mdss_rotator:qcom,smmu_rot_unsec_cb to group 23
[    2.087743] iommu: Adding device c900000.qcom,mdss_rotator:qcom,smmu_rot_sec_cb to group 24
[    2.089575] No change in context(0==0), skip
[    2.091642] sde_rotator c900000.qcom,mdss_rotator: <SDEROT_INFO> SDE v4l2 rotator probe success
[    2.093989] sde_smmu_probe: <SDEROT_INFO> iommu v2 domain[0] mapping and clk register successful!
[    2.094435] sde_smmu_probe: <SDEROT_INFO> iommu v2 domain[1] mapping and clk register successful!
[    2.103486] thermal thermal_zone4: failed to read out thermal zone (-19)
[    2.104483] thermal thermal_zone5: failed to read out thermal zone (-19)
[    2.105808] PMI: smblib_get_prop_usb_port_temp: Couldn't get USB thermal zone rc=-19
[    2.106484] PMI: smblib_get_prop_usb_port_temp: Couldn't get USB thermal zone rc=-19
[    2.106492] PMI: port_overheat_work: Couldn't get USB port temp rc=-19
[    2.117350] QPNP SMB2 probed successfully usb:present=1 type=0 batt:present = 1 health = 1 charge = 3
[    2.119062] PMI: smblib_get_prop_usb_port_temp: Couldn't get USB thermal zone rc=-19
[    2.122676] lge_battery: bm_init: Couldn't get pl_psy
[    2.122685] lge_battery: lge_battery_probe: bm_init fail
[    2.123074] qpnp_adc_get_devicetree_data: Loaded custom map for usb_port_temp
[    2.123788] qpnp_vadc_read: Error reading vadc_hc channel 21
[    2.123799] thermal thermal_zone6: failed to read out thermal zone (-517)
[    2.156758] tsens_debugfs_init: Error creating TSENS directory
[    2.156785] lmh_interface:lmh_mon_init_driver Error creating debugfs dir:lmh_monitor. err:-19
[    2.159780] msm_lmh_dcvs:lmh_activate_trip lmh_activate_trip: disable not supported
[    2.161262] msm_lmh_dcvs:lmh_activate_trip lmh_activate_trip: disable not supported
[    2.161977] md: linear personality registered for level -1
[    2.162294] device-mapper: uevent: version 1.0.3
[    2.162708] device-mapper: ioctl: 4.34.0-ioctl (2015-10-28) initialised: dm-devel@redhat.com
[    2.162974] device-mapper: verity-avb: AVB error handler initialized with vbmeta device: PARTUUID=cd3ccfa6-70cc-66d2-7499-8e657eb9b121
[    2.162992] device-mapper: req-crypt: dm-req-crypt successfully initalized.\x0a
[    2.164177] bt_power_populate_dt_pinfo: bt-reset-gpio not provided in device tree
[    2.170575] ledtrig-cpu: registered to indicate activity on CPUs
[    2.170599] power_supply touch: touch: Found supply : dc
[    2.170613] power_supply touch: touch: Found supply : usb
[    2.170625] power_supply touch: touch: Found supply : main
[    2.170637] power_supply touch: touch: Found supply : pc_port
[    2.170648] power_supply touch: touch: Found supply : battery
[    2.170839] hidraw: raw HID events driver (C) Jiri Kosina
[    2.175478] usbcore: registered new interface driver usbhid
[    2.175486] usbhid: USB HID core driver
[    2.175834] ashmem: initialized
[    2.179224] qpnp_coincell_charger_show_state: enabled=Y, voltage=3200 mV, resistance=800 ohm
[    2.180841] fts_touch 5-0049: [FTS] Received Charger Connected Event
[    2.184593] bimc-bwmon 1008000.qcom,cpu-bwmon: BW HWmon governor registered.
[    2.189563] devfreq soc:qcom,cpubw: Couldn't update frequency transition information.
[    2.190210] devfreq soc:qcom,mincpubw: Couldn't update frequency transition information.
[    2.190845] devfreq soc:qcom,memlat-cpu0: Couldn't update frequency transition information.
[    2.191310] devfreq soc:qcom,memlat-cpu4: Couldn't update frequency transition information.
[    2.194502] probe: Failed to create IPC log context
[    2.203106] [smem]htc_radio_smem_init.
[    2.204314] usbcore: registered new interface driver snd-usb-audio
[    2.213660] tas2557s 7-004d: tas2557_i2c_probe enter
[    2.220549] bcm15602 9-0008: bcm15602_resetb_irq_handler: completing reset
[    2.220975] bcm15602 9-0008: Part: 0x5602, Rev: 2, Vendor Rev: 0x21
[    2.221174] bcm15602 9-0008: Last reboot reason: normal
[    2.270596] tas2557s 7-004d: PG2.1 found
[    2.270913] tas2557s 7-004d: tas2557_register_codec, enter
[    2.271087] tas2557s 7-004d: tas2557_register_misc, leave
[    2.271093] tas2557s 7-004d: tiload_driver_init
[    2.271116] tas2557s 7-004d: allocated Major Number: 227
[    2.271391] tas2557s 7-004d: Registered TiLoad driver, Major number: 227
[    2.300347] msm-dai-tdm soc:qcom,msm-dai-tdm-pri-rx: msm_dai_tdm_q6_probe: dev_name: soc:qcom,msm-dai-tdm-pri-rx group_id: 0x9100
[    2.300828] msm-dai-q6-tdm soc:qcom,msm-dai-tdm-pri-rx:qcom,msm-dai-q6-tdm-pri-rx-0: msm_dai_q6_tdm_dev_probe: dev_name: soc:qcom,msm-dai-tdm-pri-rx:qcom,msm-dai-q6-tdm-pri-rx-0 dev_id: 0x9000
[    2.300840] msm-dai-q6-tdm soc:qcom,msm-dai-tdm-pri-rx:qcom,msm-dai-q6-tdm-pri-rx-0: msm_dai_q6_tdm_dev_probe: Custom tdm header not supported
[    2.300897] msm-dai-tdm soc:qcom,msm-dai-tdm-pri-tx: msm_dai_tdm_q6_probe: dev_name: soc:qcom,msm-dai-tdm-pri-tx group_id: 0x9101
[    2.301352] msm-dai-q6-tdm soc:qcom,msm-dai-tdm-pri-tx:qcom,msm-dai-q6-tdm-pri-tx-0: msm_dai_q6_tdm_dev_probe: dev_name: soc:qcom,msm-dai-tdm-pri-tx:qcom,msm-dai-q6-tdm-pri-tx-0 dev_id: 0x9001
[    2.301362] msm-dai-q6-tdm soc:qcom,msm-dai-tdm-pri-tx:qcom,msm-dai-q6-tdm-pri-tx-0: msm_dai_q6_tdm_dev_probe: Custom tdm header not supported
[    2.301413] msm-dai-tdm soc:qcom,msm-dai-tdm-sec-rx: msm_dai_tdm_q6_probe: dev_name: soc:qcom,msm-dai-tdm-sec-rx group_id: 0x9110
[    2.301875] msm-dai-q6-tdm soc:qcom,msm-dai-tdm-sec-rx:qcom,msm-dai-q6-tdm-sec-rx-0: msm_dai_q6_tdm_dev_probe: dev_name: soc:qcom,msm-dai-tdm-sec-rx:qcom,msm-dai-q6-tdm-sec-rx-0 dev_id: 0x9010
[    2.301886] msm-dai-q6-tdm soc:qcom,msm-dai-tdm-sec-rx:qcom,msm-dai-q6-tdm-sec-rx-0: msm_dai_q6_tdm_dev_probe: Custom tdm header not supported
[    2.301941] msm-dai-tdm soc:qcom,msm-dai-tdm-sec-tx: msm_dai_tdm_q6_probe: dev_name: soc:qcom,msm-dai-tdm-sec-tx group_id: 0x9111
[    2.302394] msm-dai-q6-tdm soc:qcom,msm-dai-tdm-sec-tx:qcom,msm-dai-q6-tdm-sec-tx-0: msm_dai_q6_tdm_dev_probe: dev_name: soc:qcom,msm-dai-tdm-sec-tx:qcom,msm-dai-q6-tdm-sec-tx-0 dev_id: 0x9011
[    2.302406] msm-dai-q6-tdm soc:qcom,msm-dai-tdm-sec-tx:qcom,msm-dai-q6-tdm-sec-tx-0: msm_dai_q6_tdm_dev_probe: Custom tdm header not supported
[    2.302456] msm-dai-tdm soc:qcom,msm-dai-tdm-tert-rx: msm_dai_tdm_q6_probe: dev_name: soc:qcom,msm-dai-tdm-tert-rx group_id: 0x9120
[    2.302908] msm-dai-q6-tdm soc:qcom,msm-dai-tdm-tert-rx:qcom,msm-dai-q6-tdm-tert-rx-0: msm_dai_q6_tdm_dev_probe: dev_name: soc:qcom,msm-dai-tdm-tert-rx:qcom,msm-dai-q6-tdm-tert-rx-0 dev_id: 0x9020
[    2.302919] msm-dai-q6-tdm soc:qcom,msm-dai-tdm-tert-rx:qcom,msm-dai-q6-tdm-tert-rx-0: msm_dai_q6_tdm_dev_probe: Custom tdm header not supported
[    2.302968] msm-dai-tdm soc:qcom,msm-dai-tdm-tert-tx: msm_dai_tdm_q6_probe: dev_name: soc:qcom,msm-dai-tdm-tert-tx group_id: 0x9121
[    2.303421] msm-dai-q6-tdm soc:qcom,msm-dai-tdm-tert-tx:qcom,msm-dai-q6-tdm-tert-tx-0: msm_dai_q6_tdm_dev_probe: dev_name: soc:qcom,msm-dai-tdm-tert-tx:qcom,msm-dai-q6-tdm-tert-tx-0 dev_id: 0x9021
[    2.303433] msm-dai-q6-tdm soc:qcom,msm-dai-tdm-tert-tx:qcom,msm-dai-q6-tdm-tert-tx-0: msm_dai_q6_tdm_dev_probe: Custom tdm header not supported
[    2.303485] msm-dai-tdm soc:qcom,msm-dai-tdm-quat-rx: msm_dai_tdm_q6_probe: dev_name: soc:qcom,msm-dai-tdm-quat-rx group_id: 0x9130
[    2.303937] msm-dai-q6-tdm soc:qcom,msm-dai-tdm-quat-rx:qcom,msm-dai-q6-tdm-quat-rx-0: msm_dai_q6_tdm_dev_probe: dev_name: soc:qcom,msm-dai-tdm-quat-rx:qcom,msm-dai-q6-tdm-quat-rx-0 dev_id: 0x9030
[    2.303949] msm-dai-q6-tdm soc:qcom,msm-dai-tdm-quat-rx:qcom,msm-dai-q6-tdm-quat-rx-0: msm_dai_q6_tdm_dev_probe: Custom tdm header not supported
[    2.304001] msm-dai-tdm soc:qcom,msm-dai-tdm-quat-tx: msm_dai_tdm_q6_probe: dev_name: soc:qcom,msm-dai-tdm-quat-tx group_id: 0x9131
[    2.304451] msm-dai-q6-tdm soc:qcom,msm-dai-tdm-quat-tx:qcom,msm-dai-q6-tdm-quat-tx-0: msm_dai_q6_tdm_dev_probe: dev_name: soc:qcom,msm-dai-tdm-quat-tx:qcom,msm-dai-q6-tdm-quat-tx-0 dev_id: 0x9031
[    2.304464] msm-dai-q6-tdm soc:qcom,msm-dai-tdm-quat-tx:qcom,msm-dai-q6-tdm-quat-tx-0: msm_dai_q6_tdm_dev_probe: Custom tdm header not supported
[    2.326178] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    2.326766] GACT probability NOT on
[    2.326824] Mirror/redirect action on
[    2.326849] u32 classifier
[    2.326852] Actions configured
[    2.326967] Netfilter messages via NETLINK v0.30.
[    2.327115] nf_conntrack version 0.5.0 (16384 buckets, 65536 max)
[    2.327639] ctnetlink v0.93: registering with nfnetlink.
[    2.328748] xt_time: kernel timezone is -0000
[    2.328792] wireguard: WireGuard 0.0.20190406 loaded. See www.wireguard.com for information.
[    2.328796] wireguard: Copyright (C) 2015-2019 Jason A. Donenfeld <Jason@zx2c4.com>. All Rights Reserved.
[    2.328843] IPv4 over IPsec tunneling driver
[    2.329806] ip_tables: (C) 2000-2006 Netfilter Core Team
[    2.330536] arp_tables: (C) 2002 David S. Miller
[    2.330704] Initializing XFRM netlink socket
[    2.331589] NET: Registered protocol family 10
[    2.333881] mip6: Mobile IPv6
[    2.333913] ip6_tables: (C) 2000-2006 Netfilter Core Team
[    2.334924] sit: IPv6 over IPv4 tunneling driver
[    2.336624] NET: Registered protocol family 17
[    2.336652] NET: Registered protocol family 15
[    2.336784] bridge: automatic filtering via arp/ip/ip6tables has been deprecated. Update your scripts to load br_netfilter if you need this.
[    2.336794] Ebtables v2.0 registered
[    2.336942] l2tp_core: L2TP core driver, V2.0
[    2.336958] l2tp_ppp: PPPoL2TP kernel driver, V2.0
[    2.336964] l2tp_ip: L2TP IP encapsulation support (L2TPv3)
[    2.336988] l2tp_netlink: L2TP netlink interface
[    2.337022] l2tp_eth: L2TP ethernet pseudowire support (L2TPv3)
[    2.337027] l2tp_ip6: L2TP IP encapsulation support for IPv6 (L2TPv3)
[    2.338286] NET: Registered protocol family 27
[    2.338688] IPC_RTR: ipc_router_create_log_ctx: Unable to create IPC logging for [local_IPCRTR]
[    2.351713] subsys-pil-tz 17300000.qcom,lpass: for adsp segments only will be dumped.
[    2.354232] subsys-pil-tz 5c00000.qcom,ssc: for slpi segments only will be dumped.
[    2.355400] pil-q6v5-mss 4080000.qcom,mss: No pas_id found.
[    2.356112] platform 4080000.qcom,mss:qcom,mba-mem@0: assigned reserved memory node pil_mba_region@94100000
[    2.357133] pil-q6v5-mss 4080000.qcom,mss: for modem segments only will be dumped.
[    2.362700] sps_register_bam_device : unable to create IPC Logging 0 for bam 0x0000000000000000
[    2.362706] sps_register_bam_device : unable to create IPC Logging 1 for bam 0x0000000000000000
[    2.362711] sps_register_bam_device : unable to create IPC Logging 2 for bam 0x0000000000000000
[    2.362714] sps_register_bam_device : unable to create IPC Logging 3 for bam 0x0000000000000000
[    2.362719] sps_register_bam_device : unable to create IPC Logging 4 for bam 0x0000000000000000
[    2.362723] sps:BAM 0x0000000000000000 is registered.
[    2.363766] Invalid index Defaulting curr to 0
[    2.365640] qpnp-pdphy 800f000.qcom,spmi:qcom,pmi8998@2:qcom,usb-pdphy@1700: usbpd_create failed: -517
[    2.375139] thermal thermal_zone37: failed to read out thermal zone (-19)
[    2.379249] qcom,fg-gen3 800f000.qcom,spmi:qcom,pmi8998@2:qpnp,fg: Start WAR to set SP_SAT_CC_CLR_AUTO_BIT
[    2.379578] qcom,fg-gen3 800f000.qcom,spmi:qcom,pmi8998@2:qpnp,fg: WAR: 0x13 reg value: 0xbf
[    2.379584] qcom,fg-gen3 800f000.qcom,spmi:qcom,pmi8998@2:qpnp,fg: WAR: Bit 3 has been set, no WAR needed
[    2.379686] FG: comp_temp_by_chg_current: failed to get POWER_SUPPLY_PROP_CURRENT_NOW rc = -61
[    2.379690] FG: fg_get_battery_temp: batt temperature original:430, tuned:375
[    2.379695] FG: fg_gen3_probe: battery SOC:80 voltage: 4128407uV temp: 375 id: 0KOhms
[    2.389680] SMB138X: smb138x_parallel_get_prop: parallel power supply get prop 4 not supported
[    2.390262] FG: fg_psy_get_property: unsupported property 4
[    2.390384] FG: fg_get_battery_temp: batt temperature original:430, tuned:375
[    2.390630] SMB138X: smb138x_probe: SMB138X probed successfully mode=1
[    2.391955] lge_battery: bm_init: Battery id is zero, deferring probe!
[    2.391960] lge_battery: lge_battery_probe: bm_init fail
[    2.393146] SMB138X: smb138x_get_prop_charger_temp: Couldnt read chg temp at 1th iteration rc = -61
[    2.393185] FG: fg_get_time_to_full: battery profile is not loaded
[    2.394579] SMB138X: smb138x_get_prop_connector_health: Couldn't read connector temperature rc=-61
[    2.394602] SMB138X: smb138x_parallel_get_prop: parallel power supply get prop 4 not supported
[    2.396923] SMB138X: smb138x_get_prop_charger_temp: Couldnt read chg temp at 1th iteration rc = -61
[    2.398173] SMB138X: smb138x_get_prop_connector_health: Couldn't read connector temperature rc=-61
[    2.401823] FG: fg_get_battery_temp: batt temperature original:430, tuned:375
[    2.403399] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    2.403783] ipa ipa3_smp2p_probe:5521 failed to enable irq wake
[    2.404948] FG: fg_get_battery_temp: batt temperature original:430, tuned:375
[    2.407220] Invalid index Defaulting curr to 0
[    2.411119] lge_battery: bm_init: Battery id is zero, deferring probe!
[    2.411126] lge_battery: lge_battery_probe: bm_init fail
[    2.419511] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    2.421952] msm-dwc3 a800000.ssusb: charger detection in progress
[    2.422235] lge_battery: bm_init: Battery id is zero, deferring probe!
[    2.422239] lge_battery: lge_battery_probe: bm_init fail
[    2.430487] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    2.431179] lge_battery: bm_init: Battery id is zero, deferring probe!
[    2.431184] lge_battery: lge_battery_probe: bm_init fail
[    2.432649] EDAC DEVICE0: Giving out device to module soc:arm64-cpu-erp controller cache: DEV soc:arm64-cpu-erp (POLLED)
[    2.433397] ARM64 CPU ERP: Could not find <cci-irq> IRQ property. Proceeding anyway.
[    2.440007] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    2.441176] Registered cp15_barrier emulation handler
[    2.441192] Registered setend emulation handler
[    2.441783] registered taskstats version 1
[    2.441792] Loading compiled-in X.509 certificates
[    2.444571] Loaded X.509 cert 'Easel: 2d9cb8fb66a52266cb3b00b3e3db335fadf908e4'
[    2.445225] msm_smem 86000000.qcom,smem: for smem segments only will be dumped.
[    2.445540] spss_utils [spss_init]: spss-utils driver Ver 1.2 13-Jan-2017.
[    2.446104] spss_utils [spss_probe]: Initialization completed ok, firmware_name [spss2p].
[    2.448187] fastrpc soc:qcom,msm-adsprpc-mem: for adsp_rh segments only will be dumped.
[    2.448618] iommu: Adding device soc:qcom,msm_fastrpc:qcom,msm_fastrpc_cpz_cb1 to group 25
[    2.450818] iommu: Adding device soc:qcom,msm_fastrpc:qcom,msm_fastrpc_compute_cb1 to group 26
[    2.451875] iommu: Adding device soc:qcom,msm_fastrpc:qcom,msm_fastrpc_compute_cb2 to group 27
[    2.452818] iommu: Adding device soc:qcom,msm_fastrpc:qcom,msm_fastrpc_compute_cb3 to group 28
[    2.453712] iommu: Adding device soc:qcom,msm_fastrpc:qcom,msm_fastrpc_compute_cb4 to group 29
[    2.454598] iommu: Adding device soc:qcom,msm_fastrpc:qcom,msm_fastrpc_compute_cb6 to group 30
[    2.455488] iommu: Adding device soc:qcom,msm_fastrpc:qcom,msm_fastrpc_compute_cb7 to group 31
[    2.456370] iommu: Adding device soc:qcom,msm_fastrpc:qcom,msm_fastrpc_compute_cb8 to group 32
[    2.458607] lge_battery: bm_init: Battery id is zero, deferring probe!
[    2.458665] lge_battery: lge_battery_probe: bm_init fail
[    2.469047] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    2.470423] ngd_msm_ctrl 171c0000.slim: error creating ipc_logging context
[    2.471416] lge_battery: bm_init: Battery id is zero, deferring probe!
[    2.471422] lge_battery: lge_battery_probe: bm_init fail
[    2.479748] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    2.480650] lge_battery: bm_init: Battery id is zero, deferring probe!
[    2.480655] lge_battery: lge_battery_probe: bm_init fail
[    2.488784] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    2.489479] lge_battery: bm_init: Battery id is zero, deferring probe!
[    2.489484] lge_battery: lge_battery_probe: bm_init fail
[    2.490923] ngd_msm_ctrl 17240000.slim: error creating ipc_logging context
[    2.498115] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    2.498850] lge_battery: bm_init: Battery id is zero, deferring probe!
[    2.498854] lge_battery: lge_battery_probe: bm_init fail
[    2.507280] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    2.507562] RNDIS_IPA module is loaded.
[    2.508133] lge_battery: bm_init: Battery id is zero, deferring probe!
[    2.508139] lge_battery: lge_battery_probe: bm_init fail
[    2.513538] msm_pcie_enable: PCIe: Assert the reset of endpoint of RC0.
[    2.516850] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    2.517658] lge_battery: bm_init: Battery id is zero, deferring probe!
[    2.517663] lge_battery: lge_battery_probe: bm_init fail
[    2.520530] msm_pcie_enable: PCIe RC0 PHY is ready!
[    2.521557] msm_pcie_enable: PCIe: Release the reset of endpoint of RC0.
[    2.521893] misc mnh_sm: mnh_sm_ready_irq_handler: mnh device is ready to boot
[    2.526281] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    2.527041] lge_battery: bm_init: Battery id is zero, deferring probe!
[    2.527045] lge_battery: lge_battery_probe: bm_init fail
[    2.535601] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    2.536301] lge_battery: bm_init: Battery id is zero, deferring probe!
[    2.536305] lge_battery: lge_battery_probe: bm_init fail
[    2.537969] msm_pcie_enable: PCIe RC0 link initialized
[    2.538088] PCI host bridge /soc/qcom,pcie@01c00000 ranges:
[    2.538100] No bus range found for /soc/qcom,pcie@01c00000, using [bus 00-ff]
[    2.538266] IO 0x1b030000..0x1b04ffff -> 0x1b030000
[    2.538430] MEM 0x1b100000..0x1bffffff -> 0x1b100000
[    2.539235] pci-msm 1c00000.qcom,pcie: PCI host bridge to bus 0000:00
[    2.539246] pci_bus 0000:00: root bus resource [bus 00-ff]
[    2.539252] pci_bus 0000:00: root bus resource [io  0x0000-0x1ffff] (bus address [0x1b030000-0x1b04ffff])
[    2.539256] pci_bus 0000:00: root bus resource [mem 0x00000000-0x00efffff]
[    2.539494] pci 0000:00:00.0: [17cb:0105] type 01 class 0x060400
[    2.539581] pci 0000:00:00.0: reg 0x10: [mem 0x00000000-0x00000fff 64bit]
[    2.539962] pci 0000:00:00.0: PME# supported from D0 D3hot D3cold
[    2.540568] iommu: Adding device 0000:00:00.0 to group 33
[    2.540861] pci 0000:00:00.0: bridge configuration invalid ([bus 00-00]), reconfiguring
[    2.541325] pci 0000:01:00.0: [8086:3140] type 00 class 0x000000
[    2.541535] pci 0000:01:00.0: reg 0x10: [mem 0x00000000-0x00000fff 64bit pref]
[    2.541602] pci 0000:01:00.0: reg 0x18: [mem 0x00000000-0x007fffff 64bit]
[    2.541668] pci 0000:01:00.0: reg 0x20: [mem 0x00000000-0x003fffff 64bit pref]
[    2.541885] pci 0000:01:00.0: setting pcie class
[    2.542112] pci 0000:01:00.0: supports D1 D2
[    2.542116] pci 0000:01:00.0: PME# supported from D0 D1 D3hot D3cold
[    2.542756] iommu: Adding device 0000:01:00.0 to group 34
[    2.542786] pci_bus 0000:01: busn_res: [bus 00-fe] end is updated to 01
[    2.542851] pci 0000:00:00.0: BAR 8: assigned [mem 0x00000000-0x007fffff]
[    2.542858] pci 0000:00:00.0: BAR 9: assigned [mem 0x00000000-0x005fffff 64bit pref]
[    2.542864] pci 0000:00:00.0: BAR 0: assigned [mem 0x00000000-0x00000fff 64bit]
[    2.542901] pci 0000:01:00.0: BAR 2: assigned [mem 0x00000000-0x007fffff 64bit]
[    2.543012] pci 0000:01:00.0: BAR 4: assigned [mem 0x00000000-0x003fffff 64bit pref]
[    2.543069] pci 0000:01:00.0: BAR 0: assigned [mem 0x00000000-0x00000fff 64bit pref]
[    2.543124] pci 0000:00:00.0: PCI bridge to [bus 00]
[    2.543143] pci 0000:00:00.0:   bridge window [mem 0x00000000-0x007fffff]
[    2.543157] pci 0000:00:00.0:   bridge window [mem 0x00000000-0x005fffff 64bit pref]
[    2.543706] pci 0000:00:00.0: enabling device (0000 -> 0002)
[    2.543733] mnh_pci 0000:01:00.0: enabling device (0000 -> 0002)
[    2.544786] mnh_pci 0000:01:00.0: vector :10 , msi_num:10, irq:755
[    2.544820] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    2.545643] lge_battery: bm_init: Battery id is zero, deferring probe!
[    2.545647] lge_battery: lge_battery_probe: bm_init fail
[    2.545914] mnh_pci 0000:01:00.0: request irq:756
[    2.546065] mnh_pci 0000:01:00.0: request irq:757
[    2.546248] mnh_pci 0000:01:00.0: request irq:758
[    2.546399] mnh_pci 0000:01:00.0: request irq:759
[    2.546621] mnh_pci 0000:01:00.0: request irq:760
[    2.546778] mnh_pci 0000:01:00.0: request irq:763
[    2.546941] mnh_pci 0000:01:00.0: request irq:764
[    2.550930] mnh_pci 0000:01:00.0: attached to IOMMU
[    2.554080] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    2.554842] lge_battery: bm_init: Battery id is zero, deferring probe!
[    2.554846] lge_battery: lge_battery_probe: bm_init fail
[    2.563297] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    2.563985] lge_battery: bm_init: Battery id is zero, deferring probe!
[    2.563989] lge_battery: lge_battery_probe: bm_init fail
[    2.572265] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    2.572958] lge_battery: bm_init: Battery id is zero, deferring probe!
[    2.572963] lge_battery: lge_battery_probe: bm_init fail
[    2.580616] msm_pcie_disable: PCIe: Assert the reset of endpoint of RC0.
[    2.580763] misc mnh_sm: mnh_sm_ready_irq_handler: mnh device is ready to suspend
[    2.581264] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    2.582224] lge_battery: bm_init: Battery id is zero, deferring probe!
[    2.582228] lge_battery: lge_battery_probe: bm_init fail
[    2.584758] misc mnh_sm: MNH SM initialized successfully
[    2.585426] [KEY] Target does not use pinctrl
[    2.585446] [KEY] gpio_keys_setup_key, error=-524, debounce(15, 15)
[    2.585503] [KEY] keycode = 115, gpio = 126, irq = 323
[    2.585730] input: gpio-keys as /devices/soc/soc:gpio_keys/input/input3
[    2.588581] qcom,qpnp-rtc 800f000.qcom,spmi:qcom,pm8998@0:qcom,pm8998_rtc: setting system clock to 1970-01-14 16:51:06 UTC (1183866)
[    2.590661] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    2.591527] lge_battery: bm_init: Battery id is zero, deferring probe!
[    2.591531] lge_battery: lge_battery_probe: bm_init fail
[    2.591808] msm_thermal:create_thermal_debugfs Error creating debugfs dir:msm_thermal. err:-19
[    2.592781] lmh_lite:lmh_parse_sensor Registering sensor:[GLM_soc]
[    2.592842] lmh_interface:lmh_create_debugfs_nodes Error creating debugfs file:hw_trace_enable. err:-19
[    2.594813] lmh_lite:lmh_parse_sensor Registering sensor:[LLM_cp1-]
[    2.595574] lmh_lite:lmh_parse_sensor Registering sensor:[LLM_cp0-]
[    2.596182] soc:qcom,lmh supply vdd-apss not found, using dummy regulator
[    2.596566] lmh_lite:lmh_get_sensor_devicetree Error getting ODCM thresh. err:-22
[    2.600570] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    2.600793] lmh_interface:lmh_debug_register Error creating debugfs dir:debug. err:-19
[    2.600798] lmh_lite:lmh_debug_init Error registering debug ops. err:-19
[    2.600802] lmh_lite:lmh_probe LMH debug init failed. err:-19
[    2.601434] lge_battery: bm_init: Battery id is zero, deferring probe!
[    2.601438] lge_battery: lge_battery_probe: bm_init fail
[    2.602541] parse_cpu_levels: idx 1 503
[    2.602545] parse_cpu_levels: idx 2 1744
[    2.602600] parse_cpu_levels: idx 2 2222
[    2.604178] parse_cpu_levels: idx 1 1301
[    2.604182] parse_cpu_levels: idx 2 1820
[    2.604186] parse_cpu_levels: idx 2 1999
[    2.604218] calculate_residency: residency < 0 for LPM
[    2.609897] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    2.610756] lge_battery: bm_init: Battery id is zero, deferring probe!
[    2.610761] lge_battery: lge_battery_probe: bm_init fail
[    2.619179] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    2.619963] lge_battery: bm_init: Battery id is zero, deferring probe!
[    2.619968] lge_battery: lge_battery_probe: bm_init fail
[    2.627122] rmnet_ipa3 started initialization
[    2.628422] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    2.629377] lge_battery: bm_init: Battery id is zero, deferring probe!
[    2.629382] lge_battery: lge_battery_probe: bm_init fail
[    2.629861] qcom,cc-debug-8998 162000.qcom,debugcc: Registered debug mux
[    2.632490] gfx_mem_acc_corner: disabling
[    2.632594] apc0_pwrcl_corner: disabling
[    2.632600] apc1_perfcl_corner: disabling
[    2.633874] regulator_proxy_consumer_remove_all: removing regulator proxy consumer requests
[    2.635085] clock_late_init: Removing enables held for handed-off clocks
[    2.639064] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    2.639916] lge_battery: bm_init: Battery id is zero, deferring probe!
[    2.639920] lge_battery: lge_battery_probe: bm_init fail
[    2.648281] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    2.649093] lge_battery: bm_init: Battery id is zero, deferring probe!
[    2.649098] lge_battery: lge_battery_probe: bm_init fail
[    2.657488] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    2.658305] lge_battery: bm_init: Battery id is zero, deferring probe!
[    2.658310] lge_battery: lge_battery_probe: bm_init fail
[    2.663996] ALSA device list:
[    2.664003] No soundcards found.
[    2.664173] Warning: unable to open an initial console.
[    2.666786] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    2.667565] md: Skipping autodetection of RAID arrays. (raid=autodetect will force)
[    2.667571] device-mapper: init: attempting early device configuration.
[    2.668270] lge_battery: bm_init: Battery id is zero, deferring probe!
[    2.668275] lge_battery: lge_battery_probe: bm_init fail
[    2.668785] device-mapper: init: adding target '0 5159992 verity 1 PARTUUID=73d84a99-00e6-d82f-51d0-c7461b899ae8 PARTUUID=73d84a99-00e6-d82f-51d0-c7461b899ae8 4096 4096 644999 644999 sha1 8038bb57ef981f2aa8aba7f7b76b99cbb135c492 ca8152e6806d191b165d3d5fa67fb275d0d450d00ef73d03c4510d2cbc4f49f4 10 restart_on_corruption ignore_zero_blocks use_fec_from_device PARTUUID=73d84a99-00e6-d82f-51d0-c7461b899ae8 fec_roots 2 fec_blocks 650080 fec_start 650080'
[    2.675273] device-mapper: init: dm-0 is ready
[    2.676855] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    2.677742] lge_battery: bm_init: Battery id is zero, deferring probe!
[    2.677747] lge_battery: lge_battery_probe: bm_init fail
[    2.686132] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    2.686983] lge_battery: bm_init: Battery id is zero, deferring probe!
[    2.686988] lge_battery: lge_battery_probe: bm_init fail
[    2.695390] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    2.696289] lge_battery: bm_init: Battery id is zero, deferring probe!
[    2.696294] lge_battery: lge_battery_probe: bm_init fail
[    2.704750] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    2.705592] lge_battery: bm_init: Battery id is zero, deferring probe!
[    2.705597] lge_battery: lge_battery_probe: bm_init fail
[    2.714099] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    2.714987] lge_battery: bm_init: Battery id is zero, deferring probe!
[    2.714992] lge_battery: lge_battery_probe: bm_init fail
[    2.723669] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    2.724560] lge_battery: bm_init: Battery id is zero, deferring probe!
[    2.724565] lge_battery: lge_battery_probe: bm_init fail
[    2.734820] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    2.735956] lge_battery: bm_init: Battery id is zero, deferring probe!
[    2.735961] lge_battery: lge_battery_probe: bm_init fail
[    2.746529] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    2.747571] lge_battery: bm_init: Battery id is zero, deferring probe!
[    2.747576] lge_battery: lge_battery_probe: bm_init fail
[    2.757862] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    2.758847] lge_battery: bm_init: Battery id is zero, deferring probe!
[    2.758853] lge_battery: lge_battery_probe: bm_init fail
[    2.769026] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    2.770001] lge_battery: bm_init: Battery id is zero, deferring probe!
[    2.770007] lge_battery: lge_battery_probe: bm_init fail
[    2.780322] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    2.781375] lge_battery: bm_init: Battery id is zero, deferring probe!
[    2.781381] lge_battery: lge_battery_probe: bm_init fail
[    2.791588] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    2.792619] lge_battery: bm_init: Battery id is zero, deferring probe!
[    2.792625] lge_battery: lge_battery_probe: bm_init fail
[    2.801229] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    2.802086] lge_battery: bm_init: Battery id is zero, deferring probe!
[    2.802092] lge_battery: lge_battery_probe: bm_init fail
[    2.810625] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    2.811410] lge_battery: bm_init: Battery id is zero, deferring probe!
[    2.811415] lge_battery: lge_battery_probe: bm_init fail
[    2.819778] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    2.820655] lge_battery: bm_init: Battery id is zero, deferring probe!
[    2.820662] lge_battery: lge_battery_probe: bm_init fail
[    2.828969] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    2.829706] lge_battery: bm_init: Battery id is zero, deferring probe!
[    2.829710] lge_battery: lge_battery_probe: bm_init fail
[    2.837959] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    2.838763] lge_battery: bm_init: Battery id is zero, deferring probe!
[    2.838767] lge_battery: lge_battery_probe: bm_init fail
[    2.840385] of_batterydata_get_best_profile: lge_blt35_tocad_3620mah found
[    2.842963] device-mapper: verity-fec: 8:7: FEC 0: corrected 16 errors
[    2.844262] EXT4-fs (dm-0): couldn't mount as ext3 due to feature incompatibilities
[    2.853689] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    2.862171] lge_battery: bm_vote_fcc_update: vote id[0], set cur[3550000]
[    2.862297] lge_battery: bm_check_status: wake_locked: present[1] chg_state[1] vbus[0]
[    2.862308] lge_battery: lge_battery_probe: Battery manager driver probe success!
[    2.864833] device-mapper: verity-fec: 8:7: FEC 0: corrected 16 errors
[    2.865017] EXT4-fs (dm-0): couldn't mount as ext2 due to feature incompatibilities
[    2.870939] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    2.879907] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    2.883990] device-mapper: verity-fec: 8:7: FEC 0: corrected 16 errors
[    2.888910] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    2.889631] EXT4-fs (dm-0): mounted filesystem without journal. Opts: (null)
[    2.889917] VFS: Mounted root (ext4 filesystem) readonly on device 252:0.
[    2.893193] Freeing unused kernel memory: 8192K
[    2.898865] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    2.908218] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    2.917244] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    2.926607] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    2.927025] init: init first stage started!
[    2.928099] init: Using Android DT directory /proc/device-tree/firmware/android/
[    2.934673] init: [libfs_mgr]fs_mgr_read_fstab_default(): failed to find device default fstab
[    2.936895] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    2.946940] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    2.956901] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    2.966391] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    2.975470] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    2.984394] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    2.998043] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.007052] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.013427] EXT4-fs (sda4): mounted filesystem with ordered data mode. Opts: barrier=1
[    3.013530] init: [libfs_mgr]__mount(source=/dev/block/platform/soc/1da4000.ufshc/by-name/persist,target=/persist,type=ext4)=0: Success
[    3.015916] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.016483] EXT4-fs (sde14): mounted filesystem without journal. Opts: barrier=1
[    3.016536] init: [libfs_mgr]__mount(source=/dev/block/platform/soc/1da4000.ufshc/by-name/vendor_a,target=/vendor,type=ext4)=0: Success
[    3.017893] init: Skipped setting INIT_AVB_VERSION (not in recovery mode)
[    3.018048] init: Loading SELinux policy
[    3.026893] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.031528] SELinux: 8192 avtab hash slots, 22282 rules.
[    3.036052] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.042674] SELinux: 8192 avtab hash slots, 22282 rules.
[    3.042686] SELinux:  1 users, 4 roles, 1563 types, 0 bools, 1 sens, 1024 cats
[    3.042691] SELinux:  93 classes, 22282 rules
[    3.044821] SELinux:  Completing initialization.
[    3.044824] SELinux:  Setting up existing superblocks.
[    3.044905] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.053895] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.063043] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.071960] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.074338] selinux: SELinux: Loaded policy from /vendor/etc/selinux/precompiled_sepolicy\x0a
[    3.080884] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.081521] selinux: SELinux: Loaded file_contexts\x0a
[    3.088127] init: init second stage started!
[    3.089940] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.099018] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.106694] init: Using Android DT directory /proc/device-tree/firmware/android/
[    3.110253] selinux: SELinux: Loaded file_contexts\x0a
[    3.110272] init: Running restorecon...
[    3.111017] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.114572] init: waitid failed: No child processes
[    3.119971] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.120234] init: Couldn't load property file '/odm/default.prop': open() failed: No such file or directory: No such file or directory
[    3.122867] init: Created socket '/dev/socket/property_service', mode 666, user 0, group 0
[    3.124113] init: Forked subcontext for 'u:r:vendor_init:s0' with pid 577
[    3.124798] init: Forked subcontext for 'u:r:vendor_init:s0' with pid 578
[    3.126208] init: Parsing file /init.rc...
[    3.129131] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.130620] init: Added '/init.environ.rc' to import list
[    3.130666] init: Added '/init.usb.rc' to import list
[    3.130694] init: Added '/init.taimen.rc' to import list
[    3.130737] init: Added '/vendor/etc/init/hw/init.taimen.rc' to import list
[    3.130754] init: Added '/init.usb.configfs.rc' to import list
[    3.130778] init: Added '/init.zygote64_32.rc' to import list
[    3.132941] init: Parsing file /init.environ.rc...
[    3.133627] init: Parsing file /init.usb.rc...
[    3.134707] init: Parsing file /init.taimen.rc...
[    3.134734] init: Unable to read config file '/init.taimen.rc': open() failed: No such file or directory
[    3.134748] init: /init.rc: 9: Could not import file '/init.taimen.rc': No such file or directory
[    3.136032] init: Parsing file /vendor/etc/init/hw/init.taimen.rc...
[    3.136758] init: Added '/vendor/etc/init/hw/init.taimen.usb.rc' to import list
[    3.137707] init: /vendor/etc/init/hw/init.taimen.rc: 745: Unable to decode GID for 'qcom_diag': getpwnam failed: No such file or directory
[    3.138153] init: Parsing file /vendor/etc/init/hw/init.taimen.usb.rc...
[    3.138395] init: Added '/vendor/etc/init/hw/init.wahoo.usb.rc' to import list
[    3.138654] init: Parsing file /vendor/etc/init/hw/init.wahoo.usb.rc...
[    3.138728] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.138990] init: Parsing file /init.usb.configfs.rc...
[    3.139615] init: Parsing file /init.zygote64_32.rc...
[    3.140172] init: Parsing directory /system/etc/init...
[    3.141054] init: Parsing file /system/etc/init/android.hidl.allocator@1.0-service.rc...
[    3.141405] init: Parsing file /system/etc/init/atrace.rc...
[    3.141989] init: Parsing file /system/etc/init/audioserver.rc...
[    3.142379] init: Parsing file /system/etc/init/blank_screen.rc...
[    3.148091] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.149328] init: Parsing file /system/etc/init/bootanim.rc...
[    3.150255] init: Parsing file /system/etc/init/bootstat.rc...
[    3.150735] init: Parsing file /system/etc/init/bufferhubd.rc...
[    3.151138] init: Parsing file /system/etc/init/cameraserver.rc...
[    3.157983] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.158095] init: Parsing file /system/etc/init/cppreopts.rc...
[    3.158579] init: Parsing file /system/etc/init/drmserver.rc...
[    3.158987] init: Parsing file /system/etc/init/dumpstate.rc...
[    3.159303] init: Parsing file /system/etc/init/gatekeeperd.rc...
[    3.159604] init: Parsing file /system/etc/init/healthd.rc...
[    3.159917] init: Parsing file /system/etc/init/hwservicemanager.rc...
[    3.160305] init: Parsing file /system/etc/init/incidentd.rc...
[    3.160709] init: Parsing file /system/etc/init/installd.rc...
[    3.161334] init: Parsing file /system/etc/init/keystore.rc...
[    3.161647] init: Parsing file /system/etc/init/lmkd.rc...
[    3.161924] init: Parsing file /system/etc/init/logd.rc...
[    3.162235] init: Parsing file /system/etc/init/mdnsd.rc...
[    3.162564] init: Parsing file /system/etc/init/mediadrmserver.rc...
[    3.164093] init: Parsing file /system/etc/init/mediaextractor.rc...
[    3.164470] init: Parsing file /system/etc/init/mediametrics.rc...
[    3.165469] init: Parsing file /system/etc/init/mediaserver.rc...
[    3.167648] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.168389] init: Parsing file /system/etc/init/mtpd.rc...
[    3.170262] init: Parsing file /system/etc/init/netd.rc...
[    3.170624] init: Parsing file /system/etc/init/otapreopt.rc...
[    3.170965] init: Parsing file /system/etc/init/perfetto.rc...
[    3.171376] init: Parsing file /system/etc/init/performanced.rc...
[    3.171787] init: Parsing file /system/etc/init/racoon.rc...
[    3.172608] init: Parsing file /system/etc/init/recovery-persist.rc...
[    3.172980] init: Parsing file /system/etc/init/recovery-refresh.rc...
[    3.173310] init: Parsing file /system/etc/init/servicemanager.rc...
[    3.173660] init: Parsing file /system/etc/init/statsd.rc...
[    3.173974] init: Parsing file /system/etc/init/storaged.rc...
[    3.174299] init: Parsing file /system/etc/init/surfaceflinger.rc...
[    3.174630] init: Parsing file /system/etc/init/thermalservice.rc...
[    3.174959] init: Parsing file /system/etc/init/tombstoned.rc...
[    3.175304] init: Parsing file /system/etc/init/uncrypt.rc...
[    3.175675] init: Parsing file /system/etc/init/update_engine.rc...
[    3.176022] init: Parsing file /system/etc/init/update_verifier.rc...
[    3.176337] init: Parsing file /system/etc/init/usbd.rc...
[    3.176680] init: Parsing file /system/etc/init/vdc.rc...
[    3.176757] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.176994] init: Parsing file /system/etc/init/virtual_touchpad.rc...
[    3.177363] init: Parsing file /system/etc/init/vold.rc...
[    3.178296] init: Parsing file /system/etc/init/vr_hwc.rc...
[    3.178606] init: Parsing file /system/etc/init/wait_for_keymaster.rc...
[    3.178912] init: Parsing file /system/etc/init/wifi-events.rc...
[    3.179288] init: Parsing file /system/etc/init/wificond.rc...
[    3.179658] init: Parsing file /product/etc/init...
[    3.179683] init: Unable to read config file '/product/etc/init': open() failed: No such file or directory
[    3.179706] init: Parsing file /odm/etc/init...
[    3.179726] init: Unable to read config file '/odm/etc/init': open() failed: No such file or directory
[    3.179747] init: Parsing directory /vendor/etc/init...
[    3.179905] init: Parsing file /vendor/etc/init/android.hardware.audio@2.0-service.rc...
[    3.180677] init: Parsing file /vendor/etc/init/android.hardware.biometrics.fingerprint@2.1-service.fpc.rc...
[    3.181163] init: Parsing file /vendor/etc/init/android.hardware.bluetooth@1.0-service-qti.rc...
[    3.181781] init: Parsing file /vendor/etc/init/android.hardware.boot@1.0-service.rc...
[    3.182596] init: Parsing file /vendor/etc/init/android.hardware.camera.provider@2.4-service.rc...
[    3.183240] init: Parsing file /vendor/etc/init/android.hardware.cas@1.0-service.rc...
[    3.183818] init: Parsing file /vendor/etc/init/android.hardware.configstore@1.1-service.rc...
[    3.184273] init: Parsing file /vendor/etc/init/android.hardware.contexthub@1.0-service.rc...
[    3.184732] init: Parsing file /vendor/etc/init/android.hardware.drm@1.0-service.rc...
[    3.185291] init: Parsing file /vendor/etc/init/android.hardware.drm@1.1-service.clearkey.rc...
[    3.185746] init: Parsing file /vendor/etc/init/android.hardware.drm@1.1-service.widevine.rc...
[    3.186333] init: Parsing file /vendor/etc/init/android.hardware.dumpstate@1.0-service.wahoo.rc...
[    3.186551] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.187057] init: Parsing file /vendor/etc/init/android.hardware.gatekeeper@1.0-service-qti.rc...
[    3.187566] init: Parsing file /vendor/etc/init/android.hardware.gnss@1.0-service-qti.rc...
[    3.188008] init: Parsing file /vendor/etc/init/android.hardware.graphics.allocator@2.0-service.rc...
[    3.188506] init: Parsing file /vendor/etc/init/android.hardware.graphics.composer@2.1-service.rc...
[    3.189058] init: Parsing file /vendor/etc/init/android.hardware.health@2.0-service.wahoo.rc...
[    3.189501] init: Parsing file /vendor/etc/init/android.hardware.keymaster@3.0-service-qti.rc...
[    3.189967] init: Parsing file /vendor/etc/init/android.hardware.light@2.0-service.rc...
[    3.190651] init: Parsing file /vendor/etc/init/android.hardware.media.omx@1.0-service.rc...
[    3.191213] init: Parsing file /vendor/etc/init/android.hardware.memtrack@1.0-service.rc...
[    3.191679] init: Parsing file /vendor/etc/init/android.hardware.nfc@1.1-service.rc...
[    3.192143] init: Parsing file /vendor/etc/init/android.hardware.oemlock@1.0-service.rc...
[    3.192643] init: Parsing file /vendor/etc/init/android.hardware.power@1.2-service.wahoo-libperfmgr.rc...
[    3.193134] init: Parsing file /vendor/etc/init/android.hardware.sensors@1.0-service.rc...
[    3.193611] init: Parsing file /vendor/etc/init/android.hardware.usb@1.1-service.wahoo.rc...
[    3.194114] init: Parsing file /vendor/etc/init/android.hardware.vibrator@1.2-service.wahoo.rc...
[    3.194583] init: Parsing file /vendor/etc/init/android.hardware.vr@1.0-service.wahoo.rc...
[    3.195099] init: Parsing file /vendor/etc/init/android.hardware.wifi@1.0-service.rc...
[    3.195602] init: Parsing file /vendor/etc/init/esed.rc...
[    3.195808] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.196117] init: Parsing file /vendor/etc/init/hostapd.android.rc...
[    3.196820] init: Parsing file /vendor/etc/init/init-taimen.rc...
[    3.197380] init: Parsing file /vendor/etc/init/init.taimen.diag.rc...
[    3.197889] init: Parsing file /vendor/etc/init/init.taimen.logging.rc...
[    3.198391] init: Parsing file /vendor/etc/init/rild.rc...
[    3.198863] init: Parsing file /vendor/etc/init/vndservicemanager.rc...
[    3.199547] init: processing action (early-init) from (/init.rc:14)
[    3.204993] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.205182] init: starting service 'ueventd'...
[    3.211028] init: processing action (early-init) from (/vendor/etc/init/hw/init.taimen.rc:37)
[    3.214679] ueventd: ueventd started!
[    3.217823] init: starting service 'vendor.insmod_sh'...
[    3.219046] init: processing action (wait_for_coldboot_done) from (<Builtin Action>:0)
[    3.219307] selinux: SELinux: Loaded file_contexts\x0a
[    3.219551] ueventd: Parsing file /ueventd.rc...
[    3.219689] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.223807] ueventd: Parsing file /vendor/ueventd.rc...
[    3.224237] ueventd: Parsing file /odm/ueventd.rc...
[    3.224266] ueventd: Unable to read config file '/odm/ueventd.rc': open() failed: No such file or directory
[    3.224375] ueventd: Parsing file /ueventd.taimen.rc...
[    3.224394] ueventd: Unable to read config file '/ueventd.taimen.rc': open() failed: No such file or directory
[    3.230465] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.242169] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.253051] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.262108] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.271343] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.280022] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.281217] device-mapper: verity-fec: 8:7: FEC 1155072: corrected 8 errors
[    3.292263] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.301741] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.313570] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.322856] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.331775] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.341441] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.350348] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.359705] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.368532] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.377554] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.386450] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.395325] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.404204] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.413008] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.422056] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.430972] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.439764] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.448618] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.457555] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.466346] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.468120] FG: fg_get_battery_temp: batt temperature original:430, tuned:375
[    3.473262] FG: fg_get_battery_temp: batt temperature original:430, tuned:375
[    3.475668] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.484770] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.493669] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.502534] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.511195] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.519752] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.528348] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.537037] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.545716] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.554367] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.562948] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.571533] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.580108] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.588735] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.597354] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.603249] FG: fg_get_battery_temp: batt temperature original:430, tuned:375
[    3.606074] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.608886] FG: fg_get_battery_temp: batt temperature original:430, tuned:375
[    3.614807] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.623411] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.631997] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.640564] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.649118] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.657705] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.666292] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.674887] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.683579] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.692148] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.700722] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.709267] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.717847] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.726433] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.735007] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.743595] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.752173] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.754820] FG: fg_get_battery_temp: batt temperature original:430, tuned:375
[    3.757099] SMB138X: smb138x_parallel_get_prop: parallel power supply get prop 4 not supported
[    3.760788] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.762580] FG: fg_get_battery_temp: batt temperature original:430, tuned:375
[    3.770198] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.780550] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.789615] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.801913] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.805254] msm-dwc3 a800000.ssusb: dwc3_msm_resume: exiting lpm
[    3.808422] ueventd: firmware: loading 'drv2624.bin' for '/devices/soc/c17a000.i2c/i2c-6/6-005a/firmware/drv2624.bin'
[    3.811102] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.821434] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.829747] ueventd: loading /devices/soc/c17a000.i2c/i2c-6/6-005a/firmware/drv2624.bin took 21ms
[    3.830335] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.832109] drv2624 6-005a: drv2624_firmware_load, firmware good
[    3.833376] msm-dwc3 a800000.ssusb: DWC3 exited from low power mode
[    3.840715] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.849896] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.857360] SMB138X: smb138x_parallel_get_prop: parallel power supply get prop 4 not supported
[    3.863652] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.872978] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.882481] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.891532] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.902514] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.911287] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.919866] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.928498] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.937132] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.945729] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.954345] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.962984] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.971693] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.980305] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.988880] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    3.997803] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.006448] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.015056] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.023648] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.032345] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.040943] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.049510] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.060738] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.061776] ueventd: firmware: loading 'tas2557s_PG21_uCDSP.bin' for '/devices/soc/c1b5000.i2c/i2c-7/7-004d/firmware/tas2557s_PG21_uCDSP.bin'
[    4.067026] ueventd: loading /devices/soc/c1b5000.i2c/i2c-7/7-004d/firmware/tas2557s_PG21_uCDSP.bin took 5ms
[    4.067643] tas2557s 7-004d: tas2557_fw_ready:
[    4.071371] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.075996] ueventd: firmware: loading 'tas2557_cal.bin' for '/devices/soc/c1b5000.i2c/i2c-7/7-004d/firmware/tas2557_cal.bin'
[    4.080563] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.091251] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.102698] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.112077] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.122015] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.131055] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.140239] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.149620] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.159526] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.168366] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.177766] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.186872] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.196002] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.204895] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.213823] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.222752] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.231571] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.240480] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.249343] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.258810] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.267810] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.276643] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.285517] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.294490] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.303399] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.312251] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.321071] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.330123] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.353035] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.368299] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.377812] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.386525] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.395515] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.417491] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.426354] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.435362] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.444244] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.453075] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.470338] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.479189] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.488314] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.497230] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.515515] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.524490] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.533473] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.543513] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.554472] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.566321] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.577354] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.586732] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.595850] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.607675] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.613916] IPC_RTR: msm_ipc_router_smd_driver_register Already driver registered IPCRTR
[    4.613929] IPC_RTR: msm_ipc_router_smd_driver_register Already driver registered IPCRTR
[    4.616856] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.625915] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.625920] ueventd: Coldboot took 1.395 seconds
[    4.629489] init: wait for '/dev/.coldboot_done' took 1410ms
[    4.629608] init: Command 'wait_for_coldboot_done' action=wait_for_coldboot_done (<Builtin Action>:0) took 1410ms and succeeded
[    4.631156] init: processing action (MixHwrngIntoLinuxRng) from (<Builtin Action>:0)
[    4.632470] init: Mixed 512 bytes from /dev/hw_random into /dev/urandom
[    4.632519] init: processing action (SetMmapRndBits) from (<Builtin Action>:0)
[    4.634106] init: Service 'vendor.insmod_sh' (pid 581) exited with status 0
[    4.634261] init: processing action (SetKptrRestrict) from (<Builtin Action>:0)
[    4.634661] init: processing action (keychord_init) from (<Builtin Action>:0)
[    4.634899] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.635025] keychord: using input dev qpnp_pon for fevent
[    4.635035] keychord: using input dev gpio-keys for fevent
[    4.635241] init: processing action (console_init) from (<Builtin Action>:0)
[    4.635334] init: processing action (init) from (/init.rc:41)
[    4.635992] init: Command 'copy /default.prop /dev/urandom' action=init (/init.rc:46) took 0ms and failed: Could not read input file '/default.prop': open() failed: Too many symbolic links encountered
[    4.643964] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.653349] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.662424] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.672038] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.681171] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.682110] init: Command 'mount cgroup2 cg2_bpf /dev/cg2_bpf nodev noexec nosuid' action=init (/init.rc:225) took 0ms and failed: mount() failed: No such device
[    4.689609] Registered swp emulation handler
[    4.690202] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.692790] init: processing action (init) from (/init.environ.rc:2)
[    4.692855] init: processing action (init) from (/vendor/etc/init/hw/init.taimen.rc:43)
[    4.694038] init: Command 'write /sys/devices/soc/${ro.boot.bootdevice}/clkscale_enable 0' action=init (/vendor/etc/init/hw/init.taimen.rc:45) took 1ms and failed: Unable to write to file '/sys/devices/soc/1da4000.ufshc/clkscale_enable': open() failed: Permission denied
[    4.695156] init: wait for '/dev/block/platform/soc/1da4000.ufshc' took 0ms
[    4.699351] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.699802] init: starting service 'vendor.qseecomd'...
[    4.704284] init: Command 'symlink /sdcard /storage/sdcard0' action=init (/vendor/etc/init/hw/init.taimen.rc:59) took 2ms and failed: symlink() failed: Read-only file system
[    4.705266] msm_thermal:store_cc_enabled Core control disabled
[    4.708774] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.718370] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.727607] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.737223] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.747194] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.756682] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.757174] capability: warning: `qseecomd' uses 32-bit capabilities (legacy support in use)
[    4.763424] scm_call failed: func id 0x72000206, ret: -1, syscall returns: 0x0, 0x0, 0x0
[    4.765312] scm_call failed: func id 0x72000206, ret: -1, syscall returns: 0x0, 0x0, 0x0
[    4.765981] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.766888] init: processing action (ro.boot.revision=* && init) from (/vendor/etc/init/init-taimen.rc:31)
[    4.767082] init: processing action (StartBoringSslSelfTest) from (<Builtin Action>:0)
[    4.767750] init: processing action (MixHwrngIntoLinuxRng) from (<Builtin Action>:0)
[    4.768117] init: Mixed 512 bytes from /dev/hw_random into /dev/urandom
[    4.768153] init: processing action (late-init) from (/init.rc:278)
[    4.768185] init: processing action (late-init) from (/system/etc/init/atrace.rc:3)
[    4.773376] init: processing action (queue_property_triggers) from (<Builtin Action>:0)
[    4.773421] scm_call failed: func id 0x72000206, ret: -1, syscall returns: 0x0, 0x0, 0x0
[    4.773429] init: processing action (fs) from (/vendor/etc/init/hw/init.taimen.rc:162)
[    4.774374] init: starting service 'hwservicemanager'...
[    4.775436] scm_call failed: func id 0x72000206, ret: -1, syscall returns: 0x0, 0x0, 0x0
[    4.775990] init: Untracked pid 611 exited with status 0
[    4.779153] scm_call failed: func id 0x72000206, ret: -1, syscall returns: 0x0, 0x0, 0x0
[    4.783361] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.784381] init: [libfs_mgr]__mount(source=/dev/block/platform/soc/1da4000.ufshc/by-name/modem_a,target=/firmware,type=vfat)=0: Success
[    4.785642] init: Parsing file /product/etc/init...
[    4.785679] init: Unable to read config file '/product/etc/init': open() failed: No such file or directory
[    4.785702] init: Parsing file /odm/etc/init...
[    4.785722] init: Unable to read config file '/odm/etc/init': open() failed: No such file or directory
[    4.794949] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.803092] init: processing action (fs) from (/system/etc/init/logd.rc:18)
[    4.803583] init: processing action (fs) from (/system/etc/init/wifi-events.rc:17)
[    4.803645] init: processing action (post-fs) from (/init.rc:311)
[    4.804862] init: Couldn't load property file '/odm/build.prop': open() failed: No such file or directory: No such file or directory
[    4.806773] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.807843] init: Couldn't load property file '/factory/factory.prop': open() failed: No such file or directory: No such file or directory
[    4.809899] init: /recovery not specified in fstab
[    4.810283] init: starting service 'logd'...
[    4.811705] init: starting service 'servicemanager'...
[    4.813228] init: Created socket '/dev/socket/logd', mode 666, user 1036, group 1036
[    4.813943] init: starting service 'vndservicemanager'...
[    4.814188] init: Created socket '/dev/socket/logdr', mode 666, user 1036, group 1036
[    4.817783] init: Created socket '/dev/socket/logdw', mode 222, user 1036, group 1036
[    4.818360] init: Command 'chown system cache /cache' action=post-fs (/init.rc:338) took 0ms and failed: lchown() failed: Read-only file system
[    4.818373] init: Opened file '/proc/kmsg', flags 0
[    4.818459] init: Command 'chmod 0770 /cache' action=post-fs (/init.rc:339) took 0ms and failed: fchmodat() failed: Read-only file system
[    4.818482] init: Opened file '/dev/kmsg', flags 1
[    4.819147] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.821561] selinux: SELinux:  Could not stat /metadata: No such file or directory.\x0a
[    4.823457] init: processing action (post-fs) from (/vendor/etc/init/hw/init.taimen.rc:221)
[    4.825712] init: start_waiting_for_property("sys.listeners.registered", "true"): already set
[    4.825758] init: processing action (post-fs) from (/system/etc/init/recovery-refresh.rc:1)
[    4.826597] init: starting service 'exec 1 (/system/bin/recovery-refresh)'...
[    4.829108] init: processing action (late-fs) from (/init.rc:376)
[    4.831667] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.835275] init: starting service 'vendor.boot-hal-1-0'...
[    4.837778] init: starting service 'vendor.gatekeeper-1-0'...
[    4.840421] init: starting service 'vendor.keymaster-3-0'...
[    4.841474] init: processing action (late-fs) from (/vendor/etc/init/hw/init.taimen.rc:198)
[    4.842226] init: starting service 'vendor.devstart_sh'...
[    4.843825] init: starting service 'surfaceflinger'...
[    4.844540] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.846335] init: starting service 'bootanim'...
[    4.850276] init: starting service 'vendor.hwcomposer-2-1'...
[    4.852674] init: Created socket '/dev/socket/pdx/system/vr/display/client', mode 666, user 1000, group 1003
[    4.854113] init: starting service 'vendor.configstore-hal'...
[    4.854574] init: Created socket '/dev/socket/pdx/system/vr/display/manager', mode 666, user 1000, group 1003
[    4.859957] init: Service 'exec 1 (/system/bin/recovery-refresh)' (pid 620) exited with status 254
[    4.861128] init: starting service 'vendor.gralloc-2-0'...
[    4.864629] init: Created socket '/dev/socket/pdx/system/vr/display/vsync', mode 666, user 1000, group 1003
[    4.865125] logd.auditd: start
[    4.872262] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.889298] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.894382] adsp-loader soc:qcom,msm-adsp-loader: adsp_loader_do: scheduling work to load ADSP fw
[    4.897792] init: Wait for property took 32ms
[    4.901709] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.905418] init: [libfs_mgr]superblock s_max_mnt_count:65535,/dev/block/platform/soc/1da4000.ufshc/by-name/userdata
[    4.913044] subsys-pil-tz 17300000.qcom,lpass: adsp: loading from 0x0000000000000000 to 0x0000000000000000
[    4.913678] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.914875] EXT4-fs (sda13): Ignoring removed nomblk_io_submit option
[    4.917094] sensors-ssc soc:qcom,msm-ssc-sensors: slpi_loader_do: scheduling work to load SLPI fw
[    4.928653] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.929699] subsys-restart: __subsystem_get(): Changing subsys fw_name to slpi_v2
[    4.941099] subsys-pil-tz 5c00000.qcom,ssc: slpi: loading from 0x0000000000000000 to 0x0000000000000000
[    4.950746] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.955730] EXT4-fs (sda13): mounted filesystem with ordered data mode. Opts: errors=remount-ro,nomblk_io_submit
[    4.959582] init: [libfs_mgr]check_fs(): mount(/dev/block/platform/soc/1da4000.ufshc/by-name/userdata,/data,ext4)=0: Success
[    4.967567] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.981284] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    4.993645] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    5.003098] init: [libfs_mgr]check_fs(): unmount(/data) succeeded
[    5.003277] init: [libfs_mgr]Running /system/bin/e2fsck on /dev/block/platform/soc/1da4000.ufshc/by-name/userdata
[    5.005716] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    5.016133] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    5.026116] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    5.035230] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    5.044359] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    5.057558] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    5.068834] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    5.078143] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    5.094163] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    5.097461] mdss_fb_blank_sub: mdss_fb_open+0xb0/0x1b0 mode:0
[    5.105254] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    5.107196] e2fsck: e2fsck 1.43.3 (04-Sep-2016)\x0a
[    5.107233] e2fsck: /dev/block/platform/soc/1da4000.ufshc/by-name/userdata: clean, 127296/7380992 files, 14896284/29518843 blocks\x0a
[    5.114295] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    5.115020] init: [libfs_mgr]superblock s_max_mnt_count:65535,/dev/block/platform/soc/1da4000.ufshc/by-name/userdata
[    5.123709] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    5.132710] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    5.141819] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    5.150965] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    5.159910] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    5.165082] EXT4-fs (sda13): mounted filesystem with ordered data mode. Opts: errors=panic,barrier=1,noauto_da_alloc
[    5.165493] init: [libfs_mgr]__mount(source=/dev/block/platform/soc/1da4000.ufshc/by-name/userdata,target=/data,type=ext4)=0: Success
[    5.165733] init: [libfs_mgr]/data is file encrypted
[    5.168238] init: Keyring created with id 896236821 in process 1
[    5.168576] init: Command 'mount_all /vendor/etc/fstab.${ro.hardware} --late' action=late-fs (/vendor/etc/init/hw/init.taimen.rc:213) took 270ms and succeeded
[    5.169095] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    5.176176] init: starting service 'vendor.time_daemon'...
[    5.177590] init: processing action (late-fs) from (/vendor/etc/init/init-taimen.rc:1)
[    5.178372] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    5.185998] init: processing action (post-fs-data) from (/init.rc:384)
[    5.188805] init: starting service 'vold'...
[    5.190753] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    5.195066] init: starting service 'exec 2 (/system/bin/vdc --wait cryptfs enablefilecrypto)'...
[    5.196220] init: SVC_EXEC pid 656 (uid 0 gid 0+0 context default) started; waiting...
[    5.199862] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    5.218956] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    5.235240] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    5.248558] init: Service 'vendor.devstart_sh' (pid 624) exited with status 0
[    5.249263] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    5.259946] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    5.268964] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    5.277916] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    5.286975] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    5.295972] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    5.305294] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    5.314506] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    5.322135] subsys-pil-tz 5c00000.qcom,ssc: slpi: Brought out of reset
[    5.323594] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    5.324589] vdc: Waited 70ms for vold
[    5.337326] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    5.351708] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    5.362585] subsys-pil-tz 5c00000.qcom,ssc: Subsystem error monitoring/handling services are up
[    5.364279] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    5.364660] subsys-pil-tz 5c00000.qcom,ssc: slpi: Power/Clock ready interrupt received
[    5.370140] sensors-ssc soc:qcom,msm-ssc-sensors: slpi_load_fw: SLPI image is loaded
[    5.382565] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    5.382830] IPC_RTR: ipc_router_create_log_ctx: Unable to create IPC logging for [dsps_IPCRTR]
[    5.409957] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    5.425560] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    5.437734] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    5.446890] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    5.459933] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    5.472260] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    5.482600] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    5.491542] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    5.492622] subsys-pil-tz 17300000.qcom,lpass: adsp: Brought out of reset
[    5.500134] subsys-pil-tz soc:qcom,kgsl-hyp: a540_zap: loading from 0x0000000000000000 to 0x0000000000000000
[    5.500811] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    5.502338] apr_tal_link_state_cb: edge[lpass] link state[0]
[    5.505913] subsys-pil-tz 17300000.qcom,lpass: Subsystem error monitoring/handling services are up
[    5.507550] subsys-pil-tz 17300000.qcom,lpass: adsp: Power/Clock ready interrupt received
[    5.509976] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: platform (null) not registered
[    5.516240] subsys-pil-tz soc:qcom,kgsl-hyp: a540_zap: Brought out of reset
[    5.520586] IPC_RTR: ipc_router_create_log_ctx: Unable to create IPC logging for [lpass_IPCRTR]
[    5.532185] devfreq soc:qcom,kgsl-busmon: Couldn't update frequency transition information.
[    5.532409] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: CODEC DAI tavil_vifeedback not registered
[    5.541371] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: CODEC DAI tavil_vifeedback not registered
[    5.549351] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: CODEC DAI tavil_vifeedback not registered
[    5.553617] init: Service 'exec 2 (/system/bin/vdc --wait cryptfs enablefilecrypto)' (pid 656) exited with status 0 waiting took 0.357000 seconds
[    5.557775] init: Setting policy on /data/bootchart
[    5.570265] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: CODEC DAI tavil_vifeedback not registered
[    5.582173] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: CODEC DAI tavil_vifeedback not registered
[    5.593500] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: CODEC DAI tavil_vifeedback not registered
[    5.604528] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: CODEC DAI tavil_vifeedback not registered
[    5.606023] init: Policy for /data/bootchart set to 21ca43de98cea7bf modes 127/126
[    5.606053] init: Command 'mkdir /data/bootchart 0755 shell shell' action=post-fs-data (/init.rc:397) took 52ms and succeeded
[    5.607252] init: Received control message 'interface_start' for 'android.hardware.graphics.composer@2.1::IComposer/default' from pid: 613 (/system/bin/hwservicemanager)
[    5.607273] init: Could not find service hosting interface android.hardware.graphics.composer@2.1::IComposer/default
[    5.607588] init: Received control message 'interface_start' for 'android.hardware.graphics.composer@2.1::IComposer/default' from pid: 613 (/system/bin/hwservicemanager)
[    5.607603] init: Could not find service hosting interface android.hardware.graphics.composer@2.1::IComposer/default
[    5.611238] sysmon-qmi: sysmon_clnt_svc_arrive: Connection established between QMI handle and slpi's SSCTL service
[    5.615405] diag: In diag_send_feature_mask_update, control channel is not open, p: 3, 0000000000000000
[    5.616835] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: CODEC DAI tavil_vifeedback not registered
[    5.620906] possible reason: unannotated irqs-off.
[    5.620935] ------------[ cut here ]------------
[    5.620942] WARNING: at ../drivers/regulator/core.c:2221
[    5.620947] 
[    5.620955] CPU: 0 PID: 6 Comm: kworker/u16:0 Tainted: G        W       4.4.169-Sultan #15
[    5.620960] Hardware name: Qualcomm Technologies, Inc. MSM8998 v2.1 (DT)
[    5.620976] Workqueue: kgsl-workqueue kgsl_idle_check
[    5.620985] task: 0000000000000000 task.stack: 0000000000000000
[    5.620996] PC is at _regulator_disable+0x74/0x190
[    5.621003] LR is at _regulator_disable+0x60/0x190
[    5.621008] pc : [<ffffff9f2ece6264>] lr : [<ffffff9f2ece6250>] pstate: 60400145
[    5.621013] sp : ffffffe155bdba30
[    5.621018] x29: ffffffe155bdba30 x28: 0000000000000000 
[    5.621029] x27: 0000000000000000 x26: ffffff9f30c04000 
[    5.621041] x25: 0000000000000000 x24: ffffffe155b7a000 
[    5.621051] x23: ffffff9f30a948c0 x22: ffffffe1b1bda0e8 
[    5.621063] x21: ffffffe1b1bda000 x20: ffffffe1b1055e18 
[    5.621074] x19: ffffffe1b1bda000 x18: 0000000000000001 
[    5.621085] x17: 00000000fa83b2da x16: 000000000000000c 
[    5.621096] x15: 000000000009c3ff x14: 0000000000000006 
[    5.621107] x13: 0000000000005603 x12: 00000000000055fe 
[    5.621118] x11: ffffff9f30c0cb00 x10: ffffffe1b105a958 
[    5.621129] x9 : ffffff9f30c0c000 x8 : ffffff9f313598e8 
[    5.621140] x7 : 0000000000000038 x6 : 0000000000000003 
[    5.621151] x5 : 0000000000000040 x4 : 00000042828e1000 
[    5.621161] x3 : 0000000000000004 x2 : 0000000000000005 
[    5.621172] x1 : 0000000000000000 x0 : ffffff9f30c04892 
[    5.621184] \x0aPC: 0xffffff9f2ece6224:
[    5.621190] 6224  b9402821 37200581 51000400 52800014 b9000e60 2a1403e0 a94153f3 a8c37bfd
[    5.621226] 6244  d65f03c0 91056260 97f06911 35fffde0 d000f8e0 91224800 39400c01 35fffd61
[    5.621261] 6264  d4210000 52800021 39000c01 17ffffe7 52800014 b4fffe01 3941c020 3707fdc0
[    5.621296] 6284  b9402820 36180240 f90013f5 91010275 d2800002 d2808001 aa1503e0 97ef9a9c
[    5.621332] \x0aLR: 0xffffff9f2ece6210:
[    5.621337] 6210  f9431e61 34000700 7100041f 540002c0 b4000061 b9402821 37200581 51000400
[    5.621373] 6230  52800014 b9000e60 2a1403e0 a94153f3 a8c37bfd d65f03c0 91056260 97f06911
[    5.621407] 6250  35fffde0 d000f8e0 91224800 39400c01 35fffd61 d4210000 52800021 39000c01
[    5.621442] 6270  17ffffe7 52800014 b4fffe01 3941c020 3707fdc0 b9402820 36180240 f90013f5
[    5.621477] \x0aSP: 0xffffffe155bdb9f0:
[    5.621483] b9f0  2ece6250 ffffff9f 55bdba30 ffffffe1 2ece6264 ffffff9f 60400145 00000000
[    5.621517] ba10  b1bda000 ffffffe1 b1055e18 ffffffe1 ffffffff ffffffff 2e8ffc98 ffffff9f
[    5.621551] ba30  55bdba60 ffffffe1 2ece63cc ffffff9f b1066080 ffffffe1 b1055e18 ffffffe1
[    5.621585] ba50  30a05d90 ffffff9f 7a81e143 403a4a6d 55bdba90 ffffffe1 2ecf8bf8 ffffff9f
[    5.621620] 
[    5.621626] ---[ end trace 24ec051baadc3c86 ]---
[    5.621632] Call trace:
[    5.621638] Exception stack(0xffffffe155bdb840 to 0xffffffe155bdb970)
[    5.621646] b840: ffffffe1b1bda000 0000008000000000 00000000834df000 ffffff9f2ece6264
[    5.621654] b860: 0000000060400145 ffffff9f30c0cb00 00000000000055fe 0000000000005603
[    5.621661] b880: 0000000000000006 000000000009c3ff 000000000000000c 00000000fa83b2da
[    5.621669] b8a0: 0000000000000001 ffffffe1b1bda158 0000000000000000 0000000000000000
[    5.621676] b8c0: 0000000000000000 0000000000000001 0000000000000000 ffffff9f2ece63c4
[    5.621684] b8e0: ffffffe155bdb930 ffffff9f2e8ff8c4 0000000000000005 403a4a6d7a81e143
[    5.621691] b900: ffffff9f30c04892 0000000000000000 0000000000000005 0000000000000004
[    5.621699] b920: 00000042828e1000 0000000000000040 0000000000000003 0000000000000038
[    5.621706] b940: ffffff9f313598e8 ffffff9f30c0c000 ffffffe1b105a958 ffffff9f30c0cb00
[    5.621713] b960: 00000000000055fe 0000000000005603
[    5.621721] [<ffffff9f2ece6264>] _regulator_disable+0x74/0x190
[    5.621727] [<ffffff9f2ece63cc>] regulator_disable+0x4c/0xb0
[    5.621735] [<ffffff9f2ecf8bf8>] cpr3_regulator_disable+0x70/0x228
[    5.621742] [<ffffff9f2ece53dc>] _regulator_do_disable+0x8c/0xb8
[    5.621749] [<ffffff9f2ece62b4>] _regulator_disable+0xc4/0x190
[    5.621756] [<ffffff9f2ece63cc>] regulator_disable+0x4c/0xb0
[    5.621763] [<ffffff9f2ece63f4>] regulator_disable+0x74/0xb0
[    5.621771] [<ffffff9f2ed83fbc>] adreno_regulator_disable_poll+0x3c/0x128
[    5.621778] [<ffffff9f2ed5dacc>] kgsl_pwrctrl_pwrrail+0xc4/0x180
[    5.621785] [<ffffff9f2ed5e63c>] kgsl_pwrctrl_disable+0x54/0x70
[    5.621792] [<ffffff9f2ed5f09c>] _slumber+0x11c/0x200
[    5.621798] [<ffffff9f2ed5fc74>] kgsl_pwrctrl_change_state+0x20c/0x3b8
[    5.621805] [<ffffff9f2ed5febc>] kgsl_idle_check+0x9c/0xd8
[    5.621814] [<ffffff9f2e8c3e38>] process_one_work+0x250/0x458
[    5.621821] [<ffffff9f2e8c4174>] worker_thread+0x134/0x4e0
[    5.621828] [<ffffff9f2e8cb218>] kthread+0x100/0x108
[    5.621836] [<ffffff9f2e883260>] ret_from_fork+0x10/0x30
[    5.627305] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: CODEC DAI tavil_vifeedback not registered
[    5.641267] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: CODEC DAI tavil_vifeedback not registered
[    5.655542] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: CODEC DAI tavil_vifeedback not registered
[    5.657532] init: Setting policy on /data/misc
[    5.657961] init: Found policy 21ca43de98cea7bf at /data/misc which matches expected value
[    5.666538] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: CODEC DAI tavil_vifeedback not registered
[    5.671571] sysmon-qmi: sysmon_clnt_svc_arrive: Connection established between QMI handle and adsp's SSCTL service
[    5.677708] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: CODEC DAI tavil_vifeedback not registered
[    5.683958] diag: In diag_send_feature_mask_update, control channel is not open, p: 1, 0000000000000000
[    5.688638] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: CODEC DAI tavil_vifeedback not registered
[    5.699557] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: CODEC DAI tavil_vifeedback not registered
[    5.710745] sps_register_bam_device : unable to create IPC Logging 0 for bam 0x0000000000000000
[    5.710760] sps_register_bam_device : unable to create IPC Logging 1 for bam 0x0000000000000000
[    5.710769] sps_register_bam_device : unable to create IPC Logging 2 for bam 0x0000000000000000
[    5.710775] sps_register_bam_device : unable to create IPC Logging 3 for bam 0x0000000000000000
[    5.710782] sps_register_bam_device : unable to create IPC Logging 4 for bam 0x0000000000000000
[    5.710810] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: CODEC DAI tavil_vifeedback not registered
[    5.711170] sps:BAM 0x0000000000000000 (va:0x0000000000000000) enabled: ver:0x19, number of pipes:19
[    5.711179] sps:BAM 0x0000000000000000 is registered.
[    5.715421] init: Setting policy on /data/local
[    5.715849] sps_register_bam_device : unable to create IPC Logging 0 for bam 0x0000000000000000
[    5.715860] sps_register_bam_device : unable to create IPC Logging 1 for bam 0x0000000000000000
[    5.715869] sps_register_bam_device : unable to create IPC Logging 2 for bam 0x0000000000000000
[    5.715874] sps_register_bam_device : unable to create IPC Logging 3 for bam 0x0000000000000000
[    5.715881] sps_register_bam_device : unable to create IPC Logging 4 for bam 0x0000000000000000
[    5.716018] sps:BAM 0x0000000000000000 (va:0x0000000000000000) enabled: ver:0x19, number of pipes:31
[    5.716028] sps:BAM 0x0000000000000000 is registered.
[    5.716368] init: Found policy 21ca43de98cea7bf at /data/local which matches expected value
[    5.721908] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: CODEC DAI tavil_vifeedback not registered
[    5.732961] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: CODEC DAI tavil_vifeedback not registered
[    5.736909] slimbus sb-1: of_slim: invalid E-addr
[    5.743971] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: CODEC DAI tavil_vifeedback not registered
[    5.744088] init: Setting policy on /data/vendor
[    5.744597] init: Found policy 21ca43de98cea7bf at /data/vendor which matches expected value
[    5.744979] init: Not setting policy on /data/vendor_ce
[    5.746239] init: Not setting policy on /data/vendor_de
[    5.749326] wcd-slim tasha-slim-pgd: Platform data from device tree
[    5.749507] wcd-slim tasha-slim-pgd: msm_cdc_dt_parse_vreg_info: cdc-vdd-buck: vol=[1800000 1800000]uV, curr=[650000]uA, ond 0
[    5.749534] wcd-slim tasha-slim-pgd: msm_cdc_dt_parse_vreg_info: cdc-buck-sido: vol=[1800000 1800000]uV, curr=[250000]uA, ond 0
[    5.749559] wcd-slim tasha-slim-pgd: msm_cdc_dt_parse_vreg_info: cdc-vdd-tx-h: vol=[1800000 1800000]uV, curr=[25000]uA, ond 0
[    5.749584] wcd-slim tasha-slim-pgd: msm_cdc_dt_parse_vreg_info: cdc-vdd-rx-h: vol=[1800000 1800000]uV, curr=[25000]uA, ond 0
[    5.749676] wcd-slim tasha-slim-pgd: msm_cdc_dt_parse_vreg_info: cdc-vddpx-1: vol=[1800000 1800000]uV, curr=[10000]uA, ond 0
[    5.750672] wcd-slim tasha-slim-pgd: wcd9xxx_slim_probe: probing for wcd type: 2, name: tasha-slim-pgd
[    5.751252] init: Not setting policy on /data/data
[    5.751830] init: Setting policy on /data/app-private
[    5.753874] init: Policy for /data/app-private set to 21ca43de98cea7bf modes 127/126
[    5.754921] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: CODEC DAI tavil_vifeedback not registered
[    5.756321] init: Setting policy on /data/app-ephemeral
[    5.757018] init: Policy for /data/app-ephemeral set to 21ca43de98cea7bf modes 127/126
[    5.758051] init: Setting policy on /data/app-asec
[    5.759393] init: Policy for /data/app-asec set to 21ca43de98cea7bf modes 127/126
[    5.760747] init: Setting policy on /data/app-lib
[    5.762426] init: Policy for /data/app-lib set to 21ca43de98cea7bf modes 127/126
[    5.764365] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: CODEC DAI tavil_vifeedback not registered
[    5.764371] init: Setting policy on /data/app
[    5.765912] init: Found policy 21ca43de98cea7bf at /data/app which matches expected value
[    5.766756] init: Setting policy on /data/property
[    5.767737] init: Found policy 21ca43de98cea7bf at /data/property which matches expected value
[    5.768600] init: Setting policy on /data/tombstones
[    5.769311] init: Found policy 21ca43de98cea7bf at /data/tombstones which matches expected value
[    5.772883] init: Setting policy on /data/dalvik-cache
[    5.773543] init: Found policy 21ca43de98cea7bf at /data/dalvik-cache which matches expected value
[    5.774382] init: Setting policy on /data/ota
[    5.775112] init: Policy for /data/ota set to 21ca43de98cea7bf modes 127/126
[    5.775249] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: CODEC DAI tavil_vifeedback not registered
[    5.775660] init: Setting policy on /data/ota_package
[    5.776303] init: Policy for /data/ota_package set to 21ca43de98cea7bf modes 127/126
[    5.776828] init: Setting policy on /data/resource-cache
[    5.777544] init: Found policy 21ca43de98cea7bf at /data/resource-cache which matches expected value
[    5.778088] init: Not setting policy on /data/lost+found
[    5.778917] init: Setting policy on /data/drm
[    5.779625] init: Found policy 21ca43de98cea7bf at /data/drm which matches expected value
[    5.780160] init: Setting policy on /data/mediadrm
[    5.783915] init: Policy for /data/mediadrm set to 21ca43de98cea7bf modes 127/126
[    5.784498] init: Setting policy on /data/anr
[    5.784580] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: CODEC DAI tavil_vifeedback not registered
[    5.785601] init: Found policy 21ca43de98cea7bf at /data/anr which matches expected value
[    5.787418] init: Setting policy on /data/nfc
[    5.788151] init: Found policy 21ca43de98cea7bf at /data/nfc which matches expected value
[    5.790418] init: Setting policy on /data/backup
[    5.791194] init: Found policy 21ca43de98cea7bf at /data/backup which matches expected value
[    5.791717] init: Setting policy on /data/ss
[    5.792363] init: Policy for /data/ss set to 21ca43de98cea7bf modes 127/126
[    5.792811] init: Setting policy on /data/system
[    5.793235] init: Found policy 21ca43de98cea7bf at /data/system which matches expected value
[    5.794306] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: CODEC DAI tavil_vifeedback not registered
[    5.796657] init: Not setting policy on /data/system_de
[    5.798344] init: Not setting policy on /data/system_ce
[    5.799058] init: Not setting policy on /data/misc_de
[    5.800809] init: Not setting policy on /data/misc_ce
[    5.801214] init: Not setting policy on /data/user
[    5.802924] init: Not setting policy on /data/user_de
[    5.804007] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: CODEC DAI tavil_vifeedback not registered
[    5.805224] init: Not setting policy on /data/media
[    5.805984] init: Setting policy on /data/media/obb
[    5.806625] init: Found policy 21ca43de98cea7bf at /data/media/obb which matches expected value
[    5.807160] init: Setting policy on /data/cache
[    5.807781] init: Found policy 21ca43de98cea7bf at /data/cache which matches expected value
[    5.810148] init: starting service 'exec 3 (/system/bin/vdc --wait cryptfs init_user0)'...
[    5.811362] init: SVC_EXEC pid 705 (uid 0 gid 0+0 context default) started; waiting...
[    5.814251] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: CODEC DAI tavil_vifeedback not registered
[    5.819044] mdss_fb_blank_sub: mdss_fb_blank+0x78/0x178 mode:0
[    5.819284] init: Received control message 'start' for 'bootanim' from pid: 625 (/system/bin/surfaceflinger)
[    5.823304] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: CODEC DAI tavil_vifeedback not registered
[    5.831662] fts_touch 5-0049: fts_resume power state : 0
[    5.831677] fts_touch 5-0049: fts_resume: calling resume from active state, skipping
[    5.833697] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: CODEC DAI tavil_vifeedback not registered
[    5.835955] vdc: Waited 0ms for vold
[    5.836191] lge_battery: bm_vote_fcc_update: vote id[1], set cur[1000000]
[    5.842516] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: CODEC DAI tavil_vifeedback not registered
[    5.850359] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: CODEC DAI tavil_vifeedback not registered
[    5.858220] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: CODEC DAI tavil_vifeedback not registered
[    5.866037] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: CODEC DAI tavil_vifeedback not registered
[    5.873874] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: CODEC DAI tavil_vifeedback not registered
[    5.882522] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: CODEC DAI tavil_vifeedback not registered
[    5.889313] init: Service 'exec 3 (/system/bin/vdc --wait cryptfs init_user0)' (pid 705) exited with status 0 waiting took 0.078000 seconds
[    5.890243] selinux: SELinux: Skipping restorecon_recursive(/data)\x0a
[    5.890385] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: CODEC DAI tavil_vifeedback not registered
[    5.890774] init: starting service 'exec 4 (/system/bin/tzdatacheck /system/usr/share/zoneinfo /data/misc/zoneinfo)'...
[    5.893020] init: SVC_EXEC pid 713 (uid 1000 gid 1000+0 context default) started; waiting...
[    5.898381] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: CODEC DAI tavil_vifeedback not registered
[    5.906309] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: CODEC DAI tavil_vifeedback not registered
[    5.914030] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: CODEC DAI tavil_vifeedback not registered
[    5.915792] init: Service 'exec 4 (/system/bin/tzdatacheck /system/usr/share/zoneinfo /data/misc/zoneinfo)' (pid 713) exited with status 0 waiting took 0.024000 seconds
[    5.916067] init: processing action (post-fs-data) from (/init.usb.rc:6)
[    5.920263] wcd-slim tasha-slim-pgd: wcd9xxx_slim_probe: failed to get slimbus tasha-slim-pgd logical address: -6
[    5.920592] init: Setting policy on /data/adb
[    5.921799] init: Found policy 21ca43de98cea7bf at /data/adb which matches expected value
[    5.921815] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: CODEC DAI tavil_vifeedback not registered
[    5.921837] init: processing action (post-fs-data) from (/vendor/etc/init/hw/init.taimen.rc:250)
[    5.922718] init: starting service 'netd'...
[    5.924915] wcd-slim tavil-slim-pgd: Platform data from device tree
[    5.924948] wcd-slim tavil-slim-pgd: msm_cdc_dt_parse_vreg_info: cdc-vdd-buck: vol=[1800000 1800000]uV, curr=[650000]uA, ond 0
[    5.925055] wcd-slim tavil-slim-pgd: msm_cdc_dt_parse_vreg_info: cdc-buck-sido: vol=[1800000 1800000]uV, curr=[250000]uA, ond 0
[    5.925072] wcd-slim tavil-slim-pgd: msm_cdc_dt_parse_vreg_info: cdc-vdd-tx-h: vol=[1800000 1800000]uV, curr=[25000]uA, ond 0
[    5.925085] wcd-slim tavil-slim-pgd: msm_cdc_dt_parse_vreg_info: cdc-vdd-rx-h: vol=[1800000 1800000]uV, curr=[25000]uA, ond 0
[    5.925098] wcd-slim tavil-slim-pgd: msm_cdc_dt_parse_vreg_info: cdc-vddpx-1: vol=[1800000 1800000]uV, curr=[10000]uA, ond 0
[    5.925199] wcd-slim tavil-slim-pgd: wcd9xxx_slim_probe: probing for wcd type: 4, name: tavil-slim-pgd
[    5.927060] init: start_waiting_for_property("sys.time.set", "true"): already set
[    5.927095] init: processing action (post-fs-data) from (/system/etc/init/bootstat.rc:7)
[    5.927774] init: Created socket '/dev/socket/netd', mode 660, user 0, group 1000
[    5.928893] init: Created socket '/dev/socket/dnsproxyd', mode 660, user 0, group 3003
[    5.929875] init: Created socket '/dev/socket/mdns', mode 660, user 0, group 1000
[    5.930950] init: Created socket '/dev/socket/fwmarkd', mode 660, user 0, group 3003
[    5.931226] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: CODEC DAI tavil_vifeedback not registered
[    5.932753] init: processing action (post-fs-data) from (/system/etc/init/incidentd.rc:21)
[    5.934291] init: processing action (post-fs-data) from (/system/etc/init/otapreopt.rc:3)
[    5.934749] init: starting service 'exec 5 (/system/bin/otapreopt_slot)'...
[    5.936446] init: SVC_EXEC pid 715 (uid 0 gid 0+0 context default) started; waiting...
[    5.939243] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: CODEC DAI tavil_vifeedback not registered
[    5.947026] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: CODEC DAI tavil_vifeedback not registered
[    5.954733] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: CODEC DAI tavil_vifeedback not registered
[    5.962520] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: CODEC DAI tavil_vifeedback not registered
[    5.970321] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: CODEC DAI tavil_vifeedback not registered
[    5.978164] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: CODEC DAI tavil_vifeedback not registered
[    5.980308] slimbus:1 laddr:0xcf, EAPC:0x1:0x50
[    5.981426] wcd-slim tavil-slim-pgd: wcd9xxx_slim_device_up: slim device up, dev_up = 1
[    5.981506] slimbus:1 laddr:0xce, EAPC:0x0:0x50
[    5.986485] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: CODEC DAI tavil_vifeedback not registered
[    5.988008] wcd-slim tavil-slim-pgd: wcd934x_get_codec_info: wcd9xxx chip id major 0x108, minor 0x1
[    5.988026] wcd9xxx_core_res_init: num_irqs = 32, num_irq_regs = 4
[    5.995601] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: CODEC DAI tavil_vifeedback not registered
[    6.005230] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: CODEC DAI tavil_vifeedback not registered
[    6.013261] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: CODEC DAI tavil_vifeedback not registered
[    6.015542] init: Service 'exec 5 (/system/bin/otapreopt_slot)' (pid 715) exited with status 0 waiting took 0.079000 seconds
[    6.018149] selinux: SELinux: Skipping restorecon_recursive(/data/dalvik-cache/arm)\x0a
[    6.018427] selinux: SELinux: Skipping restorecon_recursive(/data/dalvik-cache/arm64)\x0a
[    6.018591] selinux: SELinux:  Could not stat /data/dalvik-cache/mips: No such file or directory.\x0a
[    6.018694] selinux: SELinux:  Could not stat /data/dalvik-cache/mips64: No such file or directory.\x0a
[    6.018784] selinux: SELinux:  Could not stat /data/dalvik-cache/x86: No such file or directory.\x0a
[    6.018931] selinux: SELinux:  Could not stat /data/dalvik-cache/x86_64: No such file or directory.\x0a
[    6.018996] init: processing action (post-fs-data) from (/system/etc/init/recovery-persist.rc:1)
[    6.020184] init: starting service 'exec 6 (/system/bin/recovery-persist)'...
[    6.021254] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: CODEC DAI tavil_vifeedback not registered
[    6.021285] init: processing action (post-fs-data) from (/system/etc/init/statsd.rc:25)
[    6.023126] init: processing action (post-fs-data) from (/vendor/etc/init/esed.rc:6)
[    6.025648] init: starting service 'vendor.ese_load'...
[    6.028282] init: processing action (post-fs-data) from (/vendor/etc/init/hostapd.android.rc:9)
[    6.029402] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: CODEC DAI tavil_vifeedback not registered
[    6.032932] init: processing action (post-fs-data) from (/vendor/etc/init/init.taimen.logging.rc:1)
[    6.035480] init: processing action (ro.crypto.state=encrypted && ro.crypto.type=file && zygote-start) from (/init.rc:574)
[    6.035969] init: starting service 'update_verifier_nonencrypted'...
[    6.037262] init: SVC_EXEC pid 725 (uid 0 gid 2001+1 context default) started; waiting...
[    6.037434] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: CODEC DAI tavil_vifeedback not registered
[    6.045425] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: CODEC DAI tavil_vifeedback not registered
[    6.053724] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: CODEC DAI tavil_vifeedback not registered
[    6.054858] init: Service 'exec 6 (/system/bin/recovery-persist)' (pid 723) exited with status 0
[    6.061714] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: CODEC DAI tavil_vifeedback not registered
[    6.063127] update_verifier: Started with arg 1: nonencrypted
[    6.069858] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: CODEC DAI tavil_vifeedback not registered
[    6.071419] update_verifier: Booting slot 0: isSlotMarkedSuccessful=1
[    6.071438] update_verifier: Leaving update_verifier.
[    6.073361] init: Service 'update_verifier_nonencrypted' (pid 725) exited with status 0 waiting took 0.036000 seconds
[    6.074623] init: starting service 'zygote'...
[    6.077253] init: starting service 'zygote_secondary'...
[    6.079441] init: Created socket '/dev/socket/zygote', mode 660, user 0, group 1000
[    6.083957] init: processing action (zygote-start) from (/vendor/etc/init/hw/init.taimen.rc:268)
[    6.084139] tavil_codec tavil_codec: tavil_soc_codec_probe()
[    6.087300] init: Setting policy on /data/tombstones
[    6.087479] init: Found policy 21ca43de98cea7bf at /data/tombstones which matches expected value
[    6.090439] init: Created socket '/dev/socket/zygote_secondary', mode 660, user 0, group 1000
[    6.096652] init: Not setting policy on /data/media
[    6.111656] init: Setting policy on /data/hostapd
[    6.112415] init: Policy for /data/hostapd set to 21ca43de98cea7bf modes 127/126
[    6.112885] tavil_codec tavil_codec: tavil_dsd_init: DSD unsupported for this codec version
[    6.113343] wlan: Loading driver v5.2.1.1K ()
[    6.153568] msm-pcm-routing soc:qcom,msm-pcm-routing: ASoC: no dapm match for MI2S_TX --> MI2S_TX --> MultiMedia10 Mixer
[    6.153585] msm-pcm-routing soc:qcom,msm-pcm-routing: ASoC: Failed to add route MI2S_TX -> MI2S_TX -> MultiMedia10 Mixer
[    6.153921] msm-pcm-routing soc:qcom,msm-pcm-routing: ASoC: no dapm match for AUX_PCM_TX --> AUX_PCM_TX --> MultiMedia10 Mixer
[    6.153930] msm-pcm-routing soc:qcom,msm-pcm-routing: ASoC: Failed to add route AUX_PCM_TX -> AUX_PCM_TX -> MultiMedia10 Mixer
[    6.154029] msm-pcm-routing soc:qcom,msm-pcm-routing: ASoC: no dapm match for SEC_AUX_PCM_TX --> SEC_AUX_PCM_TX --> MultiMedia10 Mixer
[    6.154036] msm-pcm-routing soc:qcom,msm-pcm-routing: ASoC: Failed to add route SEC_AUX_PCM_TX -> SEC_AUX_PCM_TX -> MultiMedia10 Mixer
[    6.154136] msm-pcm-routing soc:qcom,msm-pcm-routing: ASoC: no dapm match for TERT_AUX_PCM_TX --> TERT_AUX_PCM_TX --> MultiMedia10 Mixer
[    6.154143] msm-pcm-routing soc:qcom,msm-pcm-routing: ASoC: Failed to add route TERT_AUX_PCM_TX -> TERT_AUX_PCM_TX -> MultiMedia10 Mixer
[    6.154242] msm-pcm-routing soc:qcom,msm-pcm-routing: ASoC: no dapm match for QUAT_AUX_PCM_TX --> QUAT_AUX_PCM_TX --> MultiMedia10 Mixer
[    6.154250] msm-pcm-routing soc:qcom,msm-pcm-routing: ASoC: Failed to add route QUAT_AUX_PCM_TX -> QUAT_AUX_PCM_TX -> MultiMedia10 Mixer
[    6.154512] msm-pcm-routing soc:qcom,msm-pcm-routing: ASoC: no dapm match for TERT_MI2S_TX --> TERT_MI2S_TX --> MultiMedia10 Mixer
[    6.154520] msm-pcm-routing soc:qcom,msm-pcm-routing: ASoC: Failed to add route TERT_MI2S_TX -> TERT_MI2S_TX -> MultiMedia10 Mixer
[    6.154607] msm-pcm-routing soc:qcom,msm-pcm-routing: ASoC: no dapm match for INT2_MI2S_TX --> INT2_MI2S_TX --> MultiMedia10 Mixer
[    6.154615] msm-pcm-routing soc:qcom,msm-pcm-routing: ASoC: Failed to add route INT2_MI2S_TX -> INT2_MI2S_TX -> MultiMedia10 Mixer
[    6.154703] msm-pcm-routing soc:qcom,msm-pcm-routing: ASoC: no dapm match for INT3_MI2S_TX --> INT3_MI2S_TX --> MultiMedia10 Mixer
[    6.154710] msm-pcm-routing soc:qcom,msm-pcm-routing: ASoC: Failed to add route INT3_MI2S_TX -> INT3_MI2S_TX -> MultiMedia10 Mixer
[    6.154726] sps:BAM 0x0000000000000000 (va:0x0000000000000000) enabled: ver:0x19, number of pipes:18
[    6.166632] wlan_hdd_state wlan major(225) initialized
[    6.166641] wlan: driver loaded
[    6.166791] init: Command 'write /sys/kernel/boot_wlan/boot_wlan 1' action=zygote-start (/vendor/etc/init/hw/init.taimen.rc:308) took 54ms and succeeded
[    6.170531] wcd-dsp-mgr soc:qcom,wcd-dsp-mgr: for wdsp segments only will be dumped.
[    6.178817] init: Setting policy on /data/connectivity
[    6.181540] init: Policy for /data/connectivity set to 21ca43de98cea7bf modes 127/126
[    6.182481] init: Setting policy on /data/dpm
[    6.183059] init: Found policy 21ca43de98cea7bf at /data/dpm which matches expected value
[    6.183288] wcd-dsp-mgr soc:qcom,wcd-dsp-mgr: bound tavil_codec (ops wcd_ctrl_component_ops)
[    6.183328] wcd-spi-v2 spi2.0: wcd_spi_component_bind: Failed debugfs init
[    6.183407] wcd-dsp-mgr soc:qcom,wcd-dsp-mgr: bound spi2.0 (ops wcd_spi_component_ops)
[    6.183421] wcd-dsp-mgr soc:qcom,wcd-dsp-mgr: bound soc:qcom,glink-spi-xprt-wdsp (ops glink_component_ops)
[    6.226427] init: processing action (load_persist_props_action) from (/init.rc:268)
[    6.228356] init: starting service 'logd-reinit'...
[    6.229527] init: processing action (firmware_mounts_complete) from (/init.rc:274)
[    6.229646] init: processing action (early-boot) from (/vendor/etc/init/hw/init.taimen.rc:403)
[    6.229836] init: start_waiting_for_property("sys.qcom.devup", "1"): already set
[    6.229948] init: start_waiting_for_property("sys.all.modules.ready", "1"): already set
[    6.240171] init: processing action (early-boot) from (/vendor/etc/init/hw/init.wahoo.usb.rc:17)
[    6.241025] init: Command 'mount configfs none /config' action=early-boot (/vendor/etc/init/hw/init.wahoo.usb.rc:18) took 0ms and failed: mount() failed: Device or resource busy
[    6.249026] logd.daemon: reinit
[    6.252691] init: Service 'logd-reinit' (pid 753) exited with status 0
[    6.258277] Mass Storage Function, version: 2009/09/11
[    6.258289] LUN: removable file: (no medium)
[    6.285803] ueventd: firmware: could not find firmware for tas2557_cal.bin
[    6.285916] ueventd: loading /devices/soc/c1b5000.i2c/i2c-7/7-004d/firmware/tas2557_cal.bin took 2210ms
[    6.292602] file system registered
[    6.329213] pn81a spi1.0: ese_open: NFC controller found
[    6.330572] nq-nci 8-0028: setting ese_gpio high
[    6.354155] tas2557s 7-004d: Couldn't load tas2557_cal.bin
[    6.354169] tas2557s 7-004d: FW Size       = 51609
[    6.354174] tas2557s 7-004d: Checksum      = 0x35E64F0F
[    6.354178] tas2557s 7-004d: PPC Version   = 0x5C000
[    6.354182] tas2557s 7-004d: FW  Version    = 0x1010000
[    6.354185] tas2557s 7-004d: Driver Version= 0x0300
[    6.354190] tas2557s 7-004d: Timestamp     = 1501470973
[    6.354193] tas2557s 7-004d: DDC Name      = tas2557s_PG21_uCDSP
[    6.354197] tas2557s 7-004d: Description   = TI SmartAmp
[    6.356206] tas2557s 7-004d: find default configuration 0
[    6.380787] f_cdev_alloc: port_name:at_usb0 (0000000000000000) portno:(0)
[    6.381062] init: Command 'mkdir /config/usb_gadget/g1/functions/cser.dun.0' action=early-boot (/vendor/etc/init/hw/init.wahoo.usb.rc:35) took 87ms and succeeded
[    6.385280] f_cdev_alloc: port_name:at_usb1 (0000000000000000) portno:(1)
[    6.409766] init: Service 'vendor.ese_load' (pid 724) exited with status 1
[    6.426484] init: processing action (early-boot) from (/system/etc/init/installd.rc:5)
[    6.429562] tas2557s 7-004d: load program 0 (Tuning Mode)
[    6.429572] tas2557s 7-004d: TAS2557 load data: Tuning Mode Program, Blocks = 3, Block Type = 13
[    6.435780] init: processing action (boot) from (/init.rc:581)
[    6.446559] msm_audrx_init: dev_namesoc:qcom,msm-dai-q6:qcom,msm-dai-q6-sb-0-rx
[    6.454127] init: starting service 'vendor.thermal-engine'...
[    6.455692] apr_tal_notify_state: Channel state[0]
[    6.458377] init: Created socket '/dev/socket/thermal-send-client', mode 666, user 1000, group 1000
[    6.459689] init: Created socket '/dev/socket/thermal-recv-client', mode 660, user 1000, group 1000
[    6.460850] init: Created socket '/dev/socket/thermal-recv-passive-client', mode 666, user 1000, group 1000
[    6.472062] init: starting service 'hidl_memory'...
[    6.477193] init: starting service 'healthd'...
[    6.483202] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: no source widget found for Handset 2nd Mic
[    6.483214] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: Failed to add route Handset 2nd Mic -> direct -> MIC BIAS3
[    6.483238] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: no source widget found for Handset 3rd Mic
[    6.483242] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: Failed to add route Handset 3rd Mic -> direct -> MIC BIAS4
[    6.483980] init: starting service 'vr_hwc'...
[    6.484622] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: no sink widget found for SpkrLeft IN
[    6.484630] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: Failed to add route SPK1 OUT -> direct -> SpkrLeft IN
[    6.484653] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: no sink widget found for SpkrRight IN
[    6.484657] msm8998-asoc-snd 1711a000.sound-tavil: ASoC: Failed to add route SPK2 OUT -> direct -> SpkrRight IN
[    6.499593] init: starting service 'vendor.audio-hal-2-0'...
[    6.507358] init: starting service 'vendor.bluetooth-1-0'...
[    6.509879] init: starting service 'vendor.camera-provider-2-4'...
[    6.511825] init: couldn't write 769 to /dev/cpuset/camera-daemon/tasks: No such file or directory
[    6.516229] init: starting service 'vendor.cas-hal-1-0'...
[    6.529099] init: starting service 'vendor.contexthub-hal-1-0'...
[    6.532989] init: starting service 'vendor.drm-hal-1-0'...
[    6.534252] healthd: Unknown power supply type 'Wipower'
[    6.534460] healthd: Unknown power supply type 'BMS'
[    6.534916] healthd: Unknown power supply type 'Main'
[    6.541156] healthd: Unknown power supply type 'Parallel'
[    6.541451] init: starting service 'vendor.drm-clearkey-hal-1-1'...
[    6.552128] init: starting service 'vendor.drm-widevine-hal-1-1'...
[    6.556470] init: starting service 'vendor.dumpstate-1-0'...
[    6.562587] init: starting service 'vendor.gnss_service'...
[    6.569747] init: starting service 'vendor.health-hal-2-0'...
[    6.571930] init: Opened file '/dev/kmsg', flags 1
[    6.577099] init: starting service 'vendor.light-hal-2-0'...
[    6.580506] init: starting service 'vendor.memtrack-hal-1-0'...
[    6.586892] FG: fg_get_battery_temp: batt temperature original:430, tuned:375
[    6.593895] healthd: battery l=80 v=3902 t=37.5 h=2 st=2 c=964 fc=3229000 cc=291 chg=u
[    6.600657] init: starting service 'nfc_hal_service'...
[    6.606266] init: starting service 'vendor.oemlock_hal'...
[    6.621319] init: starting service 'vendor.oemlock_bridge'...
[    6.625758] init: starting service 'vendor.power-hal-1-2'...
[    6.627212] init: Created socket '/dev/socket/oemlock', mode 666, user 1000, group 1000
[    6.639612] init: starting service 'vendor.sensors-hal-1-0'...
[    6.695014] init: starting service 'vendor.usb-hal-1-1'...
[    6.706354] init: starting service 'vendor.vibrator-1-2'...
[    6.732996] init: starting service 'vendor.vr-wahoo-1-0'...
[    6.733563] healthd: Unknown power supply type 'Wipower'
[    6.736283] healthd: Unknown power supply type 'BMS'
[    6.737147] healthd: Unknown power supply type 'Main'
[    6.737771] healthd: Unknown power supply type 'Parallel'
[    6.742545] init: starting service 'vendor.wifi_hal_legacy'...
[    6.763140] init: starting service 'vendor.esed'...
[    6.788839] init: Command 'class_start hal' action=boot (/init.rc:676) took 335ms and succeeded
[    6.789934] init: starting service 'vendor.msm_irqbalance'...
[    6.801072] init: starting service 'vendor.per_mgr'...
[    6.804493] init: Created socket '/dev/socket/msm_irqbalance', mode 660, user 0, group 1000
[    6.809652] FG: fg_get_battery_temp: batt temperature original:430, tuned:374
[    6.811996] init: starting service 'vendor.sensors'...
[    6.816625] init: starting service 'vendor.irsc_util'...
[    6.827072] init: starting service 'vendor.rmt_storage'...
[    6.831451] init: starting service 'vendor.tftp_server'...
[    6.837967] init: starting service 'vendor.pd_mapper'...
[    6.848454] msm8998-asoc-snd 1711a000.sound-tavil: Sound card msm8998-tavil-taimen-snd-card registered
[    6.850798] healthd: battery l=80 v=3902 t=37.4 h=2 st=2 c=964 fc=3229000 cc=291 chg=u
[    6.872790] init: starting service 'audioserver'...
[    6.874276] init: starting service 'bufferhubd'...
[    6.895786] init: starting service 'lmkd'...
[    6.898938] init: Created socket '/dev/socket/pdx/system/buffer_hub/client', mode 660, user 1000, group 1000
[    6.905251] nq-nci 8-0028: setting ese_gpio high
[    6.909738] init: Created socket '/dev/socket/lmkd', mode 660, user 1000, group 1000
[    6.913009] init: starting service 'performanced'...
[    6.934374] init: starting service 'thermalservice'...
[    6.957461] init: starting service 'virtual_touchpad'...
[    6.965854] init: Created socket '/dev/socket/pdx/system/performance/client', mode 666, user 1000, group 1000
[    6.967514] init: Command 'class_start core' action=boot (/init.rc:678) took 178ms and succeeded
[    6.967548] init: processing action (boot) from (/init.usb.rc:21)
[    6.967783] init: processing action (persist.sys.usb.config=* && boot) from (/init.usb.rc:102)
[    6.967811] init: processing action (boot) from (/vendor/etc/init/hw/init.taimen.rc:445)
[    7.029880] init: Service 'vendor.irsc_util' (pid 819) exited with status 0
[    7.041562] servloc: init_service_locator: Service locator initialized
[    7.042400] servloc: service_locator_svc_arrive: Connection established with the Service locator
[    7.072901] servloc: service_locator_send_msg: No matching domains found
[    7.072919] error locating audio-PD
[    7.072924] audio-PDs matched:0
[    7.074749] servloc: service_locator_send_msg: No matching domains found
[    7.074761] audio_pdr_locator_callback: Service avs/audio returned invalid total domains 0
[    7.074781] audio_notifer_reg_service: service SSR_ADSP is in use
[    7.075113] servloc: service_locator_send_msg: No matching domains found
[    7.075125] error locating audio-PD
[    7.075130] audio-PDs matched:0
[    7.086769] init: processing action (boot) from (/vendor/etc/init/hw/init.wahoo.usb.rc:57)
[    7.093059] init: processing action (boot) from (/system/etc/init/bootstat.rc:61)
[    7.093099] init: processing action (boot) from (/system/etc/init/dumpstate.rc:1)
[    7.093594] init: processing action (boot) from (/vendor/etc/init/android.hardware.dumpstate@1.0-service.wahoo.rc:7)
[    7.095134] init: processing action (boot) from (/vendor/etc/init/android.hardware.usb@1.1-service.wahoo.rc:6)
[    7.115702] init: processing action (boot) from (/vendor/etc/init/init-taimen.rc:27)
[    7.116283] init: processing action (enable_property_trigger) from (<Builtin Action>:0)
[    7.116539] init: processing action (security.perf_harden=1) from (/init.rc:735)
[    7.116926] init: processing action (sys.listeners.registered=true) from (/vendor/etc/init/hw/init.taimen.rc:246)
[    7.119008] init: starting service 'vendor.ipastart_sh'...
[    7.122172] init: processing action (init.svc.zygote=running) from (/vendor/etc/init/hw/init.taimen.rc:520)
[    7.122877] init: starting service 'vendor.folio_daemon'...
[    7.124535] init: processing action (persist.sys.ssr.restart_level=*) from (/vendor/etc/init/hw/init.taimen.rc:541)
[    7.125614] init: starting service 'vendor.ssr_setup'...
[    7.132552] init: processing action (init.svc.vendor.per_mgr=running) from (/vendor/etc/init/hw/init.taimen.rc:628)
[    7.136086] init: starting service 'vendor.per_proxy'...
[    7.139769] init: processing action (persist.traced.enable=1) from (/system/etc/init/perfetto.rc:48)
[    7.144735] init: starting service 'traced'...
[    7.158122] ipa ipa3_uc_state_check:302 uC interface not initialized
[    7.160758] init: Created socket '/dev/socket/traced_consumer', mode 666, user 0, group 0
[    7.161953] init: Created socket '/dev/socket/traced_producer', mode 666, user 0, group 0
[    7.169986] init: starting service 'traced_probes'...
[    7.180455] init: processing action (ro.boot.slot_suffix=*) from (/system/etc/init/update_engine.rc:8)
[    7.180492] init: processing action (sys.all.modules.ready=1) from (/vendor/etc/init/init-taimen.rc:37)
[    7.183775] fts_touch 5-0049: [fw_update] try:1
[    7.183794] fts_touch 5-0049: fts_fw_update : firmware name : ftm4_fw.ftb
[    7.185166] init: Opened file '/dev/kmsg', flags 1
[    7.198127] fts_touch 5-0049: fts_fw_compare: bin_fw_ver_addr_1 = 0x0001CA7C , bin_fw_ver_addr_2 = 0x0001CA7D
[    7.198552] fts_touch 5-0049: fts_fw_compare : binary[0.44.0] device[0.44.0] -> update: 0
[    7.198560] fts_touch 5-0049: fts_fw_update : skip fw_upgrade(ic_fw_ver == bin_fw_ver)
[    7.203649] init: processing action (nonencrypted) from (/init.rc:680)
[    7.203740] init: Could not start service 'flash_recovery' as part of class 'main': Cannot find '/system/bin/install-recovery.sh': No such file or directory
[    7.205203] init: starting service 'vendor.adsprpcd'...
[    7.207205] init: starting service 'vendor.imsqmidaemon'...
[    7.211636] init: Could not start service 'vendor.qmuxd' as part of class 'main': Cannot find '/vendor/bin/qmuxd': No such file or directory
[    7.213610] init: Created socket '/dev/socket/ims_qmid', mode 660, user 1000, group 1001
[    7.216121] init: starting service 'vendor.cnd'...
[    7.219076] init: starting service 'vendor.netmgrd'...
[    7.232199] init: starting service 'vendor.port-bridge'...
[    7.242720] subsys-restart: __subsystem_get(): Changing subsys fw_name to modem
[    7.256116] 'opened /dev/adsprpc-smd c 226 0'
[    7.256864] init: starting service 'vendor.ipacm'...
[    7.282444] init: starting service 'vendor.qti'...
[    7.287844] subsys-pil-tz soc:qcom,ipa_fws@1e08000: ipa_fws: loading from 0x0000000000000000 to 0x0000000000000000
[    7.298273] init: starting service 'cameraserver'...
[    7.299800] init: starting service 'drm'...
[    7.307048] init: couldn't write 917 to /dev/cpuset/camera-daemon/tasks: No such file or directory
[    7.320116] init: starting service 'incidentd'...
[    7.321694] init: starting service 'installd'...
[    7.323120] init: starting service 'keystore'...
[    7.326643] init: starting service 'mediadrm'...
[    7.335573] ueventd: firmware: loading 'modem.mdt' for '/devices/soc/4080000.qcom,mss/firmware/modem.mdt'
[    7.340872] init: starting service 'mediaextractor'...
[    7.344465] init: starting service 'mediametrics'...
[    7.347706] init: starting service 'media'...
[    7.361774] init: starting service 'statsd'...
[    7.363515] init: starting service 'storaged'...
[    7.365148] init: starting service 'wificond'...
[    7.371889] init: Created socket '/dev/socket/statsdw', mode 222, user 1066, group 1066
[    7.371960] init: starting service 'vendor.media.omx'...
[    7.373369] init: Failed to open file '/d/mmc0/mmc0:0001/ext_csd': No such file or directory
[    7.380874] ueventd: loading /devices/soc/4080000.qcom,mss/firmware/modem.mdt took 54ms
[    7.388890] init: starting service 'vendor.ril-daemon'...
[    7.420415] init: Command 'class_start main' action=nonencrypted (/init.rc:681) took 216ms and succeeded
[    7.421072] init: Service 'vendor.ssr_setup' (pid 877) exited with status 0
[    7.421918] init: starting service 'vendor.init-elabel-sh'...
[    7.431092] pil-q6v5-mss 4080000.qcom,mss: modem: loading from 0x0000000000000000 to 0x0000000000000000
[    7.490903] init: starting service 'vendor.init-radio-sh'...
[    7.497170] init: starting service 'vendor.cnss-daemon'...
[    7.504949] init: starting service 'vendor.loc_launcher'...
[    7.514766] ueventd: firmware: loading 'mba.mbn' for '/devices/soc/4080000.qcom,mss/firmware/mba.mbn'
[    7.540769] ueventd: loading /devices/soc/4080000.qcom,mss/firmware/mba.mbn took 27ms
[    7.548533] subsys-pil-tz soc:qcom,ipa_fws@1e08000: ipa_fws: Brought out of reset
[    7.553333] init: starting service 'vendor.chre'...
[    7.555193] ueventd: firmware: loading 'msadp' for '/devices/soc/4080000.qcom,mss/firmware/msadp'
[    7.555943] ueventd: firmware: could not find firmware for msadp
[    7.557332] ueventd: loading /devices/soc/4080000.qcom,mss/firmware/msadp took 2ms
[    7.561146] init: Created socket '/dev/socket/chre', mode 660, user 0, group 1000
[    7.561653] pil-q6v5-mss 4080000.qcom,mss: Debug policy not present - msadp. Continue.
[    7.561686] pil-q6v5-mss 4080000.qcom,mss: Loading MBA and DP (if present) from 0x0000000000000000 to 0x0000000000000000 size 100000
[    7.571309] selinux: SELinux: Could not get canonical path for /sys/devices/soc/4080000.qcom,mss/firmware/msadp restorecon: No such file or directory.\x0a
[    7.571398] ueventd: selinux_android_restorecon(/sys/devices/soc/4080000.qcom,mss/firmware/msadp) failed: No such file or directory
[    7.603362] tas2557s 7-004d: TAS2557 load data: Tuning Mode Program, Blocks = 3, Block Type = 1
[    7.603478] init: starting service 'gatekeeperd'...
[    7.604852] msm_thermal:set_enabled enabled = 0
[    7.605021] init: starting service 'tombstoned'...
[    7.606802] init: starting service 'update_engine'...
[    7.608377] init: starting service 'usbd'...
[    7.609555] msm_thermal:store_cpus_offlined "thermal-engine"(PID:922) request cpus offlined mask 0
[    7.609654] ipa ipa3_uc_state_check:302 uC interface not initialized
[    7.626256] init: starting service 'fps_hal'...
[    7.627499] init: Command 'class_start late_start' action=nonencrypted (/init.rc:682) took 205ms and succeeded
[    7.630814] init: Created socket '/dev/socket/tombstoned_crash', mode 666, user 1000, group 1000
[    7.631624] init: Created socket '/dev/socket/tombstoned_intercept', mode 666, user 1000, group 1000
[    7.631908] tas2557s 7-004d: TAS2557 load data: Tuning Mode Program, Blocks = 3, Block Type = 8
[    7.632221] init: Created socket '/dev/socket/tombstoned_java_trace', mode 666, user 1000, group 1000
[    7.635957] pil-q6v5-mss 4080000.qcom,mss: MBA boot done
[    7.667916] ipa ipa3_uc_state_check:302 uC interface not initialized
[    7.675773] init: processing action (init.svc.mediadrm=running) from (/vendor/etc/init/android.hardware.drm@1.1-service.widevine.rc:1)
[    7.680553] init: Service 'vendor.ipastart_sh' (pid 872) exited with status 0
[    7.681038] init: Service 'vendor.init-elabel-sh' (pid 950) exited with status 0
[    7.682128] init: starting service 'vendor.move_data_sh'...
[    7.688409] ueventd: firmware: loading 'modem.b02' for '/devices/soc/4080000.qcom,mss/firmware/modem.b02'
[    7.693739] msm_qti_pp_get_rms_value_control, back not active to query rms be_idx:3
[    7.694034] ueventd: loading /devices/soc/4080000.qcom,mss/firmware/modem.b02 took 5ms
[    7.698922] msm_voice_sound_focus_get: Error getting Sound Focus Params, err=-22
[    7.699050] msm_voice_source_tracking_get: Error getting Source Tracking Params, err=-22
[    7.699148] msm_audio_get_copp_idx_from_port_id: Invalid FE, exiting
[    7.699153] msm_audio_sound_focus_get: Could not get copp idx for port_id=16385
[    7.699248] msm_audio_get_copp_idx_from_port_id: Invalid FE, exiting
[    7.699253] msm_audio_source_tracking_get: Could not get copp idx for port_id=16385
[    7.699357] msm_voice_sound_focus_get: Error getting Sound Focus Params, err=-22
[    7.699463] msm_voice_source_tracking_get: Error getting Source Tracking Params, err=-22
[    7.699560] msm_audio_get_copp_idx_from_port_id: Invalid FE, exiting
[    7.699564] msm_audio_sound_focus_get: Could not get copp idx for port_id=4101
[    7.699664] msm_audio_get_copp_idx_from_port_id: Invalid FE, exiting
[    7.699668] msm_audio_source_tracking_get: Could not get copp idx for port_id=4101
[    7.699775] msm_voice_sound_focus_get: Error getting Sound Focus Params, err=-22
[    7.699883] msm_voice_source_tracking_get: Error getting Source Tracking Params, err=-22
[    7.699981] msm_audio_get_copp_idx_from_port_id: Invalid FE, exiting
[    7.699986] msm_audio_sound_focus_get: Could not get copp idx for port_id=4149
[    7.701066] 'opened /dev/sdsprpc-smd c 226 2'
[    7.719115] tas2557s 7-004d: TAS2557 load data: MusicPlayback, Blocks = 4, Block Type = 4
[    7.725479] tas2557s 7-004d: TAS2557 load data: MusicPlayback, Blocks = 4, Block Type = 11
[    7.730693] ueventd: firmware: loading 'modem.b03' for '/devices/soc/4080000.qcom,mss/firmware/modem.b03'
[    7.734448] tas2557s 7-004d: TAS2557 load data: MusicPlayback, Blocks = 4, Block Type = 3
[    7.739983] msm_audio_get_copp_idx_from_port_id: Invalid FE, exiting
[    7.739995] msm_audio_source_tracking_get: Could not get copp idx for port_id=4149
[    7.748847] core_get_license_status: cmdrsp_license_result.result = 0x15 for module 0x131ff
[    7.749552] msm-ext-disp-audio-codec-rx soc:qcom,msm_ext_disp:qcom,msm-ext-disp-audio-codec-rx: msm_ext_disp_audio_type_get: codec_data, get_audio_edid_blk() or get_intf_id is NULL
[    7.753553] ueventd: loading /devices/soc/4080000.qcom,mss/firmware/modem.b03 took 23ms
[    7.796235] ueventd: firmware: loading 'modem.b04' for '/devices/soc/4080000.qcom,mss/firmware/modem.b04'
[    7.818349] gsi soc:qcom,msm_gsi: gsi_register_device:766 GSI irq is wake enabled 43
[    7.851197] ueventd: loading /devices/soc/4080000.qcom,mss/firmware/modem.b04 took 55ms
[    7.892973] ueventd: firmware: loading 'modem.b05' for '/devices/soc/4080000.qcom,mss/firmware/modem.b05'
[    7.893065] init: Service 'vendor.move_data_sh' (pid 1012) exited with status 0
[    7.893830] init: processing action (vendor.ims.QMI_DAEMON_STATUS=1) from (/vendor/etc/init/hw/init.taimen.rc:723)
[    7.897000] msm_pm_qos_add_request: add request
[    7.908188] ueventd: loading /devices/soc/4080000.qcom,mss/firmware/modem.b05 took 15ms
[    7.908808] input: uinput-folio as /devices/virtual/input/input4
[    7.913783] ueventd: firmware: loading 'modem.b06' for '/devices/soc/4080000.qcom,mss/firmware/modem.b06'
[    7.919133] ueventd: loading /devices/soc/4080000.qcom,mss/firmware/modem.b06 took 5ms
[    7.920683] init: starting service 'vendor.imsdatadaemon'...
[    7.925260] init: Received control message 'start' for 'adbd' from pid: 993 (/system/bin/usbd)
[    7.925466] init: starting service 'adbd'...
[    7.925485] QSEECOM: qseecom_load_app: App (fpctzappfingerprint) does'nt exist, loading apps for first time
[    7.930365] msm_sensor_fill_eeprom_subdevid_by_name:216 Eeprom userspace probe for onsemi_lc898123f40xc
[    7.942708] init: Created socket '/dev/socket/ims_datad', mode 660, user 1000, group 1001
[    7.942804] init: Service 'usbd' (pid 993) exited with status 0
[    7.946254] init: Created socket '/dev/socket/adbd', mode 660, user 1000, group 1000
[    7.956194] ueventd: firmware: loading 'modem.b07' for '/devices/soc/4080000.qcom,mss/firmware/modem.b07'
[    7.967963] ueventd: loading /devices/soc/4080000.qcom,mss/firmware/modem.b07 took 11ms
[    7.975263] ueventd: firmware: loading 'modem.b08' for '/devices/soc/4080000.qcom,mss/firmware/modem.b08'
[    7.989628] ueventd: loading /devices/soc/4080000.qcom,mss/firmware/modem.b08 took 14ms
[    8.006956] ueventd: firmware: loading 'modem.b09' for '/devices/soc/4080000.qcom,mss/firmware/modem.b09'
[    8.011901] init: Received control message 'interface_start' for 'android.hardware.camera.provider@2.4::ICameraProvider/legacy/0' from pid: 613 (/system/bin/hwservicemanager)
[    8.011965] init: Could not find service hosting interface android.hardware.camera.provider@2.4::ICameraProvider/legacy/0
[    8.012378] init: Received control message 'interface_start' for 'android.hardware.camera.provider@2.4::ICameraProvider/legacy/0' from pid: 613 (/system/bin/hwservicemanager)
[    8.012408] init: Could not find service hosting interface android.hardware.camera.provider@2.4::ICameraProvider/legacy/0
[    8.016851] read descriptors
[    8.016930] read strings
[    8.025978] msm_cci_init:1427: hw_version = 0x10060000
[    8.032653] msm_sensor_power_up: [05-15 17:11:40.559] imx362
[    8.032664] imx362 probe succeeded
[    8.039861] tas2557s 7-004d: TAS2557 load data: MusicPlayback, Blocks = 4, Block Type = 10
[    8.052094] ueventd: loading /devices/soc/4080000.qcom,mss/firmware/modem.b09 took 45ms
[    8.054782] msm_sensor_power_down: [05-15 17:11:40.579] imx362
[    8.056564] QSEECOM: qseecom_load_app: App with id 196611 (fpctzappfingerprint) now loaded
[    8.058523] ueventd: firmware: loading 'modem.b10' for '/devices/soc/4080000.qcom,mss/firmware/modem.b10'
[    8.061701] ueventd: loading /devices/soc/4080000.qcom,mss/firmware/modem.b10 took 3ms
[    8.077761] ueventd: firmware: loading 'modem.b11' for '/devices/soc/4080000.qcom,mss/firmware/modem.b11'
[    8.088865] input: uinput-fpc as /devices/virtual/input/input5
[    8.091563] ueventd: loading /devices/soc/4080000.qcom,mss/firmware/modem.b11 took 13ms
[    8.091607] msm_sensor_fill_eeprom_subdevid_by_name:216 Eeprom userspace probe for primax_g802l
[    8.093855] ueventd: firmware: loading 'modem.b12' for '/devices/soc/4080000.qcom,mss/firmware/modem.b12'
[    8.115735] msm_cci_init:1427: hw_version = 0x10060000
[    8.117942] msm_sensor_power_up: [05-15 17:11:40.639] imx179
[    8.117954] imx179 probe succeeded
[    8.124477] msm_sensor_power_down: [05-15 17:11:40.649] imx179
[    8.141526] msm_csid_init: CSID_VERSION = 0x30050000
[    8.165666] msm_csid_irq CSID0_IRQ_STATUS_ADDR = 0x800
[    8.190941] msm_csid_init: CSID_VERSION = 0x30050000
[    8.213182] msm_csid_irq CSID2_IRQ_STATUS_ADDR = 0x800
[    8.222796] ueventd: loading /devices/soc/4080000.qcom,mss/firmware/modem.b12 took 129ms
[    8.223911] rmnet_ipa3 started initialization
[    8.225221] ueventd: firmware: loading 'modem.b13' for '/devices/soc/4080000.qcom,mss/firmware/modem.b13'
[    8.228155] IPA SSR support = True
[    8.228172] IPA ipa-loaduC = True
[    8.228179] IPA SG support = True
[    8.228187] IPA Napi Enable = False
[    8.228194] using default for wan-rx-desc-size = 256
[    8.229513] ueventd: loading /devices/soc/4080000.qcom,mss/firmware/modem.b13 took 4ms
[    8.232434] IPA driver initialization was successful.
[    8.239204] ueventd: firmware: loading 'modem.b14' for '/devices/soc/4080000.qcom,mss/firmware/modem.b14'
[    8.240530] ueventd: loading /devices/soc/4080000.qcom,mss/firmware/modem.b14 took 1ms
[    8.244175] ueventd: firmware: loading 'modem.b16' for '/devices/soc/4080000.qcom,mss/firmware/modem.b16'
[    8.260353] init: Service 'vendor.init-radio-sh' (pid 953) exited with status 0
[    8.273067] ueventd: loading /devices/soc/4080000.qcom,mss/firmware/modem.b16 took 29ms
[    8.280861] ueventd: firmware: loading 'modem.b17' for '/devices/soc/4080000.qcom,mss/firmware/modem.b17'
[    8.294585] tas2557s 7-004d: tas2557_get_Cali_prm_r0, no calibration data
[    8.294755] tas2557s 7-004d: tas2557_get_Cali_prm_r0, no calibration data
[    8.294911] tas2557s 7-004d: tas2557_calibration_get = 0
[    8.305546] msm_dai_q6_ext_disp_drift_get:  afe port not started. status_mask = 0
[    8.305989] msm_dai_q6_ext_disp_drift_get:  afe port not started. status_mask = 0
[    8.308550] msm_pcm_volume_ctl_get substream runtime not found
[    8.308681] msm_pcm_compress_ctl_get substream runtime not found
[    8.308920] msm_adsp_stream_callback_get: ASM Stream PP Event Data Unavailable
[    8.310125] msm_pcm_volume_ctl_get substream runtime not found
[    8.310372] msm_adsp_stream_callback_get: ASM Stream PP Event Data Unavailable
[    8.310676] msm_pcm_volume_ctl_get substream runtime not found
[    8.310802] msm_pcm_volume_ctl_get substream runtime not found
[    8.314602] msm_compr_audio_effects_config_get: stream or effects inactive
[    8.314883] msm_adsp_stream_callback_get: ASM Stream PP Event Data Unavailable
[    8.317137] msm_pcm_volume_ctl_get substream runtime not found
[    8.317285] msm_pcm_compress_ctl_get substream runtime not found
[    8.317564] msm_adsp_stream_callback_get: ASM Stream PP Event Data Unavailable
[    8.318449] msm_compr_audio_effects_config_get: stream or effects inactive
[    8.318707] msm_adsp_stream_callback_get: ASM Stream PP Event Data Unavailable
[    8.322839] msm_pcm_volume_ctl_get substream runtime not found
[    8.323117] msm_adsp_stream_callback_get: ASM Stream PP Event Data Unavailable
[    8.323388] msm_pcm_volume_ctl_get substream runtime not found
[    8.323516] msm_pcm_volume_ctl_get substream runtime not found
[    8.328940] msm_pcm_volume_ctl_get substream runtime not found
[    8.329192] msm_adsp_stream_callback_get: ASM Stream PP Event Data Unavailable
[    8.329584] msm_compr_audio_effects_config_get: stream or effects inactive
[    8.329837] msm_adsp_stream_callback_get: ASM Stream PP Event Data Unavailable
[    8.331304] msm_compr_audio_effects_config_get: stream or effects inactive
[    8.331561] msm_adsp_stream_callback_get: ASM Stream PP Event Data Unavailable
[    8.332990] msm_compr_audio_effects_config_get: stream or effects inactive
[    8.333241] msm_adsp_stream_callback_get: ASM Stream PP Event Data Unavailable
[    8.334624] msm_compr_audio_effects_config_get: stream or effects inactive
[    8.334919] msm_adsp_stream_callback_get: ASM Stream PP Event Data Unavailable
[    8.336432] msm_compr_audio_effects_config_get: stream or effects inactive
[    8.336705] msm_adsp_stream_callback_get: ASM Stream PP Event Data Unavailable
[    8.338121] msm_compr_audio_effects_config_get: stream or effects inactive
[    8.338362] msm_adsp_stream_callback_get: ASM Stream PP Event Data Unavailable
[    8.339490] msm_pcm_volume_ctl_get substream or runtime not found
[    8.379857] msm-dwc3 a800000.ssusb: Avail curr from USB = 100
[    8.433521] ueventd: loading /devices/soc/4080000.qcom,mss/firmware/modem.b17 took 153ms
[    8.457421] ipa ipa3_uc_state_check:307 uC is not loaded
[    8.486711] ueventd: firmware: loading 'modem.b18' for '/devices/soc/4080000.qcom,mss/firmware/modem.b18'
[    8.497111] rmnet_ipa completed initialization
[    8.511739] ueventd: loading /devices/soc/4080000.qcom,mss/firmware/modem.b18 took 25ms
[    8.552596] msm_cci_init:1427: hw_version = 0x10060000
[    8.586624] android_work: sent uevent USB_STATE=CONNECTED
[    8.588447] android_work: sent uevent USB_STATE=DISCONNECTED
[    8.626066] ueventd: firmware: loading 'modem.b20' for '/devices/soc/4080000.qcom,mss/firmware/modem.b20'
[    8.628904] ueventd: loading /devices/soc/4080000.qcom,mss/firmware/modem.b20 took 3ms
[    8.631048] ueventd: firmware: loading 'modem.b21' for '/devices/soc/4080000.qcom,mss/firmware/modem.b21'
[    8.638667] ueventd: loading /devices/soc/4080000.qcom,mss/firmware/modem.b21 took 7ms
[    8.640839] ueventd: firmware: loading 'modem.b22' for '/devices/soc/4080000.qcom,mss/firmware/modem.b22'
[    8.678856] SMB138X: smb138x_parallel_get_prop: parallel power supply get prop 4 not supported
[    8.720555] ueventd: loading /devices/soc/4080000.qcom,mss/firmware/modem.b22 took 79ms
[    8.724716] ueventd: firmware: loading 'modem.b23' for '/devices/soc/4080000.qcom,mss/firmware/modem.b23'
[    8.729439] ueventd: loading /devices/soc/4080000.qcom,mss/firmware/modem.b23 took 5ms
[    8.738168] ueventd: firmware: loading 'modem.b24' for '/devices/soc/4080000.qcom,mss/firmware/modem.b24'
[    8.746275] ueventd: loading /devices/soc/4080000.qcom,mss/firmware/modem.b24 took 9ms
[    8.754897] ueventd: firmware: loading 'modem.b25' for '/devices/soc/4080000.qcom,mss/firmware/modem.b25'
[    8.759650] ueventd: loading /devices/soc/4080000.qcom,mss/firmware/modem.b25 took 4ms
[    8.762951] ueventd: firmware: loading 'modem.b26' for '/devices/soc/4080000.qcom,mss/firmware/modem.b26'
[    8.764035] ueventd: loading /devices/soc/4080000.qcom,mss/firmware/modem.b26 took 1ms
[    8.765476] ueventd: firmware: loading 'modem.b27' for '/devices/soc/4080000.qcom,mss/firmware/modem.b27'
[    8.766531] ueventd: loading /devices/soc/4080000.qcom,mss/firmware/modem.b27 took 1ms
[    8.783912] android_work: sent uevent USB_STATE=CONNECTED
[    8.790245] configfs-gadget gadget: high-speed config #1: b
[    8.792946] msm-dwc3 a800000.ssusb: Avail curr from USB = 500
[    8.794426] android_work: sent uevent USB_STATE=CONFIGURED
[    8.894599] msm_qti_pp_get_rms_value_control, back not active to query rms be_idx:3
[    8.899745] msm_voice_sound_focus_get: Error getting Sound Focus Params, err=-22
[    8.899867] msm_voice_source_tracking_get: Error getting Source Tracking Params, err=-22
[    8.899966] msm_audio_get_copp_idx_from_port_id: Invalid FE, exiting
[    8.899971] msm_audio_sound_focus_get: Could not get copp idx for port_id=16385
[    8.900120] msm_audio_get_copp_idx_from_port_id: Invalid FE, exiting
[    8.900125] msm_audio_source_tracking_get: Could not get copp idx for port_id=16385
[    8.900235] msm_voice_sound_focus_get: Error getting Sound Focus Params, err=-22
[    8.900346] msm_voice_source_tracking_get: Error getting Source Tracking Params, err=-22
[    8.900445] msm_audio_get_copp_idx_from_port_id: Invalid FE, exiting
[    8.900448] msm_audio_sound_focus_get: Could not get copp idx for port_id=4101
[    8.900558] msm_audio_get_copp_idx_from_port_id: Invalid FE, exiting
[    8.900562] msm_audio_source_tracking_get: Could not get copp idx for port_id=4101
[    8.900669] msm_voice_sound_focus_get: Error getting Sound Focus Params, err=-22
[    8.900784] msm_voice_source_tracking_get: Error getting Source Tracking Params, err=-22
[    8.900884] msm_audio_get_copp_idx_from_port_id: Invalid FE, exiting
[    8.900888] msm_audio_sound_focus_get: Could not get copp idx for port_id=4149
[    8.900987] msm_audio_get_copp_idx_from_port_id: Invalid FE, exiting
[    8.900991] msm_audio_source_tracking_get: Could not get copp idx for port_id=4149
[    8.905688] core_get_license_status: cmdrsp_license_result.result = 0x15 for module 0x131ff
[    8.906485] msm-ext-disp-audio-codec-rx soc:qcom,msm_ext_disp:qcom,msm-ext-disp-audio-codec-rx: msm_ext_disp_audio_type_get: codec_data, get_audio_edid_blk() or get_intf_id is NULL
[    8.908340] tas2557s 7-004d: tas2557_get_Cali_prm_r0, no calibration data
[    8.908450] tas2557s 7-004d: tas2557_get_Cali_prm_r0, no calibration data
[    8.908554] tas2557s 7-004d: tas2557_calibration_get = 0
[    8.916307] msm_dai_q6_ext_disp_drift_get:  afe port not started. status_mask = 0
[    8.916678] msm_dai_q6_ext_disp_drift_get:  afe port not started. status_mask = 0
[    8.918563] msm_pcm_volume_ctl_get substream runtime not found
[    8.918670] msm_pcm_compress_ctl_get substream runtime not found
[    8.918875] msm_adsp_stream_callback_get: ASM Stream PP Event Data Unavailable
[    8.919621] msm_pcm_volume_ctl_get substream runtime not found
[    8.919829] msm_adsp_stream_callback_get: ASM Stream PP Event Data Unavailable
[    8.920116] msm_pcm_volume_ctl_get substream runtime not found
[    8.920224] msm_pcm_volume_ctl_get substream runtime not found
[    8.921266] msm_compr_audio_effects_config_get: stream or effects inactive
[    8.921477] msm_adsp_stream_callback_get: ASM Stream PP Event Data Unavailable
[    8.922866] msm_pcm_volume_ctl_get substream runtime not found
[    8.922978] msm_pcm_compress_ctl_get substream runtime not found
[    8.923202] msm_adsp_stream_callback_get: ASM Stream PP Event Data Unavailable
[    8.923759] msm_compr_audio_effects_config_get: stream or effects inactive
[    8.923969] msm_adsp_stream_callback_get: ASM Stream PP Event Data Unavailable
[    8.925344] msm_pcm_volume_ctl_get substream runtime not found
[    8.925557] msm_adsp_stream_callback_get: ASM Stream PP Event Data Unavailable
[    8.925775] msm_pcm_volume_ctl_get substream runtime not found
[    8.925886] msm_pcm_volume_ctl_get substream runtime not found
[    8.929189] msm_pcm_volume_ctl_get substream runtime not found
[    8.929411] msm_adsp_stream_callback_get: ASM Stream PP Event Data Unavailable
[    8.929699] msm_compr_audio_effects_config_get: stream or effects inactive
[    8.929911] msm_adsp_stream_callback_get: ASM Stream PP Event Data Unavailable
[    8.931063] msm_compr_audio_effects_config_get: stream or effects inactive
[    8.931278] msm_adsp_stream_callback_get: ASM Stream PP Event Data Unavailable
[    8.932333] msm_compr_audio_effects_config_get: stream or effects inactive
[    8.932551] msm_adsp_stream_callback_get: ASM Stream PP Event Data Unavailable
[    8.933493] msm_compr_audio_effects_config_get: stream or effects inactive
[    8.933702] msm_adsp_stream_callback_get: ASM Stream PP Event Data Unavailable
[    8.934654] msm_compr_audio_effects_config_get: stream or effects inactive
[    8.934873] msm_adsp_stream_callback_get: ASM Stream PP Event Data Unavailable
[    8.935844] msm_compr_audio_effects_config_get: stream or effects inactive
[    8.936057] msm_adsp_stream_callback_get: ASM Stream PP Event Data Unavailable
[    8.936825] msm_pcm_volume_ctl_get substream or runtime not found
[    8.982166] FG: fg_get_battery_temp: batt temperature original:440, tuned:377
[    8.983892] healthd: battery l=80 v=3879 t=37.7 h=2 st=2 c=1060 fc=3229000 cc=291 chg=u
[    8.985963] FG: fg_get_battery_temp: batt temperature original:440, tuned:377
[    8.989150] healthd: battery l=80 v=3879 t=37.7 h=2 st=2 c=1060 fc=3229000 cc=291 chg=u
[    9.060356] pil-q6v5-mss 4080000.qcom,mss: modem: Brought out of reset
[    9.084371] FG: fg_get_battery_temp: batt temperature original:440, tuned:377
[    9.084450] SMB138X: smb138x_parallel_get_prop: parallel power supply get prop 4 not supported
[    9.086177] healthd: battery l=80 v=3879 t=37.7 h=2 st=2 c=1060 fc=3229000 cc=291 chg=u
[    9.087510] wcdcal_hwdep_ioctl_shared: incorrect firmware size 154 for vbat
[    9.087893] FG: fg_get_battery_temp: batt temperature original:440, tuned:377
[    9.089265] healthd: battery l=80 v=3879 t=37.7 h=2 st=2 c=1060 fc=3229000 cc=291 chg=u
[    9.187359] apr_tal_link_state_cb: edge[mpss] link state[0]
[    9.193568] pil-q6v5-mss 4080000.qcom,mss: Subsystem error monitoring/handling services are up
[    9.195829] pil-q6v5-mss 4080000.qcom,mss: modem: Power/Clock ready interrupt received
[    9.197839] IPC_RTR: ipc_router_create_log_ctx: Unable to create IPC logging for [mpss_IPCRTR]
[    9.199253] ipa-wan ipa3_ssr_notifier_cb:2548 ipa3_ssr_notifier_cb:2548 IPA received MPSS AFTER_POWERUP
[    9.199263] ipa-wan ipa3_ssr_notifier_cb:2553 IPA AFTER_POWERUP handling is complete
[    9.333005] sysmon-qmi: sysmon_clnt_svc_arrive: Connection established between QMI handle and modem's SSCTL service
[    9.333077] service-notifier: root_service_service_arrive: Connection established between QMI handle and 180 service
[    9.454131] FG: fg_get_battery_temp: batt temperature original:440, tuned:377
[    9.455653] healthd: battery l=80 v=3879 t=37.7 h=2 st=2 c=1060 fc=3229000 cc=291 chg=u
[    9.456048] FG: fg_get_battery_temp: batt temperature original:440, tuned:377
[    9.457640] healthd: battery l=80 v=3879 t=37.7 h=2 st=2 c=1060 fc=3229000 cc=291 chg=u
[    9.519561] diag: In diag_send_feature_mask_update, control channel is not open, p: 0, 0000000000000000
[    9.604174] ipa-wan ipa3_handle_indication_req:152 not send indication
[    9.606775] Sending QMI_IPA_INIT_MODEM_DRIVER_REQ_V01
[    9.623332] ipa ipa3_uc_state_check:307 uC is not loaded
[    9.628977] QMI_IPA_INIT_MODEM_DRIVER_REQ_V01 response received
[    9.630781] IPC_RTR: process_new_server_msg: Server 00001002 create rejected, version = 0
[    9.647469] ipa ipa3_uc_state_check:307 uC is not loaded
[    9.671160] ipa ipa3_uc_state_check:307 uC is not loaded
[    9.697898] ipa ipa3_uc_wdi_event_log_info_handler:370 WDI stats ofst=0x47130
[    9.697914] ipa ipa3_uc_ntn_event_log_info_handler:39 NTN feature missing 0x9
[    9.698091] ipa ipa3_uc_state_check:307 uC is not loaded
[    9.709563] ipa ipa3_uc_state_check:307 uC is not loaded
[    9.967484] msm_cci_init:1427: hw_version = 0x10060000
[   10.007513] IPC_RTR: msm_ipc_router_send_to: permission failure for cnss-daemon
[   10.007525] IPC_RTR: msm_ipc_router_sendmsg: Send_to failure -1
[   10.067726] init: processing action (vendor.ims.DATA_DAEMON_STATUS=1) from (/vendor/etc/init/hw/init.taimen.rc:738)
[   10.068687] init: starting service 'vendor.ims_rtp_daemon'...
[   10.073772] init: starting service 'vendor.imsrcsservice'...
[   10.366901] MSM-CPP cpp_init_hardware:1138 CPP HW Version: 0x60010000
[   10.366931] MSM-CPP cpp_init_hardware:1156 stream_cnt:0
[   10.384500] service-notifier: root_service_service_ind_cb: Indication received from msm/modem/wlan_pd, state: 0x1fffffff, trans-id: 1
[   10.412802] service-notifier: send_ind_ack: Indication ACKed for transid 1, service msm/modem/wlan_pd, instance 180!
[   10.412825] icnss: QMI Server Connected: state: 0x981
[   10.430789] MSM-CPP cpp_release_hardware:1219 cpp hw release done
[   10.518797] IPC_RTR: process_new_server_msg: Server 00001003 create rejected, version = 0
[   10.616238] ip_local_port_range: prefer different parity for start/end values.
[   10.910386] misc mnh_sm: mnh_sm_set_state: request state 0
[   10.913173] misc mnh_sm: mnh_sm_set_state: finished state 0
[   10.929572] misc mnh_sm: mnh_sm_set_state: request state 0
[   10.929593] misc mnh_sm: mnh_sm_set_state: finished state 0
[   10.937747] msm_pm_qos_update_request: update request 100
[   10.942761] msm_pm_qos_update_request: update request -1
[   10.942791] ipa ipa3_assign_policy:3328 get close-by 8192
[   10.942797] ipa ipa3_assign_policy:3334 set rx_buff_sz 7808
[   10.942801] ipa ipa3_assign_policy:3356 set aggr_limit 6
[   10.949757] msm_csid_init: CSID_VERSION = 0x30050000
[   10.952790] msm_csid_irq CSID0_IRQ_STATUS_ADDR = 0x800
[   10.978907] ipa-wan ipa3_wwan_ioctl:1699 dev(rmnet_data0) register to IPA
[   11.001188] MSM-CPP cpp_init_hardware:1138 CPP HW Version: 0x60010000
[   11.001213] MSM-CPP cpp_init_hardware:1156 stream_cnt:0
[   11.002393] init: Received control message 'interface_start' for 'android.frameworks.sensorservice@1.0::ISensorManager/default' from pid: 613 (/system/bin/hwservicemanager)
[   11.002425] init: Could not find service hosting interface android.frameworks.sensorservice@1.0::ISensorManager/default
[   11.002731] init: Received control message 'interface_start' for 'android.frameworks.sensorservice@1.0::ISensorManager/default' from pid: 613 (/system/bin/hwservicemanager)
[   11.002752] init: Could not find service hosting interface android.frameworks.sensorservice@1.0::ISensorManager/default
[   11.031047] msm_cci_init:1427: hw_version = 0x10060000
[   11.039684] msm_sensor_power_up: [05-15 17:11:43.559] imx362
[   11.108040] msm_stopGyroThread:251 [OISDBG] msm_stopGyroThread:E
[   11.108056] msm_stopGyroThread:261 [OISDBG] invalid timer state = 0
[   11.108061] msm_stopGyroThread:262 [OISDBG] msm_stopGyroThread:X
[   11.120242] MSM-CPP cpp_release_hardware:1219 cpp hw release done
[   11.128778] [OISFW]:msm_sensor_checkfw 
[   11.128794] [OISFW]:checkFWUpdate 1. sid = 26
[   11.236651] [OISFW]:checkHWFWversion
[   11.236823] [OISFW]:checkHWFWversion 0x8000 =  0x090e0819.
[   11.236828] [OISFW]:checkHWFWversion FW_version =  0x19.
[   11.236832] [OISFW]checkHWFWversion: No need to update.
[   11.236997] [OISFW]:checkFWUpdate 0x8000 =  0x090e0819
[   11.237007] [OISFW]:checkFWUpdate 2. sid = 26
[   11.237015] [OISFW]:checkFWUpdate rc = 0
[   11.237150] [VCMFW]: msm_sensor_checkvcmfw:E sid = 26
[   11.237157] [VCMFW]: msm_sensor_checkvcmfw:E addr_type = 2
[   11.237163] [VCMFW]:checkVCMFWUpdate :E
[   11.237169] [VCMFW]:checkVCMFWUpdate addr_type = 1
[   11.237175] [VCMFW]:checkVCMFWUpdate sid = 114
[   11.250125] [VCMFW]:checkVCMFWUpdate UlReadVal =  0x60710600
[   11.250613] [VCMFW]checkVCMFWUpdate: No need to update AF FW
[   11.250621] [VCMFW]:checkVCMFWUpdate :X
[   11.250625] [VCMFW]: msm_sensor_checkvcmfw:X sid = 26
[   11.250629] [VCMFW]: msm_sensor_checkvcmfw:X addr_type = 2
[   11.250722] msm_sensor_power_down: [05-15 17:11:43.779] imx362
[   11.278098] msm_pm_qos_update_request: update request 100
[   11.278126] msm_pm_qos_update_request: update request -1
[   11.302734] msm_csid_init: CSID_VERSION = 0x30050000
[   11.303491] msm_csid_irq CSID2_IRQ_STATUS_ADDR = 0x800
[   11.338415] MSM-CPP cpp_init_hardware:1138 CPP HW Version: 0x60010000
[   11.338453] MSM-CPP cpp_init_hardware:1156 stream_cnt:0
[   11.352924] msm_cci_init:1427: hw_version = 0x10060000
[   11.353273] msm_sensor_power_up: [05-15 17:11:43.879] imx179
[   11.371511] msm_sensor_power_down: [05-15 17:11:43.899] imx179
[   11.383847] MSM-CPP cpp_release_hardware:1219 cpp hw release done
[   11.393137] ipa-wan ipa3_wwan_ioctl:1699 dev(rmnet_data1) register to IPA
[   11.695732] ipa-wan ipa3_wwan_ioctl:1699 dev(rmnet_data2) register to IPA
[   11.788497] FG: fg_get_battery_temp: batt temperature original:440, tuned:377
[   11.792756] healthd: battery l=79 v=3913 t=37.7 h=2 st=2 c=864 fc=3229000 cc=291 chg=u
[   11.801108] FG: fg_get_battery_temp: batt temperature original:440, tuned:377
[   11.804102] healthd: battery l=79 v=3913 t=37.7 h=2 st=2 c=864 fc=3229000 cc=291 chg=u
[   11.832693] FG: fg_get_battery_temp: batt temperature original:440, tuned:378
[   11.834319] healthd: battery l=79 v=3913 t=37.8 h=2 st=2 c=864 fc=3229000 cc=291 chg=u
[   11.922192] init: processing action (sys.uidcpupower=*) from (/vendor/etc/init/hw/init.taimen.rc:805)
[   12.010693] init: processing action (sys.sysctl.extra_free_kbytes=*) from (/init.rc:725)
[   12.029141] ipa-wan ipa3_wwan_ioctl:1699 dev(rmnet_data3) register to IPA
[   12.359993] ipa-wan ipa3_wwan_ioctl:1699 dev(rmnet_data4) register to IPA
[   12.637283] ipa-wan ipa3_wwan_ioctl:1699 dev(rmnet_data5) register to IPA
[   12.698319] read descriptors
[   12.698340] read strings
[   12.699374] read descriptors
[   12.699390] read strings
[   12.715173] acc_open
[   12.715193] acc_release
[   12.823433] ipa-wan ipa3_wwan_ioctl:1699 dev(rmnet_data6) register to IPA
[   12.887236] nq-nci 8-0028: setting ese_gpio high
[   12.889543] ipa-wan ipa3_wwan_ioctl:1699 dev(rmnet_data7) register to IPA
[   13.527786] NOHZ: local_softirq_pending 08
[   13.530232] HTB: quantum of class 10001 is big. Consider r2q change.
[   13.574044] HTB: quantum of class 10010 is big. Consider r2q change.
[   13.579338] sdcardfs version 2.0
[   13.579357] sdcardfs: dev_name -> /data/media
[   13.579363] sdcardfs: options -> fsuid=1023,fsgid=1023,multiuser,derive_gid,default_normal,mask=6,userid=0,gid=1015
[   13.579370] sdcardfs: mnt -> 0000000000000000
[   13.585350] sdcardfs: mounted on top of /data/media type ext4
[   13.588665] Remount options were mask=23,gid=9997 for vfsmnt 0000000000000000.
[   13.588691] sdcardfs : options - debug:1
[   13.588697] sdcardfs : options - gid:9997
[   13.588702] sdcardfs : options - mask:23
[   13.590547] Remount options were mask=7,gid=9997 for vfsmnt 0000000000000000.
[   13.590564] sdcardfs : options - debug:1
[   13.590571] sdcardfs : options - gid:9997
[   13.590576] sdcardfs : options - mask:7
[   13.604285] SMB138X: smb138x_parallel_get_prop: parallel power supply get prop 4 not supported
[   13.774210] qpnp_led.red: b:00 on:50 off:0
[   13.774441] qpnp_led.green: b:00 on:50 off:0
[   13.774483] qpnp_led.blue: b:00 on:50 off:0
[   13.774665] qpnp_led.red: b:00 on:50 off:0
[   13.774707] qpnp_led.green: b:00 on:50 off:0
[   13.774746] qpnp_led.blue: b:00 on:50 off:0
[   13.774888] qpnp_led.red: b:00 on:50 off:0
[   13.774930] qpnp_led.green: b:00 on:50 off:0
[   13.774969] qpnp_led.blue: b:00 on:50 off:0
[   13.985185] msm_vidc: info: Opening video instance: 0000000000000000, 1
[   13.988260] SMB138X: smb138x_parallel_get_prop: parallel power supply get prop 4 not supported
[   13.993380] FG: fg_get_battery_temp: batt temperature original:440, tuned:378
[   13.994745] healthd: battery l=79 v=3946 t=37.8 h=2 st=2 c=684 fc=3229000 cc=291 chg=u
[   13.994857] FG: fg_get_battery_temp: batt temperature original:440, tuned:379
[   13.996885] healthd: battery l=79 v=3946 t=37.9 h=2 st=2 c=684 fc=3229000 cc=291 chg=u
[   14.046064] NOHZ: local_softirq_pending 08
[   14.046467] NOHZ: local_softirq_pending 08
[   14.058276] subsys-restart: __subsystem_get(): Changing subsys fw_name to venus
[   14.074621] subsys-pil-tz cce0000.qcom,venus: venus: loading from 0x0000000000000000 to 0x0000000000000000
[   14.176554] subsys-pil-tz cce0000.qcom,venus: venus: Brought out of reset
[   14.213741] icnss: WLAN FW is ready: 0xd87
[   14.226676] wlan: probing driver v5.2.1.1K
[   14.227805] msm_vidc:  err: Failed to create debugfs for msm_vidc
[   14.231092] ipa ipa3_uc_reg_rdyCB:1719 bad parm. inout=0000000000000000 
[   14.328673] ipa ipa3_uc_reg_rdyCB:1719 bad parm. inout=0000000000000000 
[   14.337155] ipa ipa3_uc_reg_rdyCB:1719 bad parm. inout=0000000000000000 
[   14.341166] msm_vidc: info: Closed video instance: 0000000000000000
[   14.345637] msm_vidc: info: Opening video instance: 0000000000000000, 1
[   14.345832] msm_vidc:  err: Failed to create debugfs for msm_vidc
[   14.355517] FG: fg_get_battery_temp: batt temperature original:440, tuned:379
[   14.357716] FG: fg_get_battery_temp: batt temperature original:440, tuned:379
[   14.369963] healthd: battery l=79 v=3934 t=37.9 h=2 st=2 c=763 fc=3229000 cc=291 chg=u
[   14.371809] healthd: battery l=79 v=3934 t=37.9 h=2 st=2 c=763 fc=3229000 cc=291 chg=u
[   14.372846] msm_vidc: info: Closed video instance: 0000000000000000
[   14.391365] IPC_RTR: process_new_server_msg: Server 00001003 create rejected, version = 0
[   14.407467] msm_vidc: info: Opening video instance: 0000000000000000, 1
[   14.407671] msm_vidc:  err: Failed to create debugfs for msm_vidc
[   14.420776] msm_vidc: info: Closed video instance: 0000000000000000
[   14.432074] msm_vidc: info: Opening video instance: 0000000000000000, 1
[   14.432268] msm_vidc:  err: Failed to create debugfs for msm_vidc
[   14.451766] msm_vidc: info: Closed video instance: 0000000000000000
[   14.457285] msm_vidc: info: Opening video instance: 0000000000000000, 1
[   14.457490] msm_vidc:  err: Failed to create debugfs for msm_vidc
[   14.495661] msm_vidc: info: Closed video instance: 0000000000000000
[   14.529406] msm_vidc: info: Opening video instance: 0000000000000000, 1
[   14.529844] msm_vidc:  err: Failed to create debugfs for msm_vidc
[   14.575461] msm_vidc: info: Closed video instance: 0000000000000000
[   14.596488] msm_vidc: info: Opening video instance: 0000000000000000, 1
[   14.596703] msm_vidc:  err: Failed to create debugfs for msm_vidc
[   14.623473] msm_vidc: info: Closed video instance: 0000000000000000
[   14.652615] msm_vidc: info: Opening video instance: 0000000000000000, 1
[   14.652813] msm_vidc:  err: Failed to create debugfs for msm_vidc
[   14.677832] msm_vidc: info: Closed video instance: 0000000000000000
[   14.697715] msm_vidc: info: Opening video instance: 0000000000000000, 1
[   14.697914] msm_vidc:  err: Failed to create debugfs for msm_vidc
[   14.738424] msm_vidc: info: Closed video instance: 0000000000000000
[   14.753634] msm_vidc: info: Opening video instance: 0000000000000000, 0
[   14.754110] msm_vidc:  err: Failed to create debugfs for msm_vidc
[   14.997275] Host SW:5.2.1.1K, FW:2.2.1.738.0, HW:WCN3990_V2.1
[   15.033031] cfg80211: Regulatory domain changed to country: US
[   15.033042] cfg80211:  DFS Master region: FCC
[   15.033047] cfg80211:   (start_freq - end_freq @ bandwidth), (max_antenna_gain, max_eirp), (dfs_cac_time)
[   15.033053] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (N/A, 3000 mBm), (N/A)
[   15.033058] cfg80211:   (5170000 KHz - 5250000 KHz @ 80000 KHz, 160000 KHz AUTO), (N/A, 3000 mBm), (N/A)
[   15.033063] cfg80211:   (5250000 KHz - 5330000 KHz @ 80000 KHz, 160000 KHz AUTO), (N/A, 2400 mBm), (0 s)
[   15.033067] cfg80211:   (5490000 KHz - 5730000 KHz @ 160000 KHz), (N/A, 2400 mBm), (0 s)
[   15.033070] cfg80211:   (5735000 KHz - 5835000 KHz @ 80000 KHz), (N/A, 3000 mBm), (N/A)
[   15.033074] cfg80211:   (57240000 KHz - 70200000 KHz @ 2160000 KHz), (N/A, 4000 mBm), (N/A)
[   15.123059] msm_vidc: info: Closed video instance: 0000000000000000
[   15.146681] msm_vidc: info: Opening video instance: 0000000000000000, 0
[   15.147508] msm_vidc:  err: Failed to create debugfs for msm_vidc
[   15.158782] msm_vidc: info: Closed video instance: 0000000000000000
[   15.173095] msm_vidc: info: Opening video instance: 0000000000000000, 0
[   15.173679] msm_vidc:  err: Failed to create debugfs for msm_vidc
[   15.188327] msm_vidc: info: Closed video instance: 0000000000000000
[   15.193282] msm_vidc: info: Opening video instance: 0000000000000000, 0
[   15.193736] msm_vidc:  err: Failed to create debugfs for msm_vidc
[   15.209831] msm_vidc: info: Closed video instance: 0000000000000000
[   15.221971] msm_vidc: info: Opening video instance: 0000000000000000, 0
[   15.222412] msm_vidc:  err: Failed to create debugfs for msm_vidc
[   15.231796] msm_vidc: info: Closed video instance: 0000000000000000
[   16.338597] init: Service 'bootanim' (pid 626) exited with status 0
[   16.421700] init: processing action (sys.boot_completed=1) from (/init.rc:719)
[   16.421743] init: processing action (sys.boot_completed=1) from (/vendor/etc/init/hw/init.taimen.rc:573)
[   16.423079] init: starting service 'vendor.power_sh'...
[   16.425055] init: Command 'write /sys/devices/soc/${ro.boot.bootdevice}/clkscale_enable 1' action=sys.boot_completed=1 (/vendor/etc/init/hw/init.taimen.rc:578) took 0ms and failed: Unable to write to file '/sys/devices/soc/1da4000.ufshc/clkscale_enable': open() failed: Permission denied
[   16.457650] init: processing action (sys.boot_completed=1 && sys.logbootcomplete=1) from (/system/etc/init/bootstat.rc:70)
[   16.458209] init: starting service 'exec 7 (/system/bin/bootstat --set_system_boot_reason --record_boot_complete --record_boot_reason --record_time_since_factory_reset -l)'...
[   16.459479] init: processing action (sys.boot_completed=1 && sys.wifitracing.started=0) from (/system/etc/init/wifi-events.rc:20)
[   16.459928] selinux: SELinux: Could not get canonical path for /sys/kernel/debug/tracing/instances/wifi restorecon: No such file or directory.\x0a
[   16.461842] init: processing action (sys.boot_completed=1) from (/vendor/etc/init/init-taimen.rc:16)
[   16.464308] init: processing action (persist.sys.zram_enabled=1 && sys-boot-completed-set) from (/vendor/etc/init/hw/init.taimen.rc:625)
[   16.476497] possible reason: unannotated irqs-off.
[   16.476516] ------------[ cut here ]------------
[   16.476521] WARNING: at ../fs/kernfs/dir.c:29
[   16.476525] 
[   16.476530] CPU: 7 PID: 1 Comm: init Tainted: G        W       4.4.169-Sultan #15
[   16.476534] Hardware name: Qualcomm Technologies, Inc. MSM8998 v2.1 (DT)
[   16.476539] task: 0000000000000000 task.stack: 0000000000000000
[   16.476549] PC is at kernfs_active+0x48/0x68
[   16.476553] LR is at kernfs_active+0x44/0x68
[   16.476556] pc : [<ffffff9f2ea40c38>] lr : [<ffffff9f2ea40c34>] pstate: 60400145
[   16.476560] sp : ffffffe155b6f9c0
[   16.476563] x29: ffffffe155b6f9c0 x28: 0000000000000000 
[   16.476571] x27: 0000000000000000 x26: ffffff9f2fbf1c58 
[   16.476578] x25: ffffff9f30a2a000 x24: ffffff9f30a2ae98 
[   16.476585] x23: ffffffe1600b4080 x22: ffffffe1b0db3bd0 
[   16.476592] x21: ffffffe1b0db3bd0 x20: ffffffe143c5b150 
[   16.476599] x19: ffffffe1b0db3bd0 x18: 0000000000000006 
[   16.476605] x17: 000000000000003f x16: 0000000000000000 
[   16.476612] x15: ffffff9f30a05d90 x14: 0000000000000006 
[   16.476619] x13: 000000000000065a x12: 0000000000000655 
[   16.476626] x11: ffffff9f30c0cb00 x10: ffffff9f30a2af18 
[   16.476633] x9 : ffffff9f30c0c000 x8 : ffffff9f31346e88 
[   16.476639] x7 : 00000042835a6000 x6 : 0000000000001ac2 
[   16.476648] x5 : 0000000000000040 x4 : 00000042835a6000 
[   16.476657] x3 : 0000000000000004 x2 : 0000000000000005 
[   16.476664] x1 : ffffff9f30a31cd8 x0 : 0000000000000000 
[   16.476673] \x0aPC: 0xffffff9f2ea40bf8:
[   16.476677] 0bf8  910003fd f9000bf3 aa0003f3 b9442020 350000e0 b9400660 f9400bf3 2a2003e0
[   16.476702] 0c18  a8c27bfd 531f7c00 d65f03c0 b000ff80 9131a000 9101c000 97fafe98 35fffec0
[   16.476724] 0c38  d4210000 b9400660 f9400bf3 2a2003e0 a8c27bfd 531f7c00 d65f03c0 d503201f
[   16.476751] 0c58  a9bc7bfd aa0103e4 52801801 910003fd 72a04801 a90153f3 a9025bf5 aa0003f6
[   16.476774] \x0aLR: 0xffffff9f2ea40bf4:
[   16.476777] 0bf4  f0010001 910003fd f9000bf3 aa0003f3 b9442020 350000e0 b9400660 f9400bf3
[   16.476802] 0c14  2a2003e0 a8c27bfd 531f7c00 d65f03c0 b000ff80 9131a000 9101c000 97fafe98
[   16.476824] 0c34  35fffec0 d4210000 b9400660 f9400bf3 2a2003e0 a8c27bfd 531f7c00 d65f03c0
[   16.476845] 0c54  d503201f a9bc7bfd aa0103e4 52801801 910003fd 72a04801 a90153f3 a9025bf5
[   16.476868] \x0aSP: 0xffffffe155b6f980:
[   16.476871] f980  2ea40c34 ffffff9f 55b6f9c0 ffffffe1 2ea40c38 ffffff9f 60400145 00000000
[   16.476892] f9a0  b0db3bd0 ffffffe1 43c5b150 ffffffe1 00000000 00000080 2ea42204 ffffff9f
[   16.476914] f9c0  55b6f9e0 ffffffe1 2ea42404 ffffff9f 30a31c68 ffffff9f 7a81e143 403a4a6d
[   16.476935] f9e0  55b6fa10 ffffffe1 2ea42504 ffffff9f 43c5b150 ffffffe1 600b4080 ffffffe1
[   16.476957] 
[   16.476961] ---[ end trace 24ec051baadc3c87 ]---
[   16.476964] Call trace:
[   16.476969] Exception stack(0xffffffe155b6f7d0 to 0xffffffe155b6f900)
[   16.476973] f7c0:                                   ffffffe1b0db3bd0 0000008000000000
[   16.476978] f7e0: 00000000834df000 ffffff9f2ea40c38 0000000060400145 0000000000000000
[   16.476982] f800: 0000000000000001 0000000000000000 ffffff9f2ea423ac 0000000000000140
[   16.476987] f820: ffffffe155b88000 ffffff9f30a31cd8 ffffffe155b6f870 0000000000000000
[   16.476991] f840: ffffff9f31344ba8 ffffff9f3196eb28 ffffffe100000005 ffffff9f2e88a160
[   16.476995] f860: ffffffe155b6f8b0 ffffff9f2e8ff8c4 0000000000000005 0000000000000007
[   16.477000] f880: ffffffe155b88000 403a4a6d7a81e143 0000000000000000 ffffff9f30a31cd8
[   16.477004] f8a0: 0000000000000005 0000000000000004 00000042835a6000 0000000000000040
[   16.477009] f8c0: 0000000000001ac2 00000042835a6000 ffffff9f31346e88 ffffff9f30c0c000
[   16.477013] f8e0: ffffff9f30a2af18 ffffff9f30c0cb00 0000000000000655 000000000000065a
[   16.477018] [<ffffff9f2ea40c38>] kernfs_active+0x48/0x68
[   16.477023] [<ffffff9f2ea42404>] kernfs_add_one+0x84/0x138
[   16.477027] [<ffffff9f2ea42504>] kernfs_create_dir_ns+0x4c/0x88
[   16.477033] [<ffffff9f2ea44b70>] sysfs_create_dir_ns+0x40/0xb0
[   16.477038] [<ffffff9f2eb59048>] kobject_add_internal+0x90/0x290
[   16.477043] [<ffffff9f2eb592d4>] kobject_init_and_add+0x8c/0xd0
[   16.477047] [<ffffff9f2e9b1548>] sysfs_slab_add+0x1a0/0x220
[   16.477051] [<ffffff9f2e9b1c4c>] __kmem_cache_create+0x16c/0x2e0
[   16.477056] [<ffffff9f2e98d9c0>] kmem_cache_create+0x150/0x240
[   16.477060] [<ffffff9f2e9b7004>] zs_create_pool+0xcc/0x340
[   16.477066] [<ffffff9f2edb3f98>] disksize_store+0x70/0x1b0
[   16.477072] [<ffffff9f2ed8b590>] dev_attr_store+0x18/0x28
[   16.477075] [<ffffff9f2ea441e8>] sysfs_kf_write+0x48/0x70
[   16.477079] [<ffffff9f2ea43404>] kernfs_fop_write+0xcc/0x1b0
[   16.477084] [<ffffff9f2e9bb5b8>] __vfs_write+0x30/0x100
[   16.477088] [<ffffff9f2e9bb898>] vfs_write+0x128/0x1b0
[   16.477092] [<ffffff9f2e9bba3c>] SyS_write+0x5c/0xc0
[   16.477098] [<ffffff9f2e8832b0>] el0_svc_naked+0x24/0x28
[   16.489505] NOHZ: local_softirq_pending 08
[   16.493182] zram0: detected capacity change from 0 to 536870912
[   16.545457] logd: logdr: UID=1000 GID=1007 PID=2248 n tail=0 logMask=80 pid=0 start=0ns timeout=0ns
[   16.562679] mkswap: Swapspace size: 524284k, UUID=114efeb2-3cec-41c2-adef-d1f4d292c454
[   16.576440] Adding 524284k swap on /dev/block/zram0.  Priority:-1 extents:1 across:524284k SS
[   16.577733] init: Command 'swapon_all /vendor/etc/fstab.${ro.hardware}' action=persist.sys.zram_enabled=1 && sys-boot-completed-set (/vendor/etc/init/hw/init.taimen.rc:626) took 113ms and succeeded
[   16.579704] init: processing action (sys.post_boot.parsed=1) from (/vendor/etc/init/hw/init.taimen.rc:567)
[   16.603678] init: processing action (ro.boot.bootreason=*) from (/system/etc/init/bootstat.rc:4)
[   16.608791] init: Service 'exec 7 (/system/bin/bootstat --set_system_boot_reason --record_boot_complete --record_boot_reason --record_time_since_factory_reset -l)' (pid 2248) exited with status 0
[   16.624798] init: Service 'vendor.power_sh' (pid 2245) exited with status 0
[   18.536422] SMB138X: smb138x_parallel_get_prop: parallel power supply get prop 4 not supported
[   18.914957] SMB138X: smb138x_parallel_get_prop: parallel power supply get prop 4 not supported
[   18.918365] FG: fg_get_battery_temp: batt temperature original:430, tuned:375
[   18.918871] FG: fg_get_battery_temp: batt temperature original:430, tuned:375
[   18.922283] healthd: battery l=79 v=4093 t=37.5 h=2 st=2 c=5 fc=3229000 cc=291 chg=u
[   18.922462] healthd: battery l=79 v=4093 t=37.5 h=2 st=2 c=5 fc=3229000 cc=291 chg=u
[   19.295247] FG: fg_get_battery_temp: batt temperature original:430, tuned:375
[   19.295457] FG: fg_get_battery_temp: batt temperature original:430, tuned:375
[   19.299542] healthd: battery l=79 v=4093 t=37.5 h=2 st=2 c=5 fc=3229000 cc=291 chg=u
[   19.299846] healthd: battery l=79 v=4093 t=37.5 h=2 st=2 c=5 fc=3229000 cc=291 chg=u
[   19.484390] ------------[ cut here ]------------
[   19.484419] WARNING: at ../kernel/sched/sched.h:1394
[   19.484425] 
[   19.484434] CPU: 0 PID: 0 Comm: swapper/0 Tainted: G        W       4.4.169-Sultan #15
[   19.484440] Hardware name: Qualcomm Technologies, Inc. MSM8998 v2.1 (DT)
[   19.484447] task: 0000000000000000 task.stack: 0000000000000000
[   19.484462] PC is at select_energy_cpu_brute+0x7d0/0x928
[   19.484468] LR is at select_energy_cpu_brute+0x408/0x928
[   19.484475] pc : [<ffffff9f2e8e82c0>] lr : [<ffffff9f2e8e7ef8>] pstate: 404001c5
[   19.484479] sp : ffffff9f30a03700
[   19.484485] x29: ffffff9f30a03700 x28: 0000000000000002 
[   19.484497] x27: 0000000000000002 x26: ffffff9f30a05e8c 
[   19.484508] x25: ffffff9f30a06158 x24: ffffff9f2f808000 
[   19.484519] x23: ffffffe1b309a800 x22: ffffff9f30a05f34 
[   19.484530] x21: 000000000000004a x20: 0000000000000045 
[   19.484540] x19: ffffffe1b1489880 x18: 0000000000000000 
[   19.484551] x17: 0000000000000000 x16: 0000000000000000 
[   19.484561] x15: 0000000000000000 x14: 000000000000000a 
[   19.484572] x13: 0000000000002e9f x12: ffffff9f30a05e88 
[   19.484583] x11: 0000000000000000 x10: 0000000000000005 
[   19.484593] x9 : 000000000000001a x8 : 0000000000000000 
[   19.484604] x7 : ffffff9f2e8fa32c x6 : 000000001edff655 
[   19.484615] x5 : 000000000000000c x4 : 00000042828e1000 
[   19.484626] x3 : 0000000000000009 x2 : ffffff9f3024a000 
[   19.484636] x1 : 0000000000000000 x0 : 0000000000000000 
[   19.484647] \x0aPC: 0xffffff9f2e8e8280:
[   19.484653] 8280  912c6000 52806be1 39000e83 940070a1 17fffe40 9400c1e7 35ffcac0 52800023
[   19.484687] 82a0  d00097c2 b00097e0 91154042 911b4000 52831f61 39001a83 94007096 17fffe4d
[   19.484718] 82c0  d4210000 17ffff0e b94137e0 340003f5 90011921 39692021 34000881 f0011902
[   19.484749] 82e0  91160042 7100001f 5a80a401 a9459045 4b050084 6b01009f 5400074d 7100001f
[   19.484782] \x0aLR: 0xffffff9f2e8e7eb8:
[   19.484788] 7eb8  b9400042 d376d421 9ac20821 17ffffa8 f9404fe2 b94097e1 eb02001f 1a9b2021
[   19.484818] 7ed8  9a802040 b90097e1 f9004fe0 17ffff87 b940afe0 7100001f 54fff08c 9400c2cf
[   19.484849] 7ef8  34001e40 b940c3e2 b94b12e0 37f805e2 f9403fe1 b9403021 7100003f b940cbe1
[   19.484880] 7f18  7a411000 1a81b000 b900cbe0 1a82b360 b900c3e0 17ffff75 eb0102bf 9a959020
[   19.484911] \x0aSP: 0xffffff9f30a036c0:
[   19.484917] 36c0  2e8e7ef8 ffffff9f 30a03700 ffffff9f 2e8e82c0 ffffff9f 404001c5 00000000
[   19.484947] 36e0  30a03700 ffffff9f 2e8e7db8 ffffff9f ffffffff ffffffff 2e8e7ef8 ffffff9f
[   19.484978] 3700  30a038a0 ffffff9f 2e8e9184 ffffff9f 00000000 00000000 00000000 00000000
[   19.485009] 3720  00000000 00000000 0000004f 00000000 00000004 00000000 30a138d0 ffffff9f
[   19.485040] 
[   19.485046] ---[ end trace 24ec051baadc3c88 ]---
[   19.485052] Call trace:
[   19.485061] Exception stack(0xffffff9f30a03510 to 0xffffff9f30a03640)
[   19.485068] 3500:                                   ffffffe1b1489880 0000008000000000
[   19.485077] 3520: 0000000082408000 ffffff9f2e8e82c0 00000000404001c5 ffffff9f2e901f78
[   19.485086] 3540: ffffff9f30a14288 ffffff9f30a43000 ffffff9f30a05d90 ffffff9f30a14090
[   19.485095] 3560: ffffff9f31925000 ffffff9f2e901dbc ffffff9f30a03670 ffffff9f2e904024
[   19.485103] 3580: ffffff9f30a234c8 0000000000000000 0000000000000000 0000000000000002
[   19.485112] 35a0: 0000000000000000 0000000000000000 ffffff9f2e8fa32c 00000000000001c0
[   19.485120] 35c0: ffffff9f30a138d0 403a4a6d7a81e143 0000000000000000 0000000000000000
[   19.485128] 35e0: ffffff9f3024a000 0000000000000009 00000042828e1000 000000000000000c
[   19.485137] 3600: 000000001edff655 ffffff9f2e8fa32c 0000000000000000 000000000000001a
[   19.485145] 3620: 0000000000000005 0000000000000000 ffffff9f30a05e88 0000000000002e9f
[   19.485155] [<ffffff9f2e8e82c0>] select_energy_cpu_brute+0x7d0/0x928
[   19.485162] [<ffffff9f2e8e9184>] select_task_rq_fair+0xd6c/0xe28
[   19.485171] [<ffffff9f2e8d4760>] try_to_wake_up+0x180/0x3c8
[   19.485177] [<ffffff9f2e8d540c>] wake_up_process+0x14/0x20
[   19.485186] [<ffffff9f2e8cb3ac>] insert_kthread_work+0x8c/0xa0
[   19.485192] [<ffffff9f2e8cbe48>] queue_kthread_work+0x98/0xc0
[   19.485203] [<ffffff9f2ec9a27c>] queue_cmd+0x84/0xe8
[   19.485211] [<ffffff9f2ec9cf04>] tx_data+0x41c/0x4d8
[   19.485218] [<ffffff9f2ec9cff8>] tx+0x18/0x20
[   19.485227] [<ffffff9f2ec8d618>] glink_tx_common+0x798/0xb30
[   19.485235] [<ffffff9f2ec8f1e4>] glink_tx+0x24/0x30
[   19.485242] [<ffffff9f2eca72e4>] msm_rpm_glink_send_buffer+0x6c/0xf0
[   19.485250] [<ffffff9f2ecaa0cc>] msm_rpm_enter_sleep+0x7c/0x1c8
[   19.485260] [<ffffff9f2f108694>] cluster_prepare+0x414/0xb00
[   19.485267] [<ffffff9f2f1088cc>] cluster_prepare+0x64c/0xb00
[   19.485275] [<ffffff9f2f1096ac>] lpm_cpuidle_enter+0xd4/0x360
[   19.485283] [<ffffff9f2f105094>] cpuidle_enter_state+0x12c/0x258
[   19.485291] [<ffffff9f2f1051f8>] cpuidle_enter+0x18/0x20
[   19.485301] [<ffffff9f2e8f4c78>] call_cpuidle+0x20/0x58
[   19.485308] [<ffffff9f2e8f4de8>] cpu_startup_entry+0x138/0x278
[   19.485319] [<ffffff9f2f79b20c>] rest_init+0x148/0x158
[   19.485329] [<ffffff9f30200bd8>] start_kernel+0x3d8/0x400
[   19.485337] [<ffffff9f302001c4>] __primary_switched+0x30/0x8c
[   19.485350] ------------[ cut here ]------------
[   19.485356] WARNING: at ../kernel/sched/sched.h:1394
[   19.485361] 
[   19.485367] CPU: 0 PID: 0 Comm: swapper/0 Tainted: G        W       4.4.169-Sultan #15
[   19.485372] Hardware name: Qualcomm Technologies, Inc. MSM8998 v2.1 (DT)
[   19.485378] task: 0000000000000000 task.stack: 0000000000000000
[   19.485385] PC is at select_energy_cpu_brute+0x7d0/0x928
[   19.485390] LR is at select_energy_cpu_brute+0x408/0x928
[   19.485396] pc : [<ffffff9f2e8e82c0>] lr : [<ffffff9f2e8e7ef8>] pstate: 404001c5
[   19.485401] sp : ffffff9f30a03700
[   19.485406] x29: ffffff9f30a03700 x28: 0000000000000003 
[   19.485417] x27: 0000000000000003 x26: ffffff9f30a05e8c 
[   19.485428] x25: ffffff9f30a06158 x24: ffffff9f2f808000 
[   19.485438] x23: ffffffe1b326d800 x22: ffffff9f30a05f34 
[   19.485449] x21: 000000000000004a x20: 0000000000000045 
[   19.485460] x19: ffffffe1b1489880 x18: 0000000000000000 
[   19.485470] x17: 0000000000000000 x16: 0000000000000000 
[   19.485481] x15: 0000000000000000 x14: 000000000000000a 
[   19.485491] x13: 0000000000002e9f x12: ffffff9f30a05e88 
[   19.485502] x11: 0000000000000000 x10: 0000000000000005 
[   19.485513] x9 : 000000000000001a x8 : 0000000000000000 
[   19.485524] x7 : ffffff9f2e8fa32c x6 : 000000001edff655 
[   19.485535] x5 : 000000000000000c x4 : 00000042828e1000 
[   19.485546] x3 : 0000000000000009 x2 : ffffff9f3024a000 
[   19.485557] x1 : 0000000000000000 x0 : 0000000000000000 
[   19.485568] \x0aPC: 0xffffff9f2e8e8280:
[   19.485575] 8280  912c6000 52806be1 39000e83 940070a1 17fffe40 9400c1e7 35ffcac0 52800023
[   19.485608] 82a0  d00097c2 b00097e0 91154042 911b4000 52831f61 39001a83 94007096 17fffe4d
[   19.485640] 82c0  d4210000 17ffff0e b94137e0 340003f5 90011921 39692021 34000881 f0011902
[   19.485672] 82e0  91160042 7100001f 5a80a401 a9459045 4b050084 6b01009f 5400074d 7100001f
[   19.485703] \x0aLR: 0xffffff9f2e8e7eb8:
[   19.485709] 7eb8  b9400042 d376d421 9ac20821 17ffffa8 f9404fe2 b94097e1 eb02001f 1a9b2021
[   19.485740] 7ed8  9a802040 b90097e1 f9004fe0 17ffff87 b940afe0 7100001f 54fff08c 9400c2cf
[   19.485771] 7ef8  34001e40 b940c3e2 b94b12e0 37f805e2 f9403fe1 b9403021 7100003f b940cbe1
[   19.485803] 7f18  7a411000 1a81b000 b900cbe0 1a82b360 b900c3e0 17ffff75 eb0102bf 9a959020
[   19.485835] \x0aSP: 0xffffff9f30a036c0:
[   19.485840] 36c0  2e8e7ef8 ffffff9f 30a03700 ffffff9f 2e8e82c0 ffffff9f 404001c5 00000000
[   19.485872] 36e0  30a03700 ffffff9f 2e8e7db8 ffffff9f ffffffff ffffffff 2e8e7ef8 ffffff9f
[   19.485903] 3700  30a038a0 ffffff9f 2e8e9184 ffffff9f 00000000 00000000 00000000 00000000
[   19.485934] 3720  00000000 00000000 0000004f 00000000 00000004 00000000 30a138d0 ffffff9f
[   19.485965] 
[   19.485971] ---[ end trace 24ec051baadc3c89 ]---
[   19.485975] Call trace:
[   19.485981] Exception stack(0xffffff9f30a03510 to 0xffffff9f30a03640)
[   19.485988] 3500:                                   ffffffe1b1489880 0000008000000000
[   19.485996] 3520: 00000000834df000 ffffff9f2e8e82c0 00000000404001c5 ffffff9f2e901f78
[   19.486004] 3540: ffffff9f30a14288 ffffff9f30a43000 ffffff9f30a05d90 ffffff9f30a14090
[   19.486013] 3560: ffffff9f31925000 ffffff9f2e901dbc ffffff9f30a03670 ffffff9f2e904024
[   19.486021] 3580: ffffff9f30a234c8 0000000000000000 0000000000000000 0000000000000002
[   19.486029] 35a0: 0000000000000000 0000000000000000 ffffff9f2e8fa32c 00000000000001c0
[   19.486038] 35c0: ffffff9f30a138d0 403a4a6d7a81e143 0000000000000000 0000000000000000
[   19.486046] 35e0: ffffff9f3024a000 0000000000000009 00000042828e1000 000000000000000c
[   19.486055] 3600: 000000001edff655 ffffff9f2e8fa32c 0000000000000000 000000000000001a
[   19.486063] 3620: 0000000000000005 0000000000000000 ffffff9f30a05e88 0000000000002e9f
[   19.486072] [<ffffff9f2e8e82c0>] select_energy_cpu_brute+0x7d0/0x928
[   19.486079] [<ffffff9f2e8e9184>] select_task_rq_fair+0xd6c/0xe28
[   19.486086] [<ffffff9f2e8d4760>] try_to_wake_up+0x180/0x3c8
[   19.486093] [<ffffff9f2e8d540c>] wake_up_process+0x14/0x20
[   19.486100] [<ffffff9f2e8cb3ac>] insert_kthread_work+0x8c/0xa0
[   19.486107] [<ffffff9f2e8cbe48>] queue_kthread_work+0x98/0xc0
[   19.486115] [<ffffff9f2ec9a27c>] queue_cmd+0x84/0xe8
[   19.486122] [<ffffff9f2ec9cf04>] tx_data+0x41c/0x4d8
[   19.486128] [<ffffff9f2ec9cff8>] tx+0x18/0x20
[   19.486135] [<ffffff9f2ec8d618>] glink_tx_common+0x798/0xb30
[   19.486143] [<ffffff9f2ec8f1e4>] glink_tx+0x24/0x30
[   19.486149] [<ffffff9f2eca72e4>] msm_rpm_glink_send_buffer+0x6c/0xf0
[   19.486155] [<ffffff9f2ecaa0cc>] msm_rpm_enter_sleep+0x7c/0x1c8
[   19.486162] [<ffffff9f2f108694>] cluster_prepare+0x414/0xb00
[   19.486169] [<ffffff9f2f1088cc>] cluster_prepare+0x64c/0xb00
[   19.486176] [<ffffff9f2f1096ac>] lpm_cpuidle_enter+0xd4/0x360
[   19.486184] [<ffffff9f2f105094>] cpuidle_enter_state+0x12c/0x258
[   19.486190] [<ffffff9f2f1051f8>] cpuidle_enter+0x18/0x20
[   19.486197] [<ffffff9f2e8f4c78>] call_cpuidle+0x20/0x58
[   19.486205] [<ffffff9f2e8f4de8>] cpu_startup_entry+0x138/0x278
[   19.486212] [<ffffff9f2f79b20c>] rest_init+0x148/0x158
[   19.486220] [<ffffff9f30200bd8>] start_kernel+0x3d8/0x400
[   19.486227] [<ffffff9f302001c4>] __primary_switched+0x30/0x8c
[   19.708541] ------------[ cut here ]------------
[   19.708557] WARNING: at ../kernel/sched/sched.h:1394
[   19.708563] 
[   19.708571] CPU: 7 PID: 0 Comm: swapper/7 Tainted: G        W       4.4.169-Sultan #15
[   19.708575] Hardware name: Qualcomm Technologies, Inc. MSM8998 v2.1 (DT)
[   19.708582] task: 0000000000000000 task.stack: 0000000000000000
[   19.708595] PC is at select_energy_cpu_brute+0x7d0/0x928
[   19.708601] LR is at select_energy_cpu_brute+0x408/0x928
[   19.708606] pc : [<ffffff9f2e8e82c0>] lr : [<ffffff9f2e8e7ef8>] pstate: 404001c5
[   19.708611] sp : ffffffe148f2b760
[   19.708616] x29: ffffffe148f2b760 x28: 0000000000000002 
[   19.708626] x27: 0000000000000002 x26: ffffff9f30a05e8c 
[   19.708636] x25: ffffff9f30a06158 x24: ffffff9f2f808000 
[   19.708645] x23: ffffffe1b309a800 x22: ffffff9f30a05f34 
[   19.708654] x21: 000000000000004e x20: 000000000000004e 
[   19.708662] x19: ffffffe1b1489880 x18: 0000000000000001 
[   19.708671] x17: 00000000fa83b2da x16: 0000000000036ad1 
[   19.708680] x15: 0000000000036ad1 x14: 0000000000353a3a 
[   19.708689] x13: 0000000000000400 x12: ffffff9f30a05e88 
[   19.708698] x11: 0000000000000000 x10: 0000000000000005 
[   19.708706] x9 : 000000000000001a x8 : 0000000000000000 
[   19.708715] x7 : ffffff9f2e8fa32c x6 : 000000001edff655 
[   19.708724] x5 : 000000000000000c x4 : 00000042835a6000 
[   19.708733] x3 : 0000000000000009 x2 : ffffff9f3024a000 
[   19.708741] x1 : 0000000000000000 x0 : 0000000000000000 
[   19.708751] \x0aPC: 0xffffff9f2e8e8280:
[   19.708756] 8280  912c6000 52806be1 39000e83 940070a1 17fffe40 9400c1e7 35ffcac0 52800023
[   19.708785] 82a0  d00097c2 b00097e0 91154042 911b4000 52831f61 39001a83 94007096 17fffe4d
[   19.708813] 82c0  d4210000 17ffff0e b94137e0 340003f5 90011921 39692021 34000881 f0011902
[   19.708841] 82e0  91160042 7100001f 5a80a401 a9459045 4b050084 6b01009f 5400074d 7100001f
[   19.708869] \x0aLR: 0xffffff9f2e8e7eb8:
[   19.708873] 7eb8  b9400042 d376d421 9ac20821 17ffffa8 f9404fe2 b94097e1 eb02001f 1a9b2021
[   19.708902] 7ed8  9a802040 b90097e1 f9004fe0 17ffff87 b940afe0 7100001f 54fff08c 9400c2cf
[   19.708929] 7ef8  34001e40 b940c3e2 b94b12e0 37f805e2 f9403fe1 b9403021 7100003f b940cbe1
[   19.708957] 7f18  7a411000 1a81b000 b900cbe0 1a82b360 b900c3e0 17ffff75 eb0102bf 9a959020
[   19.708987] \x0aSP: 0xffffffe148f2b720:
[   19.708992] b720  2e8e7ef8 ffffff9f 48f2b760 ffffffe1 2e8e82c0 ffffff9f 404001c5 00000000
[   19.709020] b740  48f2b760 ffffffe1 2e8e7db8 ffffff9f ffffffff ffffffff 2e8e7ef8 ffffff9f
[   19.709048] b760  48f2b900 ffffffe1 2e8e9184 ffffff9f 00000000 00000000 00000000 00000000
[   19.709075] b780  00000000 00000000 0000002c 00000000 00000004 00000000 48f16200 ffffffe1
[   19.709103] 
[   19.709108] ---[ end trace 24ec051baadc3c8a ]---
[   19.709112] Call trace:
[   19.709118] Exception stack(0xffffffe148f2b570 to 0xffffffe148f2b6a0)
[   19.709123] b560:                                   ffffffe1b1489880 0000008000000000
[   19.709130] b580: 00000000834df000 ffffff9f2e8e82c0 00000000404001c5 ffffff9f2e901f78
[   19.709137] b5a0: ffffffe148f16bb8 ffffff9f30a43000 ffffff9f30a05d90 ffffffe148f169c0
[   19.709144] b5c0: ffffff9f31925000 ffffff9f2e901dbc ffffffe148f2b6d0 ffffff9f2e904024
[   19.709149] b5e0: ffffff9f30a234c8 0000000000000000 0000000000000000 0000000000000002
[   19.709155] b600: 0000000000000000 0000000000000000 ffffff9f2e8fa32c 00000000000001c0
[   19.709162] b620: ffffffe148f16200 403a4a6d7a81e143 0000000000000000 0000000000000000
[   19.709167] b640: ffffff9f3024a000 0000000000000009 00000042835a6000 000000000000000c
[   19.709173] b660: 000000001edff655 ffffff9f2e8fa32c 0000000000000000 000000000000001a
[   19.709178] b680: 0000000000000005 0000000000000000 ffffff9f30a05e88 0000000000000400
[   19.709185] [<ffffff9f2e8e82c0>] select_energy_cpu_brute+0x7d0/0x928
[   19.709191] [<ffffff9f2e8e9184>] select_task_rq_fair+0xd6c/0xe28
[   19.709198] [<ffffff9f2e8d4760>] try_to_wake_up+0x180/0x3c8
[   19.709204] [<ffffff9f2e8d540c>] wake_up_process+0x14/0x20
[   19.709212] [<ffffff9f2e8cb3ac>] insert_kthread_work+0x8c/0xa0
[   19.709217] [<ffffff9f2e8cbe48>] queue_kthread_work+0x98/0xc0
[   19.709224] [<ffffff9f2ec9a27c>] queue_cmd+0x84/0xe8
[   19.709229] [<ffffff9f2ec9cf04>] tx_data+0x41c/0x4d8
[   19.709234] [<ffffff9f2ec9cff8>] tx+0x18/0x20
[   19.709242] [<ffffff9f2ec8d618>] glink_tx_common+0x798/0xb30
[   19.709247] [<ffffff9f2ec8f1e4>] glink_tx+0x24/0x30
[   19.709253] [<ffffff9f2eca72e4>] msm_rpm_glink_send_buffer+0x6c/0xf0
[   19.709258] [<ffffff9f2ecaa0cc>] msm_rpm_enter_sleep+0x7c/0x1c8
[   19.709266] [<ffffff9f2f108694>] cluster_prepare+0x414/0xb00
[   19.709271] [<ffffff9f2f1088cc>] cluster_prepare+0x64c/0xb00
[   19.709277] [<ffffff9f2f1096ac>] lpm_cpuidle_enter+0xd4/0x360
[   19.709282] [<ffffff9f2f105094>] cpuidle_enter_state+0x12c/0x258
[   19.709287] [<ffffff9f2f1051f8>] cpuidle_enter+0x18/0x20
[   19.709294] [<ffffff9f2e8f4c78>] call_cpuidle+0x20/0x58
[   19.709299] [<ffffff9f2e8f4de8>] cpu_startup_entry+0x138/0x278
[   19.709306] [<ffffff9f2e88ecdc>] secondary_start_kernel+0x10c/0x128
[   19.709310] [<0000000080fa603c>] 0x80fa603c
[   19.709316] ------------[ cut here ]------------
[   19.709321] WARNING: at ../kernel/sched/sched.h:1394
[   19.709325] 
[   19.709330] CPU: 7 PID: 0 Comm: swapper/7 Tainted: G        W       4.4.169-Sultan #15
[   19.709335] Hardware name: Qualcomm Technologies, Inc. MSM8998 v2.1 (DT)
[   19.709339] task: 0000000000000000 task.stack: 0000000000000000
[   19.709344] PC is at select_energy_cpu_brute+0x7d0/0x928
[   19.709349] LR is at select_energy_cpu_brute+0x408/0x928
[   19.709353] pc : [<ffffff9f2e8e82c0>] lr : [<ffffff9f2e8e7ef8>] pstate: 404001c5
[   19.709357] sp : ffffffe148f2b760
[   19.709361] x29: ffffffe148f2b760 x28: 0000000000000003 
[   19.709370] x27: 0000000000000003 x26: ffffff9f30a05e8c 
[   19.709379] x25: ffffff9f30a06158 x24: ffffff9f2f808000 
[   19.709387] x23: ffffffe1b326d800 x22: ffffff9f30a05f34 
[   19.709396] x21: 0000000000000050 x20: 000000000000004e 
[   19.709405] x19: ffffffe1b1489880 x18: 0000000000000001 
[   19.709414] x17: 00000000fa83b2da x16: 0000000000036ad1 
[   19.709422] x15: 0000000000036ad1 x14: 0000000000353a3a 
[   19.709431] x13: 0000000000000400 x12: ffffff9f30a05e88 
[   19.709440] x11: 0000000000000000 x10: 0000000000000005 
[   19.709449] x9 : 000000000000001a x8 : 0000000000000000 
[   19.709457] x7 : ffffff9f2e8fa32c x6 : 000000001edff655 
[   19.709466] x5 : 000000000000000c x4 : 00000042835a6000 
[   19.709475] x3 : 0000000000000009 x2 : ffffff9f3024a000 
[   19.709483] x1 : 0000000000000000 x0 : 0000000000000000 
[   19.709492] \x0aPC: 0xffffff9f2e8e8280:
[   19.709497] 8280  912c6000 52806be1 39000e83 940070a1 17fffe40 9400c1e7 35ffcac0 52800023
[   19.709525] 82a0  d00097c2 b00097e0 91154042 911b4000 52831f61 39001a83 94007096 17fffe4d
[   19.709553] 82c0  d4210000 17ffff0e b94137e0 340003f5 90011921 39692021 34000881 f0011902
[   19.709581] 82e0  91160042 7100001f 5a80a401 a9459045 4b050084 6b01009f 5400074d 7100001f
[   19.709609] \x0aLR: 0xffffff9f2e8e7eb8:
[   19.709613] 7eb8  b9400042 d376d421 9ac20821 17ffffa8 f9404fe2 b94097e1 eb02001f 1a9b2021
[   19.709641] 7ed8  9a802040 b90097e1 f9004fe0 17ffff87 b940afe0 7100001f 54fff08c 9400c2cf
[   19.709668] 7ef8  34001e40 b940c3e2 b94b12e0 37f805e2 f9403fe1 b9403021 7100003f b940cbe1
[   19.709696] 7f18  7a411000 1a81b000 b900cbe0 1a82b360 b900c3e0 17ffff75 eb0102bf 9a959020
[   19.709724] \x0aSP: 0xffffffe148f2b720:
[   19.709729] b720  2e8e7ef8 ffffff9f 48f2b760 ffffffe1 2e8e82c0 ffffff9f 404001c5 00000000
[   19.709757] b740  48f2b760 ffffffe1 2e8e7db8 ffffff9f ffffffff ffffffff 2e8e7ef8 ffffff9f
[   19.709785] b760  48f2b900 ffffffe1 2e8e9184 ffffff9f 00000000 00000000 00000000 00000000
[   19.709813] b780  00000000 00000000 0000002c 00000000 00000004 00000000 48f16200 ffffffe1
[   19.709841] 
[   19.709845] ---[ end trace 24ec051baadc3c8b ]---
[   19.709848] Call trace:
[   19.709853] Exception stack(0xffffffe148f2b570 to 0xffffffe148f2b6a0)
[   19.709858] b560:                                   ffffffe1b1489880 0000008000000000
[   19.709864] b580: 00000000834df000 ffffff9f2e8e82c0 00000000404001c5 ffffff9f2e901f78
[   19.709871] b5a0: ffffffe148f16bb8 ffffff9f30a43000 ffffff9f30a05d90 ffffffe148f169c0
[   19.709876] b5c0: ffffff9f31925000 ffffff9f2e901dbc ffffffe148f2b6d0 ffffff9f2e904024
[   19.709882] b5e0: ffffff9f30a234c8 0000000000000000 0000000000000000 0000000000000002
[   19.709887] b600: 0000000000000000 0000000000000000 ffffff9f2e8fa32c 00000000000001c0
[   19.709894] b620: ffffffe148f16200 403a4a6d7a81e143 0000000000000000 0000000000000000
[   19.709900] b640: ffffff9f3024a000 0000000000000009 00000042835a6000 000000000000000c
[   19.709907] b660: 000000001edff655 ffffff9f2e8fa32c 0000000000000000 000000000000001a
[   19.709913] b680: 0000000000000005 0000000000000000 ffffff9f30a05e88 0000000000000400
[   19.709919] [<ffffff9f2e8e82c0>] select_energy_cpu_brute+0x7d0/0x928
[   19.709924] [<ffffff9f2e8e9184>] select_task_rq_fair+0xd6c/0xe28
[   19.709929] [<ffffff9f2e8d4760>] try_to_wake_up+0x180/0x3c8
[   19.709934] [<ffffff9f2e8d540c>] wake_up_process+0x14/0x20
[   19.709940] [<ffffff9f2e8cb3ac>] insert_kthread_work+0x8c/0xa0
[   19.709945] [<ffffff9f2e8cbe48>] queue_kthread_work+0x98/0xc0
[   19.709950] [<ffffff9f2ec9a27c>] queue_cmd+0x84/0xe8
[   19.709955] [<ffffff9f2ec9cf04>] tx_data+0x41c/0x4d8
[   19.709959] [<ffffff9f2ec9cff8>] tx+0x18/0x20
[   19.709964] [<ffffff9f2ec8d618>] glink_tx_common+0x798/0xb30
[   19.709969] [<ffffff9f2ec8f1e4>] glink_tx+0x24/0x30
[   19.709974] [<ffffff9f2eca72e4>] msm_rpm_glink_send_buffer+0x6c/0xf0
[   19.709979] [<ffffff9f2ecaa0cc>] msm_rpm_enter_sleep+0x7c/0x1c8
[   19.709984] [<ffffff9f2f108694>] cluster_prepare+0x414/0xb00
[   19.709989] [<ffffff9f2f1088cc>] cluster_prepare+0x64c/0xb00
[   19.709994] [<ffffff9f2f1096ac>] lpm_cpuidle_enter+0xd4/0x360
[   19.709998] [<ffffff9f2f105094>] cpuidle_enter_state+0x12c/0x258
[   19.710003] [<ffffff9f2f1051f8>] cpuidle_enter+0x18/0x20
[   19.710009] [<ffffff9f2e8f4c78>] call_cpuidle+0x20/0x58
[   19.710014] [<ffffff9f2e8f4de8>] cpu_startup_entry+0x138/0x278
[   19.710020] [<ffffff9f2e88ecdc>] secondary_start_kernel+0x10c/0x128
[   19.710024] [<0000000080fa603c>] 0x80fa603c
[   19.902436] ------------[ cut here ]------------
[   19.902458] WARNING: at ../kernel/sched/sched.h:1394
[   19.902463] 
[   19.902471] CPU: 6 PID: 0 Comm: swapper/6 Tainted: G        W       4.4.169-Sultan #15
[   19.902476] Hardware name: Qualcomm Technologies, Inc. MSM8998 v2.1 (DT)
[   19.902482] task: 0000000000000000 task.stack: 0000000000000000
[   19.902495] PC is at select_energy_cpu_brute+0x7d0/0x928
[   19.902501] LR is at select_energy_cpu_brute+0x408/0x928
[   19.902506] pc : [<ffffff9f2e8e82c0>] lr : [<ffffff9f2e8e7ef8>] pstate: 404001c5
[   19.902511] sp : ffffffe148f27760
[   19.902515] x29: ffffffe148f27760 x28: 0000000000000002 
[   19.902525] x27: 0000000000000002 x26: ffffff9f30a05e8c 
[   19.902534] x25: ffffff9f30a06158 x24: ffffff9f2f808000 
[   19.902543] x23: ffffffe1b309a800 x22: ffffff9f30a05f34 
[   19.902552] x21: 0000000000000064 x20: 0000000000000064 
[   19.902561] x19: ffffffe1b1489880 x18: ffffffe1ab25fb70 
[   19.902570] x17: 0000000000000000 x16: 0000000000000000 
[   19.902579] x15: 0000000000000000 x14: ffffffe148f14980 
[   19.902587] x13: 0000000000000400 x12: 0000000000000002 
[   19.902596] x11: 0000000000000003 x10: ffffffe1b37e59fc 
[   19.902605] x9 : 000000000000001a x8 : 0000000000000000 
[   19.902614] x7 : ffffff9f2e8fa32c x6 : 000000001edff655 
[   19.902622] x5 : 000000000000000c x4 : 00000042833d3000 
[   19.902631] x3 : 0000000000000009 x2 : ffffff9f3024a000 
[   19.902640] x1 : 0000000000000000 x0 : 0000000000000000 
[   19.902649] \x0aPC: 0xffffff9f2e8e8280:
[   19.902654] 8280  912c6000 52806be1 39000e83 940070a1 17fffe40 9400c1e7 35ffcac0 52800023
[   19.902685] 82a0  d00097c2 b00097e0 91154042 911b4000 52831f61 39001a83 94007096 17fffe4d
[   19.902714] 82c0  d4210000 17ffff0e b94137e0 340003f5 90011921 39692021 34000881 f0011902
[   19.902741] 82e0  91160042 7100001f 5a80a401 a9459045 4b050084 6b01009f 5400074d 7100001f
[   19.902770] \x0aLR: 0xffffff9f2e8e7eb8:
[   19.902774] 7eb8  b9400042 d376d421 9ac20821 17ffffa8 f9404fe2 b94097e1 eb02001f 1a9b2021
[   19.902802] 7ed8  9a802040 b90097e1 f9004fe0 17ffff87 b940afe0 7100001f 54fff08c 9400c2cf
[   19.902830] 7ef8  34001e40 b940c3e2 b94b12e0 37f805e2 f9403fe1 b9403021 7100003f b940cbe1
[   19.902857] 7f18  7a411000 1a81b000 b900cbe0 1a82b360 b900c3e0 17ffff75 eb0102bf 9a959020
[   19.902887] \x0aSP: 0xffffffe148f27720:
[   19.902892] 7720  2e8e7ef8 ffffff9f 48f27760 ffffffe1 2e8e82c0 ffffff9f 404001c5 00000000
[   19.902920] 7740  48f27760 ffffffe1 2e8e7db8 ffffff9f ffffffff ffffffff 2e8e7ef8 ffffff9f
[   19.902948] 7760  48f27900 ffffffe1 2e8e9184 ffffff9f 00000000 00000000 00000000 00000000
[   19.902976] 7780  00000000 00000000 00000027 00000000 00000004 00000000 48f14980 ffffffe1
[   19.903004] 
[   19.903008] ---[ end trace 24ec051baadc3c8c ]---
[   19.903013] Call trace:
[   19.903018] Exception stack(0xffffffe148f27570 to 0xffffffe148f276a0)
[   19.903024] 7560:                                   ffffffe1b1489880 0000008000000000
[   19.903031] 7580: 0000000082408000 ffffff9f2e8e82c0 00000000404001c5 ffffff9f2e901f78
[   19.903037] 75a0: ffffffe148f15338 ffffff9f30a43000 ffffff9f30a05d90 ffffffe148f15140
[   19.903044] 75c0: ffffff9f31925000 ffffff9f2e901dbc ffffffe148f276d0 ffffff9f2e904024
[   19.903049] 75e0: ffffff9f30a234c8 0000000000000000 0000000000000000 0000000000000002
[   19.903055] 7600: 0000000000000000 0000000000000000 ffffff9f2e8fa32c 00000000000001c0
[   19.903061] 7620: ffffffe148f14980 403a4a6d7a81e143 0000000000000000 0000000000000000
[   19.903066] 7640: ffffff9f3024a000 0000000000000009 00000042833d3000 000000000000000c
[   19.903072] 7660: 000000001edff655 ffffff9f2e8fa32c 0000000000000000 000000000000001a
[   19.903079] 7680: ffffffe1b37e59fc 0000000000000003 0000000000000002 0000000000000400
[   19.903085] [<ffffff9f2e8e82c0>] select_energy_cpu_brute+0x7d0/0x928
[   19.903091] [<ffffff9f2e8e9184>] select_task_rq_fair+0xd6c/0xe28
[   19.903099] [<ffffff9f2e8d4760>] try_to_wake_up+0x180/0x3c8
[   19.903105] [<ffffff9f2e8d540c>] wake_up_process+0x14/0x20
[   19.903112] [<ffffff9f2e8cb3ac>] insert_kthread_work+0x8c/0xa0
[   19.903117] [<ffffff9f2e8cbe48>] queue_kthread_work+0x98/0xc0
[   19.903125] [<ffffff9f2ec9a27c>] queue_cmd+0x84/0xe8
[   19.903130] [<ffffff9f2ec9cf04>] tx_data+0x41c/0x4d8
[   19.903136] [<ffffff9f2ec9cff8>] tx+0x18/0x20
[   19.903143] [<ffffff9f2ec8d618>] glink_tx_common+0x798/0xb30
[   19.903148] [<ffffff9f2ec8f1e4>] glink_tx+0x24/0x30
[   19.903154] [<ffffff9f2eca72e4>] msm_rpm_glink_send_buffer+0x6c/0xf0
[   19.903160] [<ffffff9f2ecaa0cc>] msm_rpm_enter_sleep+0x7c/0x1c8
[   19.903168] [<ffffff9f2f108694>] cluster_prepare+0x414/0xb00
[   19.903172] [<ffffff9f2f1088cc>] cluster_prepare+0x64c/0xb00
[   19.903178] [<ffffff9f2f1096ac>] lpm_cpuidle_enter+0xd4/0x360
[   19.903183] [<ffffff9f2f105094>] cpuidle_enter_state+0x12c/0x258
[   19.903188] [<ffffff9f2f1051f8>] cpuidle_enter+0x18/0x20
[   19.903195] [<ffffff9f2e8f4c78>] call_cpuidle+0x20/0x58
[   19.903200] [<ffffff9f2e8f4de8>] cpu_startup_entry+0x138/0x278
[   19.903206] [<ffffff9f2e88ecdc>] secondary_start_kernel+0x10c/0x128
[   19.903211] [<0000000080fa603c>] 0x80fa603c
[   19.903218] ------------[ cut here ]------------
[   19.903222] WARNING: at ../kernel/sched/sched.h:1394
[   19.903226] 
[   19.903231] CPU: 6 PID: 0 Comm: swapper/6 Tainted: G        W       4.4.169-Sultan #15
[   19.903236] Hardware name: Qualcomm Technologies, Inc. MSM8998 v2.1 (DT)
[   19.903240] task: 0000000000000000 task.stack: 0000000000000000
[   19.903245] PC is at select_energy_cpu_brute+0x7d0/0x928
[   19.903250] LR is at select_energy_cpu_brute+0x408/0x928
[   19.903255] pc : [<ffffff9f2e8e82c0>] lr : [<ffffff9f2e8e7ef8>] pstate: 404001c5
[   19.903259] sp : ffffffe148f27760
[   19.903263] x29: ffffffe148f27760 x28: 0000000000000003 
[   19.903272] x27: 0000000000000003 x26: ffffff9f30a05e8c 
[   19.903281] x25: ffffff9f30a06158 x24: ffffff9f2f808000 
[   19.903290] x23: ffffffe1b326d800 x22: ffffff9f30a05f34 
[   19.903299] x21: 0000000000000066 x20: 0000000000000064 
[   19.903308] x19: ffffffe1b1489880 x18: ffffffe1ab25fb70 
[   19.903316] x17: 0000000000000000 x16: 0000000000000000 
[   19.903325] x15: 0000000000000000 x14: ffffffe148f14980 
[   19.903334] x13: 0000000000000400 x12: 0000000000000002 
[   19.903343] x11: 0000000000000003 x10: ffffffe1b37e59fc 
[   19.903351] x9 : 000000000000001a x8 : 0000000000000000 
[   19.903360] x7 : ffffff9f2e8fa32c x6 : 000000001edff655 
[   19.903369] x5 : 000000000000000c x4 : 00000042833d3000 
[   19.903377] x3 : 0000000000000009 x2 : ffffff9f3024a000 
[   19.903386] x1 : 0000000000000000 x0 : 0000000000000000 
[   19.903395] \x0aPC: 0xffffff9f2e8e8280:
[   19.903399] 8280  912c6000 52806be1 39000e83 940070a1 17fffe40 9400c1e7 35ffcac0 52800023
[   19.903427] 82a0  d00097c2 b00097e0 91154042 911b4000 52831f61 39001a83 94007096 17fffe4d
[   19.903455] 82c0  d4210000 17ffff0e b94137e0 340003f5 90011921 39692021 34000881 f0011902
[   19.903483] 82e0  91160042 7100001f 5a80a401 a9459045 4b050084 6b01009f 5400074d 7100001f
[   19.903511] \x0aLR: 0xffffff9f2e8e7eb8:
[   19.903516] 7eb8  b9400042 d376d421 9ac20821 17ffffa8 f9404fe2 b94097e1 eb02001f 1a9b2021
[   19.903543] 7ed8  9a802040 b90097e1 f9004fe0 17ffff87 b940afe0 7100001f 54fff08c 9400c2cf
[   19.903572] 7ef8  34001e40 b940c3e2 b94b12e0 37f805e2 f9403fe1 b9403021 7100003f b940cbe1
[   19.903599] 7f18  7a411000 1a81b000 b900cbe0 1a82b360 b900c3e0 17ffff75 eb0102bf 9a959020
[   19.903628] \x0aSP: 0xffffffe148f27720:
[   19.903633] 7720  2e8e7ef8 ffffff9f 48f27760 ffffffe1 2e8e82c0 ffffff9f 404001c5 00000000
[   19.903661] 7740  48f27760 ffffffe1 2e8e7db8 ffffff9f ffffffff ffffffff 2e8e7ef8 ffffff9f
[   19.903689] 7760  48f27900 ffffffe1 2e8e9184 ffffff9f 00000000 00000000 00000000 00000000
[   19.903718] 7780  00000000 00000000 00000027 00000000 00000004 00000000 48f14980 ffffffe1
[   19.903747] 
[   19.903751] ---[ end trace 24ec051baadc3c8d ]---
[   19.903756] Call trace:
[   19.903761] Exception stack(0xffffffe148f27570 to 0xffffffe148f276a0)
[   19.903767] 7560:                                   ffffffe1b1489880 0000008000000000
[   19.903773] 7580: 00000000834df000 ffffff9f2e8e82c0 00000000404001c5 ffffff9f2e901f78
[   19.903779] 75a0: ffffffe148f15338 ffffff9f30a43000 ffffff9f30a05d90 ffffffe148f15140
[   19.903785] 75c0: ffffff9f31925000 ffffff9f2e901dbc ffffffe148f276d0 ffffff9f2e904024
[   19.903790] 75e0: ffffff9f30a234c8 0000000000000000 0000000000000000 0000000000000002
[   19.903796] 7600: 0000000000000000 0000000000000000 ffffff9f2e8fa32c 00000000000001c0
[   19.903802] 7620: ffffffe148f14980 403a4a6d7a81e143 0000000000000000 0000000000000000
[   19.903807] 7640: ffffff9f3024a000 0000000000000009 00000042833d3000 000000000000000c
[   19.903813] 7660: 000000001edff655 ffffff9f2e8fa32c 0000000000000000 000000000000001a
[   19.903819] 7680: ffffffe1b37e59fc 0000000000000003 0000000000000002 0000000000000400
[   19.903824] [<ffffff9f2e8e82c0>] select_energy_cpu_brute+0x7d0/0x928
[   19.903829] [<ffffff9f2e8e9184>] select_task_rq_fair+0xd6c/0xe28
[   19.903834] [<ffffff9f2e8d4760>] try_to_wake_up+0x180/0x3c8
[   19.903839] [<ffffff9f2e8d540c>] wake_up_process+0x14/0x20
[   19.903844] [<ffffff9f2e8cb3ac>] insert_kthread_work+0x8c/0xa0
[   19.903849] [<ffffff9f2e8cbe48>] queue_kthread_work+0x98/0xc0
[   19.903855] [<ffffff9f2ec9a27c>] queue_cmd+0x84/0xe8
[   19.903860] [<ffffff9f2ec9cf04>] tx_data+0x41c/0x4d8
[   19.903865] [<ffffff9f2ec9cff8>] tx+0x18/0x20
[   19.903870] [<ffffff9f2ec8d618>] glink_tx_common+0x798/0xb30
[   19.903876] [<ffffff9f2ec8f1e4>] glink_tx+0x24/0x30
[   19.903880] [<ffffff9f2eca72e4>] msm_rpm_glink_send_buffer+0x6c/0xf0
[   19.903885] [<ffffff9f2ecaa0cc>] msm_rpm_enter_sleep+0x7c/0x1c8
[   19.903890] [<ffffff9f2f108694>] cluster_prepare+0x414/0xb00
[   19.903895] [<ffffff9f2f1088cc>] cluster_prepare+0x64c/0xb00
[   19.903900] [<ffffff9f2f1096ac>] lpm_cpuidle_enter+0xd4/0x360
[   19.903906] [<ffffff9f2f105094>] cpuidle_enter_state+0x12c/0x258
[   19.903911] [<ffffff9f2f1051f8>] cpuidle_enter+0x18/0x20
[   19.903916] [<ffffff9f2e8f4c78>] call_cpuidle+0x20/0x58
[   19.903922] [<ffffff9f2e8f4de8>] cpu_startup_entry+0x138/0x278
[   19.903927] [<ffffff9f2e88ecdc>] secondary_start_kernel+0x10c/0x128
[   19.903931] [<0000000080fa603c>] 0x80fa603c
[   20.550622] Invalid input for loop: ret = -22
[   21.931463] nq-nci 8-0028: setting ese_gpio high
[   22.165250] selinux: SELinux: Skipping restorecon_recursive(/data/system_ce/0)\x0a
[   22.167249] init: Async property child exited with status 0
[   22.169695] selinux: SELinux: Skipping restorecon_recursive(/data/misc_ce/0)\x0a
[   22.170953] init: Async property child exited with status 0
[   22.223156] init: processing action (sys.user.0.ce_available=true) from (/vendor/etc/init/hw/init.taimen.rc:232)
[   22.234279] init: starting service 'vendor.ramoops_sh'...
[   22.330429] init: processing action (sys.ramoops.decrypted=true) from (/vendor/etc/init/hw/init.taimen.rc:236)
[   22.388206] init: Service 'vendor.ramoops_sh' (pid 2467) exited with status 0
[   23.466403] SMB138X: smb138x_parallel_get_prop: parallel power supply get prop 4 not supported
[   23.576157] nq-nci 8-0028: unable to disable clock
[   23.723392] i2c-msm-v2 c1b6000.i2c: msm_bus_scale_register_client(mstr-id:84):0x26 (ok)
[   23.837035] SMB138X: smb138x_parallel_get_prop: parallel power supply get prop 4 not supported
[   23.843673] FG: fg_get_battery_temp: batt temperature original:430, tuned:375
[   23.845561] healthd: battery l=79 v=4073 t=37.5 h=2 st=2 c=85 fc=3229000 cc=291 chg=u
[   23.846209] FG: fg_get_battery_temp: batt temperature original:430, tuned:375
[   23.848440] healthd: battery l=79 v=4073 t=37.5 h=2 st=2 c=85 fc=3229000 cc=291 chg=u
[   24.202223] FG: fg_get_battery_temp: batt temperature original:430, tuned:375
[   24.202799] FG: fg_get_battery_temp: batt temperature original:430, tuned:375
[   24.206741] healthd: battery l=79 v=4073 t=37.5 h=2 st=2 c=85 fc=3229000 cc=291 chg=u
[   24.207182] healthd: battery l=79 v=4073 t=37.5 h=2 st=2 c=85 fc=3229000 cc=291 chg=u
[   27.832537] lowpool[2]: page allocation failure: order:0, mode:0x2200000
[   27.832558] CPU: 6 PID: 3103 Comm: lowpool[2] Tainted: G        W       4.4.169-Sultan #15
[   27.832563] Hardware name: Qualcomm Technologies, Inc. MSM8998 v2.1 (DT)
[   27.832567] Call trace:
[   27.832582] [<ffffff9f2e88a378>] dump_backtrace+0x0/0x1e8
[   27.832588] [<ffffff9f2e88a574>] show_stack+0x14/0x20
[   27.832595] [<ffffff9f2eb54de4>] dump_stack+0xb0/0xec
[   27.832602] [<ffffff9f2e972d20>] warn_alloc_failed+0x110/0x150
[   27.832607] [<ffffff9f2e9765a8>] __alloc_pages_nodemask+0x720/0x960
[   27.832614] [<ffffff9f2e9ae2fc>] new_slab+0x23c/0x280
[   27.832620] [<ffffff9f2e9b0298>] ___slab_alloc.isra.12.constprop.21+0x280/0x2e8
[   27.832625] [<ffffff9f2e9b0348>] __slab_alloc.isra.13.constprop.20+0x48/0x88
[   27.832629] [<ffffff9f2e9b04d0>] kmem_cache_alloc+0x138/0x188
[   27.832637] [<ffffff9f2ead8930>] avc_alloc_node+0x20/0x2b8
[   27.832642] [<ffffff9f2ead8ecc>] avc_compute_av+0xfc/0x2a0
[   27.832646] [<ffffff9f2ead9ec4>] avc_has_perm_flags+0x1f4/0x210
[   27.832651] [<ffffff9f2eadea5c>] selinux_inode_follow_link+0x74/0x98
[   27.832656] [<ffffff9f2ead46e4>] security_inode_follow_link+0x64/0x98
[   27.832663] [<ffffff9f2e9c83c8>] link_path_walk+0x210/0x598
[   27.832668] [<ffffff9f2e9c8e68>] path_lookupat.isra.19+0x98/0x118
[   27.832672] [<ffffff9f2e9c8f68>] filename_lookup.part.20+0x80/0x110
[   27.832677] [<ffffff9f2e9c952c>] user_path_at_empty+0x4c/0x60
[   27.832681] [<ffffff9f2e9c0780>] vfs_fstatat+0x70/0xd8
[   27.832686] [<ffffff9f2e9c0944>] SyS_newfstatat+0x2c/0x60
[   27.832693] [<ffffff9f2ed27ed4>] new_newfstatat+0x4c/0x88
[   27.832697] [<ffffff9f2e88330c>] __sys_trace_return+0x0/0x4
[   27.832701] Mem-Info:
[   27.832708] active_anon:105613 inactive_anon:35453 isolated_anon:0\x0a active_file:54723 inactive_file:55021 isolated_file:56\x0a unevictable:39243 dirty:14 writeback:16 unstable:0\x0a slab_reclaimable:10528 slab_unreclaimable:31501\x0a mapped:87214 shmem:339 pagetables:10298 bounce:0\x0a free:2342 free_pcp:797 free_cma:98
[   27.832720] DMA free:9368kB min:4920kB low:50988kB high:52220kB active_anon:422452kB inactive_anon:141812kB active_file:218892kB inactive_file:220084kB unevictable:156972kB isolated(anon):0kB isolated(file):224kB present:1856508kB managed:1686236kB mlocked:156972kB dirty:56kB writeback:64kB mapped:348856kB shmem:1356kB slab_reclaimable:42112kB slab_unreclaimable:126004kB kernel_stack:33184kB pagetables:41192kB unstable:0kB bounce:0kB free_pcp:3188kB local_pcp:528kB free_cma:392kB writeback_tmp:0kB pages_scanned:0 all_unreclaimable? no
[   27.832725] lowmem_reserve[]: 0 0 0
[   27.832738] DMA: 113*4kB (UME) 94*8kB (UMEH) 154*16kB (UMEH) 154*32kB (MEH) 11*64kB (MH) 0*128kB 0*256kB 0*512kB 0*1024kB 0*2048kB 0*4096kB = 9300kB
[   27.832785] 149302 total pagecache pages
[   27.832790] 78 pages in swap cache
[   27.832794] Swap cache stats: add 10402, delete 10324, find 43/219
[   27.832797] Free swap  = 483868kB
[   27.832801] Total swap = 524284kB
[   27.832804] 464127 pages RAM
[   27.832807] 0 pages HighMem/MovableOnly
[   27.832810] 42568 pages reserved
[   27.832814] 40960 pages cma reserved
[   27.832932] lowpool[2]: page allocation failure: order:0, mode:0x2200000
[   27.832937] CPU: 6 PID: 3103 Comm: lowpool[2] Tainted: G        W       4.4.169-Sultan #15
[   27.832941] Hardware name: Qualcomm Technologies, Inc. MSM8998 v2.1 (DT)
[   27.832945] Call trace:
[   27.832950] [<ffffff9f2e88a378>] dump_backtrace+0x0/0x1e8
[   27.832954] [<ffffff9f2e88a574>] show_stack+0x14/0x20
[   27.832959] [<ffffff9f2eb54de4>] dump_stack+0xb0/0xec
[   27.832963] [<ffffff9f2e972d20>] warn_alloc_failed+0x110/0x150
[   27.832968] [<ffffff9f2e9765a8>] __alloc_pages_nodemask+0x720/0x960
[   27.832973] [<ffffff9f2e9ae2fc>] new_slab+0x23c/0x280
[   27.832978] [<ffffff9f2e9b0298>] ___slab_alloc.isra.12.constprop.21+0x280/0x2e8
[   27.832982] [<ffffff9f2e9b0348>] __slab_alloc.isra.13.constprop.20+0x48/0x88
[   27.832985] [<ffffff9f2e9b04d0>] kmem_cache_alloc+0x138/0x188
[   27.832990] [<ffffff9f2ead8930>] avc_alloc_node+0x20/0x2b8
[   27.832995] [<ffffff9f2ead8ecc>] avc_compute_av+0xfc/0x2a0
[   27.832999] [<ffffff9f2ead9ec4>] avc_has_perm_flags+0x1f4/0x210
[   27.833003] [<ffffff9f2eadea5c>] selinux_inode_follow_link+0x74/0x98
[   27.833007] [<ffffff9f2ead46e4>] security_inode_follow_link+0x64/0x98
[   27.833011] [<ffffff9f2e9c83c8>] link_path_walk+0x210/0x598
[   27.833016] [<ffffff9f2e9c8e68>] path_lookupat.isra.19+0x98/0x118
[   27.833021] [<ffffff9f2e9c8f68>] filename_lookup.part.20+0x80/0x110
[   27.833025] [<ffffff9f2e9c952c>] user_path_at_empty+0x4c/0x60
[   27.833029] [<ffffff9f2e9c0780>] vfs_fstatat+0x70/0xd8
[   27.833033] [<ffffff9f2e9c0944>] SyS_newfstatat+0x2c/0x60
[   27.833037] [<ffffff9f2ed27ed4>] new_newfstatat+0x4c/0x88
[   27.833041] [<ffffff9f2e88330c>] __sys_trace_return+0x0/0x4
[   27.833044] Mem-Info:
[   27.833050] active_anon:105613 inactive_anon:35453 isolated_anon:0\x0a active_file:54723 inactive_file:55021 isolated_file:56\x0a unevictable:39243 dirty:14 writeback:16 unstable:0\x0a slab_reclaimable:10528 slab_unreclaimable:31501\x0a mapped:87214 shmem:339 pagetables:10298 bounce:0\x0a free:2342 free_pcp:828 free_cma:98
[   27.833061] DMA free:9368kB min:4920kB low:50988kB high:52220kB active_anon:422452kB inactive_anon:141812kB active_file:218892kB inactive_file:220084kB unevictable:156972kB isolated(anon):0kB isolated(file):224kB present:1856508kB managed:1686236kB mlocked:156972kB dirty:56kB writeback:64kB mapped:348856kB shmem:1356kB slab_reclaimable:42112kB slab_unreclaimable:126004kB kernel_stack:33184kB pagetables:41192kB unstable:0kB bounce:0kB free_pcp:3304kB local_pcp:528kB free_cma:392kB writeback_tmp:0kB pages_scanned:0 all_unreclaimable? no
[   27.833065] lowmem_reserve[]: 0 0 0
[   27.833077] DMA: 113*4kB (UME) 94*8kB (UMEH) 154*16kB (UMEH) 154*32kB (MEH) 11*64kB (MH) 0*128kB 0*256kB 0*512kB 0*1024kB 0*2048kB 0*4096kB = 9300kB
[   27.833122] 149302 total pagecache pages
[   27.833125] 78 pages in swap cache
[   27.833129] Swap cache stats: add 10402, delete 10324, find 43/219
[   27.833132] Free swap  = 483868kB
[   27.833135] Total swap = 524284kB
[   27.833139] 464127 pages RAM
[   27.833142] 0 pages HighMem/MovableOnly
[   27.833145] 42568 pages reserved
[   27.833149] 40960 pages cma reserved
[   27.926586] .dataservices: page allocation failure: order:0, mode:0x2200000
[   27.926603] CPU: 7 PID: 1830 Comm: .dataservices Tainted: G        W       4.4.169-Sultan #15
[   27.926608] Hardware name: Qualcomm Technologies, Inc. MSM8998 v2.1 (DT)
[   27.926612] Call trace:
[   27.926624] [<ffffff9f2e88a378>] dump_backtrace+0x0/0x1e8
[   27.926629] [<ffffff9f2e88a574>] show_stack+0x14/0x20
[   27.926636] [<ffffff9f2eb54de4>] dump_stack+0xb0/0xec
[   27.926642] [<ffffff9f2e972d20>] warn_alloc_failed+0x110/0x150
[   27.926647] [<ffffff9f2e9765a8>] __alloc_pages_nodemask+0x720/0x960
[   27.926653] [<ffffff9f2e9ae2fc>] new_slab+0x23c/0x280
[   27.926658] [<ffffff9f2e9b0298>] ___slab_alloc.isra.12.constprop.21+0x280/0x2e8
[   27.926663] [<ffffff9f2e9b0348>] __slab_alloc.isra.13.constprop.20+0x48/0x88
[   27.926667] [<ffffff9f2e9b04d0>] kmem_cache_alloc+0x138/0x188
[   27.926675] [<ffffff9f2ead8930>] avc_alloc_node+0x20/0x2b8
[   27.926679] [<ffffff9f2ead8ecc>] avc_compute_av+0xfc/0x2a0
[   27.926683] [<ffffff9f2ead9cbc>] avc_has_perm+0x1dc/0x1f0
[   27.926687] [<ffffff9f2eadd0fc>] selinux_binder_transaction+0x194/0x2c0
[   27.926694] [<ffffff9f2ead2d1c>] security_binder_transaction+0x4c/0x78
[   27.926700] [<ffffff9f2f408660>] binder_transaction+0x150/0x1ec8
[   27.926704] [<ffffff9f2f40aaec>] binder_thread_write+0x714/0x1868
[   27.926707] [<ffffff9f2f40c278>] binder_ioctl+0x638/0x7b8
[   27.926712] [<ffffff9f2e9cf358>] do_vfs_ioctl+0x4a8/0x9a8
[   27.926716] [<ffffff9f2e9cf8d0>] SyS_ioctl+0x78/0x98
[   27.926720] [<ffffff9f2e88330c>] __sys_trace_return+0x0/0x4
[   27.926724] Mem-Info:
[   27.926731] active_anon:106003 inactive_anon:35416 isolated_anon:3\x0a active_file:53602 inactive_file:53668 isolated_file:237\x0a unevictable:39243 dirty:0 writeback:8 unstable:0\x0a slab_reclaimable:10698 slab_unreclaimable:31809\x0a mapped:85968 shmem:324 pagetables:10442 bounce:0\x0a free:2355 free_pcp:214 free_cma:201
[   27.926743] DMA free:9420kB min:4920kB low:50988kB high:52220kB active_anon:424012kB inactive_anon:141664kB active_file:214408kB inactive_file:214672kB unevictable:156972kB isolated(anon):12kB isolated(file):948kB present:1856508kB managed:1686236kB mlocked:156972kB dirty:0kB writeback:32kB mapped:343872kB shmem:1296kB slab_reclaimable:42792kB slab_unreclaimable:127236kB kernel_stack:33664kB pagetables:41768kB unstable:0kB bounce:0kB free_pcp:856kB local_pcp:64kB free_cma:804kB writeback_tmp:0kB pages_scanned:1292 all_unreclaimable? no
[   27.926747] lowmem_reserve[]: 0 0 0
[   27.926758] DMA: 93*4kB (UE) 347*8kB (UMEH) 360*16kB (UMEH) 8*32kB (M) 3*64kB (MH) 6*128kB (M) 0*256kB 0*512kB 0*1024kB 0*2048kB 0*4096kB = 10124kB
[   27.926802] 146846 total pagecache pages
[   27.926805] 87 pages in swap cache
[   27.926808] Swap cache stats: add 11314, delete 11227, find 49/341
[   27.926811] Free swap  = 481116kB
[   27.926814] Total swap = 524284kB
[   27.926817] 464127 pages RAM
[   27.926820] 0 pages HighMem/MovableOnly
[   27.926822] 42568 pages reserved
[   27.926825] 40960 pages cma reserved
[   28.396336] SMB138X: smb138x_parallel_get_prop: parallel power supply get prop 4 not supported
[   28.785695] SMB138X: smb138x_parallel_get_prop: parallel power supply get prop 4 not supported
[   28.802350] FG: fg_get_battery_temp: batt temperature original:440, tuned:380
[   28.803871] healthd: battery l=79 v=3942 t=38.0 h=2 st=2 c=718 fc=3229000 cc=291 chg=u
[   28.804537] FG: fg_get_battery_temp: batt temperature original:440, tuned:380
[   28.831497] healthd: battery l=79 v=3942 t=38.0 h=2 st=2 c=718 fc=3229000 cc=291 chg=u
[   29.180626] FG: fg_get_battery_temp: batt temperature original:440, tuned:379
[   29.181927] FG: fg_get_battery_temp: batt temperature original:440, tuned:378
[   29.183673] healthd: battery l=79 v=3925 t=37.8 h=2 st=2 c=802 fc=3229000 cc=291 chg=u
[   29.186891] healthd: battery l=79 v=3925 t=37.9 h=2 st=2 c=802 fc=3229000 cc=291 chg=u
[   31.038660] Binder:1209_16: page allocation failure: order:0, mode:0x2200000
[   31.038677] CPU: 7 PID: 3233 Comm: Binder:1209_16 Tainted: G        W       4.4.169-Sultan #15
[   31.038681] Hardware name: Qualcomm Technologies, Inc. MSM8998 v2.1 (DT)
[   31.038685] Call trace:
[   31.038697] [<ffffff9f2e88a378>] dump_backtrace+0x0/0x1e8
[   31.038703] [<ffffff9f2e88a574>] show_stack+0x14/0x20
[   31.038709] [<ffffff9f2eb54de4>] dump_stack+0xb0/0xec
[   31.038715] [<ffffff9f2e972d20>] warn_alloc_failed+0x110/0x150
[   31.038720] [<ffffff9f2e9765a8>] __alloc_pages_nodemask+0x720/0x960
[   31.038726] [<ffffff9f2e9ae2fc>] new_slab+0x23c/0x280
[   31.038731] [<ffffff9f2e9b0298>] ___slab_alloc.isra.12.constprop.21+0x280/0x2e8
[   31.038735] [<ffffff9f2e9b0348>] __slab_alloc.isra.13.constprop.20+0x48/0x88
[   31.038739] [<ffffff9f2e9b04d0>] kmem_cache_alloc+0x138/0x188
[   31.038746] [<ffffff9f2ead8930>] avc_alloc_node+0x20/0x2b8
[   31.038750] [<ffffff9f2ead8ecc>] avc_compute_av+0xfc/0x2a0
[   31.038755] [<ffffff9f2ead9cbc>] avc_has_perm+0x1dc/0x1f0
[   31.038759] [<ffffff9f2eadcc48>] selinux_binder_transfer_file+0x180/0x220
[   31.038766] [<ffffff9f2ead2e18>] security_binder_transfer_file+0x58/0x88
[   31.038773] [<ffffff9f2f407418>] binder_translate_fd.isra.20+0x68/0x220
[   31.038776] [<ffffff9f2f409684>] binder_transaction+0x1174/0x1ec8
[   31.038780] [<ffffff9f2f40aaec>] binder_thread_write+0x714/0x1868
[   31.038784] [<ffffff9f2f40c278>] binder_ioctl+0x638/0x7b8
[   31.038789] [<ffffff9f2e9cf358>] do_vfs_ioctl+0x4a8/0x9a8
[   31.038793] [<ffffff9f2e9cf8d0>] SyS_ioctl+0x78/0x98
[   31.038797] [<ffffff9f2e88330c>] __sys_trace_return+0x0/0x4
[   31.038801] Mem-Info:
[   31.038808] active_anon:95719 inactive_anon:32002 isolated_anon:0\x0a active_file:43372 inactive_file:43306 isolated_file:32\x0a unevictable:39243 dirty:0 writeback:0 unstable:0\x0a slab_reclaimable:11393 slab_unreclaimable:33178\x0a mapped:77433 shmem:458 pagetables:10906 bounce:0\x0a free:3542 free_pcp:123 free_cma:1463
[   31.038820] DMA free:14168kB min:4920kB low:50988kB high:52220kB active_anon:382876kB inactive_anon:128008kB active_file:173488kB inactive_file:173224kB unevictable:156972kB isolated(anon):0kB isolated(file):128kB present:1856508kB managed:1686236kB mlocked:156972kB dirty:0kB writeback:0kB mapped:309732kB shmem:1832kB slab_reclaimable:45572kB slab_unreclaimable:132712kB kernel_stack:35664kB pagetables:43624kB unstable:0kB bounce:0kB free_pcp:492kB local_pcp:0kB free_cma:5852kB writeback_tmp:0kB pages_scanned:0 all_unreclaimable? no
[   31.038824] lowmem_reserve[]: 0 0 0
[   31.038837] DMA: 1241*4kB (MECH) 429*8kB (UMECH) 101*16kB (MECH) 25*32kB (UMCH) 34*64kB (UCH) 12*128kB (C) 3*256kB (CH) 0*512kB 0*1024kB 0*2048kB 0*4096kB = 15292kB
[   31.038888] 126737 total pagecache pages
[   31.038891] 250 pages in swap cache
[   31.038895] Swap cache stats: add 38779, delete 38529, find 268/1102
[   31.038898] Free swap  = 374612kB
[   31.038901] Total swap = 524284kB
[   31.038904] 464127 pages RAM
[   31.038907] 0 pages HighMem/MovableOnly
[   31.038910] 42568 pages reserved
[   31.038913] 40960 pages cma reserved
[   32.965365] FG: fg_get_battery_temp: batt temperature original:440, tuned:378
[   32.965383] lge_battery: bm_watch_work: PRESENT:1, CHG_STAT:1, THM_STAT:2, BAT_TEMP:378, BAT_VOLT:3933095, VOTE_CUR:1000000, SET_CUR:1000000 
[   32.969212] dmesg: page allocation failure: order:0, mode:0x2200000
[   32.969229] CPU: 4 PID: 2450 Comm: dmesg Tainted: G        W       4.4.169-Sultan #15
[   32.969233] Hardware name: Qualcomm Technologies, Inc. MSM8998 v2.1 (DT)
[   32.969238] Call trace:
[   32.969249] [<ffffff9f2e88a378>] dump_backtrace+0x0/0x1e8
[   32.969254] [<ffffff9f2e88a574>] show_stack+0x14/0x20
[   32.969260] [<ffffff9f2eb54de4>] dump_stack+0xb0/0xec
[   32.969267] [<ffffff9f2e972d20>] warn_alloc_failed+0x110/0x150
[   32.969272] [<ffffff9f2e9765a8>] __alloc_pages_nodemask+0x720/0x960
[   32.969278] [<ffffff9f2e9ae2fc>] new_slab+0x23c/0x280
[   32.969283] [<ffffff9f2e9b0298>] ___slab_alloc.isra.12.constprop.21+0x280/0x2e8
[   32.969287] [<ffffff9f2e9b0348>] __slab_alloc.isra.13.constprop.20+0x48/0x88
[   32.969291] [<ffffff9f2e9b04d0>] kmem_cache_alloc+0x138/0x188
[   32.969297] [<ffffff9f2ead8930>] avc_alloc_node+0x20/0x2b8
[   32.969302] [<ffffff9f2ead8ecc>] avc_compute_av+0xfc/0x2a0
[   32.969306] [<ffffff9f2ead9cbc>] avc_has_perm+0x1dc/0x1f0
[   32.969312] [<ffffff9f2eae0608>] inode_has_perm.isra.21+0x28/0x38
[   32.969315] [<ffffff9f2eae0a40>] file_has_perm+0xb8/0xc0
[   32.969319] [<ffffff9f2eae0c88>] selinux_file_permission+0xb0/0x118
[   32.969324] [<ffffff9f2ead4f60>] security_file_permission+0x50/0xe8
[   32.969328] [<ffffff9f2e9ba984>] rw_verify_area+0x44/0xf8
[   32.969332] [<ffffff9f2e9bb7c8>] vfs_write+0x58/0x1b0
[   32.969336] [<ffffff9f2e9bba3c>] SyS_write+0x5c/0xc0
[   32.969341] [<ffffff9f2e8832b0>] el0_svc_naked+0x24/0x28
[   32.969344] Mem-Info:
[   32.969351] active_anon:97516 inactive_anon:32535 isolated_anon:0\x0a active_file:48515 inactive_file:48971 isolated_file:52\x0a unevictable:39243 dirty:0 writeback:0 unstable:0\x0a slab_reclaimable:11618 slab_unreclaimable:33333\x0a mapped:71242 shmem:353 pagetables:11172 bounce:0\x0a free:2242 free_pcp:536 free_cma:4
[   32.969363] DMA free:8968kB min:4920kB low:50988kB high:52220kB active_anon:390064kB inactive_anon:130140kB active_file:194060kB inactive_file:195884kB unevictable:156972kB isolated(anon):0kB isolated(file):208kB present:1856508kB managed:1686236kB mlocked:156972kB dirty:0kB writeback:0kB mapped:284968kB shmem:1412kB slab_reclaimable:46472kB slab_unreclaimable:133332kB kernel_stack:36464kB pagetables:44688kB unstable:0kB bounce:0kB free_pcp:2176kB local_pcp:100kB free_cma:16kB writeback_tmp:0kB pages_scanned:156 all_unreclaimable? no
[   32.969367] lowmem_reserve[]: 0 0 0
[   32.969379] DMA: 168*4kB (UMEH) 98*8kB (UMEH) 131*16kB (MH) 19*32kB (UMEH) 7*64kB (UMH) 2*128kB (M) 2*256kB (MH) 2*512kB (UM) 1*1024kB (U) 1*2048kB (M) 0*4096kB = 9472kB
[   32.969433] 137394 total pagecache pages
[   32.969438] 592 pages in swap cache
[   32.969441] Swap cache stats: add 47408, delete 46816, find 357/1791
[   32.969444] Free swap  = 343508kB
[   32.969447] Total swap = 524284kB
[   32.969450] 464127 pages RAM
[   32.969453] 0 pages HighMem/MovableOnly
[   32.969455] 42568 pages reserved
[   32.969458] 40960 pages cma reserved
[   32.969499] dmesg: page allocation failure: order:0, mode:0x2200000
[   32.969503] CPU: 4 PID: 2450 Comm: dmesg Tainted: G        W       4.4.169-Sultan #15
[   32.969507] Hardware name: Qualcomm Technologies, Inc. MSM8998 v2.1 (DT)
[   32.969510] Call trace:
[   32.969514] [<ffffff9f2e88a378>] dump_backtrace+0x0/0x1e8
[   32.969519] [<ffffff9f2e88a574>] show_stack+0x14/0x20
[   32.969523] [<ffffff9f2eb54de4>] dump_stack+0xb0/0xec
[   32.969527] [<ffffff9f2e972d20>] warn_alloc_failed+0x110/0x150
[   32.969531] [<ffffff9f2e9765a8>] __alloc_pages_nodemask+0x720/0x960
[   32.969536] [<ffffff9f2e9ae2fc>] new_slab+0x23c/0x280
[   32.969540] [<ffffff9f2e9b0298>] ___slab_alloc.isra.12.constprop.21+0x280/0x2e8
[   32.969544] [<ffffff9f2e9b0348>] __slab_alloc.isra.13.constprop.20+0x48/0x88
[   32.969548] [<ffffff9f2e9b04d0>] kmem_cache_alloc+0x138/0x188
[   32.969552] [<ffffff9f2ead8930>] avc_alloc_node+0x20/0x2b8
[   32.969556] [<ffffff9f2ead8ecc>] avc_compute_av+0xfc/0x2a0
[   32.969560] [<ffffff9f2ead9cbc>] avc_has_perm+0x1dc/0x1f0
[   32.969565] [<ffffff9f2eadc028>] sock_has_perm+0x120/0x1e0
[   32.969569] [<ffffff9f2eadc198>] selinux_socket_sendmsg+0x18/0x20
[   32.969573] [<ffffff9f2ead7644>] security_socket_sendmsg+0x5c/0x90
[   32.969580] [<ffffff9f2f534ed0>] sock_sendmsg+0x20/0x58
[   32.969584] [<ffffff9f2f534f88>] sock_write_iter+0x80/0xd0
[   32.969588] [<ffffff9f2e9bb648>] __vfs_write+0xc0/0x100
[   32.969593] [<ffffff9f2e9bb7f8>] vfs_write+0x88/0x1b0
[   32.969597] [<ffffff9f2e9bba3c>] SyS_write+0x5c/0xc0
[   32.969601] [<ffffff9f2e8832b0>] el0_svc_naked+0x24/0x28
[   32.969604] Mem-Info:
[   32.969610] active_anon:97516 inactive_anon:32535 isolated_anon:0\x0a active_file:48515 inactive_file:48971 isolated_file:52\x0a unevictable:39243 dirty:0 writeback:0 unstable:0\x0a slab_reclaimable:11618 slab_unreclaimable:33333\x0a mapped:71242 shmem:353 pagetables:11172 bounce:0\x0a free:2494 free_pcp:54 free_cma:4
[   32.969620] DMA free:9976kB min:4920kB low:50988kB high:52220kB active_anon:390064kB inactive_anon:130140kB active_file:194060kB inactive_file:195884kB unevictable:156972kB isolated(anon):0kB isolated(file):208kB present:1856508kB managed:1686236kB mlocked:156972kB dirty:0kB writeback:0kB mapped:284968kB shmem:1412kB slab_reclaimable:46472kB slab_unreclaimable:133332kB kernel_stack:36464kB pagetables:44688kB unstable:0kB bounce:0kB free_pcp:324kB local_pcp:0kB free_cma:16kB writeback_tmp:0kB pages_scanned:156 all_unreclaimable? no
[   32.969624] lowmem_reserve[]: 0 0 0
[   32.969635] DMA: 475*4kB (UMECH) 171*8kB (UMEH) 143*16kB (UMCH) 21*32kB (UMEH) 7*64kB (UMH) 2*128kB (M) 2*256kB (MH) 2*512kB (UM) 1*1024kB (U) 1*2048kB (M) 0*4096kB = 11540kB
[   32.969688] 137394 total pagecache pages
[   32.969691] 592 pages in swap cache
[   32.969695] Swap cache stats: add 47408, delete 46816, find 357/1791
[   32.969698] Free swap  = 343508kB
[   32.969701] Total swap = 524284kB
[   32.969704] 464127 pages RAM
[   32.969707] 0 pages HighMem/MovableOnly
[   32.969710] 42568 pages reserved
[   32.969713] 40960 pages cma reserved
[   33.330619] SMB138X: smb138x_parallel_get_prop: parallel power supply get prop 4 not supported
[   33.704895] SMB138X: smb138x_parallel_get_prop: parallel power supply get prop 4 not supported
[   33.715604] FG: fg_get_battery_temp: batt temperature original:440, tuned:379
[   33.717584] healthd: battery l=79 v=3939 t=37.9 h=2 st=2 c=687 fc=3229000 cc=291 chg=u
[   33.720510] FG: fg_get_battery_temp: batt temperature original:440, tuned:379
[   33.731518] healthd: battery l=79 v=3939 t=37.9 h=2 st=2 c=687 fc=3229000 cc=291 chg=u
[   34.077267] FG: fg_get_battery_temp: batt temperature original:440, tuned:379
[   34.078862] healthd: battery l=79 v=3939 t=37.9 h=2 st=2 c=687 fc=3229000 cc=291 chg=u
[   34.079822] FG: fg_get_battery_temp: batt temperature original:440, tuned:379
[   34.083892] healthd: battery l=79 v=3939 t=37.9 h=2 st=2 c=687 fc=3229000 cc=291 chg=u
[   35.061667] simple_lmk: Killing rbandroid.sleep with adj 904 to free 42368 KiB
[   35.062953] simple_lmk: Killing droid.deskclock with adj 904 to free 40544 KiB
[   35.063141] simple_lmk: Killing android.carrier with adj 904 to free 37528 KiB
[   35.381923] simple_lmk: Killing oadcastreceiver with adj 906 to free 34516 KiB
[   35.385167] simple_lmk: Killing .apps.translate with adj 904 to free 48748 KiB
[   35.388087] simple_lmk: Killing .apps.wellbeing with adj 904 to free 40484 KiB
[   35.524064] binder_alloc: 2203: binder_alloc_buf failed to map pages in userspace, no vma
[   35.524081] binder: 1209:3223 transaction failed 29189/-3, size 76-0 line 3189
[   35.590508] binder: 2115:3009 transaction failed 29189/-22, size 160-0 line 3052
[   35.661294] simple_lmk: Killing ndroid.keychain with adj 906 to free 33836 KiB
[   35.664687] simple_lmk: Killing id.printspooler with adj 904 to free 34744 KiB
[   35.664819] simple_lmk: Killing .android.dialer with adj 904 to free 23912 KiB
[   35.665036] simple_lmk: Killing le.android.talk with adj 902 to free 54548 KiB

Sultan
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
