Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB4DE56979
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jun 2019 14:41:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6E6B587C17;
	Wed, 26 Jun 2019 12:41:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id De5kt9qFb9tV; Wed, 26 Jun 2019 12:41:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id F123B87BDE;
	Wed, 26 Jun 2019 12:41:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 242581BF3E8
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 12:41:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 201E685FE4
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 12:41:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0IwOXjs6hMs2 for <devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 12:41:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9032A84887
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 12:41:13 +0000 (UTC)
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Ajay.Kathat@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Ajay.Kathat@microchip.com";
 x-sender="Ajay.Kathat@microchip.com"; x-conformance=spf_only;
 x-record-type="v=spf1"; x-record-text="v=spf1 mx
 a:ushub1.microchip.com a:smtpout.microchip.com
 a:mx1.microchip.iphmx.com a:mx2.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Ajay.Kathat@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Ajay.Kathat@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.63,419,1557212400"; d="scan'208";a="37422545"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 26 Jun 2019 05:41:13 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.87.71) by
 chn-vm-ex04.mchp-main.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 26 Jun 2019 05:42:19 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5 via Frontend
 Transport; Wed, 26 Jun 2019 05:41:08 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fdys3uLCuEPQGBrMaFOB+Jfxg0NLWXa/10sqWEiqueY=;
 b=Rw3Tuq58dk4Tk7YIIArvXxny7rRIfzYP0rMq4vtF9Aj7EDpCzDTztL91aN4dZ0/HQou1CpWnoTHvbiuBC5GW/oobeT3kUV4hxIOkdpV+Qykv7U1ocBGovMFyT3Pj0OicpBRaYFC3bDNOkIA07qCEWc2neD1SaqIOcVsQUkKGuB0=
Received: from BN6PR11MB3985.namprd11.prod.outlook.com (10.255.129.78) by
 BN6PR11MB3907.namprd11.prod.outlook.com (10.255.131.93) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Wed, 26 Jun 2019 12:41:07 +0000
Received: from BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::49ee:ab78:412:48ac]) by BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::49ee:ab78:412:48ac%5]) with mapi id 15.20.2008.017; Wed, 26 Jun 2019
 12:41:07 +0000
From: <Ajay.Kathat@microchip.com>
To: <linux-wireless@vger.kernel.org>
Subject: [PATCH 8/8] staging: wilc1000: rename 'host_interface' source and
 header
Thread-Topic: [PATCH 8/8] staging: wilc1000: rename 'host_interface' source
 and header
Thread-Index: AQHVLBxs9VL06WIKl02rM1YZN1ce8A==
Date: Wed, 26 Jun 2019 12:41:06 +0000
Message-ID: <1561552810-8933-9-git-send-email-ajay.kathat@microchip.com>
References: <1561552810-8933-1-git-send-email-ajay.kathat@microchip.com>
In-Reply-To: <1561552810-8933-1-git-send-email-ajay.kathat@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BM1PR0101CA0066.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:19::28) To BN6PR11MB3985.namprd11.prod.outlook.com
 (2603:10b6:405:7b::14)
x-mailer: git-send-email 2.7.4
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [183.82.16.72]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5a168db9-537e-4260-53ba-08d6fa338ed8
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BN6PR11MB3907; 
x-ms-traffictypediagnostic: BN6PR11MB3907:
x-microsoft-antispam-prvs: <BN6PR11MB39073EF4F03696EAA4B2540AE3E20@BN6PR11MB3907.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 00808B16F3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(346002)(39860400002)(366004)(396003)(376002)(199004)(189003)(476003)(14454004)(54906003)(81166006)(8936002)(2616005)(446003)(486006)(81156014)(6506007)(6436002)(6512007)(386003)(186003)(11346002)(5640700003)(102836004)(36756003)(316002)(6116002)(3846002)(26005)(2906002)(72206003)(478600001)(66066001)(50226002)(66446008)(2501003)(5660300002)(6486002)(107886003)(66556008)(64756008)(2351001)(86362001)(25786009)(6916009)(4326008)(8676002)(71190400001)(71200400001)(7736002)(76176011)(256004)(99286004)(68736007)(305945005)(52116002)(78486014)(53936002)(66476007)(73956011)(66946007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN6PR11MB3907;
 H:BN6PR11MB3985.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 5bva9cMrc/tzT7Dg3Cjsoxy17GAS5VGzbfkKcsMgchD+dzoDj6EDhub2sNny+2S8Rx+66U3OqyPNBqhxs5h9UCe8Edk5oA/RuuPMPamh/uV5EAN/4Ls1zXGnlziFx/zHZGRsf7FZf0IlkPz/Oo/i9krbAq26XKbpGSM4mA4ldvYDcLAVxppkFzl7LDyXUi17+iVCtPWq3T24FELF2Jc5OZsLk9gWUVl4P/34U7Z7bjs5u2lIJCiOK9W7jJWjZ5mPl7n+oMmnXcFBmPfh7T3Hit2rvQkYsotEaO5b/iPUvG1V1rWvBA+Igtnloc8KJAtQghl38LfVM9a0hQvXMifT3eAUMZSxW6ajoAE2tJgnj1mvqs/jB+KsoNvt66OdD6o2WQLUwcwMcesgSjM0iGY8TzrniaZzN3PQe03oidy5cqE=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a168db9-537e-4260-53ba-08d6fa338ed8
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jun 2019 12:41:06.9470 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ajay.kathat@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB3907
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 johannes@sipsolutions.net, Ajay.Kathat@microchip.com,
 Adham.Abozaeid@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Ajay Singh <ajay.kathat@microchip.com>

Rename 'host_interface' source and header file to include the 'wilc_'
prefix in its name.

Signed-off-by: Ajay Singh <ajay.kathat@microchip.com>
---
 drivers/staging/wilc1000/Makefile                         | 2 +-
 drivers/staging/wilc1000/{host_interface.c => wilc_hif.c} | 0
 drivers/staging/wilc1000/{host_interface.h => wilc_hif.h} | 0
 drivers/staging/wilc1000/wilc_wfi_netdevice.h             | 2 +-
 4 files changed, 2 insertions(+), 2 deletions(-)
 rename drivers/staging/wilc1000/{host_interface.c => wilc_hif.c} (100%)
 rename drivers/staging/wilc1000/{host_interface.h => wilc_hif.h} (100%)

diff --git a/drivers/staging/wilc1000/Makefile b/drivers/staging/wilc1000/Makefile
index 2ad3fee..a5a8e80 100644
--- a/drivers/staging/wilc1000/Makefile
+++ b/drivers/staging/wilc1000/Makefile
@@ -5,7 +5,7 @@ ccflags-y += -DFIRMWARE_1002=\"atmel/wilc1002_firmware.bin\" \
 		-DFIRMWARE_1003=\"atmel/wilc1003_firmware.bin\"
 
 wilc1000-objs := wilc_wfi_cfgoperations.o wilc_netdev.o wilc_mon.o \
-			host_interface.o wilc_wlan_cfg.o wilc_wlan.o
+			wilc_hif.o wilc_wlan_cfg.o wilc_wlan.o
 
 obj-$(CONFIG_WILC1000_SDIO) += wilc1000-sdio.o
 wilc1000-sdio-objs += wilc_sdio.o
diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/wilc_hif.c
similarity index 100%
rename from drivers/staging/wilc1000/host_interface.c
rename to drivers/staging/wilc1000/wilc_hif.c
diff --git a/drivers/staging/wilc1000/host_interface.h b/drivers/staging/wilc1000/wilc_hif.h
similarity index 100%
rename from drivers/staging/wilc1000/host_interface.h
rename to drivers/staging/wilc1000/wilc_hif.h
diff --git a/drivers/staging/wilc1000/wilc_wfi_netdevice.h b/drivers/staging/wilc1000/wilc_wfi_netdevice.h
index e28c8de..1e74a08 100644
--- a/drivers/staging/wilc1000/wilc_wfi_netdevice.h
+++ b/drivers/staging/wilc1000/wilc_wfi_netdevice.h
@@ -14,7 +14,7 @@
 #include <linux/if_arp.h>
 #include <linux/gpio/consumer.h>
 
-#include "host_interface.h"
+#include "wilc_hif.h"
 #include "wilc_wlan.h"
 #include "wilc_wlan_cfg.h"
 
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
