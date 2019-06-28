Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F10259373
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Jun 2019 07:33:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CC50D87120;
	Fri, 28 Jun 2019 05:33:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Qyy5QhS+8Ciy; Fri, 28 Jun 2019 05:33:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CDD6B86CE7;
	Fri, 28 Jun 2019 05:33:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7E85D1BF857
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 05:33:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7B3F08807B
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 05:33:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W-lSpnRr-KlQ for <devel@linuxdriverproject.org>;
 Fri, 28 Jun 2019 05:33:17 +0000 (UTC)
X-Greylist: delayed 18:08:35 by SQLgrey-1.7.6
Received: from NAM02-CY1-obe.outbound.protection.outlook.com
 (mail-eopbgr760121.outbound.protection.outlook.com [40.107.76.121])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CDDE380112
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 05:33:16 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=testarcselector01; d=microsoft.com; cv=none;
 b=Uc2rgkiIm/rKgrKPoHWYfsia27P5ZSTQ7pgjl0gdKfYuouKyb1k0MEFmm15vFdRIyEpK0ERn4+HHdVrPPUWL0CYYVSraDmxrW6cNdFJEEFMC2I1OVOZX6GHrqU6zm4DSo3m9iQpQjHyJdQjnWBYMUeRt371GCFMV5PTKoAQEAU4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=testarcselector01;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n1l5Z0vYbqYP7KSTi3kmtsxMgBFD18PPqdWQg1taQ8k=;
 b=SBef9vcl/ByCcIjvX9PZlpmA62c9RfA1xYYVq7g+S2aW4owMCMAOltyti84U5K/Ngg8dhoCxbYNi1eJ/Q4K10fKsqXHLkClSrWTwDSbBl1JDxLjWR1piOk2OM/0WkMpY0eh8PvGycZ8Yb80HmB7Ts1YMOMUfbvm3FfPvaFPtkTM=
ARC-Authentication-Results: i=1; test.office365.com
 1;spf=none;dmarc=none;dkim=none;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Analogixsemi.onmicrosoft.com; s=selector1-Analogixsemi-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n1l5Z0vYbqYP7KSTi3kmtsxMgBFD18PPqdWQg1taQ8k=;
 b=BQYZaSpddyHy5qH581WiXcXmUs833otM2wwWWv4znS/viNrS0+ACkjXNMrptTSS+vobJtUGgjPuRlZCxdXk3cCBcoLEHAdXeep0bjoI7QCNoRFQrZUIE4soHtBnND5tAyOMnQ0uddVNhwrXJ54CJhtofGRMv5RlWVNPYkHYZ9xk=
Received: from MN2PR04MB5886.namprd04.prod.outlook.com (20.179.22.213) by
 MN2PR04MB5726.namprd04.prod.outlook.com (20.179.21.32) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.18; Fri, 28 Jun 2019 03:00:05 +0000
Received: from MN2PR04MB5886.namprd04.prod.outlook.com
 ([fe80::397b:3922:4027:f635]) by MN2PR04MB5886.namprd04.prod.outlook.com
 ([fe80::397b:3922:4027:f635%3]) with mapi id 15.20.2032.016; Fri, 28 Jun 2019
 03:00:05 +0000
From: Xin Ji <xji@analogixsemi.com>
To: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>, Laurent
 Pinchart <laurent.pinchart@ideasonboard.com>, Andrzej Hajda
 <a.hajda@samsung.com>
Subject: [PATCH v2] Adjust analogix chip driver location
Thread-Topic: [PATCH v2] Adjust analogix chip driver location
Thread-Index: AQHVLV2WCWeZm1Hwg0iNc/LOCnv60g==
Date: Fri, 28 Jun 2019 03:00:05 +0000
Message-ID: <20190628025957.GA16108@xin-VirtualBox>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK0PR04CA0017.apcprd04.prod.outlook.com
 (2603:1096:203:36::29) To MN2PR04MB5886.namprd04.prod.outlook.com
 (2603:10b6:208:a3::21)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=xji@analogixsemi.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [114.247.245.252]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ad8ee2a3-7f84-4d6e-e486-08d6fb74b859
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR04MB5726; 
x-ms-traffictypediagnostic: MN2PR04MB5726:
x-microsoft-antispam-prvs: <MN2PR04MB5726452372BCF3A88EA6FA7BC7FC0@MN2PR04MB5726.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:177;
x-forefront-prvs: 00826B6158
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(7916004)(396003)(376002)(39850400004)(346002)(136003)(366004)(189003)(199004)(476003)(66476007)(66446008)(64756008)(81156014)(256004)(5660300002)(2501003)(33716001)(2906002)(86362001)(66556008)(66946007)(73956011)(71200400001)(71190400001)(1076003)(14454004)(8936002)(110136005)(486006)(6116002)(81166006)(8676002)(3846002)(26005)(316002)(54906003)(53936002)(25786009)(66066001)(186003)(99286004)(9686003)(7736002)(4326008)(6506007)(107886003)(52116002)(305945005)(6486002)(478600001)(102836004)(33656002)(68736007)(6512007)(386003)(6436002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB5726;
 H:MN2PR04MB5886.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: analogixsemi.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: oTfQZaLkek8/ipkHWISD84b2A19OyXztbcXnmwoTE2JDVNAjGfaTrW1w1RjPYTwnqfS8su/qXDd5CvWwG7hC1tykLWQaUsVWcbrJmIqvyUtjpNDbtTvuIboSYIT6TDAexRGE4B3+k2F4g69XJ+S4gKK7ktZX9PrUgDswUFJFnLiqJr0uIITNHM7dQ3m7yq4AnN+/w9n6wyHIBldNAXRhEm9JXoNQvCqva6g2iTQ0sA1rdB/xgCyOQv5sMx78NV8wn37+D3s7dELD7XaGu87kupbqV1sP2MnY79cfZW43tOneq018y72YiLqOVvpdyq705YzZLCd8nDu3HubZ0d2AJjAZxfbr7117Xkuin+ItNcFJx27v0hay8fGn96ojR5rZTI8ch1jA7HmuX39J2oYDhSavnahDAE1V0naFreWfeOM=
Content-ID: <7B9E23BCA8BDD34EA3486D765F48E57A@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: analogixsemi.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ad8ee2a3-7f84-4d6e-e486-08d6fb74b859
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jun 2019 03:00:05.0379 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b099b0b4-f26c-4cf5-9a0f-d5be9acab205
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xji@analogixsemi.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5726
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
 Sheng Pan <span@analogixsemi.com>, Daniel Vetter <daniel@ffwll.ch>
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
index 4934fcf..223ca5d 100644
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
+obj-y += analogix/
 obj-y += synopsys/
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
