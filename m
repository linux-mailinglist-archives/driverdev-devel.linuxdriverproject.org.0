Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9174C58427
	for <lists+driverdev-devel@lfdr.de>; Thu, 27 Jun 2019 16:04:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2452187F79;
	Thu, 27 Jun 2019 14:04:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0fQ-tefagOGk; Thu, 27 Jun 2019 14:04:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9F62A87F1F;
	Thu, 27 Jun 2019 14:04:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 037821BF860
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 14:04:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id F03062042A
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 14:04:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id boRRKIsfy5TI for <devel@linuxdriverproject.org>;
 Thu, 27 Jun 2019 14:04:05 +0000 (UTC)
X-Greylist: delayed 01:00:19 by SQLgrey-1.7.6
Received: from NAM04-BN3-obe.outbound.protection.outlook.com
 (mail-eopbgr680111.outbound.protection.outlook.com [40.107.68.111])
 by silver.osuosl.org (Postfix) with ESMTPS id 4CE222036D
 for <devel@driverdev.osuosl.org>; Thu, 27 Jun 2019 14:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Analogixsemi.onmicrosoft.com; s=selector1-Analogixsemi-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QDWKXlpxu98HCogElK4jEUKX/2hU/aZhK5XO2ZF0fFI=;
 b=TzU7ruEtKE/Omz0K6G7YqA18Dw8stdbR2F0aIUKItNRrwnHabW6VXhRJc/htaV1RY8X5HSsSdZjZm2EcifUQ07qQQ5u7UYz/oKH47N6iBFA+yHqP+PSkuWuLYf+95Ty4lbuufm0nGhVD5+x4dOHtZJ2OvDSmPgzwSo/r8bvd554=
Received: from MN2PR04MB5886.namprd04.prod.outlook.com (20.179.22.213) by
 MN2PR04MB6110.namprd04.prod.outlook.com (20.178.248.27) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.17; Thu, 27 Jun 2019 11:29:47 +0000
Received: from MN2PR04MB5886.namprd04.prod.outlook.com
 ([fe80::397b:3922:4027:f635]) by MN2PR04MB5886.namprd04.prod.outlook.com
 ([fe80::397b:3922:4027:f635%3]) with mapi id 15.20.2032.016; Thu, 27 Jun 2019
 11:29:47 +0000
From: Xin Ji <xji@analogixsemi.com>
To: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>, Andrzej Hajda
 <a.hajda@samsung.com>
Subject: [PATCH v1] Adjust analogix chip driver location
Thread-Topic: [PATCH v1] Adjust analogix chip driver location
Thread-Index: AQHVLNugE9/A6NeXyUKRWvLnNCDN2w==
Date: Thu, 27 Jun 2019 11:29:47 +0000
Message-ID: <20190627112939.GA4832@xin-VirtualBox>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK0PR01CA0056.apcprd01.prod.exchangelabs.com
 (2603:1096:203:a6::20) To MN2PR04MB5886.namprd04.prod.outlook.com
 (2603:10b6:208:a3::21)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=xji@analogixsemi.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [114.247.245.252]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e06ecaa8-4e44-4947-5b6a-08d6faf2c2a9
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR04MB6110; 
x-ms-traffictypediagnostic: MN2PR04MB6110:
x-microsoft-antispam-prvs: <MN2PR04MB61106D0F54D9B3B1524CD31EC7FD0@MN2PR04MB6110.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:177;
x-forefront-prvs: 008184426E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(7916004)(136003)(396003)(366004)(39840400004)(376002)(346002)(189003)(199004)(54906003)(110136005)(7736002)(316002)(25786009)(2906002)(476003)(53936002)(256004)(52116002)(486006)(6486002)(6436002)(99286004)(305945005)(4326008)(6512007)(9686003)(86362001)(14454004)(26005)(8676002)(66066001)(1076003)(107886003)(8936002)(81166006)(81156014)(33716001)(33656002)(66476007)(66556008)(64756008)(66446008)(66946007)(73956011)(5660300002)(71190400001)(186003)(71200400001)(2501003)(478600001)(6506007)(102836004)(6116002)(3846002)(386003)(68736007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6110;
 H:MN2PR04MB5886.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: analogixsemi.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 6LDYImq0SYySngHQljdx99KpHYWHZpZLYPnjGWiAQdmaRZG7MSn/Z/5vFdccvS6F8gnyFBElK8KZIZ7dRgVKdtsGEdOH8N9HZTpRzvVQ2zhPxoY3Wfu5MMsMEwB6IzYDegzjunjcKfo0YwaXM/hFlvbiNSVn7cuaU/RfuvAk4ACEUMH3oIuaj6GEaJOOwZRsjYRUCIlpEOuLbDxcSHows1gLeHmP83RskLEWW7va1CudoTWxB/hnH5ZOal+A9YgEUCQjp3a02zIpkpHdicOXfzIitU2ANPxX0OeIrH18YbvojNRzoq1dR9AzFcqmtt7ZYGJoAitIHunAhD62UqCVHvyCkS0xe1WPTw4XSJLZW290lJ0dxNtuK8WaBBK+2YbKob7cLcYSA+jI1R+43FgVnBh3bbJeLTuB56w2CpCSzyA=
Content-ID: <34B723CC14C47F4FB2A9966795AFA4EE@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: analogixsemi.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e06ecaa8-4e44-4947-5b6a-08d6faf2c2a9
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jun 2019 11:29:47.6990 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b099b0b4-f26c-4cf5-9a0f-d5be9acab205
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xji@analogixsemi.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6110
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 David Airlie <airlied@linux.ie>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "sjoerd.simons@collabora.co.uk" <sjoerd.simons@collabora.co.uk>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Sheng Pan <span@analogixsemi.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Move analogix chip ANX78XX bridge driver into "analogix" directory.

Signed-off-by: Xin Ji <xji@analogixsemi.com>
---
 drivers/gpu/drm/bridge/Kconfig                           | 10 ----------
 drivers/gpu/drm/bridge/Makefile                          |  3 +--
 drivers/gpu/drm/bridge/analogix/Kconfig                  | 10 ++++++++++
 drivers/gpu/drm/bridge/analogix/Makefile                 |  2 ++
 drivers/gpu/drm/bridge/{ => analogix}/analogix-anx78xx.c |  0
 drivers/gpu/drm/bridge/{ => analogix}/analogix-anx78xx.h |  0
 6 files changed, 13 insertions(+), 12 deletions(-)
 rename drivers/gpu/drm/bridge/{ => analogix}/analogix-anx78xx.c (100%)
 rename drivers/gpu/drm/bridge/{ => analogix}/analogix-anx78xx.h (100%)

diff --git a/drivers/gpu/drm/bridge/Kconfig b/drivers/gpu/drm/bridge/Kconfig
index ee77746..862789b 100644
--- a/drivers/gpu/drm/bridge/Kconfig
+++ b/drivers/gpu/drm/bridge/Kconfig
@@ -16,16 +16,6 @@ config DRM_PANEL_BRIDGE
 menu "Display Interface Bridges"
 	depends on DRM && DRM_BRIDGE
 
-config DRM_ANALOGIX_ANX78XX
-	tristate "Analogix ANX78XX bridge"
-	select DRM_KMS_HELPER
-	select REGMAP_I2C
-	---help---
-	  ANX78XX is an ultra-low Full-HD SlimPort transmitter
-	  designed for portable devices. The ANX78XX transforms
-	  the HDMI output of an application processor to MyDP
-	  or DisplayPort.
-
 config DRM_CDNS_DSI
 	tristate "Cadence DPI/DSI bridge"
 	select DRM_KMS_HELPER
diff --git a/drivers/gpu/drm/bridge/Makefile b/drivers/gpu/drm/bridge/Makefile
index 4934fcf..02cb4cd 100644
--- a/drivers/gpu/drm/bridge/Makefile
+++ b/drivers/gpu/drm/bridge/Makefile
@@ -1,5 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0
-obj-$(CONFIG_DRM_ANALOGIX_ANX78XX) += analogix-anx78xx.o
 obj-$(CONFIG_DRM_CDNS_DSI) += cdns-dsi.o
 obj-$(CONFIG_DRM_DUMB_VGA_DAC) += dumb-vga-dac.o
 obj-$(CONFIG_DRM_LVDS_ENCODER) += lvds-encoder.o
@@ -12,8 +11,8 @@ obj-$(CONFIG_DRM_SII9234) += sii9234.o
 obj-$(CONFIG_DRM_THINE_THC63LVD1024) += thc63lvd1024.o
 obj-$(CONFIG_DRM_TOSHIBA_TC358764) += tc358764.o
 obj-$(CONFIG_DRM_TOSHIBA_TC358767) += tc358767.o
-obj-$(CONFIG_DRM_ANALOGIX_DP) += analogix/
 obj-$(CONFIG_DRM_I2C_ADV7511) += adv7511/
 obj-$(CONFIG_DRM_TI_SN65DSI86) += ti-sn65dsi86.o
 obj-$(CONFIG_DRM_TI_TFP410) += ti-tfp410.o
 obj-y += synopsys/
+obj-y += analogix/
diff --git a/drivers/gpu/drm/bridge/analogix/Kconfig b/drivers/gpu/drm/bridge/analogix/Kconfig
index e930ff9..dfe84f5 100644
--- a/drivers/gpu/drm/bridge/analogix/Kconfig
+++ b/drivers/gpu/drm/bridge/analogix/Kconfig
@@ -1,4 +1,14 @@
 # SPDX-License-Identifier: GPL-2.0-only
+config DRM_ANALOGIX_ANX78XX
+	tristate "Analogix ANX78XX bridge"
+	select DRM_KMS_HELPER
+	select REGMAP_I2C
+	---help---
+	  ANX78XX is an ultra-low Full-HD SlimPort transmitter
+	  designed for portable devices. The ANX78XX transforms
+	  the HDMI output of an application processor to MyDP
+	  or DisplayPort.
+
 config DRM_ANALOGIX_DP
 	tristate
 	depends on DRM
diff --git a/drivers/gpu/drm/bridge/analogix/Makefile b/drivers/gpu/drm/bridge/analogix/Makefile
index fdbf3fd..d4c54ac 100644
--- a/drivers/gpu/drm/bridge/analogix/Makefile
+++ b/drivers/gpu/drm/bridge/analogix/Makefile
@@ -1,3 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0-only
+obj-$(CONFIG_DRM_ANALOGIX_ANX78XX) += analogix-anx78xx.o
+
 analogix_dp-objs := analogix_dp_core.o analogix_dp_reg.o
 obj-$(CONFIG_DRM_ANALOGIX_DP) += analogix_dp.o
diff --git a/drivers/gpu/drm/bridge/analogix-anx78xx.c b/drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c
similarity index 100%
rename from drivers/gpu/drm/bridge/analogix-anx78xx.c
rename to drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c
diff --git a/drivers/gpu/drm/bridge/analogix-anx78xx.h b/drivers/gpu/drm/bridge/analogix/analogix-anx78xx.h
similarity index 100%
rename from drivers/gpu/drm/bridge/analogix-anx78xx.h
rename to drivers/gpu/drm/bridge/analogix/analogix-anx78xx.h
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
