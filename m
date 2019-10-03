Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A1F19CAEC2
	for <lists+driverdev-devel@lfdr.de>; Thu,  3 Oct 2019 21:03:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4D51487954;
	Thu,  3 Oct 2019 19:03:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id atkAwS+vLj-f; Thu,  3 Oct 2019 19:03:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 18AF787960;
	Thu,  3 Oct 2019 19:03:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6CEAA1BF2F7
 for <devel@linuxdriverproject.org>; Thu,  3 Oct 2019 19:03:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 69B1F86AF4
 for <devel@linuxdriverproject.org>; Thu,  3 Oct 2019 19:03:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fV-eJVzJsXHV for <devel@linuxdriverproject.org>;
 Thu,  3 Oct 2019 19:03:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from NAM04-CO1-obe.outbound.protection.outlook.com
 (mail-eopbgr690123.outbound.protection.outlook.com [40.107.69.123])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CA174869F6
 for <devel@linuxdriverproject.org>; Thu,  3 Oct 2019 19:03:25 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CGjhZ7wy/FC9urhnhrk2nIfZ21lfs/DdyRmYvLRBvtCg3qcbJpi0OfxZe/arT22h6kSR+gJkuryjVaEFvX3bDLQkssMutUdk2KakAoWGTMqq3ZaBWrQXRIgPf4y5pAP1tn6D7mUodNyD+hhwwvZ+bFbnnIdcRO54ZIND22BpnZhPHuHh0mSG5joTEgwa8ogbWTd10p5d404IDX8itAwR/aq7BeQiB1VMeST/AcN/pQ8iNK9qCtAXybi0PGfk5OSW8MiHNUjZWlMil9H/bW6NV9CMkjVJmCRS8lhENBbOyTyuxmomjKXskpB6OajxAn+pLVDfabEmgcgFBNFG0PmENQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pg2fLrY1Z+OvdAU29RqtGiieO2lGTPCKdVmydg+kWwE=;
 b=BwXo1xqt3xkoA/Wi4jSNC+nKko3jnephdLU4LtpMWewxjDrq7xMbtZrvvivPTMuY2W5FvNZLqR/a/u+9NhH0nMLMso0suanRKxzWCVoHcfZuVkUTwc77idBFeA+8Wximyaby2mG2JtBmUINc/hLSSh4wR1n3BcvQ1QsZ5Fd37ik8qwlYUPxy82pS+89f3ix69YSl05hoCPmrHR+PhDXD9Z2ZtZKRaOttIy3wPxS6mBHc2O55YBLN47izNan0l40r3fvQP8Vu4hcupoEI/e4GrEZjJqi2BAkJd+867cP6oXmUqZm6vm6J3Oj0KZFx3np12eTRxHB18+jw1uoH7c6HNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pg2fLrY1Z+OvdAU29RqtGiieO2lGTPCKdVmydg+kWwE=;
 b=frok+Racr0JX/ixCllNEdvbmYjJfSaQ0EdoIr/MVtW/fEpIq+1hhR4tqoGXmcIZ+INuN6R3MsYqds6QffTuCzIW2pdL8ihZUAAVz1BA5PbtcvzfX10BcfG37ReFty6AYgi+1YE69IRNl2z/m5PpFhOzVi6cGaUWzWv5m2ODGmTQ=
Received: from SN6PR2101MB1135.namprd21.prod.outlook.com (52.132.114.24) by
 SN6PR2101MB1102.namprd21.prod.outlook.com (52.132.115.27) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2327.7; Thu, 3 Oct 2019 19:03:24 +0000
Received: from SN6PR2101MB1135.namprd21.prod.outlook.com
 ([fe80::7d4a:b5b3:1062:e62]) by SN6PR2101MB1135.namprd21.prod.outlook.com
 ([fe80::7d4a:b5b3:1062:e62%5]) with mapi id 15.20.2327.004; Thu, 3 Oct 2019
 19:03:24 +0000
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
Subject: [PATCH v5 6/8] arm64: hyperv: Initialize hypervisor on boot
Thread-Topic: [PATCH v5 6/8] arm64: hyperv: Initialize hypervisor on boot
Thread-Index: AQHVeh07F4j1ZPUHt0GkW4RJu5gxXQ==
Date: Thu, 3 Oct 2019 19:03:24 +0000
Message-ID: <1570129355-16005-7-git-send-email-mikelley@microsoft.com>
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
x-ms-office365-filtering-correlation-id: 0b620590-7521-42d5-cbd8-08d748345daa
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: SN6PR2101MB1102:|SN6PR2101MB1102:|SN6PR2101MB1102:
x-ms-exchange-transport-forked: True
x-ld-processed: 72f988bf-86f1-41af-91ab-2d7cd011db47,ExtAddr
x-microsoft-antispam-prvs: <SN6PR2101MB11023B6D89AA23CC1908D2E3D79F0@SN6PR2101MB1102.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 01792087B6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(1496009)(39860400002)(396003)(136003)(366004)(376002)(346002)(199004)(189003)(486006)(102836004)(446003)(81156014)(5660300002)(64756008)(6512007)(66476007)(66556008)(4326008)(1511001)(66946007)(256004)(52116002)(6436002)(386003)(6116002)(305945005)(476003)(8676002)(99286004)(7416002)(11346002)(4720700003)(66446008)(2501003)(22452003)(6636002)(316002)(2616005)(66066001)(26005)(71200400001)(478600001)(76176011)(86362001)(54906003)(2201001)(36756003)(10090500001)(81166006)(71190400001)(8936002)(6486002)(186003)(10290500003)(14454004)(25786009)(7736002)(6506007)(50226002)(3846002)(110136005)(2906002)(921003)(1121003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR2101MB1102;
 H:SN6PR2101MB1135.namprd21.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mb0s9cAWr+ZCs8QS8tdPp16F/6ZBSXWgnFuZSH/8VVOP142xF95ophn89LnT7xufJvutbJQfqnI/+gY2tkgCRMr3n+vzfQnDU5svTwEi4VyHHC6PYc7vzKzHKaj9G+RHpbLbhtO8D4fc44Du+b6cxkHrMkoOQZRYie81aELJ6US2KL9+SdZ87DIOkOuIfvM8ZthsgPwoxqwPDyL+7rAqv7NjijpNfPjryDCsR/iZBg+se+qpvV633Clsn2UDnj3RsMNH6wATg7eicvkxnH37l7+9XaJzs203c97HsNxbYbErAvGQ4QGek0zBG3bk6apwRS/FUuZFCgAFwoWjo9DUcRwNp/EBc9ZfqV9FMMDVn/fMgzwR26781TR1iBqf52oL3sUbu2r/wHBa338pRti2iPoCqZSQos0c51a6T+m35GI=
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b620590-7521-42d5-cbd8-08d748345daa
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Oct 2019 19:03:24.4767 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Dhn27YWMZoiUvwKGauOw9xVSaEZGhhBRLJhIqjJTa67S60dK+5AxM2xUDIWtoOV0x8EqN0dlfkQgBKxipldwWg==
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

Add ARM64-specific code to initialize the Hyper-V
hypervisor when booting as a guest VM. Provide functions
and data structures indicating hypervisor status that
are needed by VMbus driver.

This code is built only when CONFIG_HYPERV is enabled.

Signed-off-by: Michael Kelley <mikelley@microsoft.com>
---
 arch/arm64/hyperv/hv_init.c | 153 ++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 153 insertions(+)

diff --git a/arch/arm64/hyperv/hv_init.c b/arch/arm64/hyperv/hv_init.c
index 67350ec..86e4621 100644
--- a/arch/arm64/hyperv/hv_init.c
+++ b/arch/arm64/hyperv/hv_init.c
@@ -13,15 +13,48 @@
 #include <linux/types.h>
 #include <linux/version.h>
 #include <linux/export.h>
+#include <linux/vmalloc.h>
 #include <linux/mm.h>
+#include <linux/acpi.h>
+#include <linux/module.h>
 #include <linux/hyperv.h>
 #include <linux/spinlock.h>
 #include <linux/list.h>
 #include <linux/string.h>
+#include <linux/slab.h>
+#include <linux/cpuhotplug.h>
+#include <linux/psci.h>
+#include <linux/sched_clock.h>
 #include <asm-generic/bug.h>
 #include <asm/hyperv-tlfs.h>
 #include <asm/mshyperv.h>
+#include <asm/sysreg.h>
+#include <clocksource/hyperv_timer.h>
 
+static bool	hyperv_initialized;
+
+struct		ms_hyperv_info ms_hyperv __ro_after_init;
+EXPORT_SYMBOL_GPL(ms_hyperv);
+
+u32		*hv_vp_index;
+EXPORT_SYMBOL_GPL(hv_vp_index);
+
+u32		hv_max_vp_index;
+EXPORT_SYMBOL_GPL(hv_max_vp_index);
+
+static int hv_cpu_init(unsigned int cpu)
+{
+	u64 msr_vp_index;
+
+	hv_get_vp_index(msr_vp_index);
+
+	hv_vp_index[smp_processor_id()] = msr_vp_index;
+
+	if (msr_vp_index > hv_max_vp_index)
+		hv_max_vp_index = msr_vp_index;
+
+	return 0;
+}
 
 /*
  * Functions for allocating and freeing memory with size and
@@ -88,6 +121,120 @@ void hv_free_hyperv_page(unsigned long addr)
 
 
 /*
+ * This function is invoked via the ACPI clocksource probe mechanism. We
+ * don't actually use any values from the ACPI GTDT table, but we set up
+ * the Hyper-V synthetic clocksource and do other initialization for
+ * interacting with Hyper-V the first time.  Using early_initcall to invoke
+ * this function is too late because interrupts are already enabled at that
+ * point, and hv_init_clocksource() must run before interrupts are enabled.
+ *
+ * 1. Setup the guest ID.
+ * 2. Get features and hints info from Hyper-V
+ * 3. Setup per-cpu VP indices.
+ * 4. Initialize the Hyper-V clocksource.
+ */
+
+static int __init hyperv_init(struct acpi_table_header *table)
+{
+	struct hv_get_vp_register_output result;
+	u32	a, b, c, d;
+	u64	guest_id;
+	int	i;
+
+	/*
+	 * If we're in a VM on Hyper-V, the ACPI hypervisor_id field will
+	 * have the string "MsHyperV".
+	 */
+	if (strncmp((char *)&acpi_gbl_FADT.hypervisor_id, "MsHyperV", 8))
+		return -EINVAL;
+
+	/* Setup the guest ID */
+	guest_id = generate_guest_id(0, LINUX_VERSION_CODE, 0);
+	hv_set_vpreg(HV_REGISTER_GUEST_OSID, guest_id);
+
+	/* Get the features and hints from Hyper-V */
+	hv_get_vpreg_128(HV_REGISTER_PRIVILEGES_AND_FEATURES, &result);
+	ms_hyperv.features = lower_32_bits(result.registervaluelow);
+	ms_hyperv.misc_features = upper_32_bits(result.registervaluehigh);
+
+	hv_get_vpreg_128(HV_REGISTER_FEATURES, &result);
+	ms_hyperv.hints = lower_32_bits(result.registervaluelow);
+
+	pr_info("Hyper-V: Features 0x%x, hints 0x%x\n",
+		ms_hyperv.features, ms_hyperv.hints);
+
+	/*
+	 * Direct mode is the only option for STIMERs provided Hyper-V
+	 * on ARM64, so Hyper-V doesn't actually set the flag.  But add
+	 * the flag so the architecture independent code in
+	 * drivers/clocksource/hyperv_timer.c will correctly use that mode.
+	 */
+	ms_hyperv.misc_features |= HV_STIMER_DIRECT_MODE_AVAILABLE;
+
+	/*
+	 * Hyper-V on ARM64 doesn't support AutoEOI.  Add the hint
+	 * that tells architecture independent code not to use this
+	 * feature.
+	 */
+	ms_hyperv.hints |= HV_DEPRECATING_AEOI_RECOMMENDED;
+
+	/* Get information about the Hyper-V host version */
+	hv_get_vpreg_128(HV_REGISTER_HYPERVISOR_VERSION, &result);
+	a = lower_32_bits(result.registervaluelow);
+	b = upper_32_bits(result.registervaluelow);
+	c = lower_32_bits(result.registervaluehigh);
+	d = upper_32_bits(result.registervaluehigh);
+	pr_info("Hyper-V: Host Build %d.%d.%d.%d-%d-%d\n",
+		b >> 16, b & 0xFFFF, a, d & 0xFFFFFF, c, d >> 24);
+
+	/* Allocate and initialize percpu VP index array */
+	hv_vp_index = kmalloc_array(num_possible_cpus(), sizeof(*hv_vp_index),
+				    GFP_KERNEL);
+	if (!hv_vp_index)
+		return -ENOMEM;
+
+	for (i = 0; i < num_possible_cpus(); i++)
+		hv_vp_index[i] = VP_INVAL;
+
+	if (cpuhp_setup_state(CPUHP_AP_ONLINE_DYN, "arm64/hyperv_init:online",
+			      hv_cpu_init, NULL) < 0)
+		goto free_vp_index;
+
+	hv_init_clocksource();
+
+	hyperv_initialized = true;
+	return 0;
+
+free_vp_index:
+	kfree(hv_vp_index);
+	hv_vp_index = NULL;
+	return -EINVAL;
+}
+TIMER_ACPI_DECLARE(hyperv, ACPI_SIG_GTDT, hyperv_init);
+
+
+/*
+ * Called from hv_init_clocksource() to do ARM64
+ * specific initialization of the sched clock
+ */
+void __init hv_setup_sched_clock(void *sched_clock)
+{
+	sched_clock_register(sched_clock, 64, HV_CLOCK_HZ);
+}
+
+/*
+ * This routine is called before kexec/kdump, it does the required cleanup.
+ */
+void hyperv_cleanup(void)
+{
+	/* Reset our OS id */
+	hv_set_vpreg(HV_REGISTER_GUEST_OSID, 0);
+
+}
+EXPORT_SYMBOL_GPL(hyperv_cleanup);
+
+
+/*
  * hv_do_hypercall- Invoke the specified hypercall
  */
 u64 hv_do_hypercall(u64 control, void *input, void *output)
@@ -260,3 +407,9 @@ void hyperv_report_panic_msg(phys_addr_t pa, size_t size)
 	       (HV_CRASH_CTL_CRASH_NOTIFY | HV_CRASH_CTL_CRASH_NOTIFY_MSG));
 }
 EXPORT_SYMBOL_GPL(hyperv_report_panic_msg);
+
+bool hv_is_hyperv_initialized(void)
+{
+	return hyperv_initialized;
+}
+EXPORT_SYMBOL_GPL(hv_is_hyperv_initialized);
-- 
1.8.3.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
