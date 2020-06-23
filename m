Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 09494204FD6
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Jun 2020 13:00:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 94B8B884D6;
	Tue, 23 Jun 2020 11:00:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id utFECebUkNrl; Tue, 23 Jun 2020 11:00:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 248F188469;
	Tue, 23 Jun 2020 11:00:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 78CB91BF284
 for <devel@linuxdriverproject.org>; Tue, 23 Jun 2020 11:00:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 71187894D9
 for <devel@linuxdriverproject.org>; Tue, 23 Jun 2020 11:00:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PAHbWEOIUsRc for <devel@linuxdriverproject.org>;
 Tue, 23 Jun 2020 11:00:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
 [68.232.153.233])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 42E3888C8E
 for <devel@driverdev.osuosl.org>; Tue, 23 Jun 2020 11:00:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1592910020; x=1624446020;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TjfQqOgUa3683AaGCoWjqab1tRXW9uEquM7wL/GMhoI=;
 b=MkUoZkj5T+eoIY8MbMDJVk3gnUAMbJsCow+TpLlKo6d2AiOeFLeeNTza
 9c/KXPRlNBJ0RxyXEvFFtlaLxu/26k6O6wOHk6ChJI83sC2P/63lzBZgm
 WyesYEm+s9IDxVHvurWGhvJjqfP+Kiq26gWGyRYpob51K3wiek9JzataK
 vH/OUh/BEDX2ya1iZ5lEfRihoqleLV2udhSIVGnEIhvO2kbL5H5Ld8FeZ
 UOG4tCsVosTAfLueEOxhmeHLM1PRuUCaHViaWBndm9bWlZg6ENiueKU/Y
 rSHCz7/7iICZfumW83LiCbdFhv87lWv8dQPorykWuD+NYWu1qprpucRnU A==;
IronPort-SDR: S8bTNGDDIDV5LO1rXM1xv7rEnO9dJg0SJVNr8L+V9AhfoRoAuPAudsMZjK1Qj1T2s/Bo8Go9z8
 19Dm7puOA7CLEc1hIW6tbP/mam7fMVOA0Nhm74litM7s9S87KEx/IMDNLvrrNqd75hkVeDxFUI
 KWWp74hhbCkl793Yo/noUUfeRBrkBtyDKIJd4SUy3GvMpKRLdAj5MdHUmUVA81bWH9ZeU875sf
 Yw/P+FZLpY88ijbj4UgadG/IK3ac9yXExp8Sy7gtiq2El+XtkxbjWmM7qEj3i/xM2giRqzOuqX
 WnA=
X-IronPort-AV: E=Sophos;i="5.75,271,1589266800"; d="scan'208";a="81196122"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 23 Jun 2020 04:00:19 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 23 Jun 2020 04:00:08 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1979.3 via Frontend
 Transport; Tue, 23 Jun 2020 04:00:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jzK28u6ptzTi8yAdI5wJj9iFFgtA5CIMreZhx3jdEOkKGuyTaeUmyFzBUjFHWl2d/OwEBZ1lTXl3bwW3nZq5F9+FdUmJ/xR2ESnlGBm/z0fAVhU2Y8XYQ48ALRdqlDPypQBL4XuxVG6O2uOc4hkzwzwp1VRR8ELroud77XdiemncExN9UYIG5jrT6mUvTBdjaGuTaxIcYZSZwdRiqkdSWMnbraaW+D4imdunSq8yVAucwUuArDDZ6XIiUELtHeeepQOqsZRBF5B623G58anePGI6xAZyj6AnYH0JZA/TsHlPWpOQev0T+4h9ijZymG80tA+Y/yKTAdZSY1XOnQ3rUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6VCCAjLlHZpgaDwGevFyCYBEocjz2NqxutWYXwKrJUw=;
 b=ETdEq2LTPuu1aCaF3bm2JaceiSTPp+5y9xD0BLZQNRz7b+ay21pGkIZ+FjM8D8N8QZLMcwfcSlYnutO8AOVwGusVw5ZEr/tvDbwq2a9SENlspzJINZz5/k4oBytdfdhO5EaKFD18wq/rAeKqepqWPgUzngNI0yDJrvuxI9fsAI5DHcL8GPBR0ppdCXNRz5YhQqBelfCp6jEQn6xkLF906+4gvZPbMMw2YFuCCkE9mKgUEjOTTsohwJ7jbZllPMF169Il8qZ5a2YB59f9S62tOqTP5ocrcIithbY4G95jFRlJP3U6zKPQ3c14UdxetNS/yreK7HfZSfx9mVJs8b7hTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6VCCAjLlHZpgaDwGevFyCYBEocjz2NqxutWYXwKrJUw=;
 b=K0SCmAq19ttPMBgCRzkgKUl/tAoIxzGXgwXaSmHol+t+AWfcIHp8kXSaJRcEpYXukhYMSJKjjPHu+Yd8X9jGErexBQ5UA4ODWcH6igRVeCajzR65iT3aFJFxRPhrzod5no+YmRQFLvSCUDy7zdNiXdyQmbHaekCArzjvG59LDYI=
Received: from MN2PR11MB4030.namprd11.prod.outlook.com (2603:10b6:208:156::32)
 by MN2PR11MB3551.namprd11.prod.outlook.com (2603:10b6:208:ea::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.22; Tue, 23 Jun
 2020 11:00:13 +0000
Received: from MN2PR11MB4030.namprd11.prod.outlook.com
 ([fe80::3874:6ace:6aec:deed]) by MN2PR11MB4030.namprd11.prod.outlook.com
 ([fe80::3874:6ace:6aec:deed%7]) with mapi id 15.20.3109.027; Tue, 23 Jun 2020
 11:00:13 +0000
From: <Ajay.Kathat@microchip.com>
To: <linux-wireless@vger.kernel.org>
Subject: [PATCH v7 15/17] wilc1000: add fw.h
Thread-Topic: [PATCH v7 15/17] wilc1000: add fw.h
Thread-Index: AQHWSU144nMH4D0FIECphzkYh2vBTA==
Date: Tue, 23 Jun 2020 11:00:13 +0000
Message-ID: <20200623110000.31559-16-ajay.kathat@microchip.com>
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
x-ms-office365-filtering-correlation-id: 8c980fd4-fc0e-4a30-e328-08d817649b14
x-ms-traffictypediagnostic: MN2PR11MB3551:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB35518331A8E50430DBB25A6AE3940@MN2PR11MB3551.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:361;
x-forefront-prvs: 04433051BF
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hgVgeJV2Bn8vbfyJ3YLhf2sOYoGV/ymQMYajQN4SYWLQRLOATNjvJHccDoNnwXjOLr0UczUI+CuYr8CmbK+0r5D5L0imnu+WF1ektfKHRL98Ea1NN4wW1Ijsh0t3w1Lx+c5m9wu90AODFVRC6Of1IKJlbeVzSputSnciAXwT79EZIX5h6LykfSu07KitBt536fY8SoUcCyeW8cjkNEppYHJn9LntdYsbBJ4uoZcR4x4Phi65+VadPvlklfwZ+fktIAlJVAtNuSnkcAluF4qCtry9VmENTcwQQhY5J0UlIljbWaoGhAX5YZwlxEXJQewWdYNeEvjfCk0GFyrZOLqPAg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4030.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(136003)(346002)(396003)(376002)(39860400002)(8676002)(36756003)(2906002)(186003)(6506007)(86362001)(2616005)(4326008)(107886003)(26005)(6486002)(6916009)(5660300002)(55236004)(1076003)(478600001)(66446008)(66476007)(66556008)(64756008)(91956017)(76116006)(66946007)(6512007)(54906003)(316002)(71200400001)(8936002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: 3/gMM0LK5hShQzZyZI5vynFfVHXObkN0iKIRANaXOBCsqMKuptfDV/jlozl34w/VU8VolA8LH1zDegBm86xE76KlZYJmqqo1XD6qxPzsvJ1Ycy2/V4E0vn5f/id5ahw4R80DpSC/zU0ZD5kyBSEmTyzOBzhLAviqH8crZi1a+OL0wxv+QOhTw8aiIYX1s5M2Dty5hySZ7uCpoYBAZcpV0IvU4eHYgxXfrkaYTusItDxPZ07JYTGdLU/o9cWyVZJiU7XiniCFFVAXUyyPMzsA/81PsUIsyIUOSBHxMUBRGhp0wu+T9xbM3zEHyvGQRBYs9XYvujkpVEjqesXMYAHMMTVoT3emYFfr2djBHvuRKnDbvnx4A3D/C7ErzGKkDkckrU6d42jhzOzUSd0mhRb1R9BvxDEWad533fdoQKfyEe6LkNBgKRiNvb6vdGHBngIW7jUwz9CDHeJY2Lth6EENhVRyh0hU2YqQ3BC53IugJx7BQ5/KEK/+W8Pc4sYyizL4
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c980fd4-fc0e-4a30-e328-08d817649b14
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jun 2020 11:00:13.7641 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 65PyRMbCyZevDrzm5sqDKwUD6DBFigyKvjfUZx5l+Gh3maRTpKN0iWsBKB86Gnh/YvSO5yUiyhtDNkl7p9oji1nW3ysGsAb40wpeQc1pNkY=
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

Moved 'drivers/staging/wilc1000/fw.h' to
'drivers/net/wireless/microchip/wilc1000/fw.h'.

Signed-off-by: Ajay Singh <ajay.kathat@microchip.com>
---
 drivers/net/wireless/microchip/wilc1000/fw.h | 119 +++++++++++++++++++
 1 file changed, 119 insertions(+)
 create mode 100644 drivers/net/wireless/microchip/wilc1000/fw.h

diff --git a/drivers/net/wireless/microchip/wilc1000/fw.h b/drivers/net/wireless/microchip/wilc1000/fw.h
new file mode 100644
index 000000000000..a76e1dea4345
--- /dev/null
+++ b/drivers/net/wireless/microchip/wilc1000/fw.h
@@ -0,0 +1,119 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2012 - 2018 Microchip Technology Inc., and its subsidiaries.
+ * All rights reserved.
+ */
+
+#ifndef WILC_FW_H
+#define WILC_FW_H
+
+#include <linux/ieee80211.h>
+
+#define WILC_MAX_NUM_STA			9
+#define WILC_MAX_RATES_SUPPORTED		12
+#define WILC_MAX_NUM_PMKIDS			16
+#define WILC_MAX_NUM_SCANNED_CH			14
+
+struct wilc_assoc_resp {
+	__le16 capab_info;
+	__le16 status_code;
+	__le16 aid;
+} __packed;
+
+struct wilc_pmkid {
+	u8 bssid[ETH_ALEN];
+	u8 pmkid[WLAN_PMKID_LEN];
+} __packed;
+
+struct wilc_pmkid_attr {
+	u8 numpmkid;
+	struct wilc_pmkid pmkidlist[WILC_MAX_NUM_PMKIDS];
+} __packed;
+
+struct wilc_reg_frame {
+	u8 reg;
+	u8 reg_id;
+	__le16 frame_type;
+} __packed;
+
+struct wilc_drv_handler {
+	__le32 handler;
+	u8 mode;
+} __packed;
+
+struct wilc_wep_key {
+	u8 index;
+	u8 key_len;
+	u8 key[0];
+} __packed;
+
+struct wilc_sta_wpa_ptk {
+	u8 mac_addr[ETH_ALEN];
+	u8 key_len;
+	u8 key[0];
+} __packed;
+
+struct wilc_ap_wpa_ptk {
+	u8 mac_addr[ETH_ALEN];
+	u8 index;
+	u8 key_len;
+	u8 key[0];
+} __packed;
+
+struct wilc_gtk_key {
+	u8 mac_addr[ETH_ALEN];
+	u8 rsc[8];
+	u8 index;
+	u8 key_len;
+	u8 key[0];
+} __packed;
+
+struct wilc_op_mode {
+	__le32 mode;
+} __packed;
+
+struct wilc_noa_opp_enable {
+	u8 ct_window;
+	u8 cnt;
+	__le32 duration;
+	__le32 interval;
+	__le32 start_time;
+} __packed;
+
+struct wilc_noa_opp_disable {
+	u8 cnt;
+	__le32 duration;
+	__le32 interval;
+	__le32 start_time;
+} __packed;
+
+struct wilc_join_bss_param {
+	char ssid[IEEE80211_MAX_SSID_LEN];
+	u8 ssid_terminator;
+	u8 bss_type;
+	u8 ch;
+	__le16 cap_info;
+	u8 sa[ETH_ALEN];
+	u8 bssid[ETH_ALEN];
+	__le16 beacon_period;
+	u8 dtim_period;
+	u8 supp_rates[WILC_MAX_RATES_SUPPORTED + 1];
+	u8 wmm_cap;
+	u8 uapsd_cap;
+	u8 ht_capable;
+	u8 rsn_found;
+	u8 rsn_grp_policy;
+	u8 mode_802_11i;
+	u8 p_suites[3];
+	u8 akm_suites[3];
+	u8 rsn_cap[2];
+	u8 noa_enabled;
+	__le32 tsf_lo;
+	u8 idx;
+	u8 opp_enabled;
+	union {
+		struct wilc_noa_opp_disable opp_dis;
+		struct wilc_noa_opp_enable opp_en;
+	};
+} __packed;
+#endif
-- 
2.24.0
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
