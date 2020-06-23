Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E487C204FD1
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Jun 2020 13:00:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7A5C488A3F;
	Tue, 23 Jun 2020 11:00:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UF26l6yZtOno; Tue, 23 Jun 2020 11:00:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D836A886A6;
	Tue, 23 Jun 2020 11:00:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 09DC61BF284
 for <devel@linuxdriverproject.org>; Tue, 23 Jun 2020 11:00:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C471C89509
 for <devel@linuxdriverproject.org>; Tue, 23 Jun 2020 11:00:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NSXlTmTMhwpx for <devel@linuxdriverproject.org>;
 Tue, 23 Jun 2020 11:00:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa6.microchip.iphmx.com (esa6.microchip.iphmx.com
 [216.71.154.253])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D679E89236
 for <devel@driverdev.osuosl.org>; Tue, 23 Jun 2020 11:00:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1592910014; x=1624446014;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sysb7i/VNUGYi7ejGr3t8kPwAjRrQWe2MgEUPunRKHM=;
 b=InhBZPIdHJl5DDt/L/GdjKOAZVVYVfw7Syiy8I35KVe/vqjd60i5Pa3i
 RNiEr2H5pkScZHNEapv+H8hEjAQRl8RL4wmHVSBhSIsx9UPAdNWXK/pmE
 ujeAhYtK44bdEJD4pP6MdOi5g6sDwSTpAM64VEFIBd4vTD0kAGMpsldab
 H9HLDSxJ6T9kSn7t09Zf9ma+yDKWO3/mQjDitmv5CkIHVm8A9U+m5cXa+
 +FcMVUy/FOe0U9SiWlik9eHH8qLP4ZkPGZOQiUpYyH/ZzugcMoZBhw6pg
 3NogdeXHLIriRku2D6Hd0waYaWA0OvdOIQtcn29lOWAj5NvCO2qcWrwND A==;
IronPort-SDR: lsgOSrd3YyxPUWv/lTB3GE11ps4YAAqqaeBeijZEjrKT6UwUhDbTx2XeqBgpJWGUI5gvHNHQFV
 uHU5gSwLYUgWjg6O6w0O00BH9Ua7mD48hoJ0pY4TQ1UHzHw0lM3ryw7PyNC3W5efi6tCTViug9
 9XjvuDM6gZN4o9CfdSEomEcJMO5jvJqEfRkqNlfiTXqJhrh6ipyvPYwrRgOh/9AgLSAR3xPn4W
 APHmHlaEWjmVBoS1NoG+/dl1kjBdYi+6VUllxKjcOuOlNMYJHfDlWN1jA++c7Klm91xjyDyT0W
 qOs=
X-IronPort-AV: E=Sophos;i="5.75,271,1589266800"; d="scan'208";a="16737459"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 23 Jun 2020 04:00:14 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 23 Jun 2020 04:00:03 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1979.3 via Frontend
 Transport; Tue, 23 Jun 2020 04:00:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bm+kPhSK4BgQwQhTD1FO98zmFNWwKY3H+wAyheJ9vrXv39Ls6RBAkjniNGLDZZO+oiTXv8Qa4mn0pVxshnL+CNYd7mxvdIYhLYidprYd26jSHr7rtilObq3Aknzsrpq8R/Xz1+UcfnBIaA8VyykxtQx4OReYs/PsdQK6ACx28WWFzPOr10aKG2ghPs+M6Za6ciilchelVDId493JiDSR2UbrzbYHONenAXGCPuMlHQXP8OFW6YlVmLRldVwEkfGeiQvT74keLohKFT2NbOBQKMFlQwHaMOq5oYRCsl+D1f5tYm8BDJ1ElcBVWWkFEEtN8x/E4wpqdauIvGu8oIuiFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6KpURaovH//Kc4c1yFfuqcrgnP+HPTtsW2NK8E2Iz8g=;
 b=bqida/kgfucdwibJ2W02MLBO+j/uB9l9MYcTGHNRukImnZCKaI0ZP6mbXXz1xGHm9nt+t9upUQnSc5NE4Dn2vpD7fUWihf5I8b0L0I1wnotc0s2I9uXZAibfUmuoTRNkqSIIgzv88OnQ88VDyACzrQjWCqhe0zlzYY7NhjD6nyOGWvu93NgUnhDn561Gfu3fuyhE1/gTKDdTIcChBCN2QmW4gV4WhHtKNEvGv7ROHrQ47rEd4Ns6YyR/VBtGU6SSnreqApY1AcUZ5OGH9lyBFuq5touziB17fZbGI+1t2Mb6azmtMpiAcyXsQ/T8brOxPDegg+VvEQ9KM5kFbhgifw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6KpURaovH//Kc4c1yFfuqcrgnP+HPTtsW2NK8E2Iz8g=;
 b=JFFo3JEjjrPto2qStNjsN5ZQxvvVY7CHyvR9a+XJTPvmdNT8zct7RuUZPMnVC+rjAgjTSlChhdtZ7pbr36JACtl9dqcK6UfHj5VhkFZRQWihdlqLNPt/UDAufcO1u2lN6I01FZ6YgqNRJa0FnHDVL0j+ah7KDlTNXQ+NHqHo0Kc=
Received: from MN2PR11MB4030.namprd11.prod.outlook.com (2603:10b6:208:156::32)
 by MN2PR11MB3551.namprd11.prod.outlook.com (2603:10b6:208:ea::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.22; Tue, 23 Jun
 2020 11:00:09 +0000
Received: from MN2PR11MB4030.namprd11.prod.outlook.com
 ([fe80::3874:6ace:6aec:deed]) by MN2PR11MB4030.namprd11.prod.outlook.com
 ([fe80::3874:6ace:6aec:deed%7]) with mapi id 15.20.3109.027; Tue, 23 Jun 2020
 11:00:09 +0000
From: <Ajay.Kathat@microchip.com>
To: <linux-wireless@vger.kernel.org>
Subject: [PATCH v7 07/17] wilc1000: add cfg80211.h
Thread-Topic: [PATCH v7 07/17] wilc1000: add cfg80211.h
Thread-Index: AQHWSU11ek8LcXLjAUieIX4CPdvyZA==
Date: Tue, 23 Jun 2020 11:00:09 +0000
Message-ID: <20200623110000.31559-8-ajay.kathat@microchip.com>
References: <20200623110000.31559-1-ajay.kathat@microchip.com>
In-Reply-To: <20200623110000.31559-1-ajay.kathat@microchip.com>
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
x-ms-office365-filtering-correlation-id: e7df75e6-8f5d-4b30-87ed-08d81764984e
x-ms-traffictypediagnostic: MN2PR11MB3551:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB3551AB696C03E1665AEC57CAE3940@MN2PR11MB3551.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:418;
x-forefront-prvs: 04433051BF
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1gptsU+NftrBHUa70lg60T9nG/2XIGzZ9u4mcr+bniM3FxqA4mzKP6OS3zwnXbhHYAGx2CCF+STZl41nlVh9mqN6dGkPIHbv9pbFBdz3db9Ww+NIPTA/swF63ou9e4HKZJc6UdSddHSkg0gfhbAxLgvC+q13DWNFHCNNNpACp1HvUTOZpowkCP2WDXdsF9iX50eb5Ab72IRQwelXXgcqfcKgljMMUhhxlicEj+v4paEt/VUl/MH1ZRJ376f4pfKzkughQZaArtk8ZqALjv2qujE3tB3JVDYe14cO/lLVM0sOhmHkSPlnnxIn2NeSjvyGSafbP4wpYH/OE1joZadyWA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4030.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(136003)(346002)(396003)(376002)(39860400002)(8676002)(83380400001)(36756003)(2906002)(186003)(6506007)(86362001)(2616005)(4326008)(107886003)(26005)(6486002)(6916009)(5660300002)(55236004)(1076003)(478600001)(66446008)(66476007)(66556008)(64756008)(91956017)(76116006)(66946007)(6512007)(54906003)(316002)(71200400001)(8936002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: w1KPweH3UEGwIXUBD+H2+z6tofSnRGtbuIDq3FyT6uMMIXAvRsRNv55yyb5DIbJLFxwsMay9uE5MA3Tdv4SrbzOr9LuNgL84FDaPYvm7lFgCiRC29VXySBsTrHjBSPQc4/Ur1BZUKzeZpODI+P1EZAciDGpA3z4rLlX3JT+GhA+eBunajnXfWAczlgc/C8DXJuuO66+jvQ0XdMvpXPeeoqGedExOZXeEEMc55RWDc6POJseWti/XHYADdMYAGEz843AkmaKXy949pEzUQdCoSeB6XV8deu3u6XV6kofWM5fdySvkc3PouVkgScWVBVyn047FAnco8DDMoAx+kzH7t1yNrA6yLMF5HpR7fV4SyevEuMlP5ZPrTXiKjfdtGL6p13XI4ixTcDVb3VwfxLcfVmVHPhIGrcoBfjke9ZUKye7aUSu0qselwgV7bFQcC4D0kWqZRKwpEPfrhk+zlHhSWOfNChjZYwXr+omYE9sKxsdJvsSC8DJhnHVWC1OLb+I7
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: e7df75e6-8f5d-4b30-87ed-08d81764984e
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jun 2020 11:00:09.0318 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: w8pWCISvgOz33YMXFBF6PUjEXpFcztioAEDXuRqLpwCokQNTge/qC+hfe1+l1MQ8iSB3qPgrW1ndzIGmWXJva+SogzLQLIbPX3AtwRH9htc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3551
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

Moved 'drivers/staging/wilc1000/cfg80211.h' to
'drivers/net/wireless/microchip/wilc1000/cfg80211.h'.

Signed-off-by: Ajay Singh <ajay.kathat@microchip.com>
---
 .../wireless/microchip/wilc1000/cfg80211.h    | 30 +++++++++++++++++++
 1 file changed, 30 insertions(+)
 create mode 100644 drivers/net/wireless/microchip/wilc1000/cfg80211.h

diff --git a/drivers/net/wireless/microchip/wilc1000/cfg80211.h b/drivers/net/wireless/microchip/wilc1000/cfg80211.h
new file mode 100644
index 000000000000..37b294cb3b37
--- /dev/null
+++ b/drivers/net/wireless/microchip/wilc1000/cfg80211.h
@@ -0,0 +1,30 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2012 - 2018 Microchip Technology Inc., and its subsidiaries.
+ * All rights reserved.
+ */
+
+#ifndef WILC_CFG80211_H
+#define WILC_CFG80211_H
+#include "netdev.h"
+
+struct wiphy *wilc_cfg_alloc(void);
+int wilc_cfg80211_init(struct wilc **wilc, struct device *dev, int io_type,
+		       const struct wilc_hif_func *ops);
+struct wilc *wilc_create_wiphy(struct device *dev);
+void wilc_deinit_host_int(struct net_device *net);
+int wilc_init_host_int(struct net_device *net);
+void wilc_wfi_monitor_rx(struct net_device *mon_dev, u8 *buff, u32 size);
+struct wilc_vif *wilc_netdev_interface(struct wilc *wl, const char *name,
+				       enum nl80211_iftype type);
+void wilc_wfi_deinit_mon_interface(struct wilc *wl, bool rtnl_locked);
+struct net_device *wilc_wfi_init_mon_interface(struct wilc *wl,
+					       const char *name,
+					       struct net_device *real_dev);
+void wilc_update_mgmt_frame_registrations(struct wiphy *wiphy,
+					  struct wireless_dev *wdev,
+					  struct mgmt_frame_regs *upd);
+struct wilc_vif *wilc_get_interface(struct wilc *wl);
+struct wilc_vif *wilc_get_wl_to_vif(struct wilc *wl);
+void wlan_deinit_locks(struct wilc *wilc);
+#endif
-- 
2.24.0
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
