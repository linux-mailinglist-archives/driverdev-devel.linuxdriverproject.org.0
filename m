Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D6EA318C3E
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 14:41:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7596287576;
	Thu, 11 Feb 2021 13:41:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XYKipmKb0QbT; Thu, 11 Feb 2021 13:41:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5B9A38756E;
	Thu, 11 Feb 2021 13:41:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C565C1BF94D
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 13:41:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B3FAE6F4A6
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 13:41:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O9xA-FvFXgOd for <devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 13:40:59 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 9ED9F6F625; Thu, 11 Feb 2021 13:40:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 990C46F4F8
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 13:40:57 +0000 (UTC)
IronPort-SDR: ce1Q/QLPjGKFwFaZSbDSDE4LwXKFjuJ7CkcXDbh9ZjduyH3cj9Il+iU9xMveMlWkjMt/VYuSjC
 i/8jGf5WoLOg==
X-IronPort-AV: E=McAfee;i="6000,8403,9891"; a="182373580"
X-IronPort-AV: E=Sophos;i="5.81,170,1610438400"; d="scan'208";a="182373580"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2021 05:40:53 -0800
IronPort-SDR: gqK713bNflzIPqHF/MBLgCQwXA2e0HRc6+JQmreSNn5QIUXWXpsIjHHYF2+yX8Jjb8B7ow2Xa/
 nTXKROsYELJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,170,1610438400"; d="scan'208";a="490341616"
Received: from black.fi.intel.com ([10.237.72.28])
 by fmsmga001.fm.intel.com with ESMTP; 11 Feb 2021 05:40:46 -0800
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id DD94A1FA; Thu, 11 Feb 2021 15:40:45 +0200 (EET)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Mika Westerberg <mika.westerberg@linux.intel.com>,
 Lee Jones <lee.jones@linaro.org>, Linus Walleij <linus.walleij@linaro.org>,
 Hans de Goede <hdegoede@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 Mike Rapoport <rppt@kernel.org>, Wolfram Sang <wsa@kernel.org>,
 Sumit Gupta <sumitg@nvidia.com>, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, platform-driver-x86@vger.kernel.org,
 x86@kernel.org, linux-pm@vger.kernel.org, linux-media@vger.kernel.org,
 devel@driverdev.osuosl.org
Subject: [PATCH v1 2/9] cpufreq: sfi-cpufreq: Remove driver for deprecated
 firmware
Date: Thu, 11 Feb 2021 15:40:01 +0200
Message-Id: <20210211134008.38282-3-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210211134008.38282-1-andriy.shevchenko@linux.intel.com>
References: <20210211134008.38282-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
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
Cc: Mark Gross <mgross@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-acpi@vger.kernel.org,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, "H. Peter Anvin" <hpa@zytor.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Darren Hart <dvhart@infradead.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Andy Shevchenko <andy@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SFI-based platforms are gone. So does this driver.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Acked-by: Linus Walleij <linus.walleij@linaro.org>
---
 drivers/cpufreq/Kconfig.x86   |  10 ---
 drivers/cpufreq/Makefile      |   1 -
 drivers/cpufreq/sfi-cpufreq.c | 127 ----------------------------------
 3 files changed, 138 deletions(-)
 delete mode 100644 drivers/cpufreq/sfi-cpufreq.c

diff --git a/drivers/cpufreq/Kconfig.x86 b/drivers/cpufreq/Kconfig.x86
index 399526289320..92701a18bdd9 100644
--- a/drivers/cpufreq/Kconfig.x86
+++ b/drivers/cpufreq/Kconfig.x86
@@ -62,16 +62,6 @@ config X86_ACPI_CPUFREQ_CPB
 	  By enabling this option the acpi_cpufreq driver provides the old
 	  entry in addition to the new boost ones, for compatibility reasons.
 
-config X86_SFI_CPUFREQ
-	tristate "SFI Performance-States driver"
-	depends on X86_INTEL_MID && SFI
-	help
-	  This adds a CPUFreq driver for some Silvermont based Intel Atom
-	  architectures like Z34xx and Z35xx which enumerate processor
-	  performance states through SFI.
-
-	  If in doubt, say N.
-
 config ELAN_CPUFREQ
 	tristate "AMD Elan SC400 and SC410"
 	depends on MELAN
diff --git a/drivers/cpufreq/Makefile b/drivers/cpufreq/Makefile
index f1b7e3dd6e5d..18c9b0eafd09 100644
--- a/drivers/cpufreq/Makefile
+++ b/drivers/cpufreq/Makefile
@@ -43,7 +43,6 @@ obj-$(CONFIG_X86_P4_CLOCKMOD)		+= p4-clockmod.o
 obj-$(CONFIG_X86_CPUFREQ_NFORCE2)	+= cpufreq-nforce2.o
 obj-$(CONFIG_X86_INTEL_PSTATE)		+= intel_pstate.o
 obj-$(CONFIG_X86_AMD_FREQ_SENSITIVITY)	+= amd_freq_sensitivity.o
-obj-$(CONFIG_X86_SFI_CPUFREQ)		+= sfi-cpufreq.o
 
 ##################################################################################
 # ARM SoC drivers
diff --git a/drivers/cpufreq/sfi-cpufreq.c b/drivers/cpufreq/sfi-cpufreq.c
deleted file mode 100644
index 45cfdf67cf03..000000000000
--- a/drivers/cpufreq/sfi-cpufreq.c
+++ /dev/null
@@ -1,127 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- *  SFI Performance States Driver
- *
- *  Author: Vishwesh M Rudramuni <vishwesh.m.rudramuni@intel.com>
- *  Author: Srinidhi Kasagar <srinidhi.kasagar@intel.com>
- */
-
-#include <linux/cpufreq.h>
-#include <linux/init.h>
-#include <linux/kernel.h>
-#include <linux/module.h>
-#include <linux/sfi.h>
-#include <linux/slab.h>
-#include <linux/smp.h>
-
-#include <asm/msr.h>
-
-static struct cpufreq_frequency_table *freq_table;
-static struct sfi_freq_table_entry *sfi_cpufreq_array;
-static int num_freq_table_entries;
-
-static int sfi_parse_freq(struct sfi_table_header *table)
-{
-	struct sfi_table_simple *sb;
-	struct sfi_freq_table_entry *pentry;
-	int totallen;
-
-	sb = (struct sfi_table_simple *)table;
-	num_freq_table_entries = SFI_GET_NUM_ENTRIES(sb,
-			struct sfi_freq_table_entry);
-	if (num_freq_table_entries <= 1) {
-		pr_err("No p-states discovered\n");
-		return -ENODEV;
-	}
-
-	pentry = (struct sfi_freq_table_entry *)sb->pentry;
-	totallen = num_freq_table_entries * sizeof(*pentry);
-
-	sfi_cpufreq_array = kmemdup(pentry, totallen, GFP_KERNEL);
-	if (!sfi_cpufreq_array)
-		return -ENOMEM;
-
-	return 0;
-}
-
-static int sfi_cpufreq_target(struct cpufreq_policy *policy, unsigned int index)
-{
-	unsigned int next_perf_state = 0; /* Index into perf table */
-	u32 lo, hi;
-
-	next_perf_state = policy->freq_table[index].driver_data;
-
-	rdmsr_on_cpu(policy->cpu, MSR_IA32_PERF_CTL, &lo, &hi);
-	lo = (lo & ~INTEL_PERF_CTL_MASK) |
-		((u32) sfi_cpufreq_array[next_perf_state].ctrl_val &
-		INTEL_PERF_CTL_MASK);
-	wrmsr_on_cpu(policy->cpu, MSR_IA32_PERF_CTL, lo, hi);
-
-	return 0;
-}
-
-static int sfi_cpufreq_cpu_init(struct cpufreq_policy *policy)
-{
-	policy->shared_type = CPUFREQ_SHARED_TYPE_HW;
-	policy->cpuinfo.transition_latency = 100000;	/* 100us */
-	policy->freq_table = freq_table;
-
-	return 0;
-}
-
-static struct cpufreq_driver sfi_cpufreq_driver = {
-	.flags		= CPUFREQ_CONST_LOOPS,
-	.verify		= cpufreq_generic_frequency_table_verify,
-	.target_index	= sfi_cpufreq_target,
-	.init		= sfi_cpufreq_cpu_init,
-	.name		= "sfi-cpufreq",
-	.attr		= cpufreq_generic_attr,
-};
-
-static int __init sfi_cpufreq_init(void)
-{
-	int ret, i;
-
-	/* parse the freq table from SFI */
-	ret = sfi_table_parse(SFI_SIG_FREQ, NULL, NULL, sfi_parse_freq);
-	if (ret)
-		return ret;
-
-	freq_table = kcalloc(num_freq_table_entries + 1, sizeof(*freq_table),
-			     GFP_KERNEL);
-	if (!freq_table) {
-		ret = -ENOMEM;
-		goto err_free_array;
-	}
-
-	for (i = 0; i < num_freq_table_entries; i++) {
-		freq_table[i].driver_data = i;
-		freq_table[i].frequency = sfi_cpufreq_array[i].freq_mhz * 1000;
-	}
-	freq_table[i].frequency = CPUFREQ_TABLE_END;
-
-	ret = cpufreq_register_driver(&sfi_cpufreq_driver);
-	if (ret)
-		goto err_free_tbl;
-
-	return ret;
-
-err_free_tbl:
-	kfree(freq_table);
-err_free_array:
-	kfree(sfi_cpufreq_array);
-	return ret;
-}
-late_initcall(sfi_cpufreq_init);
-
-static void __exit sfi_cpufreq_exit(void)
-{
-	cpufreq_unregister_driver(&sfi_cpufreq_driver);
-	kfree(freq_table);
-	kfree(sfi_cpufreq_array);
-}
-module_exit(sfi_cpufreq_exit);
-
-MODULE_AUTHOR("Vishwesh M Rudramuni <vishwesh.m.rudramuni@intel.com>");
-MODULE_DESCRIPTION("SFI Performance-States Driver");
-MODULE_LICENSE("GPL");
-- 
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
