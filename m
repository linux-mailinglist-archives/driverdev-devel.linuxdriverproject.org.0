Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 021C2195139
	for <lists+driverdev-devel@lfdr.de>; Fri, 27 Mar 2020 07:33:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 887AD88AF5;
	Fri, 27 Mar 2020 06:33:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 18WwMJEPy2jF; Fri, 27 Mar 2020 06:33:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5C30888AEC;
	Fri, 27 Mar 2020 06:33:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6EAD31BF9C1
 for <devel@linuxdriverproject.org>; Fri, 27 Mar 2020 06:33:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 68A33895A5
 for <devel@linuxdriverproject.org>; Fri, 27 Mar 2020 06:33:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V0w5tF8eNkzD for <devel@linuxdriverproject.org>;
 Fri, 27 Mar 2020 06:33:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa4.microchip.iphmx.com (esa4.microchip.iphmx.com
 [68.232.154.123])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EC424893F5
 for <devel@driverdev.osuosl.org>; Fri, 27 Mar 2020 06:33:11 +0000 (UTC)
IronPort-SDR: B0xMHF07ksitC5BWU93FV8fxtGbpmE25Eb9aLWIJI+++hqpjV6ux6CDPKn+DvY66MdEKNJhrtt
 RmcCjszd4qi9+IzpXjt3MR0kh9+Ex6dJ6Ho6Ym5VRuqKqp9lV8998vvZHrbEK4sHzfPWpacuEL
 J3WrpmzT4lDv0e6l/MVNqrV38cpLlx1HKWHEP0XAe7ZLL6WkEIMX4i/bx/8bepifRt2Mg7ahr4
 oW1vo52GXrmIDngyqOBWJtU1RIMZvW/J/DYK8BafeEJ9Jzql7oqNxLXPdhC53V3KpsdPAW5TwQ
 XPs=
X-IronPort-AV: E=Sophos;i="5.72,311,1580799600"; d="scan'208";a="68584129"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 26 Mar 2020 23:33:11 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 26 Mar 2020 23:33:10 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Thu, 26 Mar 2020 23:33:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Gh9LFtn5Agiu6KoWsVk6kGZX8xVF2n2jxHuFBfHDkjNDGD9GXIs/hLtXFLdXVDBmd6UjegVOwtUeWYz+5SAM/5/aHbe2trGC5z94oLnu4CE4WfHYmO0rjmaDMIPRxOnKYWNrr6mL+ptFo076dbjzOo20XZhGw2OOznaIHBA9zArR5jF5twstHljLTbMl/0QyDvVP0EerhhRH0TH3iuyp9x5/TUkbfdMq3DAw6kKIEQoIU/0AKaCcLemb7Zjy3gFtqmIFUU7uG/K4H875YmJvcdO1yX7ammIxXgjp1X9hmlyvouC4Tt5amfdRuBtCXWCzIkCFwg2Rd2qMiRcYcVR3Dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MiAsrOYsP30GtRBrM48mwYCMUnIJvzhFbAQwDwmMWJ0=;
 b=OMe7jo1HaUSry+S+slmYHDzqONyJ0zllkl3JUb6LHS3yKNT7HNVldNdgA9ZObwtXVHpLnqiWMvy9aYTnps2MzkK13Wl4PjOD3CIxLfQx4D2KXwVX8OdzuLaUwq07T0j9D3jVmokiL4mrEcm23ryUO50FZ4A9LvjvXUr5VINqSnycTR8ee3MfWq7Kct77j8ihW24YrKYXWrobpokWqehIctKeNiIpz7OGZibpPDoDP3sh9iOHFxQc2LqrNslZZ/uGgljpIWJSwaLrG80cTpV4bSvtMcVBPJhFZymZZGFAQMdVEiY78k7SFx5Gfvn87P0v1MT7fgsPn8i7soF5KLV92A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MiAsrOYsP30GtRBrM48mwYCMUnIJvzhFbAQwDwmMWJ0=;
 b=UwmZxkia6MjSOKFOmAbqIP+u8ApwB84N0DuwF33eWCa1a/qDOweBoyFU5dnEOuQ3GX9VoO6V7M8hfbBkI+XK2LzSYONeWyM1D1T8nDK6TJcgf5FmBpsvm0VS/pdHTCqXffWfGUIXVbhOAGqUUU6V1CuUskYazWkmHf2BpSd7D1o=
Received: from BYAPR11MB3125.namprd11.prod.outlook.com (2603:10b6:a03:8e::32)
 by BYAPR11MB3397.namprd11.prod.outlook.com (2603:10b6:a03:1b::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.19; Fri, 27 Mar
 2020 06:33:08 +0000
Received: from BYAPR11MB3125.namprd11.prod.outlook.com
 ([fe80::c27:87cf:ca4:d86e]) by BYAPR11MB3125.namprd11.prod.outlook.com
 ([fe80::c27:87cf:ca4:d86e%4]) with mapi id 15.20.2835.021; Fri, 27 Mar 2020
 06:33:08 +0000
From: <Ajay.Kathat@microchip.com>
To: <linux-wireless@vger.kernel.org>
Subject: [PATCH v6 01/17] wilc1000: add hif.h
Thread-Topic: [PATCH v6 01/17] wilc1000: add hif.h
Thread-Index: AQHWBAGUkxz2OwCU/EOoBmOVrT5toA==
Date: Fri, 27 Mar 2020 06:33:07 +0000
Message-ID: <20200327063302.20511-2-ajay.kathat@microchip.com>
References: <20200327063302.20511-1-ajay.kathat@microchip.com>
In-Reply-To: <20200327063302.20511-1-ajay.kathat@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Ajay.Kathat@microchip.com; 
x-originating-ip: [183.82.22.58]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fc847412-c2c9-4396-26e5-08d7d218b692
x-ms-traffictypediagnostic: BYAPR11MB3397:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB3397A5E687290F34054DA0FFE3CC0@BYAPR11MB3397.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:127;
x-forefront-prvs: 0355F3A3AE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39850400004)(136003)(376002)(346002)(366004)(396003)(81156014)(26005)(8676002)(81166006)(76116006)(66446008)(66556008)(66476007)(36756003)(6512007)(66946007)(6486002)(64756008)(91956017)(2906002)(6506007)(4326008)(71200400001)(2616005)(107886003)(186003)(86362001)(5660300002)(478600001)(1076003)(6916009)(316002)(8936002)(54906003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR11MB3397;
 H:BYAPR11MB3125.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: n5oio2dSj9C2yUzoexvPQiHLXg2Ag+IX7uYNUrNm4ccqWh2UZBDz2p1cNdOiO83h/muutT/dzazpxasZjSoX+HJViVNPIP3FealzaI9SFsTHPNj2D1wxvo68QoJSVrTAMPUkNKjwt/P4TVSoL/VCUnxep5PlzwUXFiKqt0HcjjVzyCjh0et7eKldhQIjzbdrMOfg+Hhcm8WEjrZYuOnRLH9NlN/CSA8laCbGq4cc3945/YDSYHweR7NCTJXmboowOUEDg5YjhQjwYDu/X+XXKel57qk9BGF3jy3GcugFFdwNSAPv1z3h+wcggWddm/9xgd6gCiHxKn2hGh2M1sL5sCXv1yowipsBO/iUkzuyEUjX7J4M84BdJoOQCvqnfYe5LANPpoJKBIOkm+MQGu+dXw9L0Kqa/aLXiYJW9qtQMMdt0bU0iWyjZ3A3MzkK+Iyj
x-ms-exchange-antispam-messagedata: tSAPwPl6ETphoYyl+5fCFMm3/sebPsWVWuBAntH4agZqxBadqwpWhv/5tJ2Xc3V9Dx54JDZYLd7c2tlvVSex4ZU71UlKPOU9UxBzq23lX0IseaxQoJ3qGD7plk3hWkht4esW+7CiArZMgaa2dTI1Mw==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: fc847412-c2c9-4396-26e5-08d7d218b692
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2020 06:33:07.9344 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hwE8ZpaJ3tB4CXp2rphffQ0dkmjdHN1cClpmAjVV87bMYIhzMDp/xRrBLOKoYDxmt04PRdkCNWlCjLcLgjBYQspLy807dkhR3VtKlvZygl8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3397
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Ajay.Kathat@microchip.com, Venkateswara.Kaja@microchip.com,
 gregkh@linuxfoundation.org, Nicolas.Ferre@microchip.com,
 Adham.Abozaeid@microchip.com, johannes@sipsolutions.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Ajay Singh <ajay.kathat@microchip.com>

Moved 'drivers/staging/wilc1000/hif.h' to
'drivers/net/wireless/microchip/wilc1000/hif.h'.

Signed-off-by: Ajay Singh <ajay.kathat@microchip.com>
---
 drivers/net/wireless/microchip/wilc1000/hif.h | 214 ++++++++++++++++++
 1 file changed, 214 insertions(+)
 create mode 100644 drivers/net/wireless/microchip/wilc1000/hif.h

diff --git a/drivers/net/wireless/microchip/wilc1000/hif.h b/drivers/net/wireless/microchip/wilc1000/hif.h
new file mode 100644
index 000000000000..db9179171f05
--- /dev/null
+++ b/drivers/net/wireless/microchip/wilc1000/hif.h
@@ -0,0 +1,214 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2012 - 2018 Microchip Technology Inc., and its subsidiaries
+ * All rights reserved.
+ */
+
+#ifndef WILC_HIF_H
+#define WILC_HIF_H
+#include <linux/ieee80211.h>
+#include "wlan_if.h"
+
+enum {
+	WILC_IDLE_MODE = 0x0,
+	WILC_AP_MODE = 0x1,
+	WILC_STATION_MODE = 0x2,
+	WILC_GO_MODE = 0x3,
+	WILC_CLIENT_MODE = 0x4
+};
+
+#define WILC_MAX_NUM_PROBED_SSID		10
+
+#define WILC_TX_MIC_KEY_LEN			8
+#define WILC_RX_MIC_KEY_LEN			8
+
+#define WILC_ADD_STA_LENGTH			40
+#define WILC_NUM_CONCURRENT_IFC			2
+
+enum {
+	WILC_SET_CFG = 0,
+	WILC_GET_CFG
+};
+
+#define WILC_MAX_ASSOC_RESP_FRAME_SIZE   256
+
+struct rf_info {
+	u8 link_speed;
+	s8 rssi;
+	u32 tx_cnt;
+	u32 rx_cnt;
+	u32 tx_fail_cnt;
+};
+
+enum host_if_state {
+	HOST_IF_IDLE			= 0,
+	HOST_IF_SCANNING		= 1,
+	HOST_IF_CONNECTING		= 2,
+	HOST_IF_WAITING_CONN_RESP	= 3,
+	HOST_IF_CONNECTED		= 4,
+	HOST_IF_P2P_LISTEN		= 5,
+	HOST_IF_FORCE_32BIT		= 0xFFFFFFFF
+};
+
+struct cfg_param_attr {
+	u32 flag;
+	u16 short_retry_limit;
+	u16 long_retry_limit;
+	u16 frag_threshold;
+	u16 rts_threshold;
+};
+
+enum cfg_param {
+	WILC_CFG_PARAM_RETRY_SHORT = BIT(0),
+	WILC_CFG_PARAM_RETRY_LONG = BIT(1),
+	WILC_CFG_PARAM_FRAG_THRESHOLD = BIT(2),
+	WILC_CFG_PARAM_RTS_THRESHOLD = BIT(3)
+};
+
+enum scan_event {
+	SCAN_EVENT_NETWORK_FOUND	= 0,
+	SCAN_EVENT_DONE			= 1,
+	SCAN_EVENT_ABORTED		= 2,
+	SCAN_EVENT_FORCE_32BIT		= 0xFFFFFFFF
+};
+
+enum conn_event {
+	CONN_DISCONN_EVENT_CONN_RESP		= 0,
+	CONN_DISCONN_EVENT_DISCONN_NOTIF	= 1,
+	CONN_DISCONN_EVENT_FORCE_32BIT		= 0xFFFFFFFF
+};
+
+enum {
+	WILC_HIF_SDIO = 0,
+	WILC_HIF_SPI = BIT(0)
+};
+
+enum {
+	WILC_MAC_STATUS_INIT = -1,
+	WILC_MAC_STATUS_DISCONNECTED = 0,
+	WILC_MAC_STATUS_CONNECTED = 1
+};
+
+struct wilc_rcvd_net_info {
+	s8 rssi;
+	u8 ch;
+	u16 frame_len;
+	struct ieee80211_mgmt *mgmt;
+};
+
+struct wilc_user_scan_req {
+	void (*scan_result)(enum scan_event evt,
+			    struct wilc_rcvd_net_info *info, void *priv);
+	void *arg;
+	u32 ch_cnt;
+};
+
+struct wilc_conn_info {
+	u8 bssid[ETH_ALEN];
+	u8 security;
+	enum authtype auth_type;
+	u8 ch;
+	u8 *req_ies;
+	size_t req_ies_len;
+	u8 *resp_ies;
+	u16 resp_ies_len;
+	u16 status;
+	void (*conn_result)(enum conn_event evt, u8 status, void *priv_data);
+	void *arg;
+	void *param;
+};
+
+struct wilc_remain_ch {
+	u16 ch;
+	u32 duration;
+	void (*expired)(void *priv, u64 cookie);
+	void *arg;
+	u32 cookie;
+};
+
+struct wilc;
+struct host_if_drv {
+	struct wilc_user_scan_req usr_scan_req;
+	struct wilc_conn_info conn_info;
+	struct wilc_remain_ch remain_on_ch;
+	u64 p2p_timeout;
+
+	enum host_if_state hif_state;
+
+	u8 assoc_bssid[ETH_ALEN];
+
+	struct timer_list scan_timer;
+	struct wilc_vif *scan_timer_vif;
+
+	struct timer_list connect_timer;
+	struct wilc_vif *connect_timer_vif;
+
+	struct timer_list remain_on_ch_timer;
+	struct wilc_vif *remain_on_ch_timer_vif;
+
+	bool ifc_up;
+	u8 assoc_resp[WILC_MAX_ASSOC_RESP_FRAME_SIZE];
+};
+
+struct wilc_vif;
+int wilc_remove_wep_key(struct wilc_vif *vif, u8 index);
+int wilc_set_wep_default_keyid(struct wilc_vif *vif, u8 index);
+int wilc_add_wep_key_bss_sta(struct wilc_vif *vif, const u8 *key, u8 len,
+			     u8 index);
+int wilc_add_wep_key_bss_ap(struct wilc_vif *vif, const u8 *key, u8 len,
+			    u8 index, u8 mode, enum authtype auth_type);
+int wilc_add_ptk(struct wilc_vif *vif, const u8 *ptk, u8 ptk_key_len,
+		 const u8 *mac_addr, const u8 *rx_mic, const u8 *tx_mic,
+		 u8 mode, u8 cipher_mode, u8 index);
+s32 wilc_get_inactive_time(struct wilc_vif *vif, const u8 *mac,
+			   u32 *out_val);
+int wilc_add_rx_gtk(struct wilc_vif *vif, const u8 *rx_gtk, u8 gtk_key_len,
+		    u8 index, u32 key_rsc_len, const u8 *key_rsc,
+		    const u8 *rx_mic, const u8 *tx_mic, u8 mode,
+		    u8 cipher_mode);
+int wilc_set_pmkid_info(struct wilc_vif *vif, struct wilc_pmkid_attr *pmkid);
+int wilc_get_mac_address(struct wilc_vif *vif, u8 *mac_addr);
+int wilc_set_join_req(struct wilc_vif *vif, u8 *bssid, const u8 *ies,
+		      size_t ies_len);
+int wilc_disconnect(struct wilc_vif *vif);
+int wilc_set_mac_chnl_num(struct wilc_vif *vif, u8 channel);
+int wilc_get_rssi(struct wilc_vif *vif, s8 *rssi_level);
+int wilc_scan(struct wilc_vif *vif, u8 scan_source, u8 scan_type,
+	      u8 *ch_freq_list, u8 ch_list_len,
+	      void (*scan_result_fn)(enum scan_event,
+				     struct wilc_rcvd_net_info *, void *),
+	      void *user_arg, struct cfg80211_scan_request *request);
+int wilc_hif_set_cfg(struct wilc_vif *vif,
+		     struct cfg_param_attr *cfg_param);
+int wilc_init(struct net_device *dev, struct host_if_drv **hif_drv_handler);
+int wilc_deinit(struct wilc_vif *vif);
+int wilc_add_beacon(struct wilc_vif *vif, u32 interval, u32 dtim_period,
+		    struct cfg80211_beacon_data *params);
+int wilc_del_beacon(struct wilc_vif *vif);
+int wilc_add_station(struct wilc_vif *vif, const u8 *mac,
+		     struct station_parameters *params);
+int wilc_del_allstation(struct wilc_vif *vif, u8 mac_addr[][ETH_ALEN]);
+int wilc_del_station(struct wilc_vif *vif, const u8 *mac_addr);
+int wilc_edit_station(struct wilc_vif *vif, const u8 *mac,
+		      struct station_parameters *params);
+int wilc_set_power_mgmt(struct wilc_vif *vif, bool enabled, u32 timeout);
+int wilc_setup_multicast_filter(struct wilc_vif *vif, u32 enabled, u32 count,
+				u8 *mc_list);
+int wilc_remain_on_channel(struct wilc_vif *vif, u64 cookie,
+			   u32 duration, u16 chan,
+			   void (*expired)(void *, u64),
+			   void *user_arg);
+int wilc_listen_state_expired(struct wilc_vif *vif, u64 cookie);
+void wilc_frame_register(struct wilc_vif *vif, u16 frame_type, bool reg);
+int wilc_set_operation_mode(struct wilc_vif *vif, int index, u8 mode,
+			    u8 ifc_id);
+int wilc_get_statistics(struct wilc_vif *vif, struct rf_info *stats);
+int wilc_get_vif_idx(struct wilc_vif *vif);
+int wilc_set_tx_power(struct wilc_vif *vif, u8 tx_power);
+int wilc_get_tx_power(struct wilc_vif *vif, u8 *tx_power);
+void wilc_scan_complete_received(struct wilc *wilc, u8 *buffer, u32 length);
+void wilc_network_info_received(struct wilc *wilc, u8 *buffer, u32 length);
+void wilc_gnrl_async_info_received(struct wilc *wilc, u8 *buffer, u32 length);
+void *wilc_parse_join_bss_param(struct cfg80211_bss *bss,
+				struct cfg80211_crypto_settings *crypto);
+#endif
-- 
2.24.0
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
