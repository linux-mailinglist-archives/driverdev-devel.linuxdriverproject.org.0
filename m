Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 291D8318C42
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 14:41:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CFAC587457;
	Thu, 11 Feb 2021 13:41:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 73eQ2afYzhCo; Thu, 11 Feb 2021 13:41:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 107DE8710D;
	Thu, 11 Feb 2021 13:41:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C55051BF94D
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 13:41:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C17E28636A
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 13:41:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id irDWoesW8fVc for <devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 13:41:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0FAF987160
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 13:41:02 +0000 (UTC)
IronPort-SDR: P75A+g10vqDBdnV9OTZklbtwQw9iE5ysqmz8vBkDtip5flxr+Jppte8oL2NdeAQ7jxSWeMGVsX
 uzgLrCfAPlGA==
X-IronPort-AV: E=McAfee;i="6000,8403,9891"; a="161989285"
X-IronPort-AV: E=Sophos;i="5.81,170,1610438400"; d="scan'208";a="161989285"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2021 05:41:00 -0800
IronPort-SDR: 9ZUuSvDftvalgJABQz+ZGjkBCy7K976RWT4DxqHDy2UgScMEiMSF7GlPuuZWZVoCYw382fU0Qe
 oH+FP5dWP+Fw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,170,1610438400"; d="scan'208";a="414807185"
Received: from black.fi.intel.com ([10.237.72.28])
 by fmsmga004.fm.intel.com with ESMTP; 11 Feb 2021 05:40:54 -0800
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id 29942525; Thu, 11 Feb 2021 15:40:46 +0200 (EET)
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
Subject: [PATCH v1 7/9] x86/platform/intel-mid: Drop unused
 __intel_mid_cpu_chip and Co.
Date: Thu, 11 Feb 2021 15:40:06 +0200
Message-Id: <20210211134008.38282-8-andriy.shevchenko@linux.intel.com>
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

Since there is no more user of this global variable and associated custom API,
we may safely drop this legacy reinvented a wheel from the kernel sources.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 arch/x86/include/asm/intel-mid.h        | 23 -----------------------
 arch/x86/platform/intel-mid/intel-mid.c | 17 -----------------
 2 files changed, 40 deletions(-)

diff --git a/arch/x86/include/asm/intel-mid.h b/arch/x86/include/asm/intel-mid.h
index 6306fe3e5c4a..c2c7da4c60cf 100644
--- a/arch/x86/include/asm/intel-mid.h
+++ b/arch/x86/include/asm/intel-mid.h
@@ -21,36 +21,13 @@ extern void intel_mid_pwr_power_off(void);
 
 extern int intel_mid_pwr_get_lss_id(struct pci_dev *pdev);
 
-/*
- * Medfield is the follow-up of Moorestown, it combines two chip solution into
- * one. Other than that it also added always-on and constant tsc and lapic
- * timers. Medfield is the platform name, and the chip name is called Penwell
- * we treat Medfield/Penwell as a variant of Moorestown. Penwell can be
- * identified via MSRs.
- */
-enum intel_mid_cpu_type {
-	/* 1 was Moorestown */
-	INTEL_MID_CPU_CHIP_PENWELL = 2,
-	INTEL_MID_CPU_CHIP_CLOVERVIEW,
-	INTEL_MID_CPU_CHIP_TANGIER,
-};
-
-extern enum intel_mid_cpu_type __intel_mid_cpu_chip;
-
 #ifdef CONFIG_X86_INTEL_MID
 
-static inline enum intel_mid_cpu_type intel_mid_identify_cpu(void)
-{
-	return __intel_mid_cpu_chip;
-}
-
 extern void intel_scu_devices_create(void);
 extern void intel_scu_devices_destroy(void);
 
 #else /* !CONFIG_X86_INTEL_MID */
 
-#define intel_mid_identify_cpu()	0
-
 static inline void intel_scu_devices_create(void) { }
 static inline void intel_scu_devices_destroy(void) { }
 
diff --git a/arch/x86/platform/intel-mid/intel-mid.c b/arch/x86/platform/intel-mid/intel-mid.c
index 846b2ded39d9..2802b5e4637b 100644
--- a/arch/x86/platform/intel-mid/intel-mid.c
+++ b/arch/x86/platform/intel-mid/intel-mid.c
@@ -32,9 +32,6 @@
 #define IPCMSG_COLD_OFF		0x80	/* Only for Tangier */
 #define IPCMSG_COLD_RESET	0xF1
 
-enum intel_mid_cpu_type __intel_mid_cpu_chip;
-EXPORT_SYMBOL_GPL(__intel_mid_cpu_chip);
-
 static void intel_mid_power_off(void)
 {
 	/* Shut down South Complex via PWRMU */
@@ -58,29 +55,15 @@ static void __init intel_mid_time_init(void)
 
 static void intel_mid_arch_setup(void)
 {
-	if (boot_cpu_data.x86 != 6) {
-		pr_err("Unknown Intel MID CPU (%d:%d), default to Penwell\n",
-			boot_cpu_data.x86, boot_cpu_data.x86_model);
-		__intel_mid_cpu_chip = INTEL_MID_CPU_CHIP_PENWELL;
-		goto out;
-	}
-
 	switch (boot_cpu_data.x86_model) {
-	case 0x35:
-		__intel_mid_cpu_chip = INTEL_MID_CPU_CHIP_CLOVERVIEW;
-		break;
 	case 0x3C:
 	case 0x4A:
-		__intel_mid_cpu_chip = INTEL_MID_CPU_CHIP_TANGIER;
 		x86_platform.legacy.rtc = 1;
 		break;
-	case 0x27:
 	default:
-		__intel_mid_cpu_chip = INTEL_MID_CPU_CHIP_PENWELL;
 		break;
 	}
 
-out:
 	/*
 	 * Intel MID platforms are using explicitly defined regulators.
 	 *
-- 
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
