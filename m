Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D7C7CAEC0
	for <lists+driverdev-devel@lfdr.de>; Thu,  3 Oct 2019 21:03:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D1E23230BD;
	Thu,  3 Oct 2019 19:03:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U+C5+e227+g5; Thu,  3 Oct 2019 19:03:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 65E0522F26;
	Thu,  3 Oct 2019 19:03:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 826AF1BF9B7
 for <devel@linuxdriverproject.org>; Thu,  3 Oct 2019 19:03:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7571688265
 for <devel@linuxdriverproject.org>; Thu,  3 Oct 2019 19:03:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B9u5Ksn0Csof for <devel@linuxdriverproject.org>;
 Thu,  3 Oct 2019 19:03:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from NAM04-CO1-obe.outbound.protection.outlook.com
 (mail-eopbgr690117.outbound.protection.outlook.com [40.107.69.117])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 739F388222
 for <devel@linuxdriverproject.org>; Thu,  3 Oct 2019 19:03:27 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KHcn/pVZq525w43DkB++gd6C+3g7YNxD63eGO/4R3E1uLHuNonYbztHlvU7N6MzmvAV32p8s4M3/yfl+1IzEdUibR3fnHNJPdBL3h5diaM+RdlZ9ClgQH9/uGh3H0p+Hok/ugQEo7tU0soRcACdKFoIRyXuRpDv1EnHHPqOT0gvjHaJ6YLJi8gZADDQCSotFPTBM/c2DtB8LuBRbNEeLO4ha+BFnQhm15goYGUhUhlVOiZT6vX/mSYRkvfM2zCUlw3/wvojaPt0WNjVOgGEQtpawRaTz/08RHJ+UmvKxi/u+QIY1I4cEChvJv/S3ub6+79pV1WfBKk4P7qgVqdeubQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PLXgUw7V+5fUB0JzXqkHG+oFVPVmofbsYFU/BFZAkIo=;
 b=i97lWcX4d8/CG70PNk3W8ebz+r3HFae204KzbmrXesX7wA2wWmELdLmLAiY9IbfsssyxFM66uXOswIQ3uoqEBPuuIqSAzaQ6Nj2WjcZeIdQc10oRU7iPm8EeT5A0lFcMltUsCjYKUyXkrbUr9sZCQJJnC/ea97MmjmkTbYXs/P9LsueYLkYxEE978w8aHjYBnbgfP3w0+ld3iMnJblXd1yEaLS1fnUNiKE3G3UhgnjL8tjr+qnKXD6OSkjlzg4y65PMalz/VSjD7Y+pE32wzQRGWAp9lED5fod0se3evFKrX9B2HcXPsQKyLPcQFT4KcXXrUPFFoz8ig+rCzDGCGFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PLXgUw7V+5fUB0JzXqkHG+oFVPVmofbsYFU/BFZAkIo=;
 b=dLE1O3au+ZE5IF53fZ1chr8ZS6vhs3gXTX37NtYyXFUwZtS9lG9nq5+4Gha79c7bBI8SMxIDbN2xJGF8tqbmtf2V0wgU0XeWv1KmjtempEQMN3rO22ICuGK1j9DTUDb+yNFIWS9QiExB+IlNknsEk+6Bphy/cVO7UvnGAbGroHI=
Received: from SN6PR2101MB1135.namprd21.prod.outlook.com (52.132.114.24) by
 SN6PR2101MB1102.namprd21.prod.outlook.com (52.132.115.27) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2327.7; Thu, 3 Oct 2019 19:03:26 +0000
Received: from SN6PR2101MB1135.namprd21.prod.outlook.com
 ([fe80::7d4a:b5b3:1062:e62]) by SN6PR2101MB1135.namprd21.prod.outlook.com
 ([fe80::7d4a:b5b3:1062:e62%5]) with mapi id 15.20.2327.004; Thu, 3 Oct 2019
 19:03:25 +0000
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
Subject: [PATCH v5 7/8] Drivers: hv: vmbus: Add hooks for per-CPU IRQ
Thread-Topic: [PATCH v5 7/8] Drivers: hv: vmbus: Add hooks for per-CPU IRQ
Thread-Index: AQHVeh08iAhZ6pKxjEa5CJwraGxfEg==
Date: Thu, 3 Oct 2019 19:03:25 +0000
Message-ID: <1570129355-16005-8-git-send-email-mikelley@microsoft.com>
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
x-ms-office365-filtering-correlation-id: 7fcbe12f-f681-4eda-bdb5-08d748345e70
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: SN6PR2101MB1102:|SN6PR2101MB1102:|SN6PR2101MB1102:
x-ms-exchange-transport-forked: True
x-ld-processed: 72f988bf-86f1-41af-91ab-2d7cd011db47,ExtAddr
x-microsoft-antispam-prvs: <SN6PR2101MB11021F5E4E0B9BACE8FBE7A7D79F0@SN6PR2101MB1102.namprd21.prod.outlook.com>
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
x-microsoft-antispam-message-info: wTKWdd4+zIZW68WoSUIFCAH4CX3c95fs0vD++DfW9lEyCMrZ836qCjEgkfvFp73/POLLOdJDxFB3xhxpSqLn5XZ4k7YIEJWYczn09KuTQ+ql6DzzFbHxxZq0jk8VUFKQ8ZXmiTN2nwtBatUeoCt9w2mgBg232nFSMi381bJJWBmT696fmojWzkcBOlBEoDC22Jgj4Pidkffuff03oYMYwnsXthNWTqhqVPL20+WtFSkMFd+Na9O+1vNZgsSOWo5IRAUCsARBlWXWwSmIyDxCZsZpSWHnW9wMCiLPK0nQs9mdzJFmIGGrMD/myaXeIn6AeNhO+7Pjy46aAeHafpJYiTMOT2XGw1E+6jTMwec+20sbckU3i4bL2mmJeFfLXK0OE5/cz1tugFtQPOgd1BkeJRrpVi7URiMbdZdxPigBUd0=
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7fcbe12f-f681-4eda-bdb5-08d748345e70
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Oct 2019 19:03:25.8119 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kvb6bKShAQ8AYQreZle1EiX41AC5wMxkNFWlo0hUqcayzNRfxVudKyVqV9NbDtLHexlcwjOWCs6lUs5xGb1W2w==
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

Add hooks to enable/disable a per-CPU IRQ for VMbus. These hooks
are in the architecture independent setup and shutdown paths for
Hyper-V, and are needed by Linux guests on Hyper-V on ARM64.  The
x86/x64 implementation is null because VMbus interrupts on x86/x64
don't use an IRQ.

Signed-off-by: Michael Kelley <mikelley@microsoft.com>
---
 arch/x86/include/asm/mshyperv.h | 4 ++++
 drivers/hv/hv.c                 | 3 +++
 2 files changed, 7 insertions(+)

diff --git a/arch/x86/include/asm/mshyperv.h b/arch/x86/include/asm/mshyperv.h
index f4138ae..583e1ce 100644
--- a/arch/x86/include/asm/mshyperv.h
+++ b/arch/x86/include/asm/mshyperv.h
@@ -56,6 +56,10 @@ typedef int (*hyperv_fill_flush_list_func)(
 #endif
 void hyperv_vector_handler(struct pt_regs *regs);
 
+/* On x86/x64, there isn't a real IRQ to be enabled/disable */
+static inline void hv_enable_vmbus_irq(void) {}
+static inline void hv_disable_vmbus_irq(void) {}
+
 /*
  * Routines for stimer0 Direct Mode handling.
  * On x86/x64, there are no percpu actions to take.
diff --git a/drivers/hv/hv.c b/drivers/hv/hv.c
index fcc5279..51d8f8a 100644
--- a/drivers/hv/hv.c
+++ b/drivers/hv/hv.c
@@ -180,6 +180,7 @@ void hv_synic_enable_regs(unsigned int cpu)
 	hv_set_siefp(siefp.as_uint64);
 
 	/* Setup the shared SINT. */
+	hv_enable_vmbus_irq();
 	hv_get_synint_state(VMBUS_MESSAGE_SINT, shared_sint.as_uint64);
 
 	shared_sint.vector = HYPERVISOR_CALLBACK_VECTOR;
@@ -241,6 +242,8 @@ void hv_synic_disable_regs(unsigned int cpu)
 	hv_get_synic_state(sctrl.as_uint64);
 	sctrl.enable = 0;
 	hv_set_synic_state(sctrl.as_uint64);
+
+	hv_disable_vmbus_irq();
 }
 
 int hv_synic_cleanup(unsigned int cpu)
-- 
1.8.3.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
