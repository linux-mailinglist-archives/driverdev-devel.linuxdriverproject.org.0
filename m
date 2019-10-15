Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 09529D72BD
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Oct 2019 12:04:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3AD90864E5;
	Tue, 15 Oct 2019 10:04:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DCDs76Vvi53y; Tue, 15 Oct 2019 10:04:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1E4BE85CA1;
	Tue, 15 Oct 2019 10:04:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 366C21BF271
 for <devel@linuxdriverproject.org>; Tue, 15 Oct 2019 10:04:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 313438543B
 for <devel@linuxdriverproject.org>; Tue, 15 Oct 2019 10:04:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j0HTAvEe8gSd for <devel@linuxdriverproject.org>;
 Tue, 15 Oct 2019 10:04:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (mail-eopbgr770118.outbound.protection.outlook.com [40.107.77.118])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6C10284EA0
 for <devel@driverdev.osuosl.org>; Tue, 15 Oct 2019 10:04:07 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IXsaXeq1pnSkldjoD6f0uh7WPyTG0oN0pjxNhnUyFklLu1A76n6f7lpggsf4H3vFelUTMmF2sBg6blMf7hDi6u0Ewdt4IDfJxsU9cWhLTYTLSrXD7uv3/vxbcerklG3l/K/IbSoSjLy7V1P855mS/E8dcVIRmAM7RDDR0GQRa11uTO9zdQWsLA2MSw7xB8xO2HaEZWxVFCdQh8RwNIpy+dDee6JTaWaeebSuP6A4re5yQCHbP/znJn8+NaBvXZz2YA7D5Mas7rkdmn1SFQKbID/AwbzP3Jgs529cmBGyW87+k6dr9tEDZZVk80Rdt/qIh55sgdceJg5r601r+ENYqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CJmmb3/kA02j2b/YZsJKMMSbVVYCPaCWWFTYRzx8AwM=;
 b=Qa1a4rDz+aQIf4/Th2e6v+A32YhwXZrwv5E5eXHpP62UpVdg+GG9c0D+vGm02wr6CqxXqiLZFNekUR+tIB2epEWrNGpaS+yB3UXyzqCJJ64w7yqBeL5RRSB5V3Ufa/yScOG0q29x4B1XADzi6Tscue376KhLBCrSl6NHMOPPWawO/D6Kjb1rBTqE3ub5Pv+wgQz3jfm2r7UAOJh8UT7BIma5r+0UXA03kXACrEni/0aBjYIgsjrU3fqZUht/PUicvEbUiPMEtjj8jo2ViDubeP+FAaWLtqZxb+TpMsovtvN2VW9rD1H+mA8tK0PsPYtpyaWswQl7664P1Gw3XNO1qg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analogixsemi.com; dmarc=pass action=none
 header.from=analogixsemi.com; dkim=pass header.d=analogixsemi.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Analogixsemi.onmicrosoft.com; s=selector2-Analogixsemi-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CJmmb3/kA02j2b/YZsJKMMSbVVYCPaCWWFTYRzx8AwM=;
 b=2vj5XJDst3icMCEqZJq8DnVT3nfH+wzjtwzakmkUoA1O2ObQxZ2FSVGNeqJGYE8yu0CuJmA07nGh1emjiCgNSTbJSdf0IGLNFYOFrHOTCv8+y91aKFASWSVKBMaTgfaP04zB6HVZO1RTBys+5aTX5gsYQIBogeKJeOzbLWUC1Pg=
Received: from SN6PR04MB4543.namprd04.prod.outlook.com (52.135.120.29) by
 SN6PR04MB5295.namprd04.prod.outlook.com (20.177.254.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.22; Tue, 15 Oct 2019 09:46:58 +0000
Received: from SN6PR04MB4543.namprd04.prod.outlook.com
 ([fe80::c55e:6c70:adbb:cf87]) by SN6PR04MB4543.namprd04.prod.outlook.com
 ([fe80::c55e:6c70:adbb:cf87%5]) with mapi id 15.20.2347.023; Tue, 15 Oct 2019
 09:46:58 +0000
From: Xin Ji <xji@analogixsemi.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>, Laurent
 Pinchart <laurent.pinchart@ideasonboard.com>, Andrzej Hajda
 <a.hajda@samsung.com>
Subject: [PATCH v3 0/2] Add initial support for slimport anx7625
Thread-Topic: [PATCH v3 0/2] Add initial support for slimport anx7625
Thread-Index: AQHVgz18ii85ZkKQDUisjYsNOX82Bg==
Date: Tue, 15 Oct 2019 09:46:57 +0000
Message-ID: <cover.1571132350.git.xji@analogixsemi.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR0102CA0069.eurprd01.prod.exchangelabs.com
 (2603:10a6:208::46) To SN6PR04MB4543.namprd04.prod.outlook.com
 (2603:10b6:805:a8::29)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=xji@analogixsemi.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [114.247.245.252]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d55dbdd8-6057-407c-060c-08d751549ea5
x-ms-traffictypediagnostic: SN6PR04MB5295:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR04MB529525E21321DA5E180F2AF8C7930@SN6PR04MB5295.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 01917B1794
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(199004)(189003)(53754006)(66066001)(6486002)(6436002)(107886003)(2906002)(4326008)(5660300002)(66946007)(66476007)(66556008)(64756008)(66446008)(6512007)(4744005)(2501003)(14454004)(7736002)(86362001)(110136005)(54906003)(498600001)(8676002)(8936002)(81156014)(81166006)(36756003)(7416002)(305945005)(99286004)(25786009)(71190400001)(71200400001)(3846002)(26005)(102836004)(2616005)(486006)(6116002)(186003)(52116002)(476003)(14444005)(256004)(6506007)(386003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB5295;
 H:SN6PR04MB4543.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: analogixsemi.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KIEwDS5kS6zsy/N6iTndnPlxXnN5CbhUNxjKxNI0iSP8pUZ9D3wd8lwjjcdzfsk4MrMWahppdH3oNE9Hm9/TIPr6wVr3zODxDHkq0SxhSfdzXMzjyDq9WAhNeN8KOyMKoUopOD3lA7T/HeB8ZyV7ZNDPj1aNmlF6nNmc9BY8z3E5q3UNPo7Xv/qymjkSRsQC4vgitj+yBRJVDgQbQy3GeEtdIyZMJLNSbU+8kVY8Rjhe/nT6XBNofIJ50ryrQLLNepvy4ZrR2Xnth88UR32/bNZBu6Q9GJZiUVSV5hCGUUzogEo50STuLeImsU0FNzRP+xU7575gdZtWwHbG3xD8xjvDoXTMFR9yVfe1BvpT6J6ipotoqb9ThY3sFsYfs08G9YgxYxJ96wO6FyJttFrvBw2OAb636x4Ug+IdBDztpoc=
Content-ID: <193F035F439A9A419DFB4141B728922D@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: analogixsemi.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d55dbdd8-6057-407c-060c-08d751549ea5
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Oct 2019 09:46:57.9360 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b099b0b4-f26c-4cf5-9a0f-d5be9acab205
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: y9Z4mjMpe/jcVqtvCuFWNXvq/R8gb2bcx+j7c9BZ0sm/2t/F0Rc/FUSWjHWi/+i21tjvoHv/AqQ/oJpy4h83mQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB5295
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

 .../bindings/display/bridge/anx7625.yaml           |   91 +
 drivers/gpu/drm/bridge/Makefile                    |    2 +-
 drivers/gpu/drm/bridge/analogix/Kconfig            |    6 +
 drivers/gpu/drm/bridge/analogix/Makefile           |    1 +
 drivers/gpu/drm/bridge/analogix/anx7625.c          | 2043 ++++++++++++++++++++
 drivers/gpu/drm/bridge/analogix/anx7625.h          |  406 ++++
 6 files changed, 2548 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/anx7625.yaml
 create mode 100644 drivers/gpu/drm/bridge/analogix/anx7625.c
 create mode 100644 drivers/gpu/drm/bridge/analogix/anx7625.h

-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
