Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 74D3156982
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jun 2019 14:41:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2E5D720411;
	Wed, 26 Jun 2019 12:41:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z4jXKc785ShE; Wed, 26 Jun 2019 12:41:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7E1DB2154F;
	Wed, 26 Jun 2019 12:41:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 24E931BF3E8
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 12:41:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 06325868D8
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 12:41:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sCJ+t7w7lW3X for <devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 12:41:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa1.microchip.iphmx.com (esa1.microchip.iphmx.com
 [68.232.147.91])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 66B7083883
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 12:41:17 +0000 (UTC)
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
 Ajay.Kathat@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Ajay.Kathat@microchip.com";
 x-sender="Ajay.Kathat@microchip.com"; x-conformance=spf_only;
 x-record-type="v=spf1"; x-record-text="v=spf1 mx
 a:ushub1.microchip.com a:smtpout.microchip.com
 a:mx1.microchip.iphmx.com a:mx2.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Ajay.Kathat@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa1.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Ajay.Kathat@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.63,419,1557212400"; d="scan'208";a="40484320"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 26 Jun 2019 05:41:00 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 26 Jun 2019 05:40:58 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5 via Frontend
 Transport; Wed, 26 Jun 2019 05:40:58 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Yy33CSw+7u77x+NQDpbjg1syGyTJ17R6D5wqBo+efn8=;
 b=eZZAu7ENPhUy3wyfKTQYUAVcb1G5s0OVaIU1hk5I0sQWEqfuURnqGQE8TVQ/kfXKvXHSLTbIR0CLg8HuBjk020MAVEIfBbHRhOjEDsMW8nXylZ0/VCyn9iMObP8yu7Uq7seXZ3OLUcze2oXNK1AquT6lU+vK1jzVvewTzy9QHdw=
Received: from BN6PR11MB3985.namprd11.prod.outlook.com (10.255.129.78) by
 BN6PR11MB3987.namprd11.prod.outlook.com (10.255.128.161) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Wed, 26 Jun 2019 12:40:58 +0000
Received: from BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::49ee:ab78:412:48ac]) by BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::49ee:ab78:412:48ac%5]) with mapi id 15.20.2008.017; Wed, 26 Jun 2019
 12:40:58 +0000
From: <Ajay.Kathat@microchip.com>
To: <linux-wireless@vger.kernel.org>
Subject: [PATCH 5/8] staging: wilc1000: remove unnecessary loop to traverse
 vif interfaces
Thread-Topic: [PATCH 5/8] staging: wilc1000: remove unnecessary loop to
 traverse vif interfaces
Thread-Index: AQHVLBxnrn5pJlgqbEqjXpIzd+Cikw==
Date: Wed, 26 Jun 2019 12:40:58 +0000
Message-ID: <1561552810-8933-6-git-send-email-ajay.kathat@microchip.com>
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
x-ms-office365-filtering-correlation-id: 2a30a280-cfd6-459b-6e09-08d6fa3389b2
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BN6PR11MB3987; 
x-ms-traffictypediagnostic: BN6PR11MB3987:
x-microsoft-antispam-prvs: <BN6PR11MB3987EA55E5A0A01CF5611D74E3E20@BN6PR11MB3987.namprd11.prod.outlook.com>
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
x-microsoft-antispam-message-info: 9v+uceWvaTbKvrcp5//6/OGtGuFSh31+dY6hpLkmwdsMLXR4XwszIlwfBLIcVQqN9V0N2LxO4BWBMedq2iDa8cmAKDdSS8WV9mPrh7i4kwXM0yJf2FrLAIqA8uYIp4leMmh4+0u/98GeOb24/RvBmz82zszTpTBPokeBrWoudRvsq09ioRCzEK5aAD9IXqIRdDroYtmc5HDTAWp0Zf7PBF4W0fn4ee2iR6568KM11kFW8fhl6fI72LI382O+kGH4Ig45YdizuzmbBoHkj9/1BgY4YpUZCFMdk0aBkGyvXHlf4rfDS5CMimbN+rFDkNV4rZTyM3WMTpMWRTLaQ5AtS79OzoHfiQlvtonJXC0MLKHTIdyW4H6L9lAH0sU3zDizk16fbAt2BYl3oJGCnr5aS7r0ak1oVZhY5MP9K4GkSgo=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a30a280-cfd6-459b-6e09-08d6fa3389b2
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jun 2019 12:40:58.3260 (UTC)
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

Cleanup patch to avoid loop to traverse the interfaces instead make use
of vif received from net_device priv data.

Signed-off-by: Ajay Singh <ajay.kathat@microchip.com>
---
 drivers/staging/wilc1000/host_interface.c |  7 +------
 drivers/staging/wilc1000/wilc_netdev.c    | 16 +++++-----------
 2 files changed, 6 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index 389f9f8c..3688088 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -1634,19 +1634,14 @@ int wilc_init(struct net_device *dev, struct host_if_drv **hif_drv_handler)
 	struct host_if_drv *hif_drv;
 	struct wilc_vif *vif = netdev_priv(dev);
 	struct wilc *wilc = vif->wilc;
-	int i;
 
 	hif_drv  = kzalloc(sizeof(*hif_drv), GFP_KERNEL);
 	if (!hif_drv)
 		return -ENOMEM;
 
 	*hif_drv_handler = hif_drv;
-	for (i = 0; i < wilc->vif_num; i++)
-		if (dev == wilc->vif[i]->ndev) {
-			wilc->vif[i]->hif_drv = hif_drv;
-			break;
-		}
 
+	vif->hif_drv = hif_drv;
 	vif->obtaining_ip = false;
 
 	if (wilc->clients_count == 0)
diff --git a/drivers/staging/wilc1000/wilc_netdev.c b/drivers/staging/wilc1000/wilc_netdev.c
index ad04744..0af60b2 100644
--- a/drivers/staging/wilc1000/wilc_netdev.c
+++ b/drivers/staging/wilc1000/wilc_netdev.c
@@ -614,7 +614,6 @@ static int wilc_mac_open(struct net_device *ndev)
 	struct wilc_priv *priv = wdev_priv(vif->ndev->ieee80211_ptr);
 	unsigned char mac_add[ETH_ALEN] = {0};
 	int ret = 0;
-	int i = 0;
 
 	if (!wl || !wl->dev) {
 		netdev_err(ndev, "device not ready\n");
@@ -633,19 +632,14 @@ static int wilc_mac_open(struct net_device *ndev)
 		return ret;
 	}
 
-	for (i = 0; i < wl->vif_num; i++) {
-		if (ndev == wl->vif[i]->ndev) {
-			wilc_set_wfi_drv_handler(vif, wilc_get_vif_idx(vif),
-						 vif->iftype, vif->idx);
-			wilc_set_operation_mode(vif, vif->iftype);
-			break;
-		}
-	}
+	wilc_set_wfi_drv_handler(vif, wilc_get_vif_idx(vif), vif->iftype,
+				 vif->idx);
+	wilc_set_operation_mode(vif, vif->iftype);
 
 	wilc_get_mac_address(vif, mac_add);
 	netdev_dbg(ndev, "Mac address: %pM\n", mac_add);
-	memcpy(wl->vif[i]->src_addr, mac_add, ETH_ALEN);
-	memcpy(ndev->dev_addr, wl->vif[i]->src_addr, ETH_ALEN);
+	memcpy(vif->src_addr, mac_add, ETH_ALEN);
+	memcpy(ndev->dev_addr, vif->src_addr, ETH_ALEN);
 
 	if (!is_valid_ether_addr(ndev->dev_addr)) {
 		netdev_err(ndev, "Wrong MAC address\n");
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
