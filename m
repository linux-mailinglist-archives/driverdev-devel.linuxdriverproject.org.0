Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A49183A41
	for <lists+driverdev-devel@lfdr.de>; Tue,  6 Aug 2019 22:31:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id ABF5E87EA2;
	Tue,  6 Aug 2019 20:31:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EWd9VqozKLu8; Tue,  6 Aug 2019 20:31:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6E33387E90;
	Tue,  6 Aug 2019 20:31:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E0A101BF375
 for <devel@linuxdriverproject.org>; Tue,  6 Aug 2019 20:31:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DDFC12001A
 for <devel@linuxdriverproject.org>; Tue,  6 Aug 2019 20:31:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IABW5Ue8d-qb for <devel@linuxdriverproject.org>;
 Tue,  6 Aug 2019 20:31:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from NAM03-BY2-obe.outbound.protection.outlook.com
 (mail-eopbgr780091.outbound.protection.outlook.com [40.107.78.91])
 by silver.osuosl.org (Postfix) with ESMTPS id 26BBE20007
 for <devel@linuxdriverproject.org>; Tue,  6 Aug 2019 20:31:02 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P8cM9sEGKR3h/uQFKI9rVOP5S3Bv3Syxgxg/UxtJd05MjzJz+Ay+b6nIObwEQEOdTKDfbylnUcwYkdAT2eFEKKCLiWNBKgYC7F/Nh4UCFgoJE0UzAwo8N9fKTJzo+7Zji9cb6HXMXmbKonRtkCihcvvODFYj8pzqajTJZgL+ZrQFkZVnFz+EAIDCAOoBoUNULQl/jJJfO72Ibm1iLjPSUKEofXX5yQpx2mEiJmwWUEdtT8GqVNP2pVoJjSqObwm/DCoR47Yu/+lMEwwGfhkkVZU8W6bAAPsBlJ8q6NUIwC0D5ZXwnqytzTeiIchxWdt14yZ93cciea+x+3hKAZlnCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aYcH0tBd+rkNdHnFqLew4qdC23mYSO5/7ShL6K33obw=;
 b=VluSh1Zoajs3ldbaEv2Ml5foZljyJByPKPo8Mzq4oCGAQ4ZPlA9DE/vZhUpp3X5RTKcCkhXT+LWOWlfPMYjtKL8WROJTq1ae8gxN/B5eEU+xMpzEBU1+VmAQ3x5dO9nSF4fneYqx+MITw/7PaDMtveI13bTrFZ+bMKG3IRhGyfH7ycLqkGcSpUHSOs3t73PnAfjpxu3S/kXLut+LkqcxkkxtnejjYiZDCB1VppJlXK0EYNp8L2O+aeZX9eePrELahe51kUVXRnOqiNtKsKhgfWdq7BIoI5vRHHNOUGa6U/90Y3IAY0ypWk7M6ZDxLIPY+Cyzga4vZe2+UkfVK6EYTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aYcH0tBd+rkNdHnFqLew4qdC23mYSO5/7ShL6K33obw=;
 b=JmxISn0ry28qxtkpZz7O8PGwwGPdx7qQqlpO1LNR/PkztwDh04rm/HWi0BPt4COBb2H3Zc7lYG2KUyqVWjp2jET33em8yPHnnLzq9rNBmOKNo1Ay9wDNXNBoFXPnnRhEfQfinyv70ivq65tsErAoCzbfd4qNC1iHfqP0Lm6lPMQ=
Received: from BYAPR21MB1335.namprd21.prod.outlook.com (20.179.60.209) by
 BYAPR21MB1255.namprd21.prod.outlook.com (20.179.57.159) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.9; Tue, 6 Aug 2019 20:31:00 +0000
Received: from BYAPR21MB1335.namprd21.prod.outlook.com
 ([fe80::819:aea0:eda4:9301]) by BYAPR21MB1335.namprd21.prod.outlook.com
 ([fe80::819:aea0:eda4:9301%9]) with mapi id 15.20.2157.001; Tue, 6 Aug 2019
 20:31:00 +0000
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
Subject: [PATCH v4 3/8] arm64: hyperv: Add memory alloc/free functions for
 Hyper-V size pages
Thread-Topic: [PATCH v4 3/8] arm64: hyperv: Add memory alloc/free functions
 for Hyper-V size pages
Thread-Index: AQHVTJXcm7BY2ovIUkea7Rzw5X4O8g==
Date: Tue, 6 Aug 2019 20:31:00 +0000
Message-ID: <1565122133-9086-4-git-send-email-mikelley@microsoft.com>
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
x-ms-office365-filtering-correlation-id: 324a3256-89a8-44c6-d3b6-08d71aacfe6e
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR21MB1255; 
x-ms-traffictypediagnostic: BYAPR21MB1255:|BYAPR21MB1255:
x-ms-exchange-transport-forked: True
x-ld-processed: 72f988bf-86f1-41af-91ab-2d7cd011db47,ExtAddr
x-microsoft-antispam-prvs: <BYAPR21MB1255753416007D2446DC0A5FD7D50@BYAPR21MB1255.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-forefront-prvs: 0121F24F22
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(39860400002)(396003)(376002)(136003)(346002)(189003)(199004)(71200400001)(102836004)(71190400001)(386003)(6636002)(6512007)(66446008)(7416002)(10090500001)(6506007)(10290500003)(66946007)(316002)(50226002)(110136005)(14454004)(4326008)(6116002)(1511001)(52116002)(64756008)(99286004)(2501003)(2201001)(25786009)(68736007)(476003)(11346002)(446003)(86362001)(8936002)(3846002)(14444005)(486006)(6486002)(256004)(8676002)(54906003)(76176011)(26005)(4720700003)(186003)(7736002)(81166006)(81156014)(2616005)(66066001)(66476007)(22452003)(5660300002)(2906002)(53936002)(305945005)(478600001)(6436002)(36756003)(66556008)(921003)(1121003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR21MB1255;
 H:BYAPR21MB1335.namprd21.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: KGX42rvmlnd8UbMFHQcJJTji9DHlnSgCXk5GeNea3aidmVbFjMa9q9bGPx7FQiiSKFLD6OnGhIeL69QMggREBJyff8+gm6YN6MCYq53LE9Ks7NsU2lHHsPdJsL7MU5zz4zPYgQxWK4Y8c0MCssE9UFGb1+CguwU3RWqIatMXlORqZfwdsHpKtnLUEz+AYKu2wyDkJbHI3HUZGA32Ek8BTqz0/bJHUTpbXv0+rhg/mg3y4OaeqFKMbWx5l1uTV+WWCCjR6bh4wqD8yroe4/t3wk096mfuJ7FxG0VAcNCA0IJ0VI+SJuGR0KoQqxDks1SgOZPmlIzcPN2rB/UE6KnJkq6AmRI/oE8yzo8jErVZETstpFtJUr0mZVET10686Vk6ze/TjyJMm6ExrMycZtE3p79qiRCfhyw3yvW8Ypnk3fw=
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 324a3256-89a8-44c6-d3b6-08d71aacfe6e
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Aug 2019 20:31:00.2991 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: R04ucd1E6jBT5Y/K20dcqHkX7yTvSHlbmAR7cXQ13e10glteWS24u1CCBE5cGTCIuqbthyeE6hnBPtKgbv7ihA==
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

Add ARM64-specific code to allocate memory with HV_HYP_PAGE_SIZE
size and alignment. These are for use when pages need to be shared
with Hyper-V. Separate functions are needed as the page size used
by Hyper-V may not be the same as the guest page size.  Free
operations are rarely done, so no attempt is made to combine
freed pages into larger chunks.

This code is built only when CONFIG_HYPERV is enabled.

Signed-off-by: Michael Kelley <mikelley@microsoft.com>
---
 arch/arm64/hyperv/hv_init.c    | 68 ++++++++++++++++++++++++++++++++++++++++++
 include/asm-generic/mshyperv.h |  5 ++++
 2 files changed, 73 insertions(+)

diff --git a/arch/arm64/hyperv/hv_init.c b/arch/arm64/hyperv/hv_init.c
index 6808bc8..9c294f6 100644
--- a/arch/arm64/hyperv/hv_init.c
+++ b/arch/arm64/hyperv/hv_init.c
@@ -15,10 +15,78 @@
 #include <linux/export.h>
 #include <linux/mm.h>
 #include <linux/hyperv.h>
+#include <linux/spinlock.h>
+#include <linux/list.h>
+#include <linux/string.h>
 #include <asm-generic/bug.h>
 #include <asm/hyperv-tlfs.h>
 #include <asm/mshyperv.h>
 
+
+/*
+ * Functions for allocating and freeing memory with size and
+ * alignment HV_HYP_PAGE_SIZE. These functions are needed because
+ * the guest page size may not be the same as the Hyper-V page
+ * size. And while kalloc() could allocate the memory, it does not
+ * guarantee the required alignment. So a separate small memory
+ * allocator is needed.  The free function is rarely used, so it
+ * does not try to combine freed pages into larger chunks.
+ *
+ * These functions are used by arm64 specific code as well as
+ * arch independent Hyper-V drivers.
+ */
+
+static DEFINE_SPINLOCK(free_list_lock);
+static struct list_head free_list = LIST_HEAD_INIT(free_list);
+
+void *hv_alloc_hyperv_page(void)
+{
+	int i;
+	struct list_head *hv_page;
+	unsigned long addr;
+
+	BUILD_BUG_ON(HV_HYP_PAGE_SIZE > PAGE_SIZE);
+
+	spin_lock(&free_list_lock);
+	if (list_empty(&free_list)) {
+		spin_unlock(&free_list_lock);
+		addr = __get_free_page(GFP_KERNEL);
+		spin_lock(&free_list_lock);
+		for (i = 0; i < PAGE_SIZE; i += HV_HYP_PAGE_SIZE)
+			list_add_tail((struct list_head *)(addr + i),
+					&free_list);
+	}
+	hv_page = free_list.next;
+	list_del(hv_page);
+	spin_unlock(&free_list_lock);
+
+	return hv_page;
+}
+EXPORT_SYMBOL_GPL(hv_alloc_hyperv_page);
+
+void *hv_alloc_hyperv_zeroed_page(void)
+{
+	void *memp;
+
+	memp = hv_alloc_hyperv_page();
+	memset(memp, 0, HV_HYP_PAGE_SIZE);
+
+	return memp;
+}
+EXPORT_SYMBOL_GPL(hv_alloc_hyperv_zeroed_page);
+
+
+void hv_free_hyperv_page(unsigned long addr)
+{
+	if (!addr)
+		return;
+	spin_lock(&free_list_lock);
+	list_add((struct list_head *)addr, &free_list);
+	spin_unlock(&free_list_lock);
+}
+EXPORT_SYMBOL_GPL(hv_free_hyperv_page);
+
+
 /*
  * hv_do_hypercall- Invoke the specified hypercall
  */
diff --git a/include/asm-generic/mshyperv.h b/include/asm-generic/mshyperv.h
index 0becb7d..30a9f3e 100644
--- a/include/asm-generic/mshyperv.h
+++ b/include/asm-generic/mshyperv.h
@@ -99,6 +99,11 @@ static inline void vmbus_signal_eom(struct hv_message *msg, u32 old_msg_type)
 void hv_setup_crash_handler(void (*handler)(struct pt_regs *regs));
 void hv_remove_crash_handler(void);
 
+void *hv_alloc_hyperv_page(void);
+void *hv_alloc_hyperv_zeroed_page(void);
+void hv_free_hyperv_page(unsigned long addr);
+
+
 #if IS_ENABLED(CONFIG_HYPERV)
 /*
  * Hypervisor's notion of virtual processor ID is different from
-- 
1.8.3.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
