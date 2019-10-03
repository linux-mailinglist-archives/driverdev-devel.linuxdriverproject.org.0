Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 48DFECAEC1
	for <lists+driverdev-devel@lfdr.de>; Thu,  3 Oct 2019 21:03:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DF575230FE;
	Thu,  3 Oct 2019 19:03:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n9xP8dQgG0ut; Thu,  3 Oct 2019 19:03:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A7AB222E8C;
	Thu,  3 Oct 2019 19:03:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 11B131BF9BF
 for <devel@linuxdriverproject.org>; Thu,  3 Oct 2019 19:03:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id F172486AD1
 for <devel@linuxdriverproject.org>; Thu,  3 Oct 2019 19:03:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ojjdUBQkKKC7 for <devel@linuxdriverproject.org>;
 Thu,  3 Oct 2019 19:03:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from NAM04-CO1-obe.outbound.protection.outlook.com
 (mail-eopbgr690097.outbound.protection.outlook.com [40.107.69.97])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 84062869F6
 for <devel@linuxdriverproject.org>; Thu,  3 Oct 2019 19:03:28 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j81Ldsdnms+WvFzN0qRIV1pG1IbGzT32eHy6P7tTaK7bcKtNaMEHObLXwfoUoqB54y9Y6S0GE/DfwpyoLFQpEhMpjFhbDSBSd27K9DYd+pJoS7TSe+RL37ghRjOSYHio8eBBS22rXOBXX0pQZn77zj4vNBqB6IvEbAtk5eJOke286JI1Tz1/XkLP7ojAUmydE2R1UPF6IZbRDILAtQ5H9l4OCmtaL+MTN167nb3KGRllYbBwBhK2YtuWXfoi36kzdjQVUgF8ImPfpCAOXdZQkecw3PpOVnKvGV2s6QEfPGTYl3tBnOon7Ep4shn34fWB7Z4i8C/8RjHTTre3m1v4Iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tQZowe6V/h3z1DqYtMVcUESXf2m7PuJSRNu9hK6woIs=;
 b=BO4M4v2UjJK+B4CeTDGWyNbEs+NB0DDAdNiPQ2qRyTr2a2zT8UJPkoMAiI8INHnPxJyVsYOUEvXayWi4FnTA4tPgeCZeaWBt15AhMWysPiZ8uQIeeIp/CXSc95VHXprjIjLljxY0nIMln+RPf6WyFGCJtpOPCP0AuIrilGZcC/1aOLsBpUoxYl7JzSS/gkGdbYx+FcTOyrgCJHcV2HdoctZKRmkKJenhZ5WjLgOfjALHhBRZ96v7I62ZeXCSNzFpP47aRmDBwpU4bPJxZunynqRgtidxVN4Q73dAzRm9/LpuonEglXeHHKI+fFQNfNeBI57NzpjgqLYFHrEV+9SCig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tQZowe6V/h3z1DqYtMVcUESXf2m7PuJSRNu9hK6woIs=;
 b=j4W+IQGFAOTNOFxXpITkIz+30ASaR7jcQwjRQJa5ETgM1GcvtqVCRMjGNjVg/VNgMeMtpMmnccJ2Po6i1B48PEaqY3hNAB+Rkqlww1+/VJyuNKX2PCnCXUymBXV+6fiIzc9DIkBO63zJXwdGF6GzbS3YulrR7290Ip8X0Q8x40k=
Received: from SN6PR2101MB1135.namprd21.prod.outlook.com (52.132.114.24) by
 SN6PR2101MB1102.namprd21.prod.outlook.com (52.132.115.27) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2327.7; Thu, 3 Oct 2019 19:03:27 +0000
Received: from SN6PR2101MB1135.namprd21.prod.outlook.com
 ([fe80::7d4a:b5b3:1062:e62]) by SN6PR2101MB1135.namprd21.prod.outlook.com
 ([fe80::7d4a:b5b3:1062:e62%5]) with mapi id 15.20.2327.004; Thu, 3 Oct 2019
 19:03:27 +0000
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
Subject: [PATCH v5 8/8] Drivers: hv: Enable Hyper-V code to be built on ARM64
Thread-Topic: [PATCH v5 8/8] Drivers: hv: Enable Hyper-V code to be built on
 ARM64
Thread-Index: AQHVeh08eOd/te/qYEO1LtepLr1Yuw==
Date: Thu, 3 Oct 2019 19:03:27 +0000
Message-ID: <1570129355-16005-9-git-send-email-mikelley@microsoft.com>
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
x-ms-office365-filtering-correlation-id: db6e86fd-823b-4cdd-954c-08d748345f39
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: SN6PR2101MB1102:|SN6PR2101MB1102:|SN6PR2101MB1102:
x-ms-exchange-transport-forked: True
x-ld-processed: 72f988bf-86f1-41af-91ab-2d7cd011db47,ExtAddr
x-microsoft-antispam-prvs: <SN6PR2101MB110278253EC8805B982A95A6D79F0@SN6PR2101MB1102.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1332;
x-forefront-prvs: 01792087B6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(1496009)(39860400002)(396003)(136003)(366004)(376002)(346002)(199004)(189003)(486006)(102836004)(446003)(81156014)(5660300002)(64756008)(6512007)(66476007)(66556008)(4326008)(1511001)(66946007)(256004)(52116002)(6436002)(386003)(6116002)(305945005)(476003)(8676002)(99286004)(7416002)(11346002)(4720700003)(66446008)(2501003)(22452003)(6636002)(316002)(2616005)(66066001)(26005)(71200400001)(478600001)(76176011)(86362001)(54906003)(2201001)(36756003)(10090500001)(81166006)(71190400001)(8936002)(6486002)(186003)(4744005)(10290500003)(14454004)(25786009)(7736002)(6506007)(50226002)(3846002)(14444005)(110136005)(2906002)(921003)(1121003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR2101MB1102;
 H:SN6PR2101MB1135.namprd21.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NfKfGkCBGxqI/2uUqE69WcPNRkatTjOWKHx90QAT+cB0Q/1T5eLE51SWA3uW3mGZ8S7VIoUkD5bn0RHttcnOFkWUDI3H1FWVdL1jJ9IlhLo709XVFph4WdKzn3BH6buXp7kKOLS9kkba0sRoisxBdmuppXYDConjJWvdIYdfzDgTLJflN3U+n5aF4Xg8rf4BAAcAYCgJiQakLL2u/km4K4f4pzgcndyxR/nEVGr1E/nRSqjkoIJ/9YjxZqGH8XEUvgnoSTia3V6uOttsIrFagCTPMa7ywJDUKfj7DhYXLNa1B6eWC8zZzm5XRSysFrlaVpwERmPATqX3HlBpRjKqP1cErOD0vYmmNcjQQaxGHw0UkPacYGnTqKkzcEMqBm/Kzjs7h5tdqafVQbdJonGCvBx2N3roFIp5k8XNV5wHMus=
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: db6e86fd-823b-4cdd-954c-08d748345f39
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Oct 2019 19:03:27.1251 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qKoKZHkh/hO1Z+Vw4/rGFcjJBr7eJSuFdjGc27rB93TpA+UVLfwMRndo368lODoQhAHV7o3F1P118icsuamDCg==
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

Update drivers/hv/Kconfig so CONFIG_HYPERV can be selected on
ARM64, causing the Hyper-V specific code to be built.

Signed-off-by: Michael Kelley <mikelley@microsoft.com>
---
 drivers/hv/Kconfig | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/hv/Kconfig b/drivers/hv/Kconfig
index 79e5356..1113e49 100644
--- a/drivers/hv/Kconfig
+++ b/drivers/hv/Kconfig
@@ -4,7 +4,8 @@ menu "Microsoft Hyper-V guest support"
 
 config HYPERV
 	tristate "Microsoft Hyper-V client drivers"
-	depends on X86 && ACPI && X86_LOCAL_APIC && HYPERVISOR_GUEST
+	depends on ACPI && \
+			((X86 && X86_LOCAL_APIC && HYPERVISOR_GUEST) || ARM64)
 	select PARAVIRT
 	select X86_HV_CALLBACK_VECTOR
 	help
-- 
1.8.3.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
