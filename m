Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 23E62318C3D
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 14:41:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D39B286E3F;
	Thu, 11 Feb 2021 13:41:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qRaIf4_YTJF2; Thu, 11 Feb 2021 13:41:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 37B0486A54;
	Thu, 11 Feb 2021 13:41:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A6DBD1BF94D
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 13:40:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 928886F4A6
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 13:40:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dGSX_gkdmJkU for <devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 13:40:58 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id B7DAE6F625; Thu, 11 Feb 2021 13:40:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6BEC26F4D6
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 13:40:57 +0000 (UTC)
IronPort-SDR: cy43oViuen1zxmeyDIJUVobFVD79IwzfucgT01Io9ES6FJkT8ciUIa9BG5X09OEqKIgqaOA0FC
 McmsPO+uMiSw==
X-IronPort-AV: E=McAfee;i="6000,8403,9891"; a="182373584"
X-IronPort-AV: E=Sophos;i="5.81,170,1610438400"; d="scan'208";a="182373584"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2021 05:40:53 -0800
IronPort-SDR: Q39XVtNXwgLLoTu2Y1h5v/7ttbGiA/VbPz59me3cbmB7Dm1YVucub5Kh7xw2LCTmStyw+6kPCB
 ujSdVpdMxW4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,170,1610438400"; d="scan'208";a="490341617"
Received: from black.fi.intel.com ([10.237.72.28])
 by fmsmga001.fm.intel.com with ESMTP; 11 Feb 2021 05:40:46 -0800
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id 0A71B35A; Thu, 11 Feb 2021 15:40:46 +0200 (EET)
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
Subject: [PATCH v1 4/9] x86/PCI: Get rid of custom x86 model comparison
Date: Thu, 11 Feb 2021 15:40:03 +0200
Message-Id: <20210211134008.38282-5-andriy.shevchenko@linux.intel.com>
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

Switch the platform code to use x86_id_table and accompanying API
instead of custom comparison against x86 CPU model.

This is one of the last users of custom API for that and following
changes will remove it for the good.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 arch/x86/pci/intel_mid_pci.c | 17 +++++++++++++++--
 1 file changed, 15 insertions(+), 2 deletions(-)

diff --git a/arch/x86/pci/intel_mid_pci.c b/arch/x86/pci/intel_mid_pci.c
index 95e2e6bd8d8c..938a8b7bfe7f 100644
--- a/arch/x86/pci/intel_mid_pci.c
+++ b/arch/x86/pci/intel_mid_pci.c
@@ -28,10 +28,12 @@
 #include <linux/io.h>
 #include <linux/smp.h>
 
+#include <asm/cpu_device_id.h>
 #include <asm/segment.h>
 #include <asm/pci_x86.h>
 #include <asm/hw_irq.h>
 #include <asm/io_apic.h>
+#include <asm/intel-family.h>
 #include <asm/intel-mid.h>
 #include <asm/acpi.h>
 
@@ -212,10 +214,17 @@ static int pci_write(struct pci_bus *bus, unsigned int devfn, int where,
 			       where, size, value);
 }
 
+static const struct x86_cpu_id intel_mid_cpu_ids[] = {
+	X86_MATCH_INTEL_FAM6_MODEL(ATOM_SILVERMONT_MID, NULL),
+	{}
+};
+
 static int intel_mid_pci_irq_enable(struct pci_dev *dev)
 {
+	const struct x86_cpu_id *id;
 	struct irq_alloc_info info;
 	bool polarity_low;
+	u16 model = 0;
 	int ret;
 	u8 gsi;
 
@@ -228,8 +237,12 @@ static int intel_mid_pci_irq_enable(struct pci_dev *dev)
 		return ret;
 	}
 
-	switch (intel_mid_identify_cpu()) {
-	case INTEL_MID_CPU_CHIP_TANGIER:
+	id = x86_match_cpu(intel_mid_cpu_ids);
+	if (id)
+		model = id->model;
+
+	switch (model) {
+	case INTEL_FAM6_ATOM_SILVERMONT_MID:
 		polarity_low = false;
 
 		/* Special treatment for IRQ0 */
-- 
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
