Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C3F0F83A45
	for <lists+driverdev-devel@lfdr.de>; Tue,  6 Aug 2019 22:31:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5B81086B3C;
	Tue,  6 Aug 2019 20:31:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TJF-H26LzXLZ; Tue,  6 Aug 2019 20:31:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1F8BB86B17;
	Tue,  6 Aug 2019 20:31:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 12CB41BF990
 for <devel@linuxdriverproject.org>; Tue,  6 Aug 2019 20:31:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0FB5820441
 for <devel@linuxdriverproject.org>; Tue,  6 Aug 2019 20:31:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id svuwRTuG+gsL for <devel@linuxdriverproject.org>;
 Tue,  6 Aug 2019 20:31:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from NAM03-BY2-obe.outbound.protection.outlook.com
 (mail-eopbgr780100.outbound.protection.outlook.com [40.107.78.100])
 by silver.osuosl.org (Postfix) with ESMTPS id B11C520007
 for <devel@linuxdriverproject.org>; Tue,  6 Aug 2019 20:31:10 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kaet/brycjWE2MlRzNXxh9U7R7MCW9FB/6Jg2ePOl8HFoqFfvRxfZQjkZnBiwAtUKdsTMYDwUuFB7e6jVr6zRz34FHPAzcQDpNim2Ij/zCwF3KWTkZvYqpexFLtssM4Nfz0MzEkrZoJRYCw1XUvEHDQ0FhGyfolcH5ncRhZZpeVtW5zwTR6CQhAyRr0O9svnfDVPgimzGroFtBhc/za6arBXcvNUKp+HIbpbInwO6IukHhGBhTjlyn90zsQn0oW4PpEpZ7y5CAJ79KrvC+ySplyaYyLqykTsDFw1WwgsgtJ/Vc79n0S9ZnZ0L1aR5F2saQPgaA03wXVvS7oeBlzkrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZRcjUKuffbdIk6r+FeTJNIGuzF+267fwX53srmE9/o8=;
 b=KJr4yEjSRCl4UHHR07Rbqt9zGH/8PkKW3DvHjUD+gm14mggCxWZPEKNLxY+vEO+v984pNzhPKWyay6wvLAO0MgU7tmViqr1uQMgExd5sE19YSAS4xXdJED0HCYkIe2LA5EDjUgY2WA0uIfKhinNi99lfK/yc5R8P1l2LQdZqPah5gZFl0k+HiO8mbAXEDiEtI1Mfs9j7kYdc4dmu9xBjEhFckZ+Nq7je1bbTkGXPaGhCITLFeB75gakfFqxP8HL0g7Pe0X7Zxwj3itqbt/mBqFlHQ7myrHc/we5I3dSbKjT80fN06kod1Q8RpuQzWzZCkqzqphWowF2HUS6YzXom/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZRcjUKuffbdIk6r+FeTJNIGuzF+267fwX53srmE9/o8=;
 b=R/t2X4JbeaMrhpuR+8LqWSyOpdv7y2LdDs3CiWbheuaY9RpA+9FPsss9v8yXD41Up7SXTCFh8Fsf0FHrwYGd82LNAxdYdEnp0rDwhuNB5gL8y1u8WicKVHQGvi/W2Lpx0NllFnwnkYSp1zVRg5ZW3MFSnjZ11h0M94Mb+OT+eJs=
Received: from BYAPR21MB1335.namprd21.prod.outlook.com (20.179.60.209) by
 BYAPR21MB1255.namprd21.prod.outlook.com (20.179.57.159) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.9; Tue, 6 Aug 2019 20:31:08 +0000
Received: from BYAPR21MB1335.namprd21.prod.outlook.com
 ([fe80::819:aea0:eda4:9301]) by BYAPR21MB1335.namprd21.prod.outlook.com
 ([fe80::819:aea0:eda4:9301%9]) with mapi id 15.20.2157.001; Tue, 6 Aug 2019
 20:31:08 +0000
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
Subject: [PATCH v4 6/8] arm64: hyperv: Initialize hypervisor on boot
Thread-Topic: [PATCH v4 6/8] arm64: hyperv: Initialize hypervisor on boot
Thread-Index: AQHVTJXgt0yg3J047E6hlDw+N0KjAQ==
Date: Tue, 6 Aug 2019 20:31:08 +0000
Message-ID: <1565122133-9086-7-git-send-email-mikelley@microsoft.com>
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
x-ms-office365-filtering-correlation-id: 81d6f7e0-db2d-4b70-bf3a-08d71aad034f
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR21MB1255; 
x-ms-traffictypediagnostic: BYAPR21MB1255:|BYAPR21MB1255:
x-ms-exchange-transport-forked: True
x-ld-processed: 72f988bf-86f1-41af-91ab-2d7cd011db47,ExtAddr
x-microsoft-antispam-prvs: <BYAPR21MB125522C6DE4F16DE4D8243B0D7D50@BYAPR21MB1255.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0121F24F22
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(39860400002)(396003)(376002)(136003)(346002)(189003)(199004)(71200400001)(102836004)(71190400001)(386003)(6636002)(6512007)(66446008)(7416002)(10090500001)(6506007)(10290500003)(66946007)(316002)(50226002)(110136005)(14454004)(4326008)(6116002)(1511001)(52116002)(64756008)(99286004)(2501003)(2201001)(25786009)(68736007)(476003)(11346002)(446003)(86362001)(8936002)(3846002)(486006)(6486002)(256004)(8676002)(54906003)(76176011)(26005)(4720700003)(186003)(7736002)(81166006)(81156014)(2616005)(66066001)(66476007)(22452003)(5660300002)(2906002)(53936002)(305945005)(478600001)(6436002)(36756003)(66556008)(921003)(1121003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR21MB1255;
 H:BYAPR21MB1335.namprd21.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: SEbN97AgD73W4F1tMogEwiXnNDKgmqwGf8ZXmNmGP4okr45zVAsZA/dCp3wJyaZgAt8Uht7Shk+R/lF18M5B1cm3z/qhUzXmyeXV9oYtKGmaOfLoFRe2wPoXKMcrPkzi43O/ZfmDfuuQ4UKlURDVXMc6b3Xj9AmyJ2+Fok/MkE+uoR442tk4aGquYdu447juBK0BTiGAZOYKqtzdSx3Cp9NN7pj8WjGSy4zHTay/8E085XEkJgg7EK4Dg9HdAjY7Gnz6mPBR9+JW99qnf1cFCW+Jb7UpKtR9b7nIWPjG/dLYQ0GcSFc79DJgKQwNdlzcnHAqkmP0nG+ylFM0oPQwNN0d1RTq+7JO0SLFGatutXkYK3Sbr800UPv8ZNw2dmouVDuC+3AF4QWOcMKXLf0Ug8ihkQr8GLD3ugGgyYnUSRo=
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 81d6f7e0-db2d-4b70-bf3a-08d71aad034f
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Aug 2019 20:31:08.4641 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hva4QnbQLWBsv0oN5sSBGfkPWGcgNAs2IEPPNdPcsepPGyyUn/y6gMopD9paP4N2PHO9yAtPdXZHweaxOb7Wlg==
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

Add ARM64-specific code to initialize the Hyper-V
hypervisor when booting as a guest VM. Provide functions
and data structures indicating hypervisor status that
are needed by VMbus driver.

This code is built only when CONFIG_HYPERV is enabled.

Signed-off-by: Michael Kelley <mikelley@microsoft.com>
---
 arch/arm64/hyperv/hv_init.c | 142 ++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 142 insertions(+)

diff --git a/arch/arm64/hyperv/hv_init.c b/arch/arm64/hyperv/hv_init.c
index 67350ec..7179e12 100644
--- a/arch/arm64/hyperv/hv_init.c
+++ b/arch/arm64/hyperv/hv_init.c
@@ -13,15 +13,47 @@
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
@@ -88,6 +120,110 @@ void hv_free_hyperv_page(unsigned long addr)
 
 
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
@@ -260,3 +396,9 @@ void hyperv_report_panic_msg(phys_addr_t pa, size_t size)
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
