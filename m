Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A53CF4B9A
	for <lists+driverdev-devel@lfdr.de>; Fri,  8 Nov 2019 13:32:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DA1A986A26;
	Fri,  8 Nov 2019 12:32:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qqiMZl4dDNBr; Fri,  8 Nov 2019 12:32:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 271728648E;
	Fri,  8 Nov 2019 12:32:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B77E91BF228
 for <devel@linuxdriverproject.org>; Fri,  8 Nov 2019 12:32:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B0892860C2
 for <devel@linuxdriverproject.org>; Fri,  8 Nov 2019 12:32:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b-qrDYR_WLpU for <devel@linuxdriverproject.org>;
 Fri,  8 Nov 2019 12:32:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM03-CO1-obe.outbound.protection.outlook.com
 (mail-eopbgr790121.outbound.protection.outlook.com [40.107.79.121])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DA773860C0
 for <devel@driverdev.osuosl.org>; Fri,  8 Nov 2019 12:32:14 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jnIiw+bO66YeotkXTpkaOFzJ+AMXcf7Etn4WhT5zmoYrABEl2nYTsM0Ju3urlWS+Qp1XdqMqrkmDwur/qr2+3OW3BKvoOqwvPZMuajz60DCkEMs4uehqs8ArJNX7kQnysJ94LFHMNyzQQhqp5e8IpnQu/33/vFdO1gdNAyj49gsFmLxYIBLtjqbSWpp9Sj+xpHgR4H6DjPpwAdrM5ZjyliOUKkacL4LefHDmLu5h5dS3Tx74bW7yhBXutaXzE950DfM+fV1i49g+TpvcyKm68J5XYGO2RHe2Us+zXLDFyiKj1qbXphfgoOaQztdXibxKr0ZdB15yVPhY8JfTy414wQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sFjHGx+Kbi4l1RRILG6GNPCOWVs6nm9FnVIb1i+4AlI=;
 b=ku5Vh00EsLRBB95AD2XNDLXt3dpUOr6Aia7YRCXghLZnpHKyQ3BIASu+exGA6OsKjCBED2du/MgaBCZJo/1y3SPvGoPuy/g1dJ7J17tZZxWce2YMf9HP6Myt5AOmw/6KZf244aEbF9c0OGhivv75CReaijTa7CW0/+sNqNBvhw/Ez5/NALbMBo8zNYhTocGv1w0f++UKzwAns2sSrLdGUtzCcGHOhRpgKsA3hJpHLELJYcLyRs/RgEh0w+EztrzHCKHyhFx0tv8k5E91s0beHz5fFFplw1kJsn47ar/+8zJb0bRfx6vGQVoEHF7hhQYGomkiteNes7R/vifA0vRy0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analogixsemi.com; dmarc=pass action=none
 header.from=analogixsemi.com; dkim=pass header.d=analogixsemi.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Analogixsemi.onmicrosoft.com; s=selector2-Analogixsemi-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sFjHGx+Kbi4l1RRILG6GNPCOWVs6nm9FnVIb1i+4AlI=;
 b=mownslAcagLZSPAOYdRrYbvytNbTIY5XbAR5GTqIutPw1Bedj8COCetGrouMXlvpYq3iou+5VbqJKO6cNkyPC9uGXFSGUpxlHIGlPRg1AnfbvFyZs8nuq0wQzf03wfYLml1bwTZvIW/d/aRTDNi7mJ7Ja8F2WEfOwPLlZE1aLbA=
Received: from SN6PR04MB4543.namprd04.prod.outlook.com (52.135.120.29) by
 SN6PR04MB4942.namprd04.prod.outlook.com (52.135.114.87) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.20; Fri, 8 Nov 2019 08:58:33 +0000
Received: from SN6PR04MB4543.namprd04.prod.outlook.com
 ([fe80::859:2d31:1f00:fa16]) by SN6PR04MB4543.namprd04.prod.outlook.com
 ([fe80::859:2d31:1f00:fa16%5]) with mapi id 15.20.2430.023; Fri, 8 Nov 2019
 08:58:33 +0000
From: Xin Ji <xji@analogixsemi.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>, Laurent
 Pinchart <laurent.pinchart@ideasonboard.com>, Andrzej Hajda
 <a.hajda@samsung.com>
Subject: [PATCH v3 0/2] Add initial support for slimport anx7625
Thread-Topic: [PATCH v3 0/2] Add initial support for slimport anx7625
Thread-Index: AQHVlhKyDegwd7ihkkKNeWETzvlDsQ==
Date: Fri, 8 Nov 2019 08:58:32 +0000
Message-ID: <cover.1573203022.git.xji@analogixsemi.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK2PR02CA0136.apcprd02.prod.outlook.com
 (2603:1096:202:16::20) To SN6PR04MB4543.namprd04.prod.outlook.com
 (2603:10b6:805:a8::29)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=xji@analogixsemi.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [114.247.245.252]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4b7fcd43-e3f5-4cde-c833-08d76429d506
x-ms-traffictypediagnostic: SN6PR04MB4942:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR04MB49422FF7DB19E00A42F8834AC77B0@SN6PR04MB4942.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0215D7173F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(366004)(376002)(136003)(39840400004)(346002)(189003)(199004)(53754006)(71200400001)(256004)(2501003)(486006)(8676002)(54906003)(2906002)(6486002)(107886003)(6512007)(14444005)(6436002)(2616005)(4326008)(476003)(25786009)(102836004)(66066001)(8936002)(26005)(7416002)(52116002)(7736002)(66446008)(66476007)(66556008)(66946007)(99286004)(316002)(5660300002)(86362001)(71190400001)(186003)(36756003)(305945005)(386003)(81166006)(110136005)(81156014)(3846002)(6506007)(14454004)(4744005)(6116002)(64756008)(478600001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB4942;
 H:SN6PR04MB4543.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: analogixsemi.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yC6yXjseGYJDvZwI/86y2n+L8lhMNukUdLUNKL6zW2/dWOjVg9g5+tli/ecbTEinvx5QE0k3pSjwI35zII0zuHbL/IRrk+nAhIWhi/yqFTTp8Z3dzAnj5A6T3dW0KGhPceu5Ej/1qtECcu4Y/Nr6mXwxWpIZKb7XeHtBhHxDDjhCrJIsTUABEvO4mjCez7GiHm0/giqX8fV3RBlpLc3wVTgGg6qeLZnkwROefnKV1BHYlr6rS3O6VWpAXWqxiEZSatDMuuZJVuzSe4WvBFoIImN9XkZKgpO0quguSoa0alh1+30Z1lbGaYjLNOe3eke1KNW00+FCT8vqpZLqN8/608QKqH996bnKC/TSYTs/PySlO3oRdQoVgtUkkWFoEcXCONrwxe7KZRt/0152bz9xs8AZ5RTufHO5jrMEQbeyhVdVx1SITgTKZsp/2F57PnUv
Content-ID: <A34ACF29C0458440A376E7E65BEB7237@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: analogixsemi.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b7fcd43-e3f5-4cde-c833-08d76429d506
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Nov 2019 08:58:33.5727 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b099b0b4-f26c-4cf5-9a0f-d5be9acab205
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bldGUqKQtciGaVAl7woIAebFJbKso2XUttYXaumBVa4h7hBYBYimQO1ftF5EiCs1WdHHFbY9fcDaLD9fX/VYcQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4942
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
 drivers/gpu/drm/bridge/analogix/anx7625.c          | 2042 ++++++++++++++++++++
 drivers/gpu/drm/bridge/analogix/anx7625.h          |  406 ++++
 6 files changed, 2547 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/anx7625.yaml
 create mode 100644 drivers/gpu/drm/bridge/analogix/anx7625.c
 create mode 100644 drivers/gpu/drm/bridge/analogix/anx7625.h

-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
