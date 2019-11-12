Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C474F88B5
	for <lists+driverdev-devel@lfdr.de>; Tue, 12 Nov 2019 07:47:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0EC8586141;
	Tue, 12 Nov 2019 06:47:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d0JwdfN35Dfm; Tue, 12 Nov 2019 06:47:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 684D185FC7;
	Tue, 12 Nov 2019 06:47:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A42381BF308
 for <devel@linuxdriverproject.org>; Tue, 12 Nov 2019 06:47:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A0D148627B
 for <devel@linuxdriverproject.org>; Tue, 12 Nov 2019 06:47:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qiEmryJocury for <devel@linuxdriverproject.org>;
 Tue, 12 Nov 2019 06:47:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM01-SN1-obe.outbound.protection.outlook.com
 (mail-eopbgr820123.outbound.protection.outlook.com [40.107.82.123])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 43F8886274
 for <devel@driverdev.osuosl.org>; Tue, 12 Nov 2019 06:47:25 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ic9LVJdQVfvDOr5fw2TSQYYMKpBpcFFoY8JeuIC0Rle7cGF12GSGrXH7+miLJSDyrvbeAuHYcUaxA+s82lMo9234JTHCZOpbzb+3+rV0DuLVhbIdsHwkH1jnZqBnBjurvDUTBm3tsDU+01L8cDffjjK7cdT9rIxmIBnH8L982JSN6CwFXLiwtOvwHxPbeM3pZQmSva4IR7+JX3fH0LvWGMAokLQa/1iwnU9RjIceDlxidwu5mxS5wS4s3Lb1Yt7I6VHcVwHUT68+4v+Ze9wzljeIhRtM+0IQOTYVrf7+q9+JsZzSpLPXYyoO7a8BceZGB/BwVXqbgWxioDrXdpj2Ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6DvtEIlgHiZ3p8b7Of0Jjvzozu6ePAPPD1f8skNjvgk=;
 b=UID34PAFcoEokcz49XPjrjQZxkohMBGbJJWHpVb2v/aW2ofkhCMWedI78vovUwRqw6MbEYKrGFBXlQ7E/yjY9ZnEjwCi64hCzvD26Stzk+SfuIO9W2x+zwnUMLmnjilOtYX3CFivmvopoFH2xxNNq6wS0Je9hKjEUaUy54VW5/sCM1x9GuZ77mtqUtsjyj761NrYxUMYEpBOywLFWIDlqwQ6ppI3t1h99Bn/RSgCjxjsXY9p7ejknFe2jkIkmW6eWlp1ViGWuYwDblRnRZXwF1FXPGIX0f41sCdymQNrMpxpeytxPZgAZ9ULrBa0FOb6V+j0D/HxbYiHaVLErasAjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analogixsemi.com; dmarc=pass action=none
 header.from=analogixsemi.com; dkim=pass header.d=analogixsemi.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Analogixsemi.onmicrosoft.com; s=selector2-Analogixsemi-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6DvtEIlgHiZ3p8b7Of0Jjvzozu6ePAPPD1f8skNjvgk=;
 b=MILnKfgXSqfW8ojDo7TnhKLXa1QDIO52DlhtehrDZxlWDotQ6WiG8N7+EObvDGiNeztpSM1vLT9+4MP7NzXvfBhz5NGeaC9xUg5C3bBF39n/L0MZBra/Ou1sW49gTcQt/1N5dVq0cnPgAc6HY6xIrD84oH11sZvx7oTIHFEoXPY=
Received: from SN6PR04MB4543.namprd04.prod.outlook.com (52.135.120.29) by
 SN6PR04MB5424.namprd04.prod.outlook.com (20.177.254.32) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.25; Tue, 12 Nov 2019 06:32:16 +0000
Received: from SN6PR04MB4543.namprd04.prod.outlook.com
 ([fe80::859:2d31:1f00:fa16]) by SN6PR04MB4543.namprd04.prod.outlook.com
 ([fe80::859:2d31:1f00:fa16%5]) with mapi id 15.20.2430.027; Tue, 12 Nov 2019
 06:32:15 +0000
From: Xin Ji <xji@analogixsemi.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>, Laurent
 Pinchart <laurent.pinchart@ideasonboard.com>, Andrzej Hajda
 <a.hajda@samsung.com>
Subject: [PATCH v5 0/2] Add initial support for slimport anx7625
Thread-Topic: [PATCH v5 0/2] Add initial support for slimport anx7625
Thread-Index: AQHVmSLsP5Ss0Kn5Z0aTDg3uikCeVg==
Date: Tue, 12 Nov 2019 06:32:15 +0000
Message-ID: <cover.1573540100.git.xji@analogixsemi.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK0PR01CA0003.apcprd01.prod.exchangelabs.com
 (2603:1096:203:92::15) To SN6PR04MB4543.namprd04.prod.outlook.com
 (2603:10b6:805:a8::29)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=xji@analogixsemi.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [114.247.245.252]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 856406a7-a30e-4059-69fa-08d7673a0f2c
x-ms-traffictypediagnostic: SN6PR04MB5424:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR04MB542420731E0CB7956DA29201C7770@SN6PR04MB5424.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 021975AE46
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39840400004)(366004)(376002)(396003)(136003)(346002)(53754006)(199004)(189003)(6512007)(36756003)(7416002)(476003)(7736002)(486006)(2616005)(66066001)(81166006)(81156014)(26005)(4744005)(478600001)(305945005)(14454004)(8676002)(4326008)(8936002)(107886003)(66476007)(66556008)(25786009)(64756008)(66446008)(86362001)(6116002)(6436002)(256004)(3846002)(14444005)(66946007)(110136005)(71200400001)(71190400001)(186003)(5660300002)(2906002)(6506007)(386003)(316002)(102836004)(99286004)(6486002)(52116002)(54906003)(2501003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB5424;
 H:SN6PR04MB4543.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: analogixsemi.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /a3im8wrIg/FfdH6VVLozrQTnrpYFuu8Kb/atw8eXtgm7Cd0E0PtrTYG0Yt49fHRSMwFkQUM78oC0XK25CtWtBQ/blDC1bZ0SwfB0/JjMpXvxz6cuF9XE+xDF62N6brm4GRoWDyg2Ew/1HID0UJ2KDzCHNRSOox4x9WRH8Lt04wSfjTYra13cMwP5tFF6ye5oxIGnlaIIuaQ79wTDbvKab5CfJBF1kbf4rXIRjWipGgqvtCoCvKtaPNIyWzrAMMLWNjiXKUbUA9QFoGeiKsdfEaqMYSbzf6PrMEBLbawNwaarM6QrNeqIpltm1XddeYmQgo+upYeYRNI2k9lEusEnCPSVVMCeR4+fhfOjJV/qsQwwZOxLzw8sMEed3dpFuD5YBOTwO3hQe+3YytDA9dtZr2vHpGLifMLSeMXYtm79oW2pwAue7Ex/gruxTkspohi
Content-ID: <2FF7CC8B9914D04AADAF488FF6856BE9@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: analogixsemi.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 856406a7-a30e-4059-69fa-08d7673a0f2c
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Nov 2019 06:32:15.8566 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b099b0b4-f26c-4cf5-9a0f-d5be9acab205
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PtdMUHLvw9AFAy8jZIlbLI77VczzHwPBfHM3aW8w+P63zO909Ok7p+JDCqVGIduXRe+bHesyGUhU01FAs3254g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB5424
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
Cc: Jernej Skrabec <jernej.skrabec@siol.net>,
 Nicolas Boichat <drinkcat@chromium.org>, Pi-Hsun Shih <pihsun@chromium.org>,
 Jonas Karlman <jonas@kwiboo.se>, David Airlie <airlied@linux.ie>,
 Neil Armstrong <narmstrong@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Sheng Pan <span@analogixsemi.com>, Daniel Vetter <daniel@ffwll.ch>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi all,

The following series add initial support for the Slimport ANX7625 transmitter, a
ultra-low power Full-HD 4K MIPI to DP transmitter designed for portable device.

This is the initial version, any mistakes, please let me know, I will fix it in
the next series.

Thanks,
Xin


Xin Ji (2):
  dt-bindings: drm/bridge: anx7625: MIPI to DP transmitter binding
  drm/bridge: anx7625: Add anx7625 MIPI DSI/DPI to DP bridge driver

 .../bindings/display/bridge/anx7625.yaml           |   91 +
 drivers/gpu/drm/bridge/Makefile                    |    2 +-
 drivers/gpu/drm/bridge/analogix/Kconfig            |    6 +
 drivers/gpu/drm/bridge/analogix/Makefile           |    1 +
 drivers/gpu/drm/bridge/analogix/anx7625.c          | 2044 ++++++++++++++++++++
 drivers/gpu/drm/bridge/analogix/anx7625.h          |  406 ++++
 6 files changed, 2549 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/anx7625.yaml
 create mode 100644 drivers/gpu/drm/bridge/analogix/anx7625.c
 create mode 100644 drivers/gpu/drm/bridge/analogix/anx7625.h

-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
