Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 608EE56978
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jun 2019 14:41:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 59A2721552;
	Wed, 26 Jun 2019 12:41:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j9N7vN9YRxH6; Wed, 26 Jun 2019 12:41:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3188A21544;
	Wed, 26 Jun 2019 12:41:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 772561BF3E8
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 12:41:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 73B8F86055
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 12:41:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xQOd3oWmc4A2 for <devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 12:41:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D9AD586078
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
X-IronPort-AV: E=Sophos;i="5.63,419,1557212400"; d="scan'208";a="37422550"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 26 Jun 2019 05:41:14 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex01.mchp-main.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 26 Jun 2019 05:41:02 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5 via Frontend
 Transport; Wed, 26 Jun 2019 05:41:01 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HuXSpzFFEK7FE9a63lak2HOt+3mC9TVEOLZpbKUSljo=;
 b=RlharDH2yGBK3Jvipp7eKxmBcYOdeEff1P7rLNCJgbHCj9mvt2GO8KKb+rx16rx/BAbg3O68QenQ/YxNXJ2NCXIiJdziId6Ej2WIClsU49VW7Bv6o4AsG/kEFTSddb2NO9mbJXOFWSl4f4I0Xk6PyXTtt5bL+4Q+UNJh3Wadr2k=
Received: from BN6PR11MB3985.namprd11.prod.outlook.com (10.255.129.78) by
 BN6PR11MB3907.namprd11.prod.outlook.com (10.255.131.93) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Wed, 26 Jun 2019 12:41:01 +0000
Received: from BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::49ee:ab78:412:48ac]) by BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::49ee:ab78:412:48ac%5]) with mapi id 15.20.2008.017; Wed, 26 Jun 2019
 12:41:01 +0000
From: <Ajay.Kathat@microchip.com>
To: <linux-wireless@vger.kernel.org>
Subject: [PATCH 6/8] staging: wilc1000: remove use of 'src_addr' element in
 'wilc_vif' struct
Thread-Topic: [PATCH 6/8] staging: wilc1000: remove use of 'src_addr' element
 in 'wilc_vif' struct
Thread-Index: AQHVLBxpYcTsK5l4nUGdYRa+dEU9BA==
Date: Wed, 26 Jun 2019 12:41:01 +0000
Message-ID: <1561552810-8933-7-git-send-email-ajay.kathat@microchip.com>
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
x-ms-office365-filtering-correlation-id: 8876f0ab-30ed-4c9d-a838-08d6fa338b77
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BN6PR11MB3907; 
x-ms-traffictypediagnostic: BN6PR11MB3907:
x-microsoft-antispam-prvs: <BN6PR11MB3907EA4A51A90281811FEF7CE3E20@BN6PR11MB3907.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 00808B16F3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(979002)(136003)(346002)(39860400002)(366004)(396003)(376002)(199004)(189003)(476003)(14454004)(54906003)(81166006)(8936002)(2616005)(446003)(486006)(81156014)(6506007)(6436002)(6512007)(386003)(186003)(11346002)(5640700003)(102836004)(36756003)(316002)(6116002)(3846002)(26005)(2906002)(72206003)(478600001)(66066001)(50226002)(66446008)(2501003)(5660300002)(6486002)(107886003)(66556008)(64756008)(2351001)(86362001)(25786009)(6916009)(4326008)(8676002)(71190400001)(71200400001)(7736002)(76176011)(256004)(99286004)(68736007)(305945005)(52116002)(78486014)(53936002)(66476007)(73956011)(66946007)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN6PR11MB3907;
 H:BN6PR11MB3985.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: +uwoNsY5SKKEBj5l3S8upq9aHh26D9a755vJxdghaKYINGwdHN9K3cWhqTq84hICF72YcvsugJBGlxYZs8nSUPxFTz81utzwJ5cXYwzT0ZVZGKVEnwx+cCGU+ROtypJwnHKcvTeCSVgdOIMbxxdHJSQ3UR9j8ULadVxbzX6r9uz7qu8FEFGXWASx8zyv0Yld8AkEHG/x1ra3JIB9uOmjX6e3xq7t1jrOUbthqUpUZ8sw4x4Xnyx0+3dGGQIg4OtPQIFiyK7Zen+kvlupknH3j16yzlUJQVTlkUQd8uKyXYtOmRY0T+jawlCAgLs4bw0bZjWOqrcumK+IywI5+amUaUU1gHxSpvkILtPzS/ZUDN1YCZFdb5CSThmHZ/lJ9zOL09MnhXl/2ikhRr8gBfjPSPsDrsnNZVY0Rv/DRGOQ+U4=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 8876f0ab-30ed-4c9d-a838-08d6fa338b77
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jun 2019 12:41:01.3062 (UTC)
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

Remove use of 'src_addr' element in wilc_vif, as the same information
already copied to net_device->dev_addr.

Signed-off-by: Ajay Singh <ajay.kathat@microchip.com>
---
 drivers/staging/wilc1000/wilc_netdev.c            | 3 +--
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 2 +-
 drivers/staging/wilc1000/wilc_wfi_netdevice.h     | 1 -
 3 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_netdev.c b/drivers/staging/wilc1000/wilc_netdev.c
index 0af60b2..565e2b5 100644
--- a/drivers/staging/wilc1000/wilc_netdev.c
+++ b/drivers/staging/wilc1000/wilc_netdev.c
@@ -638,8 +638,7 @@ static int wilc_mac_open(struct net_device *ndev)
 
 	wilc_get_mac_address(vif, mac_add);
 	netdev_dbg(ndev, "Mac address: %pM\n", mac_add);
-	memcpy(vif->src_addr, mac_add, ETH_ALEN);
-	memcpy(ndev->dev_addr, vif->src_addr, ETH_ALEN);
+	ether_addr_copy(ndev->dev_addr, mac_add);
 
 	if (!is_valid_ether_addr(ndev->dev_addr)) {
 		netdev_err(ndev, "Wrong MAC address\n");
diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
index 1580909..d72fdd3 100644
--- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
+++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
@@ -1499,7 +1499,7 @@ static int start_ap(struct wiphy *wiphy, struct net_device *dev,
 	if (ret != 0)
 		netdev_err(dev, "Error in setting channel\n");
 
-	wilc_wlan_set_bssid(dev, vif->src_addr, WILC_AP_MODE);
+	wilc_wlan_set_bssid(dev, dev->dev_addr, WILC_AP_MODE);
 	wilc_set_power_mgmt(vif, 0, 0);
 
 	return wilc_add_beacon(vif, settings->beacon_interval,
diff --git a/drivers/staging/wilc1000/wilc_wfi_netdevice.h b/drivers/staging/wilc1000/wilc_wfi_netdevice.h
index d5d830d..e28c8de 100644
--- a/drivers/staging/wilc1000/wilc_wfi_netdevice.h
+++ b/drivers/staging/wilc1000/wilc_wfi_netdevice.h
@@ -198,7 +198,6 @@ struct wilc_vif {
 	struct frame_reg frame_reg[NUM_REG_FRAME];
 	struct net_device_stats netstats;
 	struct wilc *wilc;
-	u8 src_addr[ETH_ALEN];
 	u8 bssid[ETH_ALEN];
 	struct host_if_drv *hif_drv;
 	struct net_device *ndev;
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
