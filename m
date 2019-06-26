Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CC6D56987
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jun 2019 14:41:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1840F86090;
	Wed, 26 Jun 2019 12:41:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u7cM-HPULDI8; Wed, 26 Jun 2019 12:41:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B33218607A;
	Wed, 26 Jun 2019 12:41:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A13B11BF3E8
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 12:41:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9E1CB83883
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 12:41:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LSd2di+szGDF for <devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 12:41:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
 [68.232.153.233])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C5D558671E
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 12:41:49 +0000 (UTC)
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Ajay.Kathat@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Ajay.Kathat@microchip.com";
 x-sender="Ajay.Kathat@microchip.com"; x-conformance=spf_only;
 x-record-type="v=spf1"; x-record-text="v=spf1 mx
 a:ushub1.microchip.com a:smtpout.microchip.com
 a:mx1.microchip.iphmx.com a:mx2.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Ajay.Kathat@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Ajay.Kathat@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.63,419,1557212400"; d="scan'208";a="39093146"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 26 Jun 2019 05:40:50 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.87.152) by
 chn-vm-ex03.mchp-main.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 26 Jun 2019 05:42:00 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 26 Jun 2019 05:42:00 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QwCAFrke+Fr2UQnFeAENausuqBGh1w63G5+FI7A7NGE=;
 b=ogPqKjiGh0ZyrUp/nLSkQy460hnORGaORxZgVn+OLeNmXt7om1mm7dwt0yC4oqaAEqrkbeMKQcu6ib7fRZPilKM92U9V3/OHsTWYYll0rv7n9oo35UdOAR9WccloBONEh9yeci0rUOdDqI1UItyu41QQHwYiEfhJ6bveTfjYm7Y=
Received: from BN6PR11MB3985.namprd11.prod.outlook.com (10.255.129.78) by
 BN6PR11MB3987.namprd11.prod.outlook.com (10.255.128.161) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Wed, 26 Jun 2019 12:40:48 +0000
Received: from BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::49ee:ab78:412:48ac]) by BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::49ee:ab78:412:48ac%5]) with mapi id 15.20.2008.017; Wed, 26 Jun 2019
 12:40:48 +0000
From: <Ajay.Kathat@microchip.com>
To: <linux-wireless@vger.kernel.org>
Subject: [PATCH 2/8] staging: wilc1000: fix error path cleanup in
 wilc_wlan_initialize()
Thread-Topic: [PATCH 2/8] staging: wilc1000: fix error path cleanup in
 wilc_wlan_initialize()
Thread-Index: AQHVLBxh6f5c1fo7v0WfMlE3JbKx7g==
Date: Wed, 26 Jun 2019 12:40:48 +0000
Message-ID: <1561552810-8933-3-git-send-email-ajay.kathat@microchip.com>
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
x-ms-office365-filtering-correlation-id: a4d9d848-a3ae-4483-bf0b-08d6fa3383f1
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BN6PR11MB3987; 
x-ms-traffictypediagnostic: BN6PR11MB3987:
x-microsoft-antispam-prvs: <BN6PR11MB3987F9DEE8562382ED72CAB1E3E20@BN6PR11MB3987.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 00808B16F3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(39860400002)(366004)(376002)(136003)(396003)(189003)(199004)(3846002)(11346002)(305945005)(476003)(2616005)(5660300002)(99286004)(54906003)(25786009)(8676002)(486006)(81156014)(81166006)(8936002)(66066001)(7736002)(66476007)(66556008)(64756008)(66446008)(6116002)(66946007)(6486002)(50226002)(446003)(68736007)(52116002)(73956011)(14444005)(256004)(4326008)(6436002)(316002)(478600001)(386003)(72206003)(53936002)(2906002)(102836004)(6512007)(2501003)(6916009)(76176011)(86362001)(186003)(6506007)(36756003)(71190400001)(78486014)(14454004)(26005)(2351001)(71200400001)(5640700003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN6PR11MB3987;
 H:BN6PR11MB3985.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: AjcIGeChrrKz1zeiMG42mAhOYQetBrMbmFKYbYqbTrMvXwXRD2I01aOTo/RlKDFDx80vRje02md4cvsC/6a5wuGnPYpYkEojNziUfaGBklUuc4lUlv3EtEeyvS9oKmQzwnHjaD+rttBq+Hc+OrhdhUbGPDiQgm3nMq5JtKwjX+g+RCmqZ37aa1VEcCHTUOVZ32afA6DnJhHnehRhhOV9PQa8aEZezp+7GyQyonCHekxky/rPDifuCbH4Y8q1jOnJFSXBfd6yd4Bvopjdx6Ym1KWYNmE8v8IPs06QneSOCZwW6ZEPx0YUya5P/yLV4RMTJFIEtbeqvZ07j2ntwkouVsEpty4/OasgxL6GGTf8x0oixcMgJDACBblOLIsv0Z/neiWeQ58rAZZstBpe2T1jQdYVGhzz/pEAfvAsCb2aX9A=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: a4d9d848-a3ae-4483-bf0b-08d6fa3383f1
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jun 2019 12:40:48.6766 (UTC)
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
Cc: devel@driverdev.osuosl.org, Ajay.Kathat@microchip.com,
 gregkh@linuxfoundation.org, stable@vger.kernel.org,
 Adham.Abozaeid@microchip.com, johannes@sipsolutions.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Ajay Singh <ajay.kathat@microchip.com>

For the error path in wilc_wlan_initialize(), the resources are not
cleanup in the correct order. Reverted the previous changes and use the
correct order to free during error condition.

Fixes: b46d68825c2d ("staging: wilc1000: remove COMPLEMENT_BOOT")
Cc: <stable@vger.kernel.org>
Signed-off-by: Ajay Singh <ajay.kathat@microchip.com>
---
 drivers/staging/wilc1000/wilc_netdev.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_netdev.c b/drivers/staging/wilc1000/wilc_netdev.c
index c4efec2..0e0a4ee 100644
--- a/drivers/staging/wilc1000/wilc_netdev.c
+++ b/drivers/staging/wilc1000/wilc_netdev.c
@@ -530,17 +530,17 @@ static int wilc_wlan_initialize(struct net_device *dev, struct wilc_vif *vif)
 			goto fail_locks;
 		}
 
-		if (wl->gpio_irq && init_irq(dev)) {
-			ret = -EIO;
-			goto fail_locks;
-		}
-
 		ret = wlan_initialize_threads(dev);
 		if (ret < 0) {
 			ret = -EIO;
 			goto fail_wilc_wlan;
 		}
 
+		if (wl->gpio_irq && init_irq(dev)) {
+			ret = -EIO;
+			goto fail_threads;
+		}
+
 		if (!wl->dev_irq_num &&
 		    wl->hif_func->enable_interrupt &&
 		    wl->hif_func->enable_interrupt(wl)) {
@@ -596,7 +596,7 @@ static int wilc_wlan_initialize(struct net_device *dev, struct wilc_vif *vif)
 fail_irq_init:
 		if (wl->dev_irq_num)
 			deinit_irq(dev);
-
+fail_threads:
 		wlan_deinitialize_threads(dev);
 fail_wilc_wlan:
 		wilc_wlan_cleanup(dev);
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
