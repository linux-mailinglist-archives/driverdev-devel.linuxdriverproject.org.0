Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3286B10D23B
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 Nov 2019 09:07:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D178223042;
	Fri, 29 Nov 2019 08:07:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DZZrOtXVIfhy; Fri, 29 Nov 2019 08:07:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3E18F22DB0;
	Fri, 29 Nov 2019 08:06:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 798501BF37A
 for <devel@linuxdriverproject.org>; Fri, 29 Nov 2019 08:06:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7138485A1D
 for <devel@linuxdriverproject.org>; Fri, 29 Nov 2019 08:06:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6nzDuEKJtVZG for <devel@linuxdriverproject.org>;
 Fri, 29 Nov 2019 08:06:52 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM02-BL2-obe.outbound.protection.outlook.com
 (mail-eopbgr750135.outbound.protection.outlook.com [40.107.75.135])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 54F4188393
 for <devel@driverdev.osuosl.org>; Fri, 29 Nov 2019 08:06:20 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ly9zSB4+6FfSAo0nziRyzMLZgvLawekcWLPk8l1zg+PuXb6e3E4QJD1cPPxuRm2hhROo/yJLuzfN624plRvs/s/WaimXho+mqXtyOBWh8hZVPwraXy+KBpFJ4Bwerb4ke2D9p4bz9XTN2S1RN0t+91wseogXCbE9QN1D8cbRXWlviqdCmJNsJNqNCEK6tk8ICYbWwBCh+iVH3cbHdZ4X4qrLiRETT2nM7svBdPJr/rS4J2TX/3/bYrXBZEK0LRgXd4JdePzBjxMWBlfu/Tz+jX35CQVUTf1sjVJ461y3snQZCwaTAGCWHmc16ph0Ha/qjCLrMduVlPSfY0mm/iZScg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8ocwY7jUImb73dHFcnoJ1qreY5kUL2+B/XaKc7mmmWk=;
 b=NacCFfDyNSjWBc1U/VZ+LPDcHVvhUIgFUsbgWkfvt+T9VOGXYVgtE1GlCEaUvcupC+PLxScObT9+quKfS9rLWfKD/HUG/d9pLdaaupJOU/a0dCECgP6AWwXxgvjYQUz9fdrPoYpPtewcFsZKuoESxt2qoUuJYadyHlB8FPqKeQ+uYBFFa+RdnPR83IYcuOUU9D4E/7vr7A15PguR5TPfHcZBJJUfZN8MGeSpEZGoGyh3tO6ZC3oghqEFEFAs9ZlJexEXoppQvEDj8ADKNMY5p2vbcwYZlK46nzv8VuCPxW8NNQ1JYHgsgpkFb57QenGcHW4MFBVTcTfIk5kq8Cr/Gw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analogixsemi.com; dmarc=pass action=none
 header.from=analogixsemi.com; dkim=pass header.d=analogixsemi.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Analogixsemi.onmicrosoft.com; s=selector2-Analogixsemi-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8ocwY7jUImb73dHFcnoJ1qreY5kUL2+B/XaKc7mmmWk=;
 b=pC2KgzZQyk0rxBxPl54qv2kyHWujGfQBm1N7waFvU620B3cpy5sp2Pv+vj40WQvaBzulTC4eefuHmrLUy865lCPg9/XYBty5hiUkJlq1w979+l2er5gDNWhrGpSCMRIfw7G7UgeQkcyuDj4617ycVoWlDcKVo0XJ7vyZhU/e228=
Received: from SN6PR04MB4543.namprd04.prod.outlook.com (52.135.120.29) by
 SN6PR04MB4797.namprd04.prod.outlook.com (52.135.122.155) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.17; Fri, 29 Nov 2019 07:33:09 +0000
Received: from SN6PR04MB4543.namprd04.prod.outlook.com
 ([fe80::859:2d31:1f00:fa16]) by SN6PR04MB4543.namprd04.prod.outlook.com
 ([fe80::859:2d31:1f00:fa16%5]) with mapi id 15.20.2495.014; Fri, 29 Nov 2019
 07:33:09 +0000
From: Xin Ji <xji@analogixsemi.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>, Laurent
 Pinchart <laurent.pinchart@ideasonboard.com>, Andrzej Hajda
 <a.hajda@samsung.com>
Subject: [PATCH v6 0/2] Add initial support for slimport anx7625
Thread-Topic: [PATCH v6 0/2] Add initial support for slimport anx7625
Thread-Index: AQHVpoc//3WpIikmj0meCH7ldBT85A==
Date: Fri, 29 Nov 2019 07:33:09 +0000
Message-ID: <cover.1575012508.git.xji@analogixsemi.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK2PR02CA0210.apcprd02.prod.outlook.com
 (2603:1096:201:20::22) To SN6PR04MB4543.namprd04.prod.outlook.com
 (2603:10b6:805:a8::29)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=xji@analogixsemi.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [114.247.245.252]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d3c182b5-fa71-40fb-8cf3-08d7749e61d8
x-ms-traffictypediagnostic: SN6PR04MB4797:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR04MB4797A47E97D587AD511E6240C7460@SN6PR04MB4797.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0236114672
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(366004)(39840400004)(396003)(136003)(376002)(189003)(199004)(53754006)(2906002)(6486002)(5660300002)(186003)(4744005)(7736002)(25786009)(71190400001)(71200400001)(3846002)(52116002)(107886003)(305945005)(6116002)(86362001)(4326008)(6436002)(14454004)(8936002)(6512007)(478600001)(54906003)(64756008)(66476007)(81156014)(26005)(2501003)(316002)(2616005)(36756003)(66066001)(99286004)(66946007)(8676002)(256004)(386003)(102836004)(110136005)(66446008)(81166006)(66556008)(14444005)(6506007)(7416002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB4797;
 H:SN6PR04MB4543.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:3; A:1; 
received-spf: None (protection.outlook.com: analogixsemi.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: T9Zmx6V5NgwP1RYBV960y76qwbiYo6x2eYAa1qMyCQo4Mqj1QRmP0NOl169LgoiG7DSObWDXMJCaAZPXBkHBJxIj9EWFa3m5y2+yOpkpgNOfExVILL7kKZ6ItkybCcRTvBaZVE6TGi63nq1GTwimChG9vPQs6KOzV5wstT2I9kkvDx6Jmq1hGPajZhuZpGTWKMNFOswHlfUFW2MLP2iQZsvDRahgNeSxScU+VGIHFbIeSbSvK5cy/KGlpzPeTgPMvuU1WHQpl7mqmkXvTkDvfINGlkeXBbBRrmsJU9wuOFoGt9uCvUSvCCtdGk1EsjerLWGAF6MB7/uNyPgzfxuI9GJiAoorbeiSZVZ6D65hAXMQaPqcwAnMsRYmk4Jknkmk7A9xhSICl28uN4YuKN1zS/kOG1S5wug6oGDpeB1p9nd6N+lkScWvP1rDArUkFHg4
Content-ID: <589DDECA5ECACF4A82C81F35E22CE50C@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: analogixsemi.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d3c182b5-fa71-40fb-8cf3-08d7749e61d8
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Nov 2019 07:33:09.3789 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b099b0b4-f26c-4cf5-9a0f-d5be9acab205
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: s4BvsIDBhsIV3gsjwDoW5WTdikq7dS9OIgQeQtgnc6tiOjDy8yLvdw+S8oa9szxSgciah20qQ3QAZt55i19Heg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4797
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
 drivers/gpu/drm/bridge/analogix/anx7625.c          | 2045 ++++++++++++++++++++
 drivers/gpu/drm/bridge/analogix/anx7625.h          |  406 ++++
 6 files changed, 2550 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/anx7625.yaml
 create mode 100644 drivers/gpu/drm/bridge/analogix/anx7625.c
 create mode 100644 drivers/gpu/drm/bridge/analogix/anx7625.h

-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
