Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FEB583A40
	for <lists+driverdev-devel@lfdr.de>; Tue,  6 Aug 2019 22:31:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E41EC2001A;
	Tue,  6 Aug 2019 20:31:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C1e2MDFXSd4M; Tue,  6 Aug 2019 20:31:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 159772094D;
	Tue,  6 Aug 2019 20:31:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A18011BF375
 for <devel@linuxdriverproject.org>; Tue,  6 Aug 2019 20:31:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9DFB82001A
 for <devel@linuxdriverproject.org>; Tue,  6 Aug 2019 20:31:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F0H4W4oWQ+p7 for <devel@linuxdriverproject.org>;
 Tue,  6 Aug 2019 20:30:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from NAM04-CO1-obe.outbound.protection.outlook.com
 (mail-eopbgr690134.outbound.protection.outlook.com [40.107.69.134])
 by silver.osuosl.org (Postfix) with ESMTPS id C33BC20007
 for <devel@linuxdriverproject.org>; Tue,  6 Aug 2019 20:30:59 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RhP8NZk6huaupzfsz7rY7JIRui1qP049ESANvtVmtHHUWN+cHoIONZbKrQrjum124d6Y1EZNNdC2kPWErF5ph1US3wJv820fQiRne8e+qjJ2F2aS+ENTNlunRGQoN5c1/ZSRPqh0uWdfasqJuvzVqKz2AvTD5ObU8B+HiTA0JhnSlPO8URDnjkrtinTjhx90/zpQiF1EzjKkEKb2q/UN6mFXL2Ccgdn0twJ8Rx+hs6dX6G7zVrocE/jztcZEhu4bSbUneMm3zPOhl5fvx2NDIrw4EfX48t6OWp0ndoyRss6gmbwlI+QuSQHETRbmfbxRgSIR1uwpg/zoq/5dUOaC4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YDsPry1dqclrqfZpj9q42HyZAinvrXaxVtX84yy0bC4=;
 b=JUfp94v+qrHScnh9EEEkeYCnT4SQC4lFhDoZuaK/I3g9CWN6PAUkoMdmsTvwd49/m0ZNAJfH0frIalQDJDIAcEm0Q7lr4cGtG/jL60mjNvcr+4rQbwoZh0aZvAZtNvRyJGxKjWs7ZIfPseyq4XXDmpsiOVyG8NHaqDY/WMyO6CORSlAgPfBOEg+yKZMDoynhZyKaZRrtZRafK/8ITDxTq5CeDgy6V6BDTmjBxax8kkV+GuwG6QMKxwKh8OlWjOSXnYJELw2FQotk3rfiNXkB/huraeHeliXfxa3lLZglwjkBJBtaVoL+NJq2rxbOw5d6/cvXQzhiuXEbDD1j7C/21w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YDsPry1dqclrqfZpj9q42HyZAinvrXaxVtX84yy0bC4=;
 b=XXzZT8vMMQ/qdtDPP/P6I5wJdmU6h5mASuMbm7EgRvKZH147ZO69zN3b9Qcrw7I9xLwqdYq4dg9rU8xmvTV+d+tYk0I5aeWoWMcpDe7FVV3/li5c/rnST7g5ALhkUI/EPVnkAb6aHrvgCRjVOXEmYtzYGZEejAigUtPtcfuF9Bg=
Received: from BYAPR21MB1335.namprd21.prod.outlook.com (20.179.60.209) by
 BYAPR21MB1206.namprd21.prod.outlook.com (20.179.57.16) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.13; Tue, 6 Aug 2019 20:30:57 +0000
Received: from BYAPR21MB1335.namprd21.prod.outlook.com
 ([fe80::819:aea0:eda4:9301]) by BYAPR21MB1335.namprd21.prod.outlook.com
 ([fe80::819:aea0:eda4:9301%9]) with mapi id 15.20.2157.001; Tue, 6 Aug 2019
 20:30:57 +0000
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
Subject: [PATCH v4 2/8] arm64: hyperv: Add hypercall and register access
 functions
Thread-Topic: [PATCH v4 2/8] arm64: hyperv: Add hypercall and register access
 functions
Thread-Index: AQHVTJXaTWO/EaovdkmugTcFFLBxjA==
Date: Tue, 6 Aug 2019 20:30:57 +0000
Message-ID: <1565122133-9086-3-git-send-email-mikelley@microsoft.com>
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
x-ms-office365-filtering-correlation-id: 953e605d-8103-46a8-8248-08d71aacfcd9
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR21MB1206; 
x-ms-traffictypediagnostic: BYAPR21MB1206:|BYAPR21MB1206:
x-ms-exchange-transport-forked: True
x-ld-processed: 72f988bf-86f1-41af-91ab-2d7cd011db47,ExtAddr
x-microsoft-antispam-prvs: <BYAPR21MB12067ABA2233A3AF6C3E19BCD7D50@BYAPR21MB1206.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2733;
x-forefront-prvs: 0121F24F22
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(376002)(39860400002)(396003)(366004)(346002)(189003)(199004)(110136005)(14444005)(14454004)(476003)(102836004)(68736007)(446003)(99286004)(6436002)(81156014)(8676002)(10290500003)(478600001)(66066001)(2616005)(11346002)(316002)(6486002)(76176011)(186003)(81166006)(486006)(54906003)(386003)(1511001)(36756003)(2501003)(10090500001)(2201001)(305945005)(7736002)(26005)(25786009)(6506007)(50226002)(4326008)(256004)(66476007)(6512007)(71200400001)(71190400001)(5660300002)(4720700003)(6116002)(6636002)(52116002)(3846002)(66556008)(22452003)(64756008)(66946007)(66446008)(7416002)(86362001)(53936002)(8936002)(2906002)(921003)(1121003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR21MB1206;
 H:BYAPR21MB1335.namprd21.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: C2xM6G4nQWhi5W7uyGvHTE6GrP3QL824T9oYUlUVoHq+9N6xdtl4DRmNfa8FnrmG5r83lnmbzOezGrEf3rqfqynP99bGle5EIk+0hZ7ICtBDiy3/PCLWWJYY8e8NLUVtQhj2TAALU2f4Y07ck6knPvoNZiRgm8JXKevk19Cyjf9LSSvT/BpcAOCJUfo5Anez8sTRVJ+eYQF72k5xn+O2xrmjpRGy6MQpQm9Blh0IeKYD1Cc5ukYJ3mI8KAKbYxZoq1V6RgLrQPbe/e1BegiL3jwQCxIPr9pI5xxdfpf4VtVATeBNqm2WnmzJ1KTxsukhgHr85bRV0pX6/SLH8gQLgBAvoeccVwBOc6xAJKEA9jNMJdf6B0xMWDLS9lvTwwRmM53C4nF3sEgAFls734olyLBqLIa03cE5eRwVSH6LbOI=
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 953e605d-8103-46a8-8248-08d71aacfcd9
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Aug 2019 20:30:57.6309 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tTv3RfKFBdMT85EBM9FmPqJRygilWkq+1IoVbPIyNPtRoVKvfEL9VNKbCUzwLvEnv+vtSn8BqRCeWJ9qg4Xxwg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR21MB1206
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

Add ARM64-specific code to make Hyper-V hypercalls and to
access virtual processor synthetic registers via hypercalls.
Hypercalls use a Hyper-V specific calling sequence with a non-zero
immediate value per Section 2.9 of the SMC Calling Convention
spec.

This code is architecture dependent and is mostly driven by
architecture independent code in the VMbus driver and the
Hyper-V timer clocksource driver.

This code is built only when CONFIG_HYPERV is enabled.

Signed-off-by: Michael Kelley <mikelley@microsoft.com>
---
 MAINTAINERS                 |   1 +
 arch/arm64/Makefile         |   1 +
 arch/arm64/hyperv/Makefile  |   2 +
 arch/arm64/hyperv/hv_hvc.S  |  44 +++++++++++++++
 arch/arm64/hyperv/hv_init.c | 133 ++++++++++++++++++++++++++++++++++++++++++++
 5 files changed, 181 insertions(+)
 create mode 100644 arch/arm64/hyperv/Makefile
 create mode 100644 arch/arm64/hyperv/hv_hvc.S
 create mode 100644 arch/arm64/hyperv/hv_init.c

diff --git a/MAINTAINERS b/MAINTAINERS
index fa98b21..71a8276 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -7488,6 +7488,7 @@ F:	arch/x86/kernel/cpu/mshyperv.c
 F:	arch/x86/hyperv
 F:	arch/arm64/include/asm/hyperv-tlfs.h
 F:	arch/arm64/include/asm/mshyperv.h
+F:	arch/arm64/hyperv
 F:	drivers/clocksource/hyperv_timer.c
 F:	drivers/hid/hid-hyperv.c
 F:	drivers/hv/
diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index bb1f1db..1f014e6 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -140,6 +140,7 @@ core-y		+= arch/arm64/kernel/ arch/arm64/mm/
 core-$(CONFIG_NET) += arch/arm64/net/
 core-$(CONFIG_KVM) += arch/arm64/kvm/
 core-$(CONFIG_XEN) += arch/arm64/xen/
+core-$(CONFIG_HYPERV) += arch/arm64/hyperv/
 core-$(CONFIG_CRYPTO) += arch/arm64/crypto/
 libs-y		:= arch/arm64/lib/ $(libs-y)
 core-$(CONFIG_EFI_STUB) += $(objtree)/drivers/firmware/efi/libstub/lib.a
diff --git a/arch/arm64/hyperv/Makefile b/arch/arm64/hyperv/Makefile
new file mode 100644
index 0000000..6bd8439
--- /dev/null
+++ b/arch/arm64/hyperv/Makefile
@@ -0,0 +1,2 @@
+# SPDX-License-Identifier: GPL-2.0
+obj-y		:= hv_init.o hv_hvc.o
diff --git a/arch/arm64/hyperv/hv_hvc.S b/arch/arm64/hyperv/hv_hvc.S
new file mode 100644
index 0000000..09324ac
--- /dev/null
+++ b/arch/arm64/hyperv/hv_hvc.S
@@ -0,0 +1,44 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+/*
+ * Microsoft Hyper-V hypervisor invocation routines
+ *
+ * Copyright (C) 2018, Microsoft, Inc.
+ *
+ * Author : Michael Kelley <mikelley@microsoft.com>
+ */
+
+#include <linux/linkage.h>
+
+	.text
+/*
+ * Do the HVC instruction.  For Hyper-V the argument is always 1.
+ * x0 contains the hypercall control value, while additional registers
+ * vary depending on the hypercall, and whether the hypercall arguments
+ * are in memory or in registers (a "fast" hypercall per the Hyper-V
+ * TLFS).  When the arguments are in memory x1 is the guest physical
+ * address of the input arguments, and x2 is the guest physical
+ * address of the output arguments.  When the arguments are in
+ * registers, the register values depends on the hypercall.  Note
+ * that this version cannot return any values in registers.
+ */
+ENTRY(hv_do_hvc)
+	hvc #1
+	ret
+ENDPROC(hv_do_hvc)
+
+/*
+ * This variant of HVC invocation is for hv_get_vpreg and
+ * hv_get_vpreg_128. The input parameters are passed in registers
+ * along with a pointer in x4 to where the output result should
+ * be stored. The output is returned in x15 and x16.  x18 is used as
+ * scratch space to avoid buildng a stack frame, as Hyper-V does
+ * not preserve registers x0-x17.
+ */
+ENTRY(hv_do_hvc_fast_get)
+	mov x18, x4
+	hvc #1
+	str x15,[x18]
+	str x16,[x18,#8]
+	ret
+ENDPROC(hv_do_hvc_fast_get)
diff --git a/arch/arm64/hyperv/hv_init.c b/arch/arm64/hyperv/hv_init.c
new file mode 100644
index 0000000..6808bc8
--- /dev/null
+++ b/arch/arm64/hyperv/hv_init.c
@@ -0,0 +1,133 @@
+// SPDX-License-Identifier: GPL-2.0
+
+/*
+ * Initialization of the interface with Microsoft's Hyper-V hypervisor,
+ * and various low level utility routines for interacting with Hyper-V.
+ *
+ * Copyright (C) 2019, Microsoft, Inc.
+ *
+ * Author : Michael Kelley <mikelley@microsoft.com>
+ */
+
+
+#include <linux/types.h>
+#include <linux/version.h>
+#include <linux/export.h>
+#include <linux/mm.h>
+#include <linux/hyperv.h>
+#include <asm-generic/bug.h>
+#include <asm/hyperv-tlfs.h>
+#include <asm/mshyperv.h>
+
+/*
+ * hv_do_hypercall- Invoke the specified hypercall
+ */
+u64 hv_do_hypercall(u64 control, void *input, void *output)
+{
+	u64 input_address;
+	u64 output_address;
+
+	input_address = input ? virt_to_phys(input) : 0;
+	output_address = output ? virt_to_phys(output) : 0;
+	return hv_do_hvc(control, input_address, output_address);
+}
+EXPORT_SYMBOL_GPL(hv_do_hypercall);
+
+/*
+ * hv_do_fast_hypercall8 -- Invoke the specified hypercall
+ * with arguments in registers instead of physical memory.
+ * Avoids the overhead of virt_to_phys for simple hypercalls.
+ */
+
+u64 hv_do_fast_hypercall8(u16 code, u64 input)
+{
+	u64 control;
+
+	control = (u64)code | HV_HYPERCALL_FAST_BIT;
+	return hv_do_hvc(control, input);
+}
+EXPORT_SYMBOL_GPL(hv_do_fast_hypercall8);
+
+
+/*
+ * Set a single VP register to a 64-bit value.
+ */
+void hv_set_vpreg(u32 msr, u64 value)
+{
+	union hv_hypercall_status status;
+
+	status.as_uint64 = hv_do_hvc(
+		HVCALL_SET_VP_REGISTERS | HV_HYPERCALL_FAST_BIT |
+			HV_HYPERCALL_REP_COUNT_1,
+		HV_PARTITION_ID_SELF,
+		HV_VP_INDEX_SELF,
+		msr,
+		0,
+		value,
+		0);
+
+	/*
+	 * Something is fundamentally broken in the hypervisor if
+	 * setting a VP register fails. There's really no way to
+	 * continue as a guest VM, so panic.
+	 */
+	BUG_ON(status.status != HV_STATUS_SUCCESS);
+}
+EXPORT_SYMBOL_GPL(hv_set_vpreg);
+
+
+/*
+ * Get the value of a single VP register, and only the low order 64 bits.
+ */
+u64 hv_get_vpreg(u32 msr)
+{
+	union hv_hypercall_status status;
+	struct hv_get_vp_register_output output;
+
+	status.as_uint64 = hv_do_hvc_fast_get(
+		HVCALL_GET_VP_REGISTERS | HV_HYPERCALL_FAST_BIT |
+			HV_HYPERCALL_REP_COUNT_1,
+		HV_PARTITION_ID_SELF,
+		HV_VP_INDEX_SELF,
+		msr,
+		&output);
+
+	/*
+	 * Something is fundamentally broken in the hypervisor if
+	 * getting a VP register fails. There's really no way to
+	 * continue as a guest VM, so panic.
+	 */
+	BUG_ON(status.status != HV_STATUS_SUCCESS);
+
+	return output.registervaluelow;
+}
+EXPORT_SYMBOL_GPL(hv_get_vpreg);
+
+/*
+ * Get the value of a single VP register that is 128 bits in size.  This is a
+ * separate call in order to avoid complicating the calling sequence for
+ * the much more frequently used 64-bit version.
+ */
+void hv_get_vpreg_128(u32 msr, struct hv_get_vp_register_output *result)
+{
+	union hv_hypercall_status status;
+
+	status.as_uint64 = hv_do_hvc_fast_get(
+		HVCALL_GET_VP_REGISTERS | HV_HYPERCALL_FAST_BIT |
+			HV_HYPERCALL_REP_COUNT_1,
+		HV_PARTITION_ID_SELF,
+		HV_VP_INDEX_SELF,
+		msr,
+		result);
+
+	/*
+	 * Something is fundamentally broken in the hypervisor if
+	 * getting a VP register fails. There's really no way to
+	 * continue as a guest VM, so panic.
+	 */
+	BUG_ON(status.status != HV_STATUS_SUCCESS);
+
+	return;
+
+}
+EXPORT_SYMBOL_GPL(hv_get_vpreg_128);
-- 
1.8.3.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
