Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E89F8759A5
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Jul 2019 23:32:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 14792226FF;
	Thu, 25 Jul 2019 21:32:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a+EkZutB1xDm; Thu, 25 Jul 2019 21:31:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id F1A54226E5;
	Thu, 25 Jul 2019 21:31:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 66A2B1BF420
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 21:31:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6208B86ECC
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 21:31:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wk+L3CM477RV for <devel@linuxdriverproject.org>;
 Thu, 25 Jul 2019 21:31:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa4.microchip.iphmx.com (esa4.microchip.iphmx.com
 [68.232.154.123])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B4CCD8507B
 for <devel@driverdev.osuosl.org>; Thu, 25 Jul 2019 21:31:38 +0000 (UTC)
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Adham.Abozaeid@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Adham.Abozaeid@microchip.com";
 x-sender="Adham.Abozaeid@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Adham.Abozaeid@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Adham.Abozaeid@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: vfx4sY7Gtt3oDSyVoneonG3gSiX7Npdg1kuvcsRA1CyAed/iPOCnhfqKIJRg5t4Zvn/BEfD9jj
 dpFeLZeD5ptuZVA4PsIZWszIO+yt+FNJgTjj6DKg+gpY5kSWlwUoJrUpsjSBwMK8Aed9eay5Fv
 jIiZCb2GCJ/0/1CebSjc2D2m6jwfUjbosJybetKuBkFIVyvU5sVwD248j8pYNJU9+1lM1IKDCF
 NYL8P1QMSeHBUhq10QmLBPO4yfs9iT+NVQWfHLx1oDvMpGVgULP2N2Kiowgv3QOKkx5I2UknmF
 0J0=
X-IronPort-AV: E=Sophos;i="5.64,308,1559545200"; d="scan'208";a="42013696"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 25 Jul 2019 14:31:38 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.87.152) by
 chn-vm-ex04.mchp-main.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 25 Jul 2019 14:31:38 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 25 Jul 2019 14:31:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=icWm37SKWFGa+F1UMAN4kgtDnOxFdPJ+sxTG1o/+cN9sR+WArA1NJq39GIXQBlS8NrsaSRHAAaMl/qKPoLVtnHbMxWDw3TWUMt/ohCawkTXYj33KQrvizYzZcj4wcQd/qTBvxVI+xuqg0/qqKU0Dg87cH56Qto6MQy7ia+lgUja7+fz2JJuyrJlRlOWSDFRkyaWMYan5SQNSmdcgR4kCCtefW8qXSxwVvn8MkOhbt6nLOsM09npCQLU8QmazoraKYWqQnoRgIal/iUU8trqkmuQG8K+Kt3ZCw7jtCocEYDf+LUTDnm28XsvIhCVu2WSBH1afo0+xy3U5mnpCtbATag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Wgy0l+Vl92lqCLinfJs95q0omNdQJifh8yhIz/mw76M=;
 b=e/vQHLFgNLYMf0CY0EZZ744l5nLo1Aa6VHUC1wf0WZj7SmwgnN0VWs7EmToJ1sB0HXR5DxHV360MK/Nsuv1xhsph5DgOm4O3UFyZi30J3+kp/Zvd7aIh6QekuSdQN48iKpN3P9Qx4nliYzQCYkGsk4qGoQe0q9Uj5hDN4iTarc27yKRsxRzFwtkTkRzTp+c/BjcJfmvwwcRyEbfmyX/1qygs+0dc+Uhxf7A5t+2zTZWD9FgrIfBFlkC76Hrtfxm6os12mbE+EbvNYUOl6l27U2ddXXjAdBSYNRPohXg5xzDFOPZjPGF40XdLtUZSm38BagasFoQyDaJAm3wyoKNtTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=microchip.com;dmarc=pass action=none
 header.from=microchip.com;dkim=pass header.d=microchip.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Wgy0l+Vl92lqCLinfJs95q0omNdQJifh8yhIz/mw76M=;
 b=hnkcpX7RZNCpXiaGpIauVIzwt0+ci6g12540+ul1LfXSdmrJwyDWXjmEDjAT3Tnhq165en5g8qdeH+edWTtKd00+IU6B32qseDvO0PxCy7U3Ic+pFBDToVhP5OXuiR5CIRo+RCY9qlfcczxsKYYeaa7EcBBh/d0lafWBEvtr25k=
Received: from MWHPR11MB1373.namprd11.prod.outlook.com (10.169.234.141) by
 MWHPR11MB1984.namprd11.prod.outlook.com (10.175.54.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.13; Thu, 25 Jul 2019 21:31:36 +0000
Received: from MWHPR11MB1373.namprd11.prod.outlook.com
 ([fe80::5836:a39e:ab17:983b]) by MWHPR11MB1373.namprd11.prod.outlook.com
 ([fe80::5836:a39e:ab17:983b%7]) with mapi id 15.20.2115.005; Thu, 25 Jul 2019
 21:31:36 +0000
From: <Adham.Abozaeid@microchip.com>
To: <linux-wireless@vger.kernel.org>
Subject: [PATCH 5/6] staging: wilc1000: apply power management regardless of
 open interfaces
Thread-Topic: [PATCH 5/6] staging: wilc1000: apply power management regardless
 of open interfaces
Thread-Index: AQHVQzBWJp/Kmut4o0O53F6bDP3YHA==
Date: Thu, 25 Jul 2019 21:31:36 +0000
Message-ID: <20190725213125.2810-6-adham.abozaeid@microchip.com>
References: <20190725213125.2810-1-adham.abozaeid@microchip.com>
In-Reply-To: <20190725213125.2810-1-adham.abozaeid@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [198.175.253.81]
x-clientproxiedby: MWHPR04CA0040.namprd04.prod.outlook.com
 (2603:10b6:300:ee::26) To MWHPR11MB1373.namprd11.prod.outlook.com
 (2603:10b6:300:25::13)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 27835f88-952c-4a37-782b-08d7114778d9
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:MWHPR11MB1984; 
x-ms-traffictypediagnostic: MWHPR11MB1984:
x-microsoft-antispam-prvs: <MWHPR11MB1984D4BC990FB7717B7D8E758DC10@MWHPR11MB1984.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:167;
x-forefront-prvs: 0109D382B0
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(366004)(136003)(396003)(346002)(376002)(189003)(199004)(11346002)(2616005)(476003)(102836004)(386003)(446003)(486006)(6916009)(2351001)(6506007)(66946007)(186003)(99286004)(2501003)(76176011)(26005)(316002)(52116002)(5660300002)(66446008)(256004)(305945005)(6486002)(25786009)(64756008)(66556008)(66476007)(53936002)(1076003)(107886003)(71200400001)(86362001)(71190400001)(4326008)(68736007)(478600001)(8936002)(6116002)(6512007)(14454004)(50226002)(4744005)(8676002)(5640700003)(81166006)(81156014)(3846002)(2906002)(6436002)(66066001)(54906003)(7736002)(36756003)(26953001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR11MB1984;
 H:MWHPR11MB1373.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: yGrtt4IlNrxTHU2jE5yb1xvAte6GVEOrbmpjxCMM1NPCbyUyX/b/mHQSaj1g/9CyChteEVpxbzzCDgBFtMxGkxM/bgEUGoLVw+Zl8lN7rjjTLEOMGkIMyg921reaE7/NtIm9/KEZNcqUwqYcLuZ4cLuhYmiiPN8uaJ+P+2M5Lr1AdE4XAghL8F1aK8Z4bsgQ3qZlAzFBc6q7GAXws7ZXT/y1RzaMy4Mquvk9d/b5otpOajF5/YkuPX7/YTp3OegZF2WGmvI7D1TqPrreL22yRkZWDL4vysZRX7W0eUR26rLpe3UkEYdQdVmw47rEGYib2C+eIJkAAIm8fjDOlwdcu9UPLTT11xTJDmCfakwmugWYHE8aECfiDkUfEIUQDd+cZabzMpjoX7z+8JN6AuAHbALD7spDOXY4ahozQ6NLYGU=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 27835f88-952c-4a37-782b-08d7114778d9
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jul 2019 21:31:36.6745 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: adham.abozaeid@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1984
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

Don't ignore power management if 2 interfaces are open

Signed-off-by: Adham Abozaeid <adham.abozaeid@microchip.com>
---
 drivers/staging/wilc1000/wilc_hif.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_hif.c b/drivers/staging/wilc1000/wilc_hif.c
index 16ff610c6a5b..75a6931aa147 100644
--- a/drivers/staging/wilc1000/wilc_hif.c
+++ b/drivers/staging/wilc1000/wilc_hif.c
@@ -2010,9 +2010,6 @@ int wilc_set_power_mgmt(struct wilc_vif *vif, bool enabled, u32 timeout)
 	int result;
 	s8 power_mode;
 
-	if (wilc_wlan_get_num_conn_ifcs(vif->wilc) == 2 && enabled)
-		return 0;
-
 	if (enabled)
 		power_mode = WILC_FW_MIN_FAST_PS;
 	else
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
