Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27D7BBF5A9
	for <lists+driverdev-devel@lfdr.de>; Thu, 26 Sep 2019 17:15:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 18EEA87E57;
	Thu, 26 Sep 2019 15:15:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1CHJWda9Fog6; Thu, 26 Sep 2019 15:15:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A3BBC87D5E;
	Thu, 26 Sep 2019 15:14:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 743581BF334
 for <devel@linuxdriverproject.org>; Thu, 26 Sep 2019 15:14:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 70D2F8625D
 for <devel@linuxdriverproject.org>; Thu, 26 Sep 2019 15:14:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aXGHF08quVSD for <devel@linuxdriverproject.org>;
 Thu, 26 Sep 2019 15:14:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3422F8625B
 for <devel@driverdev.osuosl.org>; Thu, 26 Sep 2019 15:14:56 +0000 (UTC)
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
IronPort-SDR: QG+OzQdATKhERiRPjzu0MHEidC/JcpQVcw/HSANBoNvuIUkLZgf9etodtEUXe594u1ghaQeLyo
 yCvIcB/IvvGgddIgNbPPHrsZrKASbiQ5yl5wytQKuoQwU3RsTGQM6zbWbleXPAAnmvrcsfoNJa
 UshIA8Td1Bz7XdagKrnFQFks+HiDfWfG01F+2l7lwnjU+/+OPgSskwy79I2IIOYcDbFHuAcMPf
 /+S0qFUr7JpwJehq3rqJbXjJWH5Xer73SUPTfgq7VnxyZgTPAqfgDrMDhRGfd00o9C/hGvuSEI
 2gE=
X-IronPort-AV: E=Sophos;i="5.64,552,1559545200"; d="scan'208";a="49137788"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 26 Sep 2019 08:14:56 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 26 Sep 2019 08:14:54 -0700
Received: from NAM03-BY2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5 via Frontend
 Transport; Thu, 26 Sep 2019 08:14:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EIKhIp9Nc+Cf75GaI2wSMqUKAfTYjBojbzXnQOPwdU0EOrH5dclXAXfqYnwI6kFNmakwFGI90pseihs0txZOoXYmaZ/2aqYALcCIbWAgqWeAl4VCsek2N7ID7+/ZyDxGrpI+NcPv/IcrqA6fy7qC1r3UaD0aogX3Rmzg0HLaFvq3lHJWFIMPmpAovcEPb/ctlhOGUAjIWPxpy4wjfdO4h2C0jMZetcgXmmQusGQFUv6d/gvaH87+KFQpQezlE42A0CMtmlXQAls9VtWB9QgdT6w/olnVkkXEiWQVjivioLc2N9KL3dE5ch/c9Ifvre+D/OgAQgx+g+0OIaSGqmGCVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Fwlegk2njDEIDiInbpJsPbDOdaN3IlhlU9eiml/qETw=;
 b=A1wJXb9H+TLruSlveU2km33RwYmMbEPuzGl67oVWR8but3nAUHNQgflAPtLFuGyvlt13szFuu7Ta50Hhb20PDj7A1AekHOvgVEHTBVRKsbMz+snixk3ogBgMR5HEiyDtYzKtTwpbpkjF8VwspWhNpC4oSOsGiemmgxhEv5ORkimj+Aeb56C0M7jaL5GyDCCgk+yRgFy5J2q4d+wFqIlV6zXnLZ4pjzw8geJ7HwsIlNbq3csYJYqzQdQlLKq5zBViHq70eSw49QAH8JpPMAcC+/9Bp6diVw/7F57CHNI3eT838RAo8pUOdTJMk6JpBMfOnTEnVlvmb+AyAMTyNuOTeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Fwlegk2njDEIDiInbpJsPbDOdaN3IlhlU9eiml/qETw=;
 b=P9nvwejbACZNK781lI20U9W/OeuNLNmprklVmtpDMGeB5tKG38plLZCyLenbXW2d/oj2iz+olmbZAQZQnvNGqwDpz5nULkPtw88h48ludZLvRnJ/TSZUumtox7cqzdxmmLtPZBJ26fZysOja/r/BNQoT9itL0n9QGxSdf1EGNl8=
Received: from BN6PR11MB3985.namprd11.prod.outlook.com (10.255.129.78) by
 BN6PR11MB1860.namprd11.prod.outlook.com (10.175.99.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20; Thu, 26 Sep 2019 15:14:54 +0000
Received: from BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::8d48:6075:7cc9:7d43]) by BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::8d48:6075:7cc9:7d43%6]) with mapi id 15.20.2284.028; Thu, 26 Sep 2019
 15:14:54 +0000
From: <Ajay.Kathat@microchip.com>
To: <linux-wireless@vger.kernel.org>
Subject: [PATCH 1/3] staging: wilc1000: remove unnecessary netdev validation
 check in del_key()
Thread-Topic: [PATCH 1/3] staging: wilc1000: remove unnecessary netdev
 validation check in del_key()
Thread-Index: AQHVdH0mTC7Rb21Xvk2Q2zp92wJYEg==
Date: Thu, 26 Sep 2019 15:14:54 +0000
Message-ID: <20190926151436.27819-1-ajay.kathat@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MAXPR0101CA0021.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:c::31) To BN6PR11MB3985.namprd11.prod.outlook.com
 (2603:10b6:405:7b::14)
x-mailer: git-send-email 2.22.0
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [183.82.19.178]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ff9eed42-ee64-4a92-1391-08d7429448b0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:BN6PR11MB1860; 
x-ms-traffictypediagnostic: BN6PR11MB1860:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN6PR11MB186037C8CC0F5368AA754912E3860@BN6PR11MB1860.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 0172F0EF77
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(366004)(396003)(39860400002)(136003)(346002)(199004)(189003)(476003)(71200400001)(5660300002)(316002)(99286004)(186003)(2351001)(26005)(1076003)(66476007)(66946007)(6506007)(14454004)(66556008)(2501003)(86362001)(478600001)(102836004)(66446008)(52116002)(64756008)(2906002)(386003)(36756003)(50226002)(81166006)(6436002)(6116002)(3846002)(4326008)(8936002)(25786009)(486006)(305945005)(7736002)(66066001)(8676002)(5640700003)(6512007)(81156014)(107886003)(6916009)(256004)(6486002)(2616005)(71190400001)(54906003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN6PR11MB1860;
 H:BN6PR11MB3985.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: UwWfBoh80aDO+3LxCqf+qqYBBqiiyACZBw/dTOwtoDKcu6btJ5LhirVT3ed33zlv3assIwXgUur+Z11m1A16oF6OZXEda9Wa0x1wU6LGa5DNmKzmoez10IjrAw5assNR42fgI8fuGPheE93MC6njP80Ayi9yrDHJaW+kMP3q5+WIyr5VlL0Fevmt5vtLdD+zb7JdcYA+4AZIrH2tNoiaTSkuj0HofJ9jooVkrB3VFVzoAnm5b4ZwLyVQlNF/0EbK6JpsjJiIlvZo54kNo6rdvdhIwd411qVd381fBjYt5dWFXBMnJIYCFlmCKERzFkTrZUn+B1wpbo2dJRQs/qYnOnI72Za99r8jVsoA8xS80ZwEclhnAEitteAK02EpFHZDiCU3XAkZxUFnFunrOb9B4smVQvnZM2yrkY6qEAUvVC8=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: ff9eed42-ee64-4a92-1391-08d7429448b0
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Sep 2019 15:14:54.0185 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eBUVqiTx/phf94ACB1vSRQCDHAtzUtC8rHe9hKPUVXrXSmUHXroPDzEDio2UrAUU1lZyejWPVyeURsZ2EA/pkkuAs93DV7JCSYWwvrB0yQ0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1860
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

Removed unnecessary check to compare vif interface with zeroth index
element in vif array. Already the caller takes care of passing the
appropriate netdev handler during the del key operation.

Signed-off-by: Ajay Singh <ajay.kathat@microchip.com>
---
 .../staging/wilc1000/wilc_wfi_cfgoperations.c | 33 +++++++++----------
 1 file changed, 15 insertions(+), 18 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
index 22f21831649b..a1ca700e045a 100644
--- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
+++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
@@ -620,29 +620,26 @@ static int del_key(struct wiphy *wiphy, struct net_device *netdev,
 		   bool pairwise,
 		   const u8 *mac_addr)
 {
-	struct wilc *wl = wiphy_priv(wiphy);
 	struct wilc_vif *vif = netdev_priv(netdev);
 	struct wilc_priv *priv = &vif->priv;
 
-	if (netdev == wl->vif[0]->ndev) {
-		if (priv->wilc_gtk[key_index]) {
-			kfree(priv->wilc_gtk[key_index]->key);
-			priv->wilc_gtk[key_index]->key = NULL;
-			kfree(priv->wilc_gtk[key_index]->seq);
-			priv->wilc_gtk[key_index]->seq = NULL;
+	if (priv->wilc_gtk[key_index]) {
+		kfree(priv->wilc_gtk[key_index]->key);
+		priv->wilc_gtk[key_index]->key = NULL;
+		kfree(priv->wilc_gtk[key_index]->seq);
+		priv->wilc_gtk[key_index]->seq = NULL;
 
-			kfree(priv->wilc_gtk[key_index]);
-			priv->wilc_gtk[key_index] = NULL;
-		}
+		kfree(priv->wilc_gtk[key_index]);
+		priv->wilc_gtk[key_index] = NULL;
+	}
 
-		if (priv->wilc_ptk[key_index]) {
-			kfree(priv->wilc_ptk[key_index]->key);
-			priv->wilc_ptk[key_index]->key = NULL;
-			kfree(priv->wilc_ptk[key_index]->seq);
-			priv->wilc_ptk[key_index]->seq = NULL;
-			kfree(priv->wilc_ptk[key_index]);
-			priv->wilc_ptk[key_index] = NULL;
-		}
+	if (priv->wilc_ptk[key_index]) {
+		kfree(priv->wilc_ptk[key_index]->key);
+		priv->wilc_ptk[key_index]->key = NULL;
+		kfree(priv->wilc_ptk[key_index]->seq);
+		priv->wilc_ptk[key_index]->seq = NULL;
+		kfree(priv->wilc_ptk[key_index]);
+		priv->wilc_ptk[key_index] = NULL;
 	}
 
 	if (key_index <= 3 && priv->wep_key_len[key_index]) {
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
