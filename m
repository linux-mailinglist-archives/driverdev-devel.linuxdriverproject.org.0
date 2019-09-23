Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 132B9BB147
	for <lists+driverdev-devel@lfdr.de>; Mon, 23 Sep 2019 11:21:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4F43C2051E;
	Mon, 23 Sep 2019 09:21:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mgOTWQlQoEL5; Mon, 23 Sep 2019 09:21:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C3C2A2051A;
	Mon, 23 Sep 2019 09:21:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BF5321BF3DD
 for <devel@linuxdriverproject.org>; Mon, 23 Sep 2019 09:21:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B91FB20513
 for <devel@linuxdriverproject.org>; Mon, 23 Sep 2019 09:21:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pUZjROWaZxQ9 for <devel@linuxdriverproject.org>;
 Mon, 23 Sep 2019 09:21:18 +0000 (UTC)
X-Greylist: delayed 05:11:08 by SQLgrey-1.7.6
Received: from NAM02-BL2-obe.outbound.protection.outlook.com
 (mail-eopbgr750131.outbound.protection.outlook.com [40.107.75.131])
 by silver.osuosl.org (Postfix) with ESMTPS id 884E0203CC
 for <devel@driverdev.osuosl.org>; Mon, 23 Sep 2019 09:21:18 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n7OiEdVAj/Ah2hnl1WBRI1LXuTYa4CiK9l+deS8mzVd1Pi+8PjOutsEUgQjmCRVBa1jktLjj4VsuBiewpkUMjT8ob5U8EcD7j/SMVVvQt7WBJ4WAK52I9CgdEnN+DFgXWvUBSSykKBPDKpGIzq+ZLbsbQWaAHopTYI6B/9LpjadFqOpP/MIMohqL9UPxr6M4E84hXnvZsfCqEZJvhtFDNxT27SwRzZbEvUiYdBUch2dw8DBg8rgh2OZRZFn5xiU/5k0p47okRt3mYmJ1ZNkdgjhL945mVY0wI842RJdSeeha5ERujt41V4zL7M1tRSDNPR+SA+xLlAs6qzrBC29VfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UV0ml3WFUXu0uS2X/imI1vPjeOu2HMIMPSA8SnDvzjg=;
 b=Pm1Iv/Wh5EHOhNk7JI9Sq8lfVmmFqc/Vpw6Uh8c/txKVWXvg+Gi7xrTBZ5oQGRBErxObhWlzhi9gpKlgcT0uwbv+1iiaU1pTD/0+kOjNRSIdNMZGfYLYpy+WJWrxefqkQO8m4TUQbOnVDv0AmMFiFJLPwiuiNqMiYZc2i7iqRFJWQBV+by5ArFUYg8yoI22FNFc2+LvjpIXgdSXAZGI3VjaVVbxFQfa0LOnCaCSuxmZQyDGHZUAeuBfgskpAIffr3Puhi9rsoWW7B97bJzNHP1bOswtJ19G/g/GKLj612Smhr6rzzTxQin94vDcviBl3XC/PaIjQyRIz0SchYEdcFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analogixsemi.com; dmarc=pass action=none
 header.from=analogixsemi.com; dkim=pass header.d=analogixsemi.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Analogixsemi.onmicrosoft.com; s=selector2-Analogixsemi-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UV0ml3WFUXu0uS2X/imI1vPjeOu2HMIMPSA8SnDvzjg=;
 b=DNKcqyHY/LqJrK4+KsylpWTCM8/rp69AOTIzrQ/MZZMg6pBMjxePHz3IZe4FuZtw0aNdluUOaT8yt1btyjxtfRXSVCJmOSgupgbQfIkySfQyw16hrH7wmG6sibK6X/c7xJPQqVZHDPuItffBEPsvgPZZczl32HcTycv0i6sDEqk=
Received: from MN2PR04MB5886.namprd04.prod.outlook.com (20.179.22.213) by
 MN2PR04MB6079.namprd04.prod.outlook.com (20.178.247.161) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.26; Mon, 23 Sep 2019 09:06:09 +0000
Received: from MN2PR04MB5886.namprd04.prod.outlook.com
 ([fe80::8520:f80f:ae9:63cd]) by MN2PR04MB5886.namprd04.prod.outlook.com
 ([fe80::8520:f80f:ae9:63cd%6]) with mapi id 15.20.2284.023; Mon, 23 Sep 2019
 09:06:09 +0000
From: Xin Ji <xji@analogixsemi.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>, Laurent
 Pinchart <laurent.pinchart@ideasonboard.com>, Andrzej Hajda
 <a.hajda@samsung.com>
Subject: [PATCH v1 0/2] Add initial support for slimport anx7625
Thread-Topic: [PATCH v1 0/2] Add initial support for slimport anx7625
Thread-Index: AQHVce4jZalL2j3UqU21V4teaUNI/A==
Date: Mon, 23 Sep 2019 09:06:08 +0000
Message-ID: <cover.1569229197.git.xji@analogixsemi.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK0PR01CA0057.apcprd01.prod.exchangelabs.com
 (2603:1096:203:a6::21) To MN2PR04MB5886.namprd04.prod.outlook.com
 (2603:10b6:208:a3::21)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=xji@analogixsemi.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [114.247.245.252]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d5ccc297-ef6c-4c4a-a2a6-08d7400545e0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR04MB6079; 
x-ms-traffictypediagnostic: MN2PR04MB6079:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB607980494501E8A5ABE1C4DFC7850@MN2PR04MB6079.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0169092318
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39840400004)(346002)(136003)(396003)(376002)(366004)(189003)(199004)(53754006)(478600001)(66066001)(52116002)(26005)(6506007)(486006)(386003)(476003)(2616005)(71200400001)(2906002)(186003)(71190400001)(102836004)(256004)(14444005)(6116002)(86362001)(4744005)(316002)(2501003)(99286004)(14454004)(5660300002)(7416002)(6436002)(107886003)(66476007)(7736002)(305945005)(54906003)(3846002)(66556008)(64756008)(66446008)(8676002)(25786009)(81166006)(110136005)(36756003)(6512007)(66946007)(8936002)(81156014)(4326008)(6486002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6079;
 H:MN2PR04MB5886.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: analogixsemi.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: /bnwyN9I4U0LrmdCh75NG3lFHiorpsQeinkCtlr85NpbRvNSsMfjGVL7Ia3WOqb8KqPUPOxtNJNuGNKy1Y/+fN2ZVTbDAEvaqIU3N2nRiY6bVZ0CWH0Uzl1GvoegkoDBKF9ecwY6Ma4p33CDX4pnTC2beKD5bPiO0YBcsBf+bdbmZBaxKs3RIbhRv5VIwJr+esZYhuSofJXsmDE5LMbMrMlpgT182bHMrq6b4jEiI6sSEXPukK1Hp8nU3KQ6FXvR06jbmMguFDZ94bV7bQ88sSLBDqICwG/WsaevOxNewBJx/06pAhRvy1gzirz3kHkDaJcw1UZlF3T07RXPpjJaWU4ww4yeJkw/DT8SGt85qAHRLB2vw/ttceyzbii8eHiE3/H6DDIolu9TMkMnF25LxctlZQKloUVtTtyp6lR6po4=
Content-ID: <E0035C45673DBC429FCFC9688CFF8FB5@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: analogixsemi.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d5ccc297-ef6c-4c4a-a2a6-08d7400545e0
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2019 09:06:08.9777 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b099b0b4-f26c-4cf5-9a0f-d5be9acab205
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lFOw84XfZGbt4MdTjkXhjN4TI/3PcQlk0KpadEg19+sRaqihnftJIGv+b1hKpE/2N3CWF5vXeSZGM8DO0eORug==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6079
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
Cc: Jernej Skrabec <jernej.skrabec@siol.net>, Jonas Karlman <jonas@kwiboo.se>,
 David Airlie <airlied@linux.ie>, Neil Armstrong <narmstrong@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Sheng Pan <span@analogixsemi.com>, Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi all,

The following series add initial support for the Slimport ANX7625 transmitter, a
ultra-low power Full-HD 4K MIPI to DP transmitter designed for portable device.

This is the first version upload, any mistakes, please let me know, I will fix
it in the next series.

Thanks,
Xin


Xin Ji (2):
  dt-bindings: drm/bridge: anx7625: MIPI to DP transmitter binding
  drm/bridge: anx7625: Add anx7625 MIPI DSI/DPI to DP bridge driver

 .../bindings/display/bridge/anx7625.yaml           |   84 +
 drivers/gpu/drm/bridge/Makefile                    |    2 +-
 drivers/gpu/drm/bridge/analogix/Kconfig            |    6 +
 drivers/gpu/drm/bridge/analogix/Makefile           |    1 +
 drivers/gpu/drm/bridge/analogix/anx7625.c          | 2110 ++++++++++++++++++++
 drivers/gpu/drm/bridge/analogix/anx7625.h          |  405 ++++
 6 files changed, 2607 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/anx7625.yaml
 create mode 100644 drivers/gpu/drm/bridge/analogix/anx7625.c
 create mode 100644 drivers/gpu/drm/bridge/analogix/anx7625.h

-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
