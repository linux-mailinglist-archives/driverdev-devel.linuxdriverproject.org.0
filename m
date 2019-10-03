Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EB8BFCAEBB
	for <lists+driverdev-devel@lfdr.de>; Thu,  3 Oct 2019 21:03:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CD94B879C2;
	Thu,  3 Oct 2019 19:03:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j5mwLm7dosHI; Thu,  3 Oct 2019 19:03:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A51C38795E;
	Thu,  3 Oct 2019 19:03:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 402601BF2F7
 for <devel@linuxdriverproject.org>; Thu,  3 Oct 2019 19:03:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3A3118795E
 for <devel@linuxdriverproject.org>; Thu,  3 Oct 2019 19:03:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o+1D3F12wj4r for <devel@linuxdriverproject.org>;
 Thu,  3 Oct 2019 19:03:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from NAM04-CO1-obe.outbound.protection.outlook.com
 (mail-eopbgr690122.outbound.protection.outlook.com [40.107.69.122])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CD78387954
 for <devel@linuxdriverproject.org>; Thu,  3 Oct 2019 19:03:21 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VmRgTIe13RG8+Kk/VDC2UAkmt1pFJXu3TpvWGLY2DSQqmdCLRg9JU7uVUlXfp7ikF/JisLQugXa0sJRVCUbmnSLnuDhaql2K7f6XB0S5MOf7uJ4/fZ+lJGWxTZCjvzrTFLDJWgie9oSO8PBdUrmSJY39Q7tCRiW6St6Oap4XkG8jyIdJH8RUWH4/gHdxvsIjObmeGvNkgZRa5NTIuxAfv361RcVw8spw0Imqk7yM451BxAIo3347kW0T4y795nDfnHVXYLVF1pQkmtAKUkybDDKD3mWkofl8/mARqKTp4NzIl8nlz1HvhnWCzPpU/nkA+hZkAFnq74c+k4DsudIUEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JrbFmZ+i8mAIybLfpV+A9+vcJy1OcoCBexTV6K9T86M=;
 b=Cf3P987xQqkX2ZykahoHwtazBudGjAHp4b6p3ZZXNbymzeGvLhNEOkHdoYsZRgcbRvVitgZXpfeMdQY2CmlsrnzzpEluemrASxwDqNsAvMk8Z5OG6USzw/Jrj7gV4u83slo8MB0/nz3Thxr878wRB7ze8ZMmILWDYDH3xZXUbVcl44VjI2mTpEK+svc0stFDxOxE8mJNuTc2Em31SqXiUISgTT5zsIzShxgeqkbMO4MVgkGYPlT6N1pnSyhmqecG136yOLCnHHDC8+f2GyjuIq5UTe1DbTWsIP4o1ls0xVqhIC0odVbvlqWnOIornQgX3UteP+D6PYj/JSQT+AR/fw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JrbFmZ+i8mAIybLfpV+A9+vcJy1OcoCBexTV6K9T86M=;
 b=dokCOwcW6HsoL75RDatc3rFos6WwTr6sU5iRtqkPEAHpQpIpUj9ut3SG9k6gPUO/n9rswq/diYJmusfZwStyEXe2DZYvnDsXYLjDMLpLOXZSF8JIUjAARZT4hiy9x/SbGoQyW6ekLMLiVVBmdr/krH4A/444A8kKV1b9VaoBot4=
Received: from SN6PR2101MB1135.namprd21.prod.outlook.com (52.132.114.24) by
 SN6PR2101MB1102.namprd21.prod.outlook.com (52.132.115.27) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2327.7; Thu, 3 Oct 2019 19:03:20 +0000
Received: from SN6PR2101MB1135.namprd21.prod.outlook.com
 ([fe80::7d4a:b5b3:1062:e62]) by SN6PR2101MB1135.namprd21.prod.outlook.com
 ([fe80::7d4a:b5b3:1062:e62%5]) with mapi id 15.20.2327.004; Thu, 3 Oct 2019
 19:03:20 +0000
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
Subject: [PATCH v5 3/8] arm64: hyperv: Add memory alloc/free functions for
 Hyper-V size pages
Thread-Topic: [PATCH v5 3/8] arm64: hyperv: Add memory alloc/free functions
 for Hyper-V size pages
Thread-Index: AQHVeh04u6bhiCxFnkCG7X+tKP68gQ==
Date: Thu, 3 Oct 2019 19:03:20 +0000
Message-ID: <1570129355-16005-4-git-send-email-mikelley@microsoft.com>
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
x-ms-office365-filtering-correlation-id: 3646403b-e83d-4cfd-0d66-08d748345b46
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: SN6PR2101MB1102:|SN6PR2101MB1102:|SN6PR2101MB1102:
x-ms-exchange-transport-forked: True
x-ld-processed: 72f988bf-86f1-41af-91ab-2d7cd011db47,ExtAddr
x-microsoft-antispam-prvs: <SN6PR2101MB110276C59C2230BF1D6A155DD79F0@SN6PR2101MB1102.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
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
x-microsoft-antispam-message-info: rExLpJwL6BaX7qwf0OjVhfpRd1pjhcXo+MRYitKanGT6TiwpBy32MX3B77God1N3nVWXatY0tJ7bA5LUrch7bkWcYzb6Uf4gLDgLFL59Ayl63IVuuTty8AjCshWNiVZK5VLygZcAE+VtL0IDL9I6yOpASCYJR090Q3lA3wj4Ugv99T1j9hogm/XD5V2xQknE/sfyAoLJz3UQFS8XPi+1/H63URoIYdraXefOIFAeg4BuuYQxhmkjLWRjYPc+HHouLqDBlQ5i1pySwXjJE9L/9rWp5JjAwF9zODe2o0gd5ZAUhpB3QlHDNNMk+JZnDhCqsv6dxAsFidQgMlH4r7D1a76k2FPBgnT5PIghSipOzGPvpBnXkEJYbkvmMwzDfArE6ZCIwYwxUXBUH9/1H6dofDbVBbeUitJMlIbbGZbrlU4=
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3646403b-e83d-4cfd-0d66-08d748345b46
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Oct 2019 19:03:20.4980 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vnOi7RhHG+6na9FTfjve2T9jZzwbMxMRwA+X9RraoO0Y4d31h7SZtRm9DFPc0z6QHApUMiMttRLyvGM4aEngZg==
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
index 18d8e2d..f9f3b66 100644
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
