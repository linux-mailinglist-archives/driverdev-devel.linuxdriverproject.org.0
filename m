Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 15DC34DAC6
	for <lists+driverdev-devel@lfdr.de>; Thu, 20 Jun 2019 21:55:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 97367860F0;
	Thu, 20 Jun 2019 19:55:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vCjRK5hRhxI9; Thu, 20 Jun 2019 19:55:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B2A0C834FE;
	Thu, 20 Jun 2019 19:55:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6CC4E1BF4D6
 for <devel@linuxdriverproject.org>; Thu, 20 Jun 2019 19:54:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6857186AF0
 for <devel@linuxdriverproject.org>; Thu, 20 Jun 2019 19:54:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FSWXnu-ekkzX for <devel@linuxdriverproject.org>;
 Thu, 20 Jun 2019 19:54:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EE57D81B81
 for <devel@driverdev.osuosl.org>; Thu, 20 Jun 2019 19:54:57 +0000 (UTC)
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Adham.Abozaeid@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Adham.Abozaeid@microchip.com";
 x-sender="Adham.Abozaeid@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Adham.Abozaeid@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Adham.Abozaeid@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.63,398,1557212400"; d="scan'208";a="36724349"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 20 Jun 2019 12:54:57 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex03.mchp-main.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 20 Jun 2019 12:54:56 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5 via Frontend
 Transport; Thu, 20 Jun 2019 12:54:55 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I8Z4UgMpfpCbeIqfzjlM//meqZKB6DrXTSmesyWGAbE=;
 b=RIIIVfAmQ/gKNWSkFMhzUI89cXxI3KhEr74uP+FybJfnt+9ZspEiqLYCsAeZHUNkjdrUn3/vXnSbonP3saIzWjPnCGzheRSbzkVgBIrlIzVSU/tIRkTFO/+axMATWN0Ndx3k5OOe+3q6T1LbplfrTo3DDIe2j+xoHPxjI2nqrCU=
Received: from MWHPR11MB1373.namprd11.prod.outlook.com (10.169.234.141) by
 MWHPR11MB1870.namprd11.prod.outlook.com (10.175.53.149) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.12; Thu, 20 Jun 2019 19:54:55 +0000
Received: from MWHPR11MB1373.namprd11.prod.outlook.com
 ([fe80::9ce9:4621:3c3f:a961]) by MWHPR11MB1373.namprd11.prod.outlook.com
 ([fe80::9ce9:4621:3c3f:a961%4]) with mapi id 15.20.1987.014; Thu, 20 Jun 2019
 19:54:55 +0000
From: <Adham.Abozaeid@microchip.com>
To: <linux-wireless@vger.kernel.org>
Subject: [PATCH] staging: wilc1000: add passive scan support
Thread-Topic: [PATCH] staging: wilc1000: add passive scan support
Thread-Index: AQHVJ6IIPIn0BMAQSEeBPOpYbYNq0A==
Date: Thu, 20 Jun 2019 19:54:55 +0000
Message-ID: <20190620195447.16060-1-adham.abozaeid@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [198.175.253.81]
x-clientproxiedby: BYAPR07CA0008.namprd07.prod.outlook.com
 (2603:10b6:a02:bc::21) To MWHPR11MB1373.namprd11.prod.outlook.com
 (2603:10b6:300:25::13)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 716999d0-fd69-4c22-0d7c-08d6f5b92a91
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:MWHPR11MB1870; 
x-ms-traffictypediagnostic: MWHPR11MB1870:
x-microsoft-antispam-prvs: <MWHPR11MB187032A75B2F922685B89FAD8DE40@MWHPR11MB1870.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1079;
x-forefront-prvs: 0074BBE012
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(376002)(346002)(39860400002)(396003)(366004)(189003)(199004)(50226002)(1076003)(476003)(68736007)(6116002)(72206003)(8936002)(2616005)(14444005)(256004)(25786009)(478600001)(6486002)(71200400001)(71190400001)(14454004)(99286004)(36756003)(73956011)(86362001)(5660300002)(52116002)(64756008)(66556008)(66946007)(66476007)(66446008)(6916009)(2906002)(2351001)(26005)(6436002)(4326008)(3846002)(316002)(5640700003)(54906003)(186003)(102836004)(53936002)(7736002)(6512007)(486006)(107886003)(66066001)(81156014)(305945005)(2501003)(81166006)(6506007)(386003)(8676002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR11MB1870;
 H:MWHPR11MB1373.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: u/OJaZEBeO686Nu9VN0ZQd3bHK6zyOE5LATs8odN2xbhAnwSYh/VgW2GDhYKQuver3e0yESdTOuKrCrsLMDeTnvwBS0ORrMTBOqpFHVrGlvjGmvCFOZ/zdI6gLClLYiznggmqbjRkt4xIq5I0zPIGmq77qksinkl98rreHI9D4pZdzHUBP1hav8DACqeXdlj9AsG9ObOM/lyNqLtRtQIsSPilJlSil6f9K2Rfu5g/n8dUayI8aS8n3jk2M/BAvEZZxHambjWoaD20FTpJ35zJuSz0PkD23Z3xI76H6OzzdIFQB6rgnoXuN1bOdmBBGeLOzZBuf/7YiUCV1sboVNNXc+ZSQEZGr3xfhzLOToS0r+wiyz6G+dx3JOJ7Mz4nB83p8yDg4LkGjy94QT6zaTYqKM5Qa6PYu+mU/jPlWUUdfc=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 716999d0-fd69-4c22-0d7c-08d6f5b92a91
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jun 2019 19:54:55.4710 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: adham.abozaeid@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1870
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

From: Adham Abozaeid <adham.abozaeid@microchip.com>

Add passive scan support to the driver by passing the scan type to the
HW and configure the HW scan time if configured by the cfg80211.

Signed-off-by: Adham Abozaeid <adham.abozaeid@microchip.com>
---
 drivers/staging/wilc1000/host_interface.c      | 18 +++++++++++++++---
 drivers/staging/wilc1000/host_interface.h      |  1 -
 .../staging/wilc1000/wilc_wfi_cfgoperations.c  | 12 +++++++++---
 drivers/staging/wilc1000/wilc_wlan_if.h        |  2 +-
 4 files changed, 25 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index ed15bd1bcd56..13c9915358d0 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -6,7 +6,7 @@
 
 #include "wilc_wfi_netdevice.h"
 
-#define WILC_HIF_SCAN_TIMEOUT_MS                4000
+#define WILC_HIF_SCAN_TIMEOUT_MS                5000
 #define WILC_HIF_CONNECT_TIMEOUT_MS             9500
 
 #define WILC_FALSE_FRMWR_CHANNEL		100
@@ -237,7 +237,7 @@ int wilc_scan(struct wilc_vif *vif, u8 scan_source, u8 scan_type,
 	int result = 0;
 	struct wid wid_list[5];
 	u32 index = 0;
-	u32 i;
+	u32 i, scan_timeout;
 	u8 *buffer;
 	u8 valuesize = 0;
 	u8 *search_ssid_vals = NULL;
@@ -293,6 +293,18 @@ int wilc_scan(struct wilc_vif *vif, u8 scan_source, u8 scan_type,
 	wid_list[index].val = (s8 *)&scan_type;
 	index++;
 
+	if (scan_type == WILC_FW_PASSIVE_SCAN && request->duration) {
+		wid_list[index].id = WID_PASSIVE_SCAN_TIME;
+		wid_list[index].type = WID_SHORT;
+		wid_list[index].size = sizeof(u16);
+		wid_list[index].val = (s8 *)&request->duration;
+		index++;
+
+		scan_timeout = (request->duration * ch_list_len) + 500;
+	} else {
+		scan_timeout = WILC_HIF_SCAN_TIMEOUT_MS;
+	}
+
 	wid_list[index].id = WID_SCAN_CHANNEL_LIST;
 	wid_list[index].type = WID_BIN_DATA;
 
@@ -326,7 +338,7 @@ int wilc_scan(struct wilc_vif *vif, u8 scan_source, u8 scan_type,
 
 	hif_drv->scan_timer_vif = vif;
 	mod_timer(&hif_drv->scan_timer,
-		  jiffies + msecs_to_jiffies(WILC_HIF_SCAN_TIMEOUT_MS));
+		  jiffies + msecs_to_jiffies(scan_timeout));
 
 error:
 
diff --git a/drivers/staging/wilc1000/host_interface.h b/drivers/staging/wilc1000/host_interface.h
index a907c6d33012..4fcc7a3c151d 100644
--- a/drivers/staging/wilc1000/host_interface.h
+++ b/drivers/staging/wilc1000/host_interface.h
@@ -115,7 +115,6 @@ struct wilc_rcvd_net_info {
 	struct ieee80211_mgmt *mgmt;
 };
 
-
 struct wilc_user_scan_req {
 	void (*scan_result)(enum scan_event evt,
 			    struct wilc_rcvd_net_info *info, void *priv);
diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
index f6825727bf77..b0daa1136663 100644
--- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
+++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
@@ -221,6 +221,7 @@ static int scan(struct wiphy *wiphy, struct cfg80211_scan_request *request)
 	u32 i;
 	int ret = 0;
 	u8 scan_ch_list[WILC_MAX_NUM_SCANNED_CH];
+	u8 scan_type;
 
 	if (request->n_channels > WILC_MAX_NUM_SCANNED_CH) {
 		netdev_err(priv->dev, "Requested scanned channels over\n");
@@ -235,9 +236,14 @@ static int scan(struct wiphy *wiphy, struct cfg80211_scan_request *request)
 		scan_ch_list[i] = ieee80211_frequency_to_channel(freq);
 	}
 
-	ret = wilc_scan(vif, WILC_FW_USER_SCAN, WILC_FW_ACTIVE_SCAN,
-			scan_ch_list, request->n_channels, cfg_scan_result,
-			(void *)priv, request);
+	if (request->n_ssids)
+		scan_type = WILC_FW_ACTIVE_SCAN;
+	else
+		scan_type = WILC_FW_PASSIVE_SCAN;
+
+	ret = wilc_scan(vif, WILC_FW_USER_SCAN, scan_type, scan_ch_list,
+			request->n_channels, cfg_scan_result, (void *)priv,
+			request);
 
 	if (ret) {
 		priv->scan_req = NULL;
diff --git a/drivers/staging/wilc1000/wilc_wlan_if.h b/drivers/staging/wilc1000/wilc_wlan_if.h
index b15de36e32e0..b89d0e0f04cc 100644
--- a/drivers/staging/wilc1000/wilc_wlan_if.h
+++ b/drivers/staging/wilc1000/wilc_wlan_if.h
@@ -684,7 +684,7 @@ enum {
 	WID_LONG_RETRY_LIMIT		= 0x1003,
 	WID_BEACON_INTERVAL		= 0x1006,
 	WID_MEMORY_ACCESS_16BIT		= 0x1008,
-
+	WID_PASSIVE_SCAN_TIME           = 0x100D,
 	WID_JOIN_START_TIMEOUT		= 0x100F,
 	WID_ASOC_TIMEOUT		= 0x1011,
 	WID_11I_PROTOCOL_TIMEOUT	= 0x1012,
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
