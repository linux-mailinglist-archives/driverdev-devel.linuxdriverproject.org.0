Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB6D209E8C
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Jun 2020 14:37:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A286B85D3F;
	Thu, 25 Jun 2020 12:37:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YXrjiDousJSu; Thu, 25 Jun 2020 12:37:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 56E9685E51;
	Thu, 25 Jun 2020 12:37:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A6C1F1BF409
 for <devel@linuxdriverproject.org>; Thu, 25 Jun 2020 12:37:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A051A8869B
 for <devel@linuxdriverproject.org>; Thu, 25 Jun 2020 12:37:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YvLrcrPwwfCf for <devel@linuxdriverproject.org>;
 Thu, 25 Jun 2020 12:37:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa2.microchip.iphmx.com (esa2.microchip.iphmx.com
 [68.232.149.84])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3736C88541
 for <devel@driverdev.osuosl.org>; Thu, 25 Jun 2020 12:37:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1593088646; x=1624624646;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=nPxx5dwbm7a0SMUQLWkncHi1BM2m1XL54OyFKs/vGmI=;
 b=0OH39vLvhNkpiyq+u6Mmkz58RaWfuwq5WCTL2BsD5nKJ5HxobWPn85vQ
 86s2V8Uv5CC+WCe9PnMdva/FzOBWmW+Y9fTfDxh6GACSwD16u1nrAjHco
 e/rhEVSq4W451UNz+TaDO7s7YTpMbXXTaTlpTE11R3sDUsLsYK1xQ5h0h
 NmUy/eXIrhkb5QFj9BsWRJ9LAFO4UwIreUdUadVJoj4DPhQgmpkIIMFfs
 o9AvVxjv+aay8IAlvQDb9y+avJ320ZoQ5xUWD8xGJR/mGe3NehnlF53VK
 EKW6twtD+qnmiCcc3wQxfeECPgLher8U2WgZY8pb7xH555ECwGvT8AzaI w==;
IronPort-SDR: x2udEtYASPFpNFbx0mFnZQQfqo/h2x8vNpLEpjvyMMv4vkZYPfofuevyTIJo8gI4V8LnpiElzq
 MFcLDr1+SyxZ4xOkvr5QSl8QHnlDYNxw7m/rcEcFXcqM69wdspQ+MTB0TuLlndwn98dTubmzSF
 q5pZFdSQ8syrh5sgKMvVl906R3lBDPhDAZIocY4IgPmBQxlbbsEJNVlc38NFv7EiIiUdk0z2vW
 PcD3c0UEno7wIJLBKEwUk3r5drf8f52DCTUDtGxT1Jk4t0kg49xqph/XMW1K3J6Tw2toc2fhNX
 v80=
X-IronPort-AV: E=Sophos;i="5.75,279,1589266800"; d="scan'208";a="79725040"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 25 Jun 2020 05:37:25 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Thu, 25 Jun 2020 05:37:25 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1979.3
 via Frontend Transport; Thu, 25 Jun 2020 05:37:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aJfKB1nf4fKyBnNxPoui4uWRfIqXpO33IwZr6jtnUYNpkyO2oB1iy3zGcc20xwiIrbXK7+REmwhVpqmoO6+EO2KBKUJf3OKOnLWh3nkQXykGyQnceoXeGHlyuuWrDzLlNYx0wNkc/S9WqhgheAMjafz/Qdz5BEfSzuy8gI1kmfjjtWW19rlpYVUW8mX+HR/nJRJ1MXko4f4OjzZtumeMG0SDEbPt/XK/s9d91PF45xX/ZDnlGLeeDsZ4MJs8T7e+ZGtaIF8CVQQVyJEABjkslp/gCSE3u0/vG9Gbx0KI8VfFCpmxg/zwr5Gky6QNhyEulVCed3W9kHObH6YnYb0jPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KxK37s+yMMw/SHj6Xo5wxxDEX5JwhMSTohXmevEco+c=;
 b=MSOMuF51zOw1sW6wFeO2QcVKKmnfEGAWvFUphhGZi3Wu/WwAk44b3LT3JV2c8jxpngAHcP8WPquQq571H9Oh4MYxuz3bSR2rlvD8taO08ZMS5diCwsIbA+ECe78AXwDHXWeFU4tYeJvwM3okSb/7pp0ygI7ZTYtDhMVytefvBvxZR3ISbTWEwEgM/hlrBy+m2EiqBvKFDtny1K3iVsM1WPr9pHwyucaAJVTKoLXjTTY9JAOGpXhxfcCj6I09yfHjxis3hjVzTuzDSJ7DzfG0MutpyXKN9N3B2UB4GilVWpfR97zt2tkwB9GK9jhVmLY9f91+OL1MoVGJIkoDm3UfjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KxK37s+yMMw/SHj6Xo5wxxDEX5JwhMSTohXmevEco+c=;
 b=Zw4E8wC7/lQtYEklqMAQBUs+pyrnkrN6zBEP+hwPsjn+pJIA1AVsmNdDb5q1YuUrC2GCqJBDnZEwQja8kmpF6iOIHr6xB1WHr19kZUsyLG68bteHZJbGjW0dL+6/6/W+nXQuItz1daYTVanUIgHcF+UaVqwHmvlDFor4fDOfb0o=
Received: from MN2PR11MB4030.namprd11.prod.outlook.com (2603:10b6:208:156::32)
 by MN2PR11MB3584.namprd11.prod.outlook.com (2603:10b6:208:ef::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.22; Thu, 25 Jun
 2020 12:37:23 +0000
Received: from MN2PR11MB4030.namprd11.prod.outlook.com
 ([fe80::3874:6ace:6aec:deed]) by MN2PR11MB4030.namprd11.prod.outlook.com
 ([fe80::3874:6ace:6aec:deed%7]) with mapi id 15.20.3109.027; Thu, 25 Jun 2020
 12:37:23 +0000
From: <Ajay.Kathat@microchip.com>
To: <linux-wireless@vger.kernel.org>
Subject: [PATCH] wilc1000: move wilc driver out of staging
Thread-Topic: [PATCH] wilc1000: move wilc driver out of staging
Thread-Index: AQHWSu1f9HixhD7k+UOCPxtNASiGMg==
Date: Thu, 25 Jun 2020 12:37:23 +0000
Message-ID: <20200625123712.14156-1-ajay.kathat@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
authentication-results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none
 header.from=microchip.com;
x-originating-ip: [49.207.200.183]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c01bfcf8-5398-4834-1d63-08d819048288
x-ms-traffictypediagnostic: MN2PR11MB3584:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB358490B345CD39FC5B0883EDE3920@MN2PR11MB3584.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:338;
x-forefront-prvs: 0445A82F82
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /azPHLy7csQgC37JuJEhwft77pNGAn4vFG+/YIBKVVro7C8WISZk1zkoB7YIVU/7VfkJmg/nxgpqSMW/qAHFNeki+dHbaEG8oRNi0R4ktaRmcx+aivvf4ixFiF0Ihp6SlZyJcFjxMlKzmhUQpfeJjUBsixY94tdiwwMcg9KKqeVcNb5IdT+yszN7CSESNVEJrPMMTupwtsFABOcGWsVKyiKy88IYHoiU0frwTB82CEQ/2jV1ZPZoxfGerGfJf0v+Z4GgGSitvdMv4rrU2bTUs438BQS6UiW1jg2yiX/oN8w26HTZuBPRh1hPoy92FCQ17UFm60BMSeEEZtVtgJ3cB3/9MfG9KDW8WMD/dGbjKJZCcbRXR3hvYYuy6JFFmPa2PamFkbIgvT9rhmhLL+8WLA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4030.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(376002)(366004)(39860400002)(396003)(136003)(346002)(6506007)(86362001)(55236004)(6916009)(186003)(66946007)(6486002)(2906002)(66476007)(66446008)(66556008)(64756008)(83380400001)(91956017)(1076003)(8676002)(76116006)(478600001)(4326008)(2616005)(107886003)(36756003)(30864003)(966005)(54906003)(8936002)(71200400001)(5660300002)(26005)(316002)(6512007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: lWKy9K9MsgwMLYBLdYt90GYUazNZnx7v5yVzH53U05ujyXrykeX0TFjG8KXBQe6u4VPresHSAFbfS1IwSYbm7nkqokdouJO81YOmbVklRLFucBreV9di5sAQPiDRVdlHQujWKjNGBNnjErBjkoYni2fZKlkd6EGeItAcwI/YMmyxMYjSoqi1OA9n8ZDB9YP5IbhqP+t4vQBLlXUGFSNHI9YxXMK3K5rh+iC0lL4lz70vB7BgG/6yRERxMy2W794fVyGq7UcIwLlA9r6s+1SUeZ+h0vCBG1ugOwC+/Nhu0kcpE5c9AHHpwKJtsZygIsJDoWQBeGf3YAy+u5lXzrAVxaEY8ROMIF9cxbdGTfSV3ZTjGXSJVIpMuPm6NB5kvIu/YnbaMaPdHQ6niW+imNuBLrxwdfiZ9ih2re3h5hkAYZwq2D3lasRPDfzirX4/mnoMqQbF4gYz+l2N07BgaGccLh+upg2FfHrAQKBfCA3DUxBxIY94QMcsQ12sxuK844Hi
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: c01bfcf8-5398-4834-1d63-08d819048288
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jun 2020 12:37:23.1648 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vmRX0UkcVKqklPB7e7Jmi3EZvx4i2lATQhSltw4uWJaBJEVWxyICqWVCtU3cpGVX44NCPTYRz5IANMqnchD0cW04z/jss2W/27ptuOSJA1E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3584
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
Cc: devel@driverdev.osuosl.org, Ajay.Kathat@microchip.com,
 Venkateswara.Kaja@microchip.com, gregkh@linuxfoundation.org,
 Nicolas.Ferre@microchip.com, johannes@sipsolutions.net,
 Sripad.Balwadgi@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Ajay Singh <ajay.kathat@microchip.com>

WILC1000 is an IEEE 802.11 b/g/n IoT link controller module. The
WILC1000 connects to Microchip AVR/SMART MCUs, SMART MPUs, and other
processors with minimal resource requirements with a simple
SPI/SDIO-to-Wi-Fi interface.

WILC1000 driver has been part of staging for few years. With
contributions from the community, it has improved significantly. Full
driver review has helped in achieving the current state.
The details for those reviews are captured in 1 & 2.

[1]. https://lore.kernel.org/linux-wireless/1537957525-11467-1-git-send-email-ajay.kathat@microchip.com/
[2]. https://lore.kernel.org/linux-wireless/1562896697-8002-1-git-send-email-ajay.kathat@microchip.com/

Signed-off-by: Ajay Singh <ajay.kathat@microchip.com>
---

As suggested, keeping all the changes in single commit with file rename
so it's easy to move out of staging [3].

Please choose whichever option you prefer between the git mv or patch series
sent last Tuesday. The resulting driver is the same as no patch has been
queued in between.

[3]. https://lore.kernel.org/linux-wireless/20200623110000.31559-1-ajay.kathat@microchip.com/

 .../net/wireless}/microchip,wilc1000.yaml         |  0
 MAINTAINERS                                       | 14 +++++++-------
 drivers/net/wireless/Kconfig                      |  1 +
 drivers/net/wireless/Makefile                     |  1 +
 drivers/net/wireless/microchip/Kconfig            | 15 +++++++++++++++
 drivers/net/wireless/microchip/Makefile           |  2 ++
 .../wireless/microchip}/wilc1000/Kconfig          |  0
 .../wireless/microchip}/wilc1000/Makefile         |  0
 .../wireless/microchip}/wilc1000/cfg80211.c       |  0
 .../wireless/microchip}/wilc1000/cfg80211.h       |  0
 .../wireless/microchip}/wilc1000/fw.h             |  0
 .../wireless/microchip}/wilc1000/hif.c            |  0
 .../wireless/microchip}/wilc1000/hif.h            |  0
 .../wireless/microchip}/wilc1000/mon.c            |  0
 .../wireless/microchip}/wilc1000/netdev.c         |  0
 .../wireless/microchip}/wilc1000/netdev.h         |  0
 .../wireless/microchip}/wilc1000/sdio.c           |  0
 .../wireless/microchip}/wilc1000/spi.c            |  0
 .../wireless/microchip}/wilc1000/wlan.c           |  0
 .../wireless/microchip}/wilc1000/wlan.h           |  0
 .../wireless/microchip}/wilc1000/wlan_cfg.c       |  0
 .../wireless/microchip}/wilc1000/wlan_cfg.h       |  0
 .../wireless/microchip}/wilc1000/wlan_if.h        |  0
 drivers/staging/Kconfig                           |  2 --
 drivers/staging/Makefile                          |  1 -
 25 files changed, 26 insertions(+), 10 deletions(-)
 rename {drivers/staging/wilc1000 => Documentation/devicetree/bindings/net/wireless}/microchip,wilc1000.yaml (100%)
 create mode 100644 drivers/net/wireless/microchip/Kconfig
 create mode 100644 drivers/net/wireless/microchip/Makefile
 rename drivers/{staging => net/wireless/microchip}/wilc1000/Kconfig (100%)
 rename drivers/{staging => net/wireless/microchip}/wilc1000/Makefile (100%)
 rename drivers/{staging => net/wireless/microchip}/wilc1000/cfg80211.c (100%)
 rename drivers/{staging => net/wireless/microchip}/wilc1000/cfg80211.h (100%)
 rename drivers/{staging => net/wireless/microchip}/wilc1000/fw.h (100%)
 rename drivers/{staging => net/wireless/microchip}/wilc1000/hif.c (100%)
 rename drivers/{staging => net/wireless/microchip}/wilc1000/hif.h (100%)
 rename drivers/{staging => net/wireless/microchip}/wilc1000/mon.c (100%)
 rename drivers/{staging => net/wireless/microchip}/wilc1000/netdev.c (100%)
 rename drivers/{staging => net/wireless/microchip}/wilc1000/netdev.h (100%)
 rename drivers/{staging => net/wireless/microchip}/wilc1000/sdio.c (100%)
 rename drivers/{staging => net/wireless/microchip}/wilc1000/spi.c (100%)
 rename drivers/{staging => net/wireless/microchip}/wilc1000/wlan.c (100%)
 rename drivers/{staging => net/wireless/microchip}/wilc1000/wlan.h (100%)
 rename drivers/{staging => net/wireless/microchip}/wilc1000/wlan_cfg.c (100%)
 rename drivers/{staging => net/wireless/microchip}/wilc1000/wlan_cfg.h (100%)
 rename drivers/{staging => net/wireless/microchip}/wilc1000/wlan_if.h (100%)

diff --git a/drivers/staging/wilc1000/microchip,wilc1000.yaml b/Documentation/devicetree/bindings/net/wireless/microchip,wilc1000.yaml
similarity index 100%
rename from drivers/staging/wilc1000/microchip,wilc1000.yaml
rename to Documentation/devicetree/bindings/net/wireless/microchip,wilc1000.yaml
diff --git a/MAINTAINERS b/MAINTAINERS
index 68f21d46614c..7dae51e32254 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -11362,6 +11362,13 @@ L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Supported
 F:	drivers/usb/gadget/udc/atmel_usba_udc.*
 
+MICROCHIP WILC1000 WIFI DRIVER
+M:	Adham Abozaeid <adham.abozaeid@microchip.com>
+M:	Ajay Singh <ajay.kathat@microchip.com>
+L:	linux-wireless@vger.kernel.org
+S:	Supported
+F:	drivers/net/wireless/microchip/wilc1000/
+
 MICROCHIP XDMA DRIVER
 M:	Ludovic Desroches <ludovic.desroches@microchip.com>
 L:	linux-arm-kernel@lists.infradead.org
@@ -16251,13 +16258,6 @@ M:	Forest Bond <forest@alittletooquiet.net>
 S:	Odd Fixes
 F:	drivers/staging/vt665?/
 
-STAGING - WILC1000 WIFI DRIVER
-M:	Adham Abozaeid <adham.abozaeid@microchip.com>
-M:	Ajay Singh <ajay.kathat@microchip.com>
-L:	linux-wireless@vger.kernel.org
-S:	Supported
-F:	drivers/staging/wilc1000/
-
 STAGING SUBSYSTEM
 M:	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
 L:	devel@driverdev.osuosl.org
diff --git a/drivers/net/wireless/Kconfig b/drivers/net/wireless/Kconfig
index 8ab62bb6b853..be0de242d8fd 100644
--- a/drivers/net/wireless/Kconfig
+++ b/drivers/net/wireless/Kconfig
@@ -47,6 +47,7 @@ source "drivers/net/wireless/st/Kconfig"
 source "drivers/net/wireless/ti/Kconfig"
 source "drivers/net/wireless/zydas/Kconfig"
 source "drivers/net/wireless/quantenna/Kconfig"
+source "drivers/net/wireless/microchip/Kconfig"
 
 config PCMCIA_RAYCS
 	tristate "Aviator/Raytheon 2.4GHz wireless support"
diff --git a/drivers/net/wireless/Makefile b/drivers/net/wireless/Makefile
index 6cfe74515c95..f9a51c2889ca 100644
--- a/drivers/net/wireless/Makefile
+++ b/drivers/net/wireless/Makefile
@@ -19,6 +19,7 @@ obj-$(CONFIG_WLAN_VENDOR_ST) += st/
 obj-$(CONFIG_WLAN_VENDOR_TI) += ti/
 obj-$(CONFIG_WLAN_VENDOR_ZYDAS) += zydas/
 obj-$(CONFIG_WLAN_VENDOR_QUANTENNA) += quantenna/
+obj-$(CONFIG_WLAN_VENDOR_MICROCHIP) += microchip/
 
 # 16-bit wireless PCMCIA client drivers
 obj-$(CONFIG_PCMCIA_RAYCS)	+= ray_cs.o
diff --git a/drivers/net/wireless/microchip/Kconfig b/drivers/net/wireless/microchip/Kconfig
new file mode 100644
index 000000000000..a6b46fb6b1ec
--- /dev/null
+++ b/drivers/net/wireless/microchip/Kconfig
@@ -0,0 +1,15 @@
+# SPDX-License-Identifier: GPL-2.0
+config WLAN_VENDOR_MICROCHIP
+	bool "Microchip devices"
+	default y
+	help
+	If you have a wireless card belonging to this class, say Y.
+
+	Note that the answer to this question doesn't directly affect the
+	kernel: saying N will just cause the configurator to skip all the
+	questions about these cards. If you say Y, you will be asked for
+	your specific card in the following questions.
+
+if WLAN_VENDOR_MICROCHIP
+source "drivers/net/wireless/microchip/wilc1000/Kconfig"
+endif # WLAN_VENDOR_MICROCHIP
diff --git a/drivers/net/wireless/microchip/Makefile b/drivers/net/wireless/microchip/Makefile
new file mode 100644
index 000000000000..73b763c7393e
--- /dev/null
+++ b/drivers/net/wireless/microchip/Makefile
@@ -0,0 +1,2 @@
+# SPDX-License-Identifier: GPL-2.0
+obj-$(CONFIG_WILC1000)		+= wilc1000/
diff --git a/drivers/staging/wilc1000/Kconfig b/drivers/net/wireless/microchip/wilc1000/Kconfig
similarity index 100%
rename from drivers/staging/wilc1000/Kconfig
rename to drivers/net/wireless/microchip/wilc1000/Kconfig
diff --git a/drivers/staging/wilc1000/Makefile b/drivers/net/wireless/microchip/wilc1000/Makefile
similarity index 100%
rename from drivers/staging/wilc1000/Makefile
rename to drivers/net/wireless/microchip/wilc1000/Makefile
diff --git a/drivers/staging/wilc1000/cfg80211.c b/drivers/net/wireless/microchip/wilc1000/cfg80211.c
similarity index 100%
rename from drivers/staging/wilc1000/cfg80211.c
rename to drivers/net/wireless/microchip/wilc1000/cfg80211.c
diff --git a/drivers/staging/wilc1000/cfg80211.h b/drivers/net/wireless/microchip/wilc1000/cfg80211.h
similarity index 100%
rename from drivers/staging/wilc1000/cfg80211.h
rename to drivers/net/wireless/microchip/wilc1000/cfg80211.h
diff --git a/drivers/staging/wilc1000/fw.h b/drivers/net/wireless/microchip/wilc1000/fw.h
similarity index 100%
rename from drivers/staging/wilc1000/fw.h
rename to drivers/net/wireless/microchip/wilc1000/fw.h
diff --git a/drivers/staging/wilc1000/hif.c b/drivers/net/wireless/microchip/wilc1000/hif.c
similarity index 100%
rename from drivers/staging/wilc1000/hif.c
rename to drivers/net/wireless/microchip/wilc1000/hif.c
diff --git a/drivers/staging/wilc1000/hif.h b/drivers/net/wireless/microchip/wilc1000/hif.h
similarity index 100%
rename from drivers/staging/wilc1000/hif.h
rename to drivers/net/wireless/microchip/wilc1000/hif.h
diff --git a/drivers/staging/wilc1000/mon.c b/drivers/net/wireless/microchip/wilc1000/mon.c
similarity index 100%
rename from drivers/staging/wilc1000/mon.c
rename to drivers/net/wireless/microchip/wilc1000/mon.c
diff --git a/drivers/staging/wilc1000/netdev.c b/drivers/net/wireless/microchip/wilc1000/netdev.c
similarity index 100%
rename from drivers/staging/wilc1000/netdev.c
rename to drivers/net/wireless/microchip/wilc1000/netdev.c
diff --git a/drivers/staging/wilc1000/netdev.h b/drivers/net/wireless/microchip/wilc1000/netdev.h
similarity index 100%
rename from drivers/staging/wilc1000/netdev.h
rename to drivers/net/wireless/microchip/wilc1000/netdev.h
diff --git a/drivers/staging/wilc1000/sdio.c b/drivers/net/wireless/microchip/wilc1000/sdio.c
similarity index 100%
rename from drivers/staging/wilc1000/sdio.c
rename to drivers/net/wireless/microchip/wilc1000/sdio.c
diff --git a/drivers/staging/wilc1000/spi.c b/drivers/net/wireless/microchip/wilc1000/spi.c
similarity index 100%
rename from drivers/staging/wilc1000/spi.c
rename to drivers/net/wireless/microchip/wilc1000/spi.c
diff --git a/drivers/staging/wilc1000/wlan.c b/drivers/net/wireless/microchip/wilc1000/wlan.c
similarity index 100%
rename from drivers/staging/wilc1000/wlan.c
rename to drivers/net/wireless/microchip/wilc1000/wlan.c
diff --git a/drivers/staging/wilc1000/wlan.h b/drivers/net/wireless/microchip/wilc1000/wlan.h
similarity index 100%
rename from drivers/staging/wilc1000/wlan.h
rename to drivers/net/wireless/microchip/wilc1000/wlan.h
diff --git a/drivers/staging/wilc1000/wlan_cfg.c b/drivers/net/wireless/microchip/wilc1000/wlan_cfg.c
similarity index 100%
rename from drivers/staging/wilc1000/wlan_cfg.c
rename to drivers/net/wireless/microchip/wilc1000/wlan_cfg.c
diff --git a/drivers/staging/wilc1000/wlan_cfg.h b/drivers/net/wireless/microchip/wilc1000/wlan_cfg.h
similarity index 100%
rename from drivers/staging/wilc1000/wlan_cfg.h
rename to drivers/net/wireless/microchip/wilc1000/wlan_cfg.h
diff --git a/drivers/staging/wilc1000/wlan_if.h b/drivers/net/wireless/microchip/wilc1000/wlan_if.h
similarity index 100%
rename from drivers/staging/wilc1000/wlan_if.h
rename to drivers/net/wireless/microchip/wilc1000/wlan_if.h
diff --git a/drivers/staging/Kconfig b/drivers/staging/Kconfig
index 4ec5528f89fa..b3fb4d41e231 100644
--- a/drivers/staging/Kconfig
+++ b/drivers/staging/Kconfig
@@ -84,8 +84,6 @@ source "drivers/staging/fbtft/Kconfig"
 
 source "drivers/staging/fsl-dpaa2/Kconfig"
 
-source "drivers/staging/wilc1000/Kconfig"
-
 source "drivers/staging/most/Kconfig"
 
 source "drivers/staging/ks7010/Kconfig"
diff --git a/drivers/staging/Makefile b/drivers/staging/Makefile
index 4d34198151b3..3d8c7ea21a10 100644
--- a/drivers/staging/Makefile
+++ b/drivers/staging/Makefile
@@ -32,7 +32,6 @@ obj-$(CONFIG_UNISYSSPAR)	+= unisys/
 obj-$(CONFIG_COMMON_CLK_XLNX_CLKWZRD)	+= clocking-wizard/
 obj-$(CONFIG_FB_TFT)		+= fbtft/
 obj-$(CONFIG_FSL_DPAA2)		+= fsl-dpaa2/
-obj-$(CONFIG_WILC1000)		+= wilc1000/
 obj-$(CONFIG_MOST)		+= most/
 obj-$(CONFIG_KS7010)		+= ks7010/
 obj-$(CONFIG_GREYBUS)		+= greybus/
-- 
2.24.0
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
