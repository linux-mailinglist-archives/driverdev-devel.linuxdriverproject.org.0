Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FED3318C45
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 14:41:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 300C387267;
	Thu, 11 Feb 2021 13:41:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2rKxnhxQ3uQ6; Thu, 11 Feb 2021 13:41:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4ABAE87160;
	Thu, 11 Feb 2021 13:41:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A39F61BF94D
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 13:41:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9B9498636A
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 13:41:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hBx6wW9hLyAW for <devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 13:41:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D6B8587038
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 13:41:01 +0000 (UTC)
IronPort-SDR: NU1tQDHl7lOh3yUx62gSXuwgrgk043FDfGolpCCETU7T3nRuVWtfUaYCJxltXPrTFC5YEWsm3T
 f8OqiFEPFGYA==
X-IronPort-AV: E=McAfee;i="6000,8403,9891"; a="161989290"
X-IronPort-AV: E=Sophos;i="5.81,170,1610438400"; d="scan'208";a="161989290"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2021 05:41:01 -0800
IronPort-SDR: VWhaioO+oACEH+FId/XxethvES2OPKfJQ0apJjL8JKKIMG0NfzCUT/eN9mGWWw/JS5kAxxlDxH
 AwFiWCD4tUZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,170,1610438400"; d="scan'208";a="380658742"
Received: from black.fi.intel.com ([10.237.72.28])
 by fmsmga008.fm.intel.com with ESMTP; 11 Feb 2021 05:40:53 -0800
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id 1EA8A4BE; Thu, 11 Feb 2021 15:40:46 +0200 (EET)
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
Subject: [PATCH v1 6/9] x86/platform/intel-mid: Get rid of
 intel_scu_ipc_legacy.h
Date: Thu, 11 Feb 2021 15:40:05 +0200
Message-Id: <20210211134008.38282-7-andriy.shevchenko@linux.intel.com>
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

The header is used by a single user. Move header content to that user.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Reviewed-by: Mika Westerberg <mika.westerberg@linux.intel.com>
---
 arch/x86/include/asm/intel_scu_ipc.h        |  2 --
 arch/x86/include/asm/intel_scu_ipc_legacy.h | 18 ------------------
 arch/x86/platform/intel-mid/intel-mid.c     |  7 +++++--
 3 files changed, 5 insertions(+), 22 deletions(-)
 delete mode 100644 arch/x86/include/asm/intel_scu_ipc_legacy.h

diff --git a/arch/x86/include/asm/intel_scu_ipc.h b/arch/x86/include/asm/intel_scu_ipc.h
index 11d457af68c5..8537f597d20a 100644
--- a/arch/x86/include/asm/intel_scu_ipc.h
+++ b/arch/x86/include/asm/intel_scu_ipc.h
@@ -65,6 +65,4 @@ static inline int intel_scu_ipc_dev_command(struct intel_scu_ipc_dev *scu, int c
 						   inlen, out, outlen);
 }
 
-#include <asm/intel_scu_ipc_legacy.h>
-
 #endif
diff --git a/arch/x86/include/asm/intel_scu_ipc_legacy.h b/arch/x86/include/asm/intel_scu_ipc_legacy.h
deleted file mode 100644
index fa529e5ec142..000000000000
--- a/arch/x86/include/asm/intel_scu_ipc_legacy.h
+++ /dev/null
@@ -1,18 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-#ifndef _ASM_X86_INTEL_SCU_IPC_LEGACY_H_
-#define _ASM_X86_INTEL_SCU_IPC_LEGACY_H_
-
-#include <linux/types.h>
-
-#define IPCMSG_COLD_OFF		0x80	/* Only for Tangier */
-#define IPCMSG_COLD_RESET	0xF1
-
-/* Don't call these in new code - they will be removed eventually */
-
-/* Issue commands to the SCU with or without data */
-static inline int intel_scu_ipc_simple_command(int cmd, int sub)
-{
-	return intel_scu_ipc_dev_simple_command(NULL, cmd, sub);
-}
-
-#endif
diff --git a/arch/x86/platform/intel-mid/intel-mid.c b/arch/x86/platform/intel-mid/intel-mid.c
index 2c044e260b4b..846b2ded39d9 100644
--- a/arch/x86/platform/intel-mid/intel-mid.c
+++ b/arch/x86/platform/intel-mid/intel-mid.c
@@ -29,6 +29,9 @@
 #include <asm/intel_scu_ipc.h>
 #include <asm/reboot.h>
 
+#define IPCMSG_COLD_OFF		0x80	/* Only for Tangier */
+#define IPCMSG_COLD_RESET	0xF1
+
 enum intel_mid_cpu_type __intel_mid_cpu_chip;
 EXPORT_SYMBOL_GPL(__intel_mid_cpu_chip);
 
@@ -38,12 +41,12 @@ static void intel_mid_power_off(void)
 	intel_mid_pwr_power_off();
 
 	/* Only for Tangier, the rest will ignore this command */
-	intel_scu_ipc_simple_command(IPCMSG_COLD_OFF, 1);
+	intel_scu_ipc_dev_simple_command(NULL, IPCMSG_COLD_OFF, 1);
 };
 
 static void intel_mid_reboot(void)
 {
-	intel_scu_ipc_simple_command(IPCMSG_COLD_RESET, 0);
+	intel_scu_ipc_dev_simple_command(NULL, IPCMSG_COLD_RESET, 0);
 }
 
 static void __init intel_mid_time_init(void)
-- 
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
