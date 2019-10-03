Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2098FCAEBE
	for <lists+driverdev-devel@lfdr.de>; Thu,  3 Oct 2019 21:03:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DBFF7230A1;
	Thu,  3 Oct 2019 19:03:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mBTWa4yNulY6; Thu,  3 Oct 2019 19:03:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 55785230BD;
	Thu,  3 Oct 2019 19:03:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 18AF81BF9B6
 for <devel@linuxdriverproject.org>; Thu,  3 Oct 2019 19:03:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0E37622E8C
 for <devel@linuxdriverproject.org>; Thu,  3 Oct 2019 19:03:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Pl-XV7BbANtc for <devel@linuxdriverproject.org>;
 Thu,  3 Oct 2019 19:03:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from NAM04-CO1-obe.outbound.protection.outlook.com
 (mail-eopbgr690107.outbound.protection.outlook.com [40.107.69.107])
 by silver.osuosl.org (Postfix) with ESMTPS id F14E122E89
 for <devel@linuxdriverproject.org>; Thu,  3 Oct 2019 19:03:20 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jgpCrjndQg2Ebm5SOc4ibOFlS/QtK0wZTyuAQz5+DlkOAGMa4uK3bxzHImwKC2caUiB/gEtr+iEp+iW4cd7uSmoPZsvBQMX95wjcaTpiP9wOtZySt0nW4IKuyv16Efn5pfMWPmIsslBuwNYvOQ19PpqYqDSukdmlWtyz/xxE4FNTAjow8B4lJgg2I5AEZ6q0WdTfxNYfH1SNInEIan3Z9nmDPo+KTcbEs4arapyo1of3O7MVz4vU5KAgZaoO3rCRb1IhX2yIKzHp0nN4yIKYCIQUmST8+Y3K1q2pPHV3f+lQyGgBrBXagUebwSUUAl8yDPox8vHuIB7DMnHaglOiYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=umrnsH1sHrGPxCQFCBctVg+Q9zJYgECU3LboyHUNd1M=;
 b=hc5VaM9xejw1f+15f5BMrEhQrTZuslRn2RFR5Z66mgKvpdy70WBOe+In4BH2izujhCYKuZJyydw6fwQ1Efgxxo5SZrCcD/5Zw4W9XOcY6KZRyG9Q3BtwJY87nkkFdNfiphP5ktzzXelVYWKQ0agW4DuKipMFM7ZxXPLAcUEX/F9XXNEoQ/ny/A3dlLQuo+LIjRqyMZ09HDj8rtIlNZsU/GrTOEes8qMcReULkjmsjafQAXPqJyPzwFC+ZMWzKjg0mww7WIHbZOMehl+IBxs5aJZbc+4mgRicYWi2e0kT8ze9iodCbOCTa9n7JxuDgCY0fQKoySoBZL5lcZs4SHr7uQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=umrnsH1sHrGPxCQFCBctVg+Q9zJYgECU3LboyHUNd1M=;
 b=GzaHmHDdLe7UyAx1ZcxCQBz4bdtAjevcUMRzHqqhwVp0cIYrHVMpCMsW4TdDkttIFzklZKyjC/Mxo5K3gyl58AXpwJpPUo0v/u7rrNE9uT6KLy8ArH+WsPbNE8IvT4eKvjfbOuao1qgZPw1UhDQft5C3wIIT8iWh+P3jU7Bxms4=
Received: from SN6PR2101MB1135.namprd21.prod.outlook.com (52.132.114.24) by
 SN6PR2101MB1102.namprd21.prod.outlook.com (52.132.115.27) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2327.7; Thu, 3 Oct 2019 19:03:19 +0000
Received: from SN6PR2101MB1135.namprd21.prod.outlook.com
 ([fe80::7d4a:b5b3:1062:e62]) by SN6PR2101MB1135.namprd21.prod.outlook.com
 ([fe80::7d4a:b5b3:1062:e62%5]) with mapi id 15.20.2327.004; Thu, 3 Oct 2019
 19:03:19 +0000
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
Subject: [PATCH v5 2/8] arm64: hyperv: Add hypercall and register access
 functions
Thread-Topic: [PATCH v5 2/8] arm64: hyperv: Add hypercall and register access
 functions
Thread-Index: AQHVeh04cQzJKhhbwkS/Ne3BJTUZjg==
Date: Thu, 3 Oct 2019 19:03:19 +0000
Message-ID: <1570129355-16005-3-git-send-email-mikelley@microsoft.com>
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
x-ms-office365-filtering-correlation-id: 7b1b85bd-5045-447d-d5ca-08d748345a84
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: SN6PR2101MB1102:|SN6PR2101MB1102:|SN6PR2101MB1102:
x-ms-exchange-transport-forked: True
x-ld-processed: 72f988bf-86f1-41af-91ab-2d7cd011db47,ExtAddr
x-microsoft-antispam-prvs: <SN6PR2101MB110215A792FA07795B14C584D79F0@SN6PR2101MB1102.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2733;
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
x-microsoft-antispam-message-info: eXercmZBXSlkVEn2pNBagd6PCH/DdTMzvoY0TSIMVjY5jATbv74d6tVlThiRJy9QO1/yqNfArUitjcgUFHcy/KKqMU8wXF09SnYqt7+j2ZXhPVvYn+Jdfmt5INtf+jiOauGRf+ykgDTzihLPA2NsU6ULwkxoqGPnkYKG7sRby+KEGNSnAa2Xmz87gnSM5/8/OIph+nVckbKOor7TJMX6ki6GMHpCUrVHueRupqy/6y39K0WK24bMrl/FqrSSmg/KCTd4xoAGGmXa220clQP5nOxil2pAf/yo9APtvtvxvrz6/jY7+d/4APSRW/W3nfhzEJiMquG1IuPK7TixCPK7feLpumUzFFb8gpaGOb/WU2fmdnUSnGipoawT9f6GFEki8V2nqyk4no/sI3v2w7hYaDSpRnvip7csJYscclZwtV4=
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b1b85bd-5045-447d-d5ca-08d748345a84
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Oct 2019 19:03:19.1797 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1bTvm187cp3B7WItL1G3LLYckOZMGJze9gLX+LNmHorZThTwXPq6Zc6hCpHzJ8S0lvLeXSzhNbYA4XLSoEq34A==
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
 arch/arm64/Kbuild           |   1 +
 arch/arm64/hyperv/Makefile  |   2 +
 arch/arm64/hyperv/hv_hvc.S  |  44 +++++++++++++++
 arch/arm64/hyperv/hv_init.c | 133 ++++++++++++++++++++++++++++++++++++++++++++
 5 files changed, 181 insertions(+)
 create mode 100644 arch/arm64/hyperv/Makefile
 create mode 100644 arch/arm64/hyperv/hv_hvc.S
 create mode 100644 arch/arm64/hyperv/hv_init.c

diff --git a/MAINTAINERS b/MAINTAINERS
index d464067..84f76f9 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -7566,6 +7566,7 @@ F:	arch/x86/kernel/cpu/mshyperv.c
 F:	arch/x86/hyperv
 F:	arch/arm64/include/asm/hyperv-tlfs.h
 F:	arch/arm64/include/asm/mshyperv.h
+F:	arch/arm64/hyperv
 F:	drivers/clocksource/hyperv_timer.c
 F:	drivers/hid/hid-hyperv.c
 F:	drivers/hv/
diff --git a/arch/arm64/Kbuild b/arch/arm64/Kbuild
index d646582..2469421 100644
--- a/arch/arm64/Kbuild
+++ b/arch/arm64/Kbuild
@@ -3,4 +3,5 @@ obj-y			+= kernel/ mm/
 obj-$(CONFIG_NET)	+= net/
 obj-$(CONFIG_KVM)	+= kvm/
 obj-$(CONFIG_XEN)	+= xen/
+obj-$(CONFIG_HYPERV)	+= hyperv/
 obj-$(CONFIG_CRYPTO)	+= crypto/
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
