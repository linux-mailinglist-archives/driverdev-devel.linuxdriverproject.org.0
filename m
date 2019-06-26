Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E38E05697B
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jun 2019 14:41:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A39828607A;
	Wed, 26 Jun 2019 12:41:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bbGpqUUMRqlW; Wed, 26 Jun 2019 12:41:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C90C485FF3;
	Wed, 26 Jun 2019 12:41:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3D7561BF3E8
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 12:41:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3A31186027
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 12:41:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id suFis2JY9HyU for <devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 12:41:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id AF6798606C
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
X-IronPort-AV: E=Sophos;i="5.63,419,1557212400"; d="scan'208";a="37422547"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 26 Jun 2019 05:41:13 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex01.mchp-main.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 26 Jun 2019 05:40:58 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5 via Frontend
 Transport; Wed, 26 Jun 2019 05:40:57 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7nCJI/rgtVq/KqGaD5Y+kR2337kzNuJJz/c1iWiab1M=;
 b=vrokxWGasDHxL9j1YVnxPPLMdzLYqea3mEQQrglp5Uci/PeRdwuFxcyUIGaXUY+UGBvyfGSIdNF8pVT/vMqEPhAQaPFMyO8AdPV0H79FAt67t7UN/PbPJx4oXHzkrqY6YzjURHNsYRoYtABf1ZlimHCvTlVGMW5jfl7K7wkKSjE=
Received: from BN6PR11MB3985.namprd11.prod.outlook.com (10.255.129.78) by
 BN6PR11MB3987.namprd11.prod.outlook.com (10.255.128.161) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Wed, 26 Jun 2019 12:40:55 +0000
Received: from BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::49ee:ab78:412:48ac]) by BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::49ee:ab78:412:48ac%5]) with mapi id 15.20.2008.017; Wed, 26 Jun 2019
 12:40:55 +0000
From: <Ajay.Kathat@microchip.com>
To: <linux-wireless@vger.kernel.org>
Subject: [PATCH 4/8] staging: wilc1000: remove use of driver_handler_id &
 ifc_id
Thread-Topic: [PATCH 4/8] staging: wilc1000: remove use of driver_handler_id &
 ifc_id
Thread-Index: AQHVLBxlHlm9afpX8UOh8ujpJQZS5Q==
Date: Wed, 26 Jun 2019 12:40:55 +0000
Message-ID: <1561552810-8933-5-git-send-email-ajay.kathat@microchip.com>
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
x-ms-office365-filtering-correlation-id: 3f72d73e-a6bd-46ab-b0bc-08d6fa3387be
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BN6PR11MB3987; 
x-ms-traffictypediagnostic: BN6PR11MB3987:
x-microsoft-antispam-prvs: <BN6PR11MB3987830DC132811F2EB78E7FE3E20@BN6PR11MB3987.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-forefront-prvs: 00808B16F3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(39860400002)(366004)(376002)(136003)(396003)(189003)(199004)(3846002)(11346002)(305945005)(476003)(2616005)(5660300002)(99286004)(54906003)(25786009)(8676002)(486006)(81156014)(81166006)(8936002)(66066001)(7736002)(66476007)(66556008)(64756008)(66446008)(6116002)(66946007)(6486002)(50226002)(446003)(107886003)(68736007)(52116002)(73956011)(256004)(4326008)(6436002)(316002)(478600001)(386003)(72206003)(53936002)(2906002)(102836004)(6512007)(2501003)(6916009)(76176011)(86362001)(186003)(6506007)(36756003)(71190400001)(78486014)(14454004)(26005)(2351001)(71200400001)(5640700003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN6PR11MB3987;
 H:BN6PR11MB3985.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: hOiw4OcAmT/jRTeP0u0mk5//oZ1QeCZRY39YDh+Ago37Le8JO+bwz0R3rl32kmqUv7OJeIjwHSvEUvNJT9ut4odqjNzJW0v1HXaBTNLGICU70fHT/aB5ahUmPFtVsHMzFlgAOB/I2ZD6CsVfGP07kY74kj6DHsR+9PU/cB7l1efRidzdAfGFLxzRHlQxKiQHH9/PMoOffvBIsw1yw1ATOolizJTKW4PhqKb2PrZ/i6lEDL6QZ4bNFCoFm1WZr/Txolb/t8LJ6gn4oHFW3RDaSiuVp1Gl7ouXfyL2UZ2dvecMJ4toRtuMLJvrncesr+eCoP1k2JfsnqUwCnOZytrSxbXGzhO+vOVrzYnr2TuIKmdlT/T09uuIW1Nle7NXTou8/EW/gRYen4ugEtwnda/so38P2UmuaG1Fy6ZcG3+wNKg=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f72d73e-a6bd-46ab-b0bc-08d6fa3387be
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jun 2019 12:40:55.0579 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ajay.kathat@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB3987
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

Removed the 'driver_handler_id' & 'ifc_id' elements and used 'idx' to
identify the handler.

Signed-off-by: Ajay Singh <ajay.kathat@microchip.com>
---
 drivers/staging/wilc1000/host_interface.c         | 3 +--
 drivers/staging/wilc1000/host_interface.h         | 1 -
 drivers/staging/wilc1000/wilc_netdev.c            | 3 +--
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 5 ++---
 drivers/staging/wilc1000/wilc_wfi_netdevice.h     | 1 -
 5 files changed, 4 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index b505990..389f9f8c 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -1472,7 +1472,7 @@ int wilc_set_wfi_drv_handler(struct wilc_vif *vif, int index, u8 mode,
 	drv.mode = (ifc_id | (mode << 1));
 
 	result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
-				      hif_drv->driver_handler_id);
+				      wilc_get_vif_idx(vif));
 	if (result)
 		netdev_err(vif->ndev, "Failed to set driver handler\n");
 
@@ -1644,7 +1644,6 @@ int wilc_init(struct net_device *dev, struct host_if_drv **hif_drv_handler)
 	for (i = 0; i < wilc->vif_num; i++)
 		if (dev == wilc->vif[i]->ndev) {
 			wilc->vif[i]->hif_drv = hif_drv;
-			hif_drv->driver_handler_id = i + 1;
 			break;
 		}
 
diff --git a/drivers/staging/wilc1000/host_interface.h b/drivers/staging/wilc1000/host_interface.h
index 4fcc7a3..be1d249 100644
--- a/drivers/staging/wilc1000/host_interface.h
+++ b/drivers/staging/wilc1000/host_interface.h
@@ -166,7 +166,6 @@ struct host_if_drv {
 	struct wilc_vif *remain_on_ch_timer_vif;
 
 	bool ifc_up;
-	int driver_handler_id;
 	u8 assoc_resp[WILC_MAX_ASSOC_RESP_FRAME_SIZE];
 };
 
diff --git a/drivers/staging/wilc1000/wilc_netdev.c b/drivers/staging/wilc1000/wilc_netdev.c
index 9006111..ad04744 100644
--- a/drivers/staging/wilc1000/wilc_netdev.c
+++ b/drivers/staging/wilc1000/wilc_netdev.c
@@ -636,7 +636,7 @@ static int wilc_mac_open(struct net_device *ndev)
 	for (i = 0; i < wl->vif_num; i++) {
 		if (ndev == wl->vif[i]->ndev) {
 			wilc_set_wfi_drv_handler(vif, wilc_get_vif_idx(vif),
-						 vif->iftype, vif->ifc_id);
+						 vif->iftype, vif->idx);
 			wilc_set_operation_mode(vif, vif->iftype);
 			break;
 		}
@@ -995,7 +995,6 @@ struct wilc_vif *wilc_netdev_ifc_init(struct wilc *wl, const char *name,
 	ndev->needs_free_netdev = true;
 	vif->iftype = vif_type;
 	vif->wilc->vif[wl->vif_num] = vif;
-	vif->ifc_id = wl->vif_num;
 	vif->idx = wl->vif_num;
 	wl->vif_num += 1;
 	vif->mac_opened = 0;
diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
index 012e325..1580909 100644
--- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
+++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
@@ -1462,7 +1462,7 @@ static int change_virtual_intf(struct wiphy *wiphy, struct net_device *dev,
 
 		if (wl->initialized) {
 			wilc_set_wfi_drv_handler(vif, wilc_get_vif_idx(vif),
-						 0, vif->ifc_id);
+						 0, vif->idx);
 			wilc_set_operation_mode(vif, WILC_AP_MODE);
 			wilc_set_power_mgmt(vif, 0, 0);
 		}
@@ -1693,11 +1693,10 @@ static int del_virtual_intf(struct wiphy *wiphy, struct wireless_dev *wdev)
 			wl->vif[i] = NULL;
 		} else {
 			vif = wl->vif[i + 1];
-			vif->ifc_id = i;
 			vif->idx = i;
 			wl->vif[i] = vif;
 			wilc_set_wfi_drv_handler(vif, wilc_get_vif_idx(vif),
-						 vif->iftype, vif->ifc_id);
+						 vif->iftype, vif->idx);
 		}
 	}
 	wl->vif_num--;
diff --git a/drivers/staging/wilc1000/wilc_wfi_netdevice.h b/drivers/staging/wilc1000/wilc_wfi_netdevice.h
index fca3380..d5d830d 100644
--- a/drivers/staging/wilc1000/wilc_wfi_netdevice.h
+++ b/drivers/staging/wilc1000/wilc_wfi_netdevice.h
@@ -203,7 +203,6 @@ struct wilc_vif {
 	struct host_if_drv *hif_drv;
 	struct net_device *ndev;
 	u8 mode;
-	u8 ifc_id;
 	struct timer_list during_ip_timer;
 	bool obtaining_ip;
 	struct timer_list periodic_rssi;
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
