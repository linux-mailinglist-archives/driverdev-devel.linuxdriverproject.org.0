Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D2F7D265D
	for <lists+driverdev-devel@lfdr.de>; Thu, 10 Oct 2019 11:32:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BBECA86BAD;
	Thu, 10 Oct 2019 09:31:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SI0fRmRgqvVt; Thu, 10 Oct 2019 09:31:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 89A3C86B8E;
	Thu, 10 Oct 2019 09:31:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A6BCA1BF3FC
 for <devel@linuxdriverproject.org>; Thu, 10 Oct 2019 09:31:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A2BAA20471
 for <devel@linuxdriverproject.org>; Thu, 10 Oct 2019 09:31:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id STFhbH0x5DRh for <devel@linuxdriverproject.org>;
 Thu, 10 Oct 2019 09:31:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (mail-eopbgr770098.outbound.protection.outlook.com [40.107.77.98])
 by silver.osuosl.org (Postfix) with ESMTPS id 1085920449
 for <devel@driverdev.osuosl.org>; Thu, 10 Oct 2019 09:31:53 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h+fjN8W0MF40MyMgExkDwXM5lg3OdWpYf37L8hswIqQfuWsN0ZZtAIeU6WpSOwXEIvTPKn7Q7mOywifU8gpDqUwEWjHaJ1jhE44VQXT/2Vxi52NqVcX4GJtuf7vjombfEbiXp+01JKNEQNvHH1tjbyUy4nJUiD5TPykbxeNElasgK44yz2sX3B4OxTIgYwqqQ1oy4jR4ndA6RAvvBWGzKJWmYZuouYkzpFRttUfIA5DGdvvusQRw5zxY0jiQhrjk151SUW8H1G5W4ULMNQXVFfH1p3RgBjMrraa7x3gHXO54XmbpOZ8/xmzZ/qehExF+vwfOeA2tEMEI7y5VchsdcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vMPvfG55FZUqtBg6uq+Nf2D/eTESknfNUSOnWMpsW5Q=;
 b=cKebEemjgleE1w6gd1wV4BstUQME1xUl69WR4k90PtpEvcTs3KjjPfxMGlG+AC5zkVlgHG4wrmuezkvJ5xXN1UqfeTPt+HEVBpOAho7i6sohw/8GDH5wX/mDpru8e0zCWo8aVm1Cgk8qOKunriPq0HZZdT340PmeRRPqQQLNe+zcpJKYEWgIT0qosaQAHxeS0HVrd2B5NvUJfyhnXX+kHe3llo4b7FXPQ00TMLtlP2WNC0/gEhJaUzLAaEMPLlh5ImEk8loBLU2zIIuyQ0NEtmeR9N96fdqFLiJYanYL8JDA6bOyEWNpP+i404dk/SFXXWtOsa63OaplDy+DuAlobg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analogixsemi.com; dmarc=pass action=none
 header.from=analogixsemi.com; dkim=pass header.d=analogixsemi.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Analogixsemi.onmicrosoft.com; s=selector2-Analogixsemi-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vMPvfG55FZUqtBg6uq+Nf2D/eTESknfNUSOnWMpsW5Q=;
 b=rukj2oPXM+SC/zcECLFaZhCtKf+I9PeJdBeIDOACb8kRGPs8VXyAYjqAP1K22+gpvxKURvboudwxfB4AfycjaO4vsC+UM9IHIslz0mbVjTc7fsNjmDozmMCDYl0sQmSD3JMzsUG6JX3RPqbCEWzAQ3T6IP0U+ier/fOeikQVkTE=
Received: from SN6PR04MB4543.namprd04.prod.outlook.com (52.135.120.29) by
 SN6PR04MB5374.namprd04.prod.outlook.com (20.178.6.216) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.18; Thu, 10 Oct 2019 09:31:51 +0000
Received: from SN6PR04MB4543.namprd04.prod.outlook.com
 ([fe80::c55e:6c70:adbb:cf87]) by SN6PR04MB4543.namprd04.prod.outlook.com
 ([fe80::c55e:6c70:adbb:cf87%5]) with mapi id 15.20.2347.016; Thu, 10 Oct 2019
 09:31:51 +0000
From: Xin Ji <xji@analogixsemi.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>, Laurent
 Pinchart <laurent.pinchart@ideasonboard.com>, Andrzej Hajda
 <a.hajda@samsung.com>
Subject: [PATCH v2 0/2] Add initial support for slimport anx7625
Thread-Topic: [PATCH v2 0/2] Add initial support for slimport anx7625
Thread-Index: AQHVf02Lgtx0676fOUSsX2pXrX7r4g==
Date: Thu, 10 Oct 2019 09:31:51 +0000
Message-ID: <cover.1570699576.git.xji@analogixsemi.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK0PR03CA0066.apcprd03.prod.outlook.com
 (2603:1096:203:52::30) To SN6PR04MB4543.namprd04.prod.outlook.com
 (2603:10b6:805:a8::29)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=xji@analogixsemi.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [114.247.245.252]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 593adf43-d261-42f0-e6ad-08d74d64ae1a
x-ms-traffictypediagnostic: SN6PR04MB5374:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR04MB53741CBB8E2E59BB3BF90C22C7940@SN6PR04MB5374.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 018632C080
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(366004)(39840400004)(136003)(346002)(376002)(199004)(53754006)(189003)(99286004)(4326008)(71200400001)(71190400001)(6506007)(14444005)(256004)(52116002)(386003)(316002)(305945005)(2906002)(7736002)(186003)(102836004)(478600001)(25786009)(26005)(14454004)(66066001)(8676002)(86362001)(6436002)(5660300002)(8936002)(2501003)(81166006)(81156014)(4744005)(6512007)(486006)(54906003)(110136005)(7416002)(6116002)(3846002)(2616005)(6486002)(476003)(66556008)(66946007)(66476007)(107886003)(64756008)(66446008)(36756003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB5374;
 H:SN6PR04MB4543.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: analogixsemi.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Lu9lPA8AdBRq+fzdpGE0KCtNyxe8Bs886wV+6yHDQuCrGyO6pCpRx+7LYDTVzeE1agMH+G99cvqK1Usv98T1/3z8kIkyF2SfZvPDZMRpkDar2k1OPLC4xXA0ZA2dd8BmCZXGzoj2aolujot1QXkTF6LoXbvVDpcVFmgz/Q09pVS4FPTvuz9i+BPAmv9otDixiuLb2WmY/KfvlYjbrkF98mIF7/zSGcSHOmeBQUihm53r1CvfrutCuY2HJ2fEm8fBsD018Ao+DrY3rEtitlXGVm9RPz2jHDmLnlMq63JkbZAAmiWDPOl58JrNWol4QnU/qeYPpfDAGlAPr8IDrf3Kx09R0R51pPIOkvHVbwJo/8xBmgVLzO9CDnrdoHQY2DCgon1NOBIsZEDI+ikjoStq8SaQnRDl+cYjQQMTmjolZaA=
Content-ID: <A0B40718F7C5ED4A8177B42D35AC70E0@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: analogixsemi.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 593adf43-d261-42f0-e6ad-08d74d64ae1a
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Oct 2019 09:31:51.0800 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b099b0b4-f26c-4cf5-9a0f-d5be9acab205
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PkcuvLzHXpJSZDQdjv1oAB78qcudGcsNPEN1Rm4gjVK+jddTuE0OCUcEBq4rnLi4Zg+OxKF1wGf9S3YUJdr7+A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB5374
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

 .../bindings/display/bridge/anx7625.yaml           |   96 +
 drivers/gpu/drm/bridge/Makefile                    |    2 +-
 drivers/gpu/drm/bridge/analogix/Kconfig            |    6 +
 drivers/gpu/drm/bridge/analogix/Makefile           |    1 +
 drivers/gpu/drm/bridge/analogix/anx7625.c          | 2155 ++++++++++++++++++++
 drivers/gpu/drm/bridge/analogix/anx7625.h          |  406 ++++
 6 files changed, 2665 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/anx7625.yaml
 create mode 100644 drivers/gpu/drm/bridge/analogix/anx7625.c
 create mode 100644 drivers/gpu/drm/bridge/analogix/anx7625.h

-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
