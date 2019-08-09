Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BC6B88263
	for <lists+driverdev-devel@lfdr.de>; Fri,  9 Aug 2019 20:25:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id ADB6522B6D;
	Fri,  9 Aug 2019 18:25:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J9QE32zxti6S; Fri,  9 Aug 2019 18:25:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C87F920406;
	Fri,  9 Aug 2019 18:25:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 43A751BF2B0
 for <devel@linuxdriverproject.org>; Fri,  9 Aug 2019 18:25:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4058F877EA
 for <devel@linuxdriverproject.org>; Fri,  9 Aug 2019 18:25:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WNcKgD2YH+lg for <devel@linuxdriverproject.org>;
 Fri,  9 Aug 2019 18:25:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa2.microchip.iphmx.com (esa2.microchip.iphmx.com
 [68.232.149.84])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6221B86365
 for <devel@driverdev.osuosl.org>; Fri,  9 Aug 2019 18:25:23 +0000 (UTC)
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Adham.Abozaeid@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Adham.Abozaeid@microchip.com";
 x-sender="Adham.Abozaeid@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Adham.Abozaeid@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Adham.Abozaeid@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: xumEXg5MKMQcK/+7j23C516ApiRZWW8gaJtBQ/M9llyUKlWd0EvT+tG689B8+YTwSbeOeBBYmr
 KHphhOmo4ph2vA+9p1z0LWeP7+wywQrRWM2o1UEZhZTiKnCAWz9eO5mZVQwa/QydZAVVC75her
 Z7CdxAKdhZdLxNsqgfcfezozadAeHT/BAPUoFyXxlFpZQlNyuZJiB640U/nvBtC3e+fbtGCVRu
 fb0P4IXZonUOj3QuA2hmunmVKjos1DG4lMhCXQq+s6VV7DgGzL03he9hUvdgT4UQX4C6/8DgQm
 1Zw=
X-IronPort-AV: E=Sophos;i="5.64,366,1559545200"; d="scan'208";a="44586906"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 09 Aug 2019 11:25:22 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 9 Aug 2019 11:25:21 -0700
Received: from NAM01-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Fri, 9 Aug 2019 11:25:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mO6Qb3kjC7w57bNUH+eL2EQ9tkI6kB4iCGxda+WUGxLoeqvexbgd4WOs6ybmLwbhJCvtDVycOyVnqdijR3HCjaVfWddR0Mow+RmI46pB9anfAQ0JcpEY7JO9SCcv5n2Kh/9afW7wNstyTKm72vMmlxC9a3AHBd7JL40+1NflfKU7e4E1LztQsn4L4/am+A/jOuPH+rbiOf5/H8wxeUhya1TT4nHGoTV+UJzv3jdh5xKoILZSVAaMYVlNcI/YKZ7o4+5pRFZYoZJCnOM1EK8YPKBZLcgCjVsicLcHz2/wOSKU5I05CzIjglBSYX6uUYJ9oWvXfWUQg+8vWLW+wtV0cQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ck1p6XqPfusgmuaBAVqZx8GlxZVt0GPBRyCERPu2apU=;
 b=Uz1fNCKOTp93R7ExxBDh6HE8CpkLuwZZ4WtabsNVhm2n9PyxiWxbvnZojx3c8vLl5fy64SAERl0njNe6xQYj1OEHarkilufNNAI2K49il0mYx0p3jl8VPCJ/4bZX6fmN3o25sGv5yUE9bEW9UeMYg1tPERFYIYzU/d9r+CxAOa7rbOl2RI9ObsQ4yeyEoPx/selnMjoU6Ta7kd/MFNEmHHwCrzsgkTWbjsEF5AJAzQ6jEM36nr3Ey7Cwzp3d7LfgpAUOOnfgLcxO4BR2jIuwpsLuruG2ebuFpj4bNonuer4TDwIO4qG+Y0P8XHK3qdqAefE1gHhEmjQzdQpID0eaNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ck1p6XqPfusgmuaBAVqZx8GlxZVt0GPBRyCERPu2apU=;
 b=A2x6OTGVmkBbWN0cAdNyNq9h58m+thSS0kgXsNvbQSC4CzSKBfjQaf8XbALVbpFAXQgLWVKOhGRay0vmQPTWSzHGslwLZ+JPnMUAYLkaUxUylrdLEMIDbflV5eBVv2OvjXAhVOdyPGWFFaPN9anW1f/FtnrbzGPtUIyJanuccSU=
Received: from MWHPR11MB1373.namprd11.prod.outlook.com (10.169.234.141) by
 MWHPR11MB1950.namprd11.prod.outlook.com (10.175.55.16) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.15; Fri, 9 Aug 2019 18:25:18 +0000
Received: from MWHPR11MB1373.namprd11.prod.outlook.com
 ([fe80::480d:becc:c567:3336]) by MWHPR11MB1373.namprd11.prod.outlook.com
 ([fe80::480d:becc:c567:3336%2]) with mapi id 15.20.2157.020; Fri, 9 Aug 2019
 18:25:18 +0000
From: <Adham.Abozaeid@microchip.com>
To: <linux-wireless@vger.kernel.org>
Subject: [PATCH v2 0/2] staging: wilc1000: Don't reset WILC CPU disgracefully
Thread-Topic: [PATCH v2 0/2] staging: wilc1000: Don't reset WILC CPU
 disgracefully
Thread-Index: AQHVTt/L8OaU1ofoE0SrYS2COlqAQQ==
Date: Fri, 9 Aug 2019 18:25:17 +0000
Message-ID: <20190809182510.22443-1-adham.abozaeid@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [198.175.253.81]
x-clientproxiedby: BYAPR02CA0035.namprd02.prod.outlook.com
 (2603:10b6:a02:ee::48) To MWHPR11MB1373.namprd11.prod.outlook.com
 (2603:10b6:300:25::13)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d35118bf-0dc9-48b4-3143-08d71cf6edf8
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MWHPR11MB1950; 
x-ms-traffictypediagnostic: MWHPR11MB1950:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB195010C37EA914AFFE24ACE88DD60@MWHPR11MB1950.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3173;
x-forefront-prvs: 01244308DF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(346002)(39860400002)(366004)(396003)(376002)(199004)(189003)(5660300002)(6486002)(71200400001)(5640700003)(186003)(6436002)(26005)(66066001)(2351001)(107886003)(6512007)(53936002)(50226002)(1076003)(54906003)(7736002)(2906002)(86362001)(386003)(2501003)(71190400001)(305945005)(8676002)(4744005)(6506007)(14454004)(2616005)(476003)(14444005)(256004)(99286004)(6116002)(3846002)(486006)(64756008)(66556008)(66946007)(52116002)(66446008)(66476007)(81156014)(81166006)(6916009)(8936002)(4326008)(316002)(25786009)(102836004)(36756003)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR11MB1950;
 H:MWHPR11MB1373.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ar/I1TolaHv4OtrNDQuOn5v8sZHGS6MTFFk4csDVA6eSnaaWjIcAGUN4qbvZXSdmet5KbfdpqZGaag7KUOuutH2U3MrHPFBTE7bpQGDWPLl28LzVzjqx6MpuBnSGaqbarfPpgzvn5AtqgWFoP2idfEwxf+XLZAv+I64jIw8dCPpiI4ank72T3i/1kSRqfkEJs6/nOmuzp8ahjZC7OwB2I8DqDXhm3folxQKoD+2FoW8eO2RBcFbMOdOQoefMJh8eRdrP/1opQl/VSIMaWM0P7RlFfyvT4uLd0TOSGkmTI3KwZHoUybtNE9EFNXs7tp9xvwN/YAXkE6DBQ9dVWRpV5AG6XIsdz7ukwABVFYeCG5oll/UM6RpLgqWQ2L0GGO2l8ATn6EX+p1nDuMba+vt4HV3dFTp3ka/J6TlktauKfBU=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: d35118bf-0dc9-48b4-3143-08d71cf6edf8
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Aug 2019 18:25:17.8151 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ocN1NJ01fgBqlQXz4T0KNATdjF+UahF9kThs1+UaI5hF5f7Fu8VKahNKCoMwpF492Z4iheOx11yLIRs1MUer3yiKr/QgmJ6aqsBLHWDhG2I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1950
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

This patch series modifies wilc_wlan_stop to send an abort request to
wilc instead of disgracefully resetting its CPU.

changes sinces v1:
- return kernel error codes from wilc_wlan_stop
- added missing checks for bus operations

Adham Abozaeid (2):
  staging: wilc1000: Don't reset WILC CPU disgracefully
  staging: wilc1000: return kernel error codes from wilc_wlan_stop

 drivers/staging/wilc1000/wilc_netdev.c |  4 +-
 drivers/staging/wilc1000/wilc_wlan.c   | 81 +++++++-------------------
 drivers/staging/wilc1000/wilc_wlan.h   |  5 +-
 3 files changed, 27 insertions(+), 63 deletions(-)

-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
