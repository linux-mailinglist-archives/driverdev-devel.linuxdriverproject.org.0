Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 338F58F8E0
	for <lists+driverdev-devel@lfdr.de>; Fri, 16 Aug 2019 04:33:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6F9D186226;
	Fri, 16 Aug 2019 02:33:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f0K5TD4PSnL2; Fri, 16 Aug 2019 02:33:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 29DB1860F8;
	Fri, 16 Aug 2019 02:33:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 993531BF2BD
 for <devel@linuxdriverproject.org>; Fri, 16 Aug 2019 02:33:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 96373860F8
 for <devel@linuxdriverproject.org>; Fri, 16 Aug 2019 02:33:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xM9dmvlZq6mN for <devel@linuxdriverproject.org>;
 Fri, 16 Aug 2019 02:33:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 07632860C1
 for <devel@driverdev.osuosl.org>; Fri, 16 Aug 2019 02:33:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Aug 2019 19:33:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,391,1559545200"; d="scan'208";a="194894469"
Received: from genxtest-ykzhao.sh.intel.com ([10.239.143.71])
 by fmsmga001.fm.intel.com with ESMTP; 15 Aug 2019 19:32:59 -0700
From: Zhao Yakui <yakui.zhao@intel.com>
To: x86@kernel.org, linux-kernel@vger.kernel.org, devel@driverdev.osuosl.org
Subject: [RFC PATCH 01/15] x86/acrn: Report X2APIC for ACRN guest
Date: Fri, 16 Aug 2019 10:25:42 +0800
Message-Id: <1565922356-4488-2-git-send-email-yakui.zhao@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1565922356-4488-1-git-send-email-yakui.zhao@intel.com>
References: <1565922356-4488-1-git-send-email-yakui.zhao@intel.com>
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
Cc: Zhao Yakui <yakui.zhao@intel.com>, Jason Chen CJ <jason.cj.chen@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

After lapic is switched from xapic to x2apic mode, it can use the APIC
MSR register to access local apic register in ACRN guest. This will
help to remove some traps of lapic access in ACRN guest.
Report the X2APIC so that the ACRN guest can be switched to x2apic mode.

Co-developed-by: Jason Chen CJ <jason.cj.chen@intel.com>
Signed-off-by: Jason Chen CJ <jason.cj.chen@intel.com>
Signed-off-by: Zhao Yakui <yakui.zhao@intel.com>
---
 arch/x86/kernel/cpu/acrn.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/arch/x86/kernel/cpu/acrn.c b/arch/x86/kernel/cpu/acrn.c
index 676022e..95db5c4 100644
--- a/arch/x86/kernel/cpu/acrn.c
+++ b/arch/x86/kernel/cpu/acrn.c
@@ -12,6 +12,7 @@
 #include <linux/interrupt.h>
 #include <asm/acrn.h>
 #include <asm/apic.h>
+#include <asm/cpufeatures.h>
 #include <asm/desc.h>
 #include <asm/hypervisor.h>
 #include <asm/irq_regs.h>
@@ -29,12 +30,7 @@ static void __init acrn_init_platform(void)
 
 static bool acrn_x2apic_available(void)
 {
-	/*
-	 * x2apic is not supported for now. Future enablement will have to check
-	 * X86_FEATURE_X2APIC to determine whether x2apic is supported in the
-	 * guest.
-	 */
-	return false;
+	return boot_cpu_has(X86_FEATURE_X2APIC);
 }
 
 static void (*acrn_intr_handler)(void);
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
