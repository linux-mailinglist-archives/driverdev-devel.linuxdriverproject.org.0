Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BFF7283A42
	for <lists+driverdev-devel@lfdr.de>; Tue,  6 Aug 2019 22:31:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 22D4686B68;
	Tue,  6 Aug 2019 20:31:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uV1-e9PjeTSt; Tue,  6 Aug 2019 20:31:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8E77C86B17;
	Tue,  6 Aug 2019 20:31:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 001211BF375
 for <devel@linuxdriverproject.org>; Tue,  6 Aug 2019 20:31:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id F124187E98
 for <devel@linuxdriverproject.org>; Tue,  6 Aug 2019 20:31:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id loUP7I1V4Uvg for <devel@linuxdriverproject.org>;
 Tue,  6 Aug 2019 20:31:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from NAM03-BY2-obe.outbound.protection.outlook.com
 (mail-eopbgr780135.outbound.protection.outlook.com [40.107.78.135])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BBF3587E74
 for <devel@linuxdriverproject.org>; Tue,  6 Aug 2019 20:31:04 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nhKYnqn7NGFzQhPZQt0XpUXG0S4PrGDKjP5PfpgQUvBQe41cb/VJ4DS3dB+Ho/dUYtQSCSFtV9DnjLN19TsNFpQ3KMlu2Wob0LdMeIVvkXFa5Z0NnIVs1YQ1lNPNPetKIMGdXvppR7s2Kz7ZMgsV18k6hnKQZa+BRxR76lrYFEkWm9tg2f7s/Gn7XUSmlMvSzsQqDfX1PGj3x8e9h14W0wIdJaIEL2q4pXSP4fqaSvUj4op2rTRRwO4tNmoVcJiUikQUJDAuuWQaLdvrG1m4YdXd4Zy/uhkp0rkGMV/Q6IuGNDGH8TpJ5TFnND4/1ah+WDwn3AKbq569iCQnPAt+kA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sDKx44wLEdTf4Pm93D0E5iRcN75+gRZgRy0PE4B1J00=;
 b=gUdm9dTdpZfW9HlzsnI0R9L9yXW/k+9qfHQI1RL3WuqC6SYjD7yCzWwWXikHv5Z0hL5d6bc3P5yU5Mjzq8IvCzN/sR7ty1ZbxEpLUetNfeXjty2C4X56ETaezbtWVUFW820Lugp9+2Siz9eeFRuE/ZujKBzP+ISDifY7E8QmHivElN5IRoCRM/XByQ+Bjr0ewolzqaZWOii9w9cf6iNoOwc2tp9CRjIS8bCoS1Rioibm0Ro+rzJmx+g0u9V4VOoMTle0FlMcwXP+zu+s9aysp5COVIMC8O/aW5DxZg05572wcJbesrSbi9UxP4qcnmH/H8toB09hSJJKcE29yuFq6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sDKx44wLEdTf4Pm93D0E5iRcN75+gRZgRy0PE4B1J00=;
 b=Rffzh3n5qPFMHHzabMbZCP8S6krWMtirVVDV8/cbK274/4t7KIEsTG60eJsCdKuT7YaFzxTjAChhJtfMky29M5ovY0Koc/Zph9cQN0Gk42ALJjDGOzBqNWEynnMD8yzJnlrv/sDsI/Gj7Ms4WKG5O5AiDxCLwKFiMY45TNP9auc=
Received: from BYAPR21MB1335.namprd21.prod.outlook.com (20.179.60.209) by
 BYAPR21MB1255.namprd21.prod.outlook.com (20.179.57.159) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.9; Tue, 6 Aug 2019 20:31:03 +0000
Received: from BYAPR21MB1335.namprd21.prod.outlook.com
 ([fe80::819:aea0:eda4:9301]) by BYAPR21MB1335.namprd21.prod.outlook.com
 ([fe80::819:aea0:eda4:9301%9]) with mapi id 15.20.2157.001; Tue, 6 Aug 2019
 20:31:02 +0000
From: Michael Kelley <mikelley@microsoft.com>
To: "will.deacon@arm.com" <will.deacon@arm.com>, "catalin.marinas@arm.com"
 <catalin.marinas@arm.com>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "marc.zyngier@arm.com" <marc.zyngier@arm.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "gregkh@linuxfoundation.org"
 <gregkh@linuxfoundation.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-hyperv@vger.kernel.org"
 <linux-hyperv@vger.kernel.org>, "devel@linuxdriverproject.org"
 <devel@linuxdriverproject.org>, "olaf@aepfle.de" <olaf@aepfle.de>,
 "apw@canonical.com" <apw@canonical.com>, vkuznets <vkuznets@redhat.com>,
 "jasowang@redhat.com" <jasowang@redhat.com>, "marcelo.cerri@canonical.com"
 <marcelo.cerri@canonical.com>, KY Srinivasan <kys@microsoft.com>
Subject: [PATCH v4 4/8] arm64: hyperv: Add interrupt handlers for VMbus and
 stimer
Thread-Topic: [PATCH v4 4/8] arm64: hyperv: Add interrupt handlers for VMbus
 and stimer
Thread-Index: AQHVTJXd5SwxP8v4zUOVe4An72JhEA==
Date: Tue, 6 Aug 2019 20:31:02 +0000
Message-ID: <1565122133-9086-5-git-send-email-mikelley@microsoft.com>
References: <1565122133-9086-1-git-send-email-mikelley@microsoft.com>
In-Reply-To: <1565122133-9086-1-git-send-email-mikelley@microsoft.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MWHPR01CA0030.prod.exchangelabs.com (2603:10b6:300:101::16)
 To BYAPR21MB1335.namprd21.prod.outlook.com
 (2603:10b6:a03:115::17)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=mikelley@microsoft.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 1.8.3.1
x-originating-ip: [131.107.174.8]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 160c64a0-f598-4c16-c341-08d71aacfff1
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR21MB1255; 
x-ms-traffictypediagnostic: BYAPR21MB1255:|BYAPR21MB1255:
x-ms-exchange-transport-forked: True
x-ld-processed: 72f988bf-86f1-41af-91ab-2d7cd011db47,ExtAddr
x-microsoft-antispam-prvs: <BYAPR21MB12552B1CB71BB5B7216EBA35D7D50@BYAPR21MB1255.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0121F24F22
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(39860400002)(396003)(376002)(136003)(346002)(189003)(199004)(71200400001)(102836004)(71190400001)(386003)(6636002)(6512007)(66446008)(7416002)(10090500001)(6506007)(10290500003)(66946007)(316002)(50226002)(110136005)(14454004)(4326008)(6116002)(1511001)(52116002)(64756008)(99286004)(2501003)(2201001)(25786009)(68736007)(476003)(11346002)(446003)(86362001)(8936002)(3846002)(14444005)(486006)(6486002)(256004)(8676002)(54906003)(76176011)(26005)(4720700003)(186003)(7736002)(81166006)(81156014)(2616005)(66066001)(66476007)(22452003)(5660300002)(2906002)(53936002)(305945005)(478600001)(6436002)(36756003)(66556008)(921003)(1121003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR21MB1255;
 H:BYAPR21MB1335.namprd21.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: jIZ+Bd69boEahusaRsJanoE+I/1ervhQdz7sxrrzaPQp0SLXdeMSjgZbeSGLNYj33MmwLYpxQDunPLOeGkCw3g0J1yrnuHJioFQozkfCzn4AK3pFnU496sgnsPNgIPQL0ozJmYDNv1pW32hFoj+IXqW37zghSMOfhG5moF/nkHCAG4EPI2CCog+TA6+cmi/03bxiAPr81SMIzrGO/0NmHyaZ2d+ZGeOBsDvk1QLsoLZEnvL4sOzGhZlubv/Z1HuUqyd5eWjvmaAAJVzJ+Z0Pyr/OSAT8ssfMcEZPXkzERex2CCtV9BTfhqf3gKV/UAPvYuKD2o+i9etAQypKXf3KAoUAd+UnQ50Iuf9MBJnaj5bKg5BuNrxK/kRkPFwOdXeLFV5yOhYRQmfTfQOeSFAGfQF9WO5fZ33khGi8DdP8lYQ=
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 160c64a0-f598-4c16-c341-08d71aacfff1
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Aug 2019 20:31:02.8499 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vEjVyf+thTaRdStJOW+XohTbE9sGsHZYKau3gd6CUrUpVjIvZ1ZtMY+c11trKlZfF+RyIsA28uR5poZKcGbeLw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR21MB1255
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
