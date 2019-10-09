Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F2BD7D0B88
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Oct 2019 11:41:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 903138671C;
	Wed,  9 Oct 2019 09:41:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vXZi0PLX0ZPQ; Wed,  9 Oct 2019 09:41:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2D0E7864E6;
	Wed,  9 Oct 2019 09:41:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 588151BF404
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 09:41:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 53AB285ECB
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 09:41:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Cm1oQSP2a3m8 for <devel@linuxdriverproject.org>;
 Wed,  9 Oct 2019 09:41:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM05-BY2-obe.outbound.protection.outlook.com
 (mail-eopbgr710097.outbound.protection.outlook.com [40.107.71.97])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 00F1E85E0D
 for <devel@driverdev.osuosl.org>; Wed,  9 Oct 2019 09:41:48 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DscEbjNDUiX9yCoT4Ut0AN+gbQ/Tqzzls3DdmYSty0qEPlx6tNQeBfm/z1/6ZGwJyKPWRAPRXGzedWY0F1WUpyt4iOX55d5hG2SqZak9pu8OaIqWC6y95ekXSJLaGBV1vOf/k8I2S6/OcqMs4pn15Re79vAKDy9c0etkEHOGrEzwtydd1nrDH9b3kCQT624zkEefuCIXvjJoy0H1OK3DS2S3EfxMHTEuZ40TzHVrSxFt8d6r5Rnqqcov1ERV2aEsKFdKfW28hmVaAK0HWxUOKSVjk0v4YgbkH1n8WtD7QKCHgSfkO3jKw17LnXsVx3Fmn/b3ZLyZYpAYo1KrzM/dQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2Wc3gziDxfcrKbVFHOuVjRqX4rV3mucuBugsEpDqPV0=;
 b=RIO4spvAVkS+PGDjHL/8bMecHAAXsetdMpV/rPHBqKxvyHYpEMuNXA1jBCQKk50Cw0F+49mPu1alPHfptFK4ajclHmAhgddd4GFjKCpV9KJivvFcBoA52z9WI/xy23RdwEOquOu2Fk4U8IJJ/WHOF+PASoRlYZs3nePHI/wJkPdxViQnEW1WJ9+CzZyPVoiRwzFCbUVbt3/Ne+AOfWKo6zfmhEtEGt1JgIfcOYtipHU81eNQCG5sug7xyAjiP7dooAtuHDWTZi5ka9UGN73B4XbeHdG7+frYsqbJu1+KA8Vlvh0uOTK4IwOB7TMl4A/6kQPl+1s4is01l6JFKnWXdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analogixsemi.com; dmarc=pass action=none
 header.from=analogixsemi.com; dkim=pass header.d=analogixsemi.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Analogixsemi.onmicrosoft.com; s=selector2-Analogixsemi-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2Wc3gziDxfcrKbVFHOuVjRqX4rV3mucuBugsEpDqPV0=;
 b=u6abLSXny0wbOW9HXGazwbUpa2UgFBSihIuitdjmY8VflkqoPRn8Yb61Yu0FrzETmGpReab20yI49Hny+ZCgr4ezcRJN1V6AP4alST9tvxbteE3d2SdjUF88oILLucJDiynlyDFDox/5HoZhVIzv8RhqZyrDbL0F/ja8RXgZ1AU=
Received: from SN6PR04MB4543.namprd04.prod.outlook.com (52.135.120.29) by
 SN6PR04MB4189.namprd04.prod.outlook.com (52.135.71.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2327.24; Wed, 9 Oct 2019 09:26:04 +0000
Received: from SN6PR04MB4543.namprd04.prod.outlook.com
 ([fe80::c55e:6c70:adbb:cf87]) by SN6PR04MB4543.namprd04.prod.outlook.com
 ([fe80::c55e:6c70:adbb:cf87%5]) with mapi id 15.20.2347.016; Wed, 9 Oct 2019
 09:26:04 +0000
From: Xin Ji <xji@analogixsemi.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>, Laurent
 Pinchart <laurent.pinchart@ideasonboard.com>, Andrzej Hajda
 <a.hajda@samsung.com>
Subject: [PATCH v2 0/2] Add initial support for slimport anx7625
Thread-Topic: [PATCH v2 0/2] Add initial support for slimport anx7625
Thread-Index: AQHVfoOS3d9g7hjY1EGIP5Au1gAgGw==
Date: Wed, 9 Oct 2019 09:26:03 +0000
Message-ID: <cover.1570588741.git.xji@analogixsemi.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK0PR03CA0078.apcprd03.prod.outlook.com
 (2603:1096:203:72::18) To SN6PR04MB4543.namprd04.prod.outlook.com
 (2603:10b6:805:a8::29)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=xji@analogixsemi.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [114.247.245.252]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 425c2daa-e794-4980-ec94-08d74c9ab4c1
x-ms-traffictypediagnostic: SN6PR04MB4189:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR04MB4189290DFA1D7EC90293ACE7C7950@SN6PR04MB4189.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 018577E36E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(376002)(39850400004)(346002)(396003)(136003)(53754006)(199004)(189003)(478600001)(64756008)(66476007)(486006)(26005)(66946007)(66556008)(66446008)(2906002)(186003)(86362001)(2616005)(476003)(52116002)(7736002)(66066001)(71200400001)(71190400001)(99286004)(305945005)(54906003)(6486002)(14444005)(6436002)(8676002)(25786009)(7416002)(81156014)(81166006)(8936002)(107886003)(6512007)(102836004)(14454004)(316002)(4744005)(5660300002)(386003)(6506007)(110136005)(3846002)(4326008)(6116002)(36756003)(2501003)(256004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB4189;
 H:SN6PR04MB4543.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: analogixsemi.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ukp2VV6yRjtGBvbfeaq39mPNB1GIHac1P5wVSgASUoFYkcpObtAbONlU1y6DPzm5sLFMYwqvkeph4awJUCHYHi0qg+a9f1nSR9uSK3Vxxdyjc/r0ajOu7rIN6ziiiqIY96cpA5RI+LsZybzdMtCaL63Wyy38j/FusydnbW84kBAcQhiLZz89Cu+VUwe7HNopEurhKFnTt0fuIyluyx5C5Btw3brxak1AInXpS5xOmMn5kgqE48SqXVwPPjQrdgxwS3jHcdm/Fqol1nuvTXRKFV34xVr7gEeuDosfpjkaqq94nCa9QJlG+AtBcdMTaSrLcqufqDi9wtsVH5yAIclBsn+rNY0fKmJSdpeP10UjKm80l18NlRlsWMSaBaZzw+rvmr9A+iJxWZv4v+Dz/l+oy9bv4LL47a+ShrvL09YqtEA=
Content-ID: <9EF0647850BBBD43A19B70FC675983C9@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: analogixsemi.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 425c2daa-e794-4980-ec94-08d74c9ab4c1
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2019 09:26:03.9375 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b099b0b4-f26c-4cf5-9a0f-d5be9acab205
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8XexzTBX5aV6NxcIJaQxcaF7InDMHCXUsu4MvtESIfjcInPd9At+2cOP8i2neQoEVHGZFO5zujKprjwGZWkThQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4189
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
 Nicolas Boichat <drinkcat@chromium.org>, Jonas Karlman <jonas@kwiboo.se>,
 David Airlie <airlied@linux.ie>, Neil Armstrong <narmstrong@baylibre.com>,
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

 .../bindings/display/bridge/anx7625.yaml           |   79 +
 drivers/gpu/drm/bridge/Makefile                    |    2 +-
 drivers/gpu/drm/bridge/analogix/Kconfig            |    6 +
 drivers/gpu/drm/bridge/analogix/Makefile           |    1 +
 drivers/gpu/drm/bridge/analogix/anx7625.c          | 2132 ++++++++++++++++++++
 drivers/gpu/drm/bridge/analogix/anx7625.h          |  405 ++++
 6 files changed, 2624 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/anx7625.yaml
 create mode 100644 drivers/gpu/drm/bridge/analogix/anx7625.c
 create mode 100644 drivers/gpu/drm/bridge/analogix/anx7625.h

-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
