Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 722F6CAEBC
	for <lists+driverdev-devel@lfdr.de>; Thu,  3 Oct 2019 21:03:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 057038832C;
	Thu,  3 Oct 2019 19:03:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 68ihJSwayDxn; Thu,  3 Oct 2019 19:03:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id F19D488265;
	Thu,  3 Oct 2019 19:03:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1DB1B1BF2F7
 for <devel@linuxdriverproject.org>; Thu,  3 Oct 2019 19:03:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 16AC0869EF
 for <devel@linuxdriverproject.org>; Thu,  3 Oct 2019 19:03:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oPA786j2SaDc for <devel@linuxdriverproject.org>;
 Thu,  3 Oct 2019 19:03:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from NAM04-CO1-obe.outbound.protection.outlook.com
 (mail-eopbgr690101.outbound.protection.outlook.com [40.107.69.101])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8891D86ACB
 for <devel@linuxdriverproject.org>; Thu,  3 Oct 2019 19:03:23 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MnyAnzk8IuQm/hDCHvrIbbHvd7R3pGX/ix5txys0d9wxJrrtAFsV7elAQERj6lLRLQFJyVOceUuuZAk2dOlLLXpkKl7Dy5gPWrx/W+6mwe1I5VhfCrWhZAooZCFXZBlxC5JFddlknEjVq2iZHd7UoB4f0bP7EvbUyLUhWGbzhnUBNVx/OrGUsYAIpAnenSI0CNyZlDiPQIJwyzLXxS7JhpBQA+8jYK8GLtka1UZmkUgL5+YPiMu+R6fSeVL3dOzJysVKyttt0gbaGpW7c0S4Z736yP6sgzop5aef4zkcmqjBLz3+xh1GzgBkpnByKZFMNnp6Gz4LRQ1JRwKjLfTTwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sDKx44wLEdTf4Pm93D0E5iRcN75+gRZgRy0PE4B1J00=;
 b=ecJ6oq/GfDvC0D0DfyPper3hFEvsNm4ee71Ayqa/A+N0782JuIgli3EFFvbS6V7i5KOKx7PaNFY5kDdZcTZK1rU5ULL9tW1EDt8hTON1bX6oepMUbtIphZ35w/xrG03BheF4qPN0n9EhHOvEbt3ePlRqK+s1qggxlmFJr7Jn+ZRweM3TQq8gx3PzLcM4VsZ418h+HhMBLUzOqPAlZNu3xEO8mpVV0PL3s3NYgfOI75LI+cDdUM27oduVNCZItE/34qor0MfHxIcbh5u8O29YrOaQS05fzncvQHiS0OVWDBrXb4c9KSm1SKrYy3TV7hWqDrwnrL87qMFCr9WxJUX/gw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sDKx44wLEdTf4Pm93D0E5iRcN75+gRZgRy0PE4B1J00=;
 b=fKV5Iq6124rY2Kvnf7goSdR6fuREJGAY8xT0V3e/CZ4Xwzp5regfQtIibOZ6wJ0hyjuhx6vUGxCY1qgbuP1xDRPuio/RZHasVSRZy3VSIP3kczHc2T/k6FGtAESkhJ3fw+iPydgcPo3mrjIlPVek2ESJKD/Qg36T/ZjtoB5T3dM=
Received: from SN6PR2101MB1135.namprd21.prod.outlook.com (52.132.114.24) by
 SN6PR2101MB1102.namprd21.prod.outlook.com (52.132.115.27) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2327.7; Thu, 3 Oct 2019 19:03:22 +0000
Received: from SN6PR2101MB1135.namprd21.prod.outlook.com
 ([fe80::7d4a:b5b3:1062:e62]) by SN6PR2101MB1135.namprd21.prod.outlook.com
 ([fe80::7d4a:b5b3:1062:e62%5]) with mapi id 15.20.2327.004; Thu, 3 Oct 2019
 19:03:22 +0000
From: Michael Kelley <mikelley@microsoft.com>
To: "will@kernel.org" <will@kernel.org>, "catalin.marinas@arm.com"
 <catalin.marinas@arm.com>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "maz@kernel.org" <maz@kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "gregkh@linuxfoundation.org"
 <gregkh@linuxfoundation.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-hyperv@vger.kernel.org"
 <linux-hyperv@vger.kernel.org>, "devel@linuxdriverproject.org"
 <devel@linuxdriverproject.org>, "olaf@aepfle.de" <olaf@aepfle.de>,
 "apw@canonical.com" <apw@canonical.com>, vkuznets <vkuznets@redhat.com>,
 "jasowang@redhat.com" <jasowang@redhat.com>, "marcelo.cerri@canonical.com"
 <marcelo.cerri@canonical.com>, KY Srinivasan <kys@microsoft.com>
Subject: [PATCH v5 4/8] arm64: hyperv: Add interrupt handlers for VMbus and
 stimer
Thread-Topic: [PATCH v5 4/8] arm64: hyperv: Add interrupt handlers for VMbus
 and stimer
Thread-Index: AQHVeh05WFNaFLrFzkGv1RMX856zSg==
Date: Thu, 3 Oct 2019 19:03:21 +0000
Message-ID: <1570129355-16005-5-git-send-email-mikelley@microsoft.com>
References: <1570129355-16005-1-git-send-email-mikelley@microsoft.com>
In-Reply-To: <1570129355-16005-1-git-send-email-mikelley@microsoft.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MWHPR10CA0006.namprd10.prod.outlook.com (2603:10b6:301::16)
 To SN6PR2101MB1135.namprd21.prod.outlook.com
 (2603:10b6:805:4::24)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=mikelley@microsoft.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 1.8.3.1
x-originating-ip: [131.107.159.247]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f69978a2-eb40-42ae-e082-08d748345c10
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: SN6PR2101MB1102:|SN6PR2101MB1102:|SN6PR2101MB1102:
x-ms-exchange-transport-forked: True
x-ld-processed: 72f988bf-86f1-41af-91ab-2d7cd011db47,ExtAddr
x-microsoft-antispam-prvs: <SN6PR2101MB1102B2C0F19023847305F533D79F0@SN6PR2101MB1102.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 01792087B6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(396003)(136003)(366004)(376002)(346002)(199004)(189003)(486006)(102836004)(446003)(81156014)(5660300002)(64756008)(6512007)(66476007)(66556008)(4326008)(1511001)(66946007)(256004)(52116002)(6436002)(386003)(6116002)(305945005)(476003)(8676002)(99286004)(7416002)(11346002)(4720700003)(66446008)(2501003)(22452003)(6636002)(316002)(2616005)(66066001)(26005)(71200400001)(478600001)(76176011)(86362001)(54906003)(2201001)(36756003)(10090500001)(81166006)(71190400001)(8936002)(6486002)(186003)(10290500003)(14454004)(25786009)(7736002)(6506007)(50226002)(3846002)(14444005)(110136005)(2906002)(921003)(1121003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR2101MB1102;
 H:SN6PR2101MB1135.namprd21.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FWQq5B6XlWmyxyjVpgGyG1f9tAQgxv4pJ0eK7EhtAGkmJhKzLwo9k64Gdgw1IVdIjLqkJ4+FZSgiekH+iVSOWTiJmFaJM5OLMa3bLV2hg/NJ3kl4XQk90pdq9r18VtDCsOfSS7cPfTsXrVAwhtOnSxfOGV3gGH9xamsCOJKKbLn25yFkQovze4gUs+LgLMXnIYzUOSSH+aO02MHy6RQUph85k0WIDRm6SNH4f3S7R8+9c0ni9W9n/tUw1kmuKK535UwSWMg94qxuFT3U/VvT1hG4r7JMqCuiqq1RqcPTDXhJvlToXBjlnHaR70eNH6QpVNh2hwXS55p7wpK8U5vfjziinl7Bo1uweTkUql0APLEnMOjh2gXGNLt4HbGh/HTSaA31OimwCnSXzob7gftLzM1EHjDoI4BA4J75ztP6lWI=
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f69978a2-eb40-42ae-e082-08d748345c10
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Oct 2019 19:03:21.8472 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UFj7a6K0rajiSj9lvTe6ss67LcNjMiS4UZc8AO2EJxfZsHnoj++OaqUyaOM9eK9KwXRZJtMfR/NKqkBuxHCrYw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR2101MB1102
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
Cc: Sunil Muthuswamy <sunilmut@microsoft.com>,
 "boqun.feng" <boqun.feng@gmail.com>, Michael Kelley <mikelley@microsoft.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Add ARM64-specific code to set up and handle the interrupts
generated by Hyper-V for VMbus messages and for stimer expiration.

This code is architecture dependent and is mostly driven by
architecture independent code in the VMbus driver and the
Hyper-V timer clocksource driver.

This code is built only when CONFIG_HYPERV is enabled.

Signed-off-by: Michael Kelley <mikelley@microsoft.com>
---
 arch/arm64/hyperv/Makefile   |   2 +-
 arch/arm64/hyperv/mshyperv.c | 139 +++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 140 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/hyperv/mshyperv.c

diff --git a/arch/arm64/hyperv/Makefile b/arch/arm64/hyperv/Makefile
index 6bd8439..988eda5 100644
--- a/arch/arm64/hyperv/Makefile
+++ b/arch/arm64/hyperv/Makefile
@@ -1,2 +1,2 @@
 # SPDX-License-Identifier: GPL-2.0
-obj-y		:= hv_init.o hv_hvc.o
+obj-y		:= hv_init.o hv_hvc.o mshyperv.o
diff --git a/arch/arm64/hyperv/mshyperv.c b/arch/arm64/hyperv/mshyperv.c
new file mode 100644
index 0000000..ae6ece6
--- /dev/null
+++ b/arch/arm64/hyperv/mshyperv.c
@@ -0,0 +1,139 @@
+// SPDX-License-Identifier: GPL-2.0
+
+/*
+ * Core routines for interacting with Microsoft's Hyper-V hypervisor,
+ * including setting up VMbus and STIMER interrupts, and handling
+ * crashes and kexecs. These interactions are through a set of
+ * static "handler" variables set by the architecture independent
+ * VMbus and STIMER drivers.
+ *
+ * Copyright (C) 2019, Microsoft, Inc.
+ *
+ * Author : Michael Kelley <mikelley@microsoft.com>
+ */
+
+#include <linux/types.h>
+#include <linux/export.h>
+#include <linux/interrupt.h>
+#include <linux/kexec.h>
+#include <linux/acpi.h>
+#include <linux/ptrace.h>
+#include <asm/hyperv-tlfs.h>
+#include <asm/mshyperv.h>
+
+static void (*vmbus_handler)(void);
+static void (*hv_stimer0_handler)(void);
+
+static int vmbus_irq;
+static long __percpu *vmbus_evt;
+static long __percpu *stimer0_evt;
+
+irqreturn_t hyperv_vector_handler(int irq, void *dev_id)
+{
+	vmbus_handler();
+	return IRQ_HANDLED;
+}
+
+/* Must be done just once */
+void hv_setup_vmbus_irq(void (*handler)(void))
+{
+	int result;
+
+	vmbus_handler = handler;
+	vmbus_irq = acpi_register_gsi(NULL, HYPERVISOR_CALLBACK_VECTOR,
+				 ACPI_LEVEL_SENSITIVE, ACPI_ACTIVE_HIGH);
+	if (vmbus_irq <= 0) {
+		pr_err("Can't register Hyper-V VMBus GSI. Error %d",
+			vmbus_irq);
+		vmbus_irq = 0;
+		return;
+	}
+	vmbus_evt = alloc_percpu(long);
+	result = request_percpu_irq(vmbus_irq, hyperv_vector_handler,
+			"Hyper-V VMbus", vmbus_evt);
+	if (result) {
+		pr_err("Can't request Hyper-V VMBus IRQ %d. Error %d",
+			vmbus_irq, result);
+		free_percpu(vmbus_evt);
+		acpi_unregister_gsi(vmbus_irq);
+		vmbus_irq = 0;
+	}
+}
+EXPORT_SYMBOL_GPL(hv_setup_vmbus_irq);
+
+/* Must be done just once */
+void hv_remove_vmbus_irq(void)
+{
+	if (vmbus_irq) {
+		free_percpu_irq(vmbus_irq, vmbus_evt);
+		free_percpu(vmbus_evt);
+		acpi_unregister_gsi(vmbus_irq);
+	}
+}
+EXPORT_SYMBOL_GPL(hv_remove_vmbus_irq);
+
+/* Must be done by each CPU */
+void hv_enable_vmbus_irq(void)
+{
+	enable_percpu_irq(vmbus_irq, 0);
+}
+EXPORT_SYMBOL_GPL(hv_enable_vmbus_irq);
+
+/* Must be done by each CPU */
+void hv_disable_vmbus_irq(void)
+{
+	disable_percpu_irq(vmbus_irq);
+}
+EXPORT_SYMBOL_GPL(hv_disable_vmbus_irq);
+
+/* Routines to do per-architecture handling of STIMER0 when in Direct Mode */
+
+static irqreturn_t hv_stimer0_vector_handler(int irq, void *dev_id)
+{
+	if (hv_stimer0_handler)
+		hv_stimer0_handler();
+	return IRQ_HANDLED;
+}
+
+int hv_setup_stimer0_irq(int *irq, int *vector, void (*handler)(void))
+{
+	int localirq;
+	int result;
+
+	localirq = acpi_register_gsi(NULL, HV_STIMER0_IRQNR,
+			ACPI_LEVEL_SENSITIVE, ACPI_ACTIVE_HIGH);
+	if (localirq <= 0) {
+		pr_err("Can't register Hyper-V stimer0 GSI. Error %d",
+			localirq);
+		*irq = 0;
+		return -1;
+	}
+	stimer0_evt = alloc_percpu(long);
+	result = request_percpu_irq(localirq, hv_stimer0_vector_handler,
+					 "Hyper-V stimer0", stimer0_evt);
+	if (result) {
+		pr_err("Can't request Hyper-V stimer0 IRQ %d. Error %d",
+			localirq, result);
+		free_percpu(stimer0_evt);
+		acpi_unregister_gsi(localirq);
+		*irq = 0;
+		return -1;
+	}
+
+	hv_stimer0_handler = handler;
+	*vector = HV_STIMER0_IRQNR;
+	*irq = localirq;
+	return 0;
+}
+EXPORT_SYMBOL_GPL(hv_setup_stimer0_irq);
+
+void hv_remove_stimer0_irq(int irq)
+{
+	hv_stimer0_handler = NULL;
+	if (irq) {
+		free_percpu_irq(irq, stimer0_evt);
+		free_percpu(stimer0_evt);
+		acpi_unregister_gsi(irq);
+	}
+}
+EXPORT_SYMBOL_GPL(hv_remove_stimer0_irq);
-- 
1.8.3.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
