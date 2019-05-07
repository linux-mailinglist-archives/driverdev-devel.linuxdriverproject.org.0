Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D7F015E7C
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 May 2019 09:47:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6AAF786B05;
	Tue,  7 May 2019 07:47:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SoWfmaUnVrgR; Tue,  7 May 2019 07:47:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 102728682C;
	Tue,  7 May 2019 07:47:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 26F971BF336
 for <devel@linuxdriverproject.org>; Tue,  7 May 2019 07:47:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 233DC8589C
 for <devel@linuxdriverproject.org>; Tue,  7 May 2019 07:47:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PK_ogLIm1EMD for <devel@linuxdriverproject.org>;
 Tue,  7 May 2019 07:46:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from NAM03-CO1-obe.outbound.protection.outlook.com
 (mail-eopbgr790099.outbound.protection.outlook.com [40.107.79.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 85089857B0
 for <devel@linuxdriverproject.org>; Tue,  7 May 2019 07:46:58 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=testarcselector01; d=microsoft.com; cv=none;
 b=K2ZaIQ+jPnzdTaE9+0QDAe4pZohcCkvsA5mgNjvhmg6yEqz5cfubb7ZIFwfBj7CkDKxqrMm8T9ehhGJtnREttfxxc0sjIqu+ubmJBfyITvQc8gEOm/BgZ+8mU1XRgkZZl34BmCaP+hZKdnQnj/T9nPVtjsVIs+0/cPJH8mMUlnU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=testarcselector01;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gvC19Yf40mYc0pYEteOzJeS21p6geKK+URR5jdlV0Ic=;
 b=VrcYiDd/4NeLdX2IL9zdmiHHklrRnnTqF5SNDd8bD8OOL2BO7B3HwqdOU3qOvnVYCpvfnzUt3p8ulRVIcZ5zexCJt2GP3nlkHmRu0/UM0bh+MrGOLVJafvyVuGaEfbCRpeMnqxH3hcO0OXuPwjL7gISfDbuJq5PxaR05z6jPxfE=
ARC-Authentication-Results: i=1; test.office365.com
 1;spf=none;dmarc=none;dkim=none;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gvC19Yf40mYc0pYEteOzJeS21p6geKK+URR5jdlV0Ic=;
 b=VNFb513o7IVVO7jDPPHVdKbvYTjTMXKzUd3qFpJreGz8DoN452UaHk2sLz6k08PmhVrkH01FdQNJgSpThUYLTfQlOh9RAef4A92lD+/+vVCkeQHDxGuFjMh97g+F3tvy1PGjtpPPcLCdxz9z/b5IUIQj7noI4BODLv6Oo4+T1P4=
Received: from SN6PR2101MB0942.namprd21.prod.outlook.com (52.132.114.19) by
 SN6PR2101MB0942.namprd21.prod.outlook.com (52.132.114.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.4; Tue, 7 May 2019 07:46:56 +0000
Received: from SN6PR2101MB0942.namprd21.prod.outlook.com
 ([fe80::453:8268:2686:4cf]) by SN6PR2101MB0942.namprd21.prod.outlook.com
 ([fe80::453:8268:2686:4cf%8]) with mapi id 15.20.1900.002; Tue, 7 May 2019
 07:46:56 +0000
From: Dexuan Cui <decui@microsoft.com>
To: "linux-hyperv@vger.kernel.org" <linux-hyperv@vger.kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>, Stephen Hemminger
 <sthemmin@microsoft.com>, "sashal@kernel.org" <sashal@kernel.org>, Sasha
 Levin <Alexander.Levin@microsoft.com>, Haiyang Zhang
 <haiyangz@microsoft.com>, KY Srinivasan <kys@microsoft.com>,
 "devel@linuxdriverproject.org" <devel@linuxdriverproject.org>, Michael Kelley
 <mikelley@microsoft.com>, "juliana.rodrigueiro@intra2net.com"
 <juliana.rodrigueiro@intra2net.com>
Subject: [PATCH] Drivers: hv: vmbus: Fix virt_to_hvpfn() for X86_PAE
Thread-Topic: [PATCH] Drivers: hv: vmbus: Fix virt_to_hvpfn() for X86_PAE
Thread-Index: AQHVBKkKTisq9OloE02W7qrjLXJSBQ==
Date: Tue, 7 May 2019 07:46:55 +0000
Message-ID: <1557215147-89776-1-git-send-email-decui@microsoft.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MWHPR2201CA0038.namprd22.prod.outlook.com
 (2603:10b6:301:16::12) To SN6PR2101MB0942.namprd21.prod.outlook.com
 (2603:10b6:805:4::19)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=decui@microsoft.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 1.8.3.1
x-originating-ip: [13.77.154.182]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a664109b-49a5-41d0-4e66-08d6d2c02cda
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:SN6PR2101MB0942; 
x-ms-traffictypediagnostic: SN6PR2101MB0942:
x-ld-processed: 72f988bf-86f1-41af-91ab-2d7cd011db47,ExtAddr
x-microsoft-antispam-prvs: <SN6PR2101MB094278C89534CE50B17A0B5BBF310@SN6PR2101MB0942.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 0030839EEE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(136003)(396003)(366004)(376002)(39860400002)(189003)(199004)(68736007)(7416002)(53936002)(10290500003)(10090500001)(6436002)(6486002)(476003)(71200400001)(2501003)(86362001)(66446008)(64756008)(86612001)(66476007)(66556008)(73956011)(66946007)(1511001)(66066001)(3846002)(6116002)(305945005)(71190400001)(4744005)(6512007)(25786009)(4720700003)(36756003)(6506007)(386003)(54906003)(2906002)(186003)(99286004)(478600001)(256004)(5660300002)(14444005)(2616005)(4326008)(52116002)(102836004)(81156014)(8936002)(7736002)(316002)(81166006)(110136005)(50226002)(8676002)(486006)(26005)(14454004)(22452003)(921003)(1121003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR2101MB0942;
 H:SN6PR2101MB0942.namprd21.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: mN1U5dTKpJoC4gWAVZJstFwDud/bS6FJp8Ysvr2q6dhztk7F+mHSMruVCfukPWAgvlj6G/4U9nRFIzO0w8yhMTyPdMa2x0FvxrFcfBsZwfxa0INnNY5fSfOXUkaj7zo4kzAQwe1zrffI++bqJay753a3MGqsAEKElK7ng3DoF+zKkKIJIIyxnA/gMp96XMg7LcSTGGDu1oADmeszS1+wpbTy3QBqZafedsFAAyL5+0aRamh7yRzds7IxrJbM1lf2nYrAts2LYXQXhZ6uDicQzI+oyYKEwAdUN8CpFjQ4gpWLVsKdl2iSoriT+6C9d5cNX6YZfuGhhrmzQHyphG435QpIW92tX6Ue473f6JmYUQqbrLTARzCNtwKOlD155tfn21+2cvMZPT0AkzHnZj5u2T4f0MH2qNEOrsZ1yr36+vk=
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a664109b-49a5-41d0-4e66-08d6d2c02cda
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2019 07:46:55.8980 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR2101MB0942
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
Cc: "olaf@aepfle.de" <olaf@aepfle.de>,
 "jasowang@redhat.com" <jasowang@redhat.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 "apw@canonical.com" <apw@canonical.com>,
 "marcelo.cerri@canonical.com" <marcelo.cerri@canonical.com>,
 vkuznets <vkuznets@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

In the case of X86_PAE, unsigned long is u32, but the physical address type
should be u64. Due to the bug here, the netvsc driver can not load
successfully, and sometimes the VM can panic due to memory corruption (the
hypervisor writes data to the wrong location).

Fixes: 6ba34171bcbd ("Drivers: hv: vmbus: Remove use of slow_virt_to_phys()")
Cc: stable@vger.kernel.org
Cc: Michael Kelley <mikelley@microsoft.com>
Reported-and-tested-by: Juliana Rodrigueiro <juliana.rodrigueiro@intra2net.com>
Signed-off-by: Dexuan Cui <decui@microsoft.com>
---
 drivers/hv/channel.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/hv/channel.c b/drivers/hv/channel.c
index 23381c41d087..aaaee5f93193 100644
--- a/drivers/hv/channel.c
+++ b/drivers/hv/channel.c
@@ -38,7 +38,7 @@
 
 static unsigned long virt_to_hvpfn(void *addr)
 {
-	unsigned long paddr;
+	phys_addr_t paddr;
 
 	if (is_vmalloc_addr(addr))
 		paddr = page_to_phys(vmalloc_to_page(addr)) +
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
