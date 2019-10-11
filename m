Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AACDED3778
	for <lists+driverdev-devel@lfdr.de>; Fri, 11 Oct 2019 04:21:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E70E6887F6;
	Fri, 11 Oct 2019 02:20:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d-T0nRj8QSFk; Fri, 11 Oct 2019 02:20:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D62D8887D9;
	Fri, 11 Oct 2019 02:20:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AFCE01BF325
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 02:20:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AB62B2040A
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 02:20:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3GfyLWZVuddT for <devel@linuxdriverproject.org>;
 Fri, 11 Oct 2019 02:20:52 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM05-BY2-obe.outbound.protection.outlook.com
 (mail-eopbgr710132.outbound.protection.outlook.com [40.107.71.132])
 by silver.osuosl.org (Postfix) with ESMTPS id 80C032039C
 for <devel@driverdev.osuosl.org>; Fri, 11 Oct 2019 02:20:52 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iL7N9KvR3x+bPAk1ypVssu3ryKMTwEhvYx3SW2l/g0gbQXse/piOnSWXpEZ0F1lWIqUSOOJcsxhlhhBRJHgbrUqwHR50PBZW38Uu7egZwiZbuZK+9dojEuuQMR87kZpHW/wxj+Ggg+Hn0PD2x7nVw8zJgZT9+b5pCX7GeYxXOBA+rFsyk/eV8uE6QUaqU1wUiKguY4f7OiJ6GLOtJoJWE/dH1tItL0t4QyO1n0Yh0HdbPx3wiZVTBPyQdd9rQ7SZHM+q8B5kHHQe+ZODA5RQia66ax3NOZ891Vl818NA75zZnMLcdD6lOSNl+b9GTNYetcCFzvzIIhVjJFAmSM8bAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NHyq6jPSnI3Q7t6UjAazwtWrFaHkWqcxqChtflfqr/c=;
 b=cLKjmeZBM+/YYGBQIJ2oow29N0Q5V24wCILe+HWKAbHGkvVPvuiN36VTdpF0mJcywpYN5IKNye2rubXS49G4kuJG48TZeURRuonypNZjRXBRbmEcqGGpmv8OL2MW9o2qqbB3ajMHprNKwCKCMW7kmf5tao3fEcLopfJd4gFVJZzlVEhHjwd1DSuFDnS978crv0Wjd41lB8D4cHaAG2N2Y2Y2um0E1i5tCAR1Toz57tI3ArdRTta3jhX1hIYyVsHe5cJvWv/EAe0Hip17MT2Y+XbQq+Sy0UK5gkNTLcAdmMJYaa+5n3fRZnUEnuq6lWaXN7Q8Ouwt8dOn+jLxgfRQNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analogixsemi.com; dmarc=pass action=none
 header.from=analogixsemi.com; dkim=pass header.d=analogixsemi.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Analogixsemi.onmicrosoft.com; s=selector2-Analogixsemi-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NHyq6jPSnI3Q7t6UjAazwtWrFaHkWqcxqChtflfqr/c=;
 b=DwQaCySnvyPwhoYI9RAv0VngeqeSAchFjuhuVjlwMNjAJ0/e5c+15tmdJjQS7I6Ej/xB1EOqq6X3xVtnn0X+F/dhDhRu03HGZFRRfSvcrAq62qDnAxtNok8PnHnTG4YkfRMuNRc8qxfNbo/6A03p3+tq9OP575YOYqWL2LUP9Eo=
Received: from BL0PR04MB4532.namprd04.prod.outlook.com (10.167.181.144) by
 BL0PR04MB4610.namprd04.prod.outlook.com (10.167.241.218) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2327.24; Fri, 11 Oct 2019 02:20:48 +0000
Received: from BL0PR04MB4532.namprd04.prod.outlook.com
 ([fe80::c184:37a4:7e6e:aa42]) by BL0PR04MB4532.namprd04.prod.outlook.com
 ([fe80::c184:37a4:7e6e:aa42%7]) with mapi id 15.20.2347.016; Fri, 11 Oct 2019
 02:20:48 +0000
From: Xin Ji <xji@analogixsemi.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>, Laurent
 Pinchart <laurent.pinchart@ideasonboard.com>, Andrzej Hajda
 <a.hajda@samsung.com>
Subject: [PATCH v2 0/2] Add initial support for slimport anx7625
Thread-Topic: [PATCH v2 0/2] Add initial support for slimport anx7625
Thread-Index: AQHVf9p+5jx9EdYoKE6ltb5FxvHRTQ==
Date: Fri, 11 Oct 2019 02:20:47 +0000
Message-ID: <cover.1570760115.git.xji@analogixsemi.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK2PR06CA0005.apcprd06.prod.outlook.com
 (2603:1096:202:2e::17) To BL0PR04MB4532.namprd04.prod.outlook.com
 (2603:10b6:208:4f::16)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=xji@analogixsemi.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [114.247.245.252]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a546111e-88bf-432c-cac5-08d74df1a0be
x-ms-traffictypediagnostic: BL0PR04MB4610:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BL0PR04MB4610F8B70853CBEB74A61EE1C7970@BL0PR04MB4610.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0187F3EA14
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(39850400004)(136003)(346002)(396003)(366004)(53754006)(189003)(199004)(99286004)(14444005)(14454004)(36756003)(256004)(26005)(7416002)(6506007)(386003)(71190400001)(86362001)(102836004)(186003)(25786009)(71200400001)(316002)(110136005)(7736002)(52116002)(305945005)(478600001)(54906003)(2906002)(66946007)(66476007)(6436002)(66066001)(486006)(6116002)(81156014)(3846002)(66556008)(107886003)(66446008)(8676002)(4326008)(81166006)(8936002)(6512007)(6486002)(5660300002)(4744005)(64756008)(476003)(2501003)(2616005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR04MB4610;
 H:BL0PR04MB4532.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: analogixsemi.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9rZ1uZQb2Fjcj8bBx46Kr4wAAT9INkFV1JbQq0QaDtMt/444mVVxRjUUrp0qDYiKX0Ofgd60rx+vhIkQFvFYJDbvZKatl+VRztup5cpnsyGTQZur/caaQ90KP8KaW9r9AD63FO40cL4UXZ9jWxyeGs332hkDMk87ThQNAWRGdDkWO08dN4RlQHCOxjpXccjZTYWx5jkPUH+GBFm5w6nXVjFPxf7+L4+B3FbjasrsLOowQGDARigP0l8GZl5wEHKAEkA/ucmmSxAzC4SBV5Yn62A+JY5cTD+gjAwXrk2hCTLRg4VnbJBKwFnawMKabNnqOt/CJbRpIkY8kM17QJ/tQIWb4zkHIVrn7bgLUNu/ciXF4N+f0BWeSUA1K5DxMRQkakqYcMyt8w3SFdCgylp0tojF/LCvIyOzF71RcYzi6ls=
Content-ID: <7CFBB42D03731041B4A459D1B92C23F8@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: analogixsemi.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a546111e-88bf-432c-cac5-08d74df1a0be
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Oct 2019 02:20:48.0367 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b099b0b4-f26c-4cf5-9a0f-d5be9acab205
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BRMQxpSnCTyNZaiaOS/FqUwomhLb8NBo/j7JojUlROs+Lw0sEJieirq6HGdtzbb2p1h+gLDHVhriKih7smS83w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR04MB4610
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
 drivers/gpu/drm/bridge/analogix/anx7625.c          | 2153 ++++++++++++++++++++
 drivers/gpu/drm/bridge/analogix/anx7625.h          |  406 ++++
 6 files changed, 2663 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/anx7625.yaml
 create mode 100644 drivers/gpu/drm/bridge/analogix/anx7625.c
 create mode 100644 drivers/gpu/drm/bridge/analogix/anx7625.h

-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
