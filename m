Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 834C1176007
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Mar 2020 17:35:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1688086180;
	Mon,  2 Mar 2020 16:35:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id prhpITDe5ZDQ; Mon,  2 Mar 2020 16:35:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D483E86141;
	Mon,  2 Mar 2020 16:35:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 674301BF321
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 16:35:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 614F18609C
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 16:35:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z7iJmtuM71AY for <devel@linuxdriverproject.org>;
 Mon,  2 Mar 2020 16:35:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
 [68.232.153.233])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 57FA184F57
 for <devel@driverdev.osuosl.org>; Mon,  2 Mar 2020 16:35:07 +0000 (UTC)
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Ajay.Kathat@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Ajay.Kathat@microchip.com";
 x-sender="Ajay.Kathat@microchip.com"; x-conformance=spf_only;
 x-record-type="v=spf1"; x-record-text="v=spf1 mx
 a:ushub1.microchip.com a:smtpout.microchip.com
 -exists:%{i}.spf.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Ajay.Kathat@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Ajay.Kathat@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: eRZnesNGprQTzsa/+mi47gL7q2zzMwfAM9wxd7zA79I9kMfqH7eD7wpt88fAF5nl44al/i7Rya
 oP8HcoEhmkGMnW0efYvCTyD6UsAkS9vOA9XQzduFvX+E9bZujo1HKLFh8HWVU0dBQGVPd6lhxW
 C7T2uthyXhpHzrZ+aItMjAZBJjxHwqIDZNuhjqiOl2iFtd2SszXaZohG9a74OH4mz0pp5TRotf
 KwwYBcKpXn/B3diy0XHS7DBZ7aOjArmYx4eGDpv+3ugS2HaWssW6XSyWKHLjm6ZVxV1hAl9wTW
 8lk=
X-IronPort-AV: E=Sophos;i="5.70,507,1574146800"; d="scan'208";a="68544186"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 02 Mar 2020 09:34:40 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 2 Mar 2020 09:34:39 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Mon, 2 Mar 2020 09:34:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PKUT4R7SjLb10liYdYEqfwQpf8w5psgVlZ9mAeXKDytuBnxKdduDfq9ajHJ0DtpmQlferqmJ5NsAkRELsLITqFwNQGmVjJyD3X32qL1ZZLU6da0iNWZg4ePFUARdlqJsWDmWJVJIX3v0YauF3031eOKQWUPZbXPLWHaT6+0022reCxNvYVu7E0BCKYtwCCTOSseBJdgi/eRLWhbV14jlabgL2EAGYYvW8oIxWrXyz0v+tyT28YuP8Xv8Q7OXO5Kpz1qLsmK9xtDYMBqmRAlNq9gF4XiEW37blhpIVwDAhN4khyCt4fUyAovKV8QQCKqEyyMmaltpr05Z2wDm2/eDUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OWOZQLEY5AAAzouBsF66xc/ggL010p4I3bUu6iAmfW8=;
 b=BY3P9Zmy3eP2CCN9TxucktdJ8m73bxJpGxxJGzB0WXR6XV2QjcV7NpeOVpx3AgyDMwzQYQBEUHgUwRQXSreF4OYrOFD5rf69guoJZVl5Z/ODab0uvFMCiho84ZE8KfxjQn04ZWlKWnSbac13+4tU9Uharet9EFoji18AezxS/Flfq8zvp/U3EC8j7eHtTpc4ZqqDGNTnGa00HYkyFW4ooP8HhZTEMoD3i9/VYn/wKpapjHhtWxgJNwbQTdIxhZXbEKwFrJvXsCSFibXkQwZ5Xfv2Ag8FgzFkHTiuIKifMvlpplRFiZufypLIzbcC3dt01iR6i98apItXzPJq73tHlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OWOZQLEY5AAAzouBsF66xc/ggL010p4I3bUu6iAmfW8=;
 b=NA1XH/MDaKGXYD8a1iYzi0X02u8+xWaSCB8pupktUEdmxHHf1WbOsle46YIK0oZed4tj7hG2eWu7CSKoEofFQIBt2JEcJRfvZe0LiI/nslWHq/aOSaYXKgf9bF59b7W287G4PlmIq+bjEqQNqIFe3Y/umVlV114PVfRkw63a5N4=
Received: from BN6PR11MB3985.namprd11.prod.outlook.com (2603:10b6:405:7b::14)
 by BN6PR11MB4098.namprd11.prod.outlook.com (2603:10b6:405:7f::36)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.18; Mon, 2 Mar
 2020 16:34:35 +0000
Received: from BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::ec62:e7fd:f17c:dfd4]) by BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::ec62:e7fd:f17c:dfd4%3]) with mapi id 15.20.2772.019; Mon, 2 Mar 2020
 16:34:35 +0000
From: <Ajay.Kathat@microchip.com>
To: <linux-wireless@vger.kernel.org>
Subject: [PATCH v4 08/18] wilc1000: add netdev.h
Thread-Topic: [PATCH v4 08/18] wilc1000: add netdev.h
Thread-Index: AQHV8LB17TySt1qBRkyZ1Vl0yyG1kQ==
Date: Mon, 2 Mar 2020 16:34:35 +0000
Message-ID: <20200302163414.4342-9-ajay.kathat@microchip.com>
References: <20200302163414.4342-1-ajay.kathat@microchip.com>
In-Reply-To: <20200302163414.4342-1-ajay.kathat@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-originating-ip: [121.244.27.38]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 14b65f9e-0706-4af2-c478-08d7bec797e2
x-ms-traffictypediagnostic: BN6PR11MB4098:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN6PR11MB4098E50D559828C5F62D5387E3E70@BN6PR11MB4098.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1186;
x-forefront-prvs: 033054F29A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(396003)(39860400002)(136003)(366004)(346002)(199004)(189003)(316002)(6916009)(86362001)(6512007)(2616005)(478600001)(71200400001)(54906003)(4326008)(64756008)(186003)(107886003)(66446008)(5660300002)(91956017)(76116006)(8676002)(66476007)(66946007)(6486002)(6506007)(66556008)(26005)(81156014)(81166006)(2906002)(1076003)(36756003)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN6PR11MB4098;
 H:BN6PR11MB3985.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iztlhgu8HaGPEYcMpmYtMZpsb/90E2+uei9xky0hmk8f16LNlGjVqBkyJaZGl/CvBUAEBl+qzml0X8pKuhIHY5vbnAbcEkpipZI0z59t1171UZWDcAO1wDc3NCkyxF+E77j3XV2O9BO5bezIo9TCAP9EmyCWvG6K871niG5xPhBr34Wp1WZ9LV8kyuHTSSAL9pjqy06dSaI9FUPEib6ku1rNkmTAgYeQAAtSySE4pFgfIBHqCKwK89XKrZbHW7Pe/YjTdYLHkm6uyEqP3Z9YLKwaRJaddTL0q1xJmhxkRyXRA+j3opkEiYHeAKMNM+GZA+rrLNwmz1wKSieHCrIt3qR3OBrzizFroehgNhDYQ1yWUtdlqsES7/lPLfKRiNpWrTb3EZpBtTQf3z+++zhSXq3dyKAkcGHBW6F4gp/qgjwgdnItv/vnCg47IEwsFIdz
x-ms-exchange-antispam-messagedata: hSGoNsKudQFD4HCuAmgzilZPD6uUkchh4NfHUQJAUNiXdFBELY92HujxJUS7AlC76FBSgKZ49LxU/uVrYo39agokmmsaXna3UAo9Bn7JpywNWGZ4QQi9xODyeYBn5p5N+lv20p47WpwWDg0Me7G89w==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 14b65f9e-0706-4af2-c478-08d7bec797e2
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2020 16:34:35.0615 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: egNhbilsasVjvhJ7T7zai/arNSOe7haPHUiCiSGmhcHT6EQqKrlnGYbn7JSerhCSAQ6bxBt0gA1RomCmlb2UHrG27df62ENUfSsQSo1yI5E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB4098
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

Moved 'drivers/staging/wilc1000/netdev.h' to
'drivers/net/wireless/microchip/wilc1000/netdev.h'.

Signed-off-by: Ajay Singh <ajay.kathat@microchip.com>
---
 .../net/wireless/microchip/wilc1000/netdev.h  | 295 ++++++++++++++++++
 1 file changed, 295 insertions(+)
 create mode 100644 drivers/net/wireless/microchip/wilc1000/netdev.h

diff --git a/drivers/net/wireless/microchip/wilc1000/netdev.h b/drivers/net/wireless/microchip/wilc1000/netdev.h
new file mode 100644
index 000000000000..e3689e2a4abb
--- /dev/null
+++ b/drivers/net/wireless/microchip/wilc1000/netdev.h
@@ -0,0 +1,295 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2012 - 2018 Microchip Technology Inc., and its subsidiaries.
+ * All rights reserved.
+ */
+
+#ifndef WILC_NETDEV_H
+#define WILC_NETDEV_H
+
+#include <linux/tcp.h>
+#include <linux/ieee80211.h>
+#include <net/cfg80211.h>
+#include <net/ieee80211_radiotap.h>
+#include <linux/if_arp.h>
+#include <linux/gpio/consumer.h>
+
+#include "hif.h"
+#include "wlan.h"
+#include "wlan_cfg.h"
+
+#define FLOW_CONTROL_LOWER_THRESHOLD		128
+#define FLOW_CONTROL_UPPER_THRESHOLD		256
+
+#define PMKID_FOUND				1
+#define NUM_STA_ASSOCIATED			8
+
+#define NUM_REG_FRAME				2
+
+#define TCP_ACK_FILTER_LINK_SPEED_THRESH	54
+#define DEFAULT_LINK_SPEED			72
+
+struct wilc_wfi_stats {
+	unsigned long rx_packets;
+	unsigned long tx_packets;
+	unsigned long rx_bytes;
+	unsigned long tx_bytes;
+	u64 rx_time;
+	u64 tx_time;
+
+};
+
+struct wilc_wfi_key {
+	u8 *key;
+	u8 *seq;
+	int key_len;
+	int seq_len;
+	u32 cipher;
+};
+
+struct wilc_wfi_wep_key {
+	u8 *key;
+	u8 key_len;
+	u8 key_idx;
+};
+
+struct sta_info {
+	u8 sta_associated_bss[WILC_MAX_NUM_STA][ETH_ALEN];
+};
+
+/* Parameters needed for host interface for remaining on channel */
+struct wilc_wfi_p2p_listen_params {
+	struct ieee80211_channel *listen_ch;
+	u32 listen_duration;
+	u64 listen_cookie;
+};
+
+static const u32 wilc_cipher_suites[] = {
+	WLAN_CIPHER_SUITE_WEP40,
+	WLAN_CIPHER_SUITE_WEP104,
+	WLAN_CIPHER_SUITE_TKIP,
+	WLAN_CIPHER_SUITE_CCMP,
+	WLAN_CIPHER_SUITE_AES_CMAC
+};
+
+#define CHAN2G(_channel, _freq, _flags) {	 \
+	.band             = NL80211_BAND_2GHZ, \
+	.center_freq      = (_freq),		 \
+	.hw_value         = (_channel),		 \
+	.flags            = (_flags),		 \
+	.max_antenna_gain = 0,			 \
+	.max_power        = 30,			 \
+}
+
+static const struct ieee80211_channel wilc_2ghz_channels[] = {
+	CHAN2G(1,  2412, 0),
+	CHAN2G(2,  2417, 0),
+	CHAN2G(3,  2422, 0),
+	CHAN2G(4,  2427, 0),
+	CHAN2G(5,  2432, 0),
+	CHAN2G(6,  2437, 0),
+	CHAN2G(7,  2442, 0),
+	CHAN2G(8,  2447, 0),
+	CHAN2G(9,  2452, 0),
+	CHAN2G(10, 2457, 0),
+	CHAN2G(11, 2462, 0),
+	CHAN2G(12, 2467, 0),
+	CHAN2G(13, 2472, 0),
+	CHAN2G(14, 2484, 0)
+};
+
+#define RATETAB_ENT(_rate, _hw_value, _flags) {	\
+	.bitrate  = (_rate),			\
+	.hw_value = (_hw_value),		\
+	.flags    = (_flags),			\
+}
+
+static struct ieee80211_rate wilc_bitrates[] = {
+	RATETAB_ENT(10,  0,  0),
+	RATETAB_ENT(20,  1,  0),
+	RATETAB_ENT(55,  2,  0),
+	RATETAB_ENT(110, 3,  0),
+	RATETAB_ENT(60,  9,  0),
+	RATETAB_ENT(90,  6,  0),
+	RATETAB_ENT(120, 7,  0),
+	RATETAB_ENT(180, 8,  0),
+	RATETAB_ENT(240, 9,  0),
+	RATETAB_ENT(360, 10, 0),
+	RATETAB_ENT(480, 11, 0),
+	RATETAB_ENT(540, 12, 0)
+};
+
+struct wilc_priv {
+	struct wireless_dev wdev;
+	struct cfg80211_scan_request *scan_req;
+
+	struct wilc_wfi_p2p_listen_params remain_on_ch_params;
+	u64 tx_cookie;
+
+	bool cfg_scanning;
+
+	u8 associated_bss[ETH_ALEN];
+	struct sta_info assoc_stainfo;
+	struct sk_buff *skb;
+	struct net_device *dev;
+	struct host_if_drv *hif_drv;
+	struct wilc_pmkid_attr pmkid_list;
+	u8 wep_key[4][WLAN_KEY_LEN_WEP104];
+	u8 wep_key_len[4];
+
+	/* The real interface that the monitor is on */
+	struct net_device *real_ndev;
+	struct wilc_wfi_key *wilc_gtk[WILC_MAX_NUM_STA];
+	struct wilc_wfi_key *wilc_ptk[WILC_MAX_NUM_STA];
+	u8 wilc_groupkey;
+
+	/* mutexes */
+	struct mutex scan_req_lock;
+	bool p2p_listen_state;
+	int scanned_cnt;
+
+	u64 inc_roc_cookie;
+};
+
+struct frame_reg {
+	u16 type;
+	bool reg;
+};
+
+#define MAX_TCP_SESSION                25
+#define MAX_PENDING_ACKS               256
+
+struct ack_session_info {
+	u32 seq_num;
+	u32 bigger_ack_num;
+	u16 src_port;
+	u16 dst_port;
+	u16 status;
+};
+
+struct pending_acks {
+	u32 ack_num;
+	u32 session_index;
+	struct txq_entry_t  *txqe;
+};
+
+struct tcp_ack_filter {
+	struct ack_session_info ack_session_info[2 * MAX_TCP_SESSION];
+	struct pending_acks pending_acks[MAX_PENDING_ACKS];
+	u32 pending_base;
+	u32 tcp_session;
+	u32 pending_acks_idx;
+	bool enabled;
+};
+
+struct wilc_vif {
+	u8 idx;
+	u8 iftype;
+	int monitor_flag;
+	int mac_opened;
+	struct frame_reg frame_reg[NUM_REG_FRAME];
+	struct net_device_stats netstats;
+	struct wilc *wilc;
+	u8 bssid[ETH_ALEN];
+	struct host_if_drv *hif_drv;
+	struct net_device *ndev;
+	u8 mode;
+	struct timer_list during_ip_timer;
+	struct timer_list periodic_rssi;
+	struct rf_info periodic_stat;
+	struct tcp_ack_filter ack_filter;
+	bool connecting;
+	struct wilc_priv priv;
+	struct list_head list;
+	struct cfg80211_bss *bss;
+};
+
+struct wilc {
+	struct wiphy *wiphy;
+	const struct wilc_hif_func *hif_func;
+	int io_type;
+	s8 mac_status;
+	struct gpio_desc *gpio_irq;
+	struct clk *rtc_clk;
+	bool initialized;
+	int dev_irq_num;
+	int close;
+	u8 vif_num;
+	struct list_head vif_list;
+
+	/* protect vif list */
+	struct mutex vif_mutex;
+	struct srcu_struct srcu;
+	u8 open_ifcs;
+
+	/* protect head of transmit queue */
+	struct mutex txq_add_to_head_cs;
+
+	/* protect txq_entry_t transmit queue */
+	spinlock_t txq_spinlock;
+
+	/* protect rxq_entry_t receiver queue */
+	struct mutex rxq_cs;
+
+	/* lock to protect hif access */
+	struct mutex hif_cs;
+
+	struct completion cfg_event;
+	struct completion sync_event;
+	struct completion txq_event;
+	struct completion txq_thread_started;
+
+	struct task_struct *txq_thread;
+
+	int quit;
+
+	/* lock to protect issue of wid command to firmware */
+	struct mutex cfg_cmd_lock;
+	struct wilc_cfg_frame cfg_frame;
+	u32 cfg_frame_offset;
+	u8 cfg_seq_no;
+
+	u8 *rx_buffer;
+	u32 rx_buffer_offset;
+	u8 *tx_buffer;
+
+	struct txq_entry_t txq_head;
+	int txq_entries;
+
+	struct rxq_entry_t rxq_head;
+
+	const struct firmware *firmware;
+
+	struct device *dev;
+	bool suspend_event;
+
+	int clients_count;
+	struct workqueue_struct *hif_workqueue;
+	enum chip_ps_states chip_ps_state;
+	struct wilc_cfg cfg;
+	void *bus_data;
+	struct net_device *monitor_dev;
+
+	/* deinit lock */
+	struct mutex deinit_lock;
+	u8 sta_ch;
+	u8 op_ch;
+	struct ieee80211_channel channels[ARRAY_SIZE(wilc_2ghz_channels)];
+	struct ieee80211_rate bitrates[ARRAY_SIZE(wilc_bitrates)];
+	struct ieee80211_supported_band band;
+	u32 cipher_suites[ARRAY_SIZE(wilc_cipher_suites)];
+};
+
+struct wilc_wfi_mon_priv {
+	struct net_device *real_ndev;
+};
+
+void wilc_frmw_to_host(struct wilc *wilc, u8 *buff, u32 size, u32 pkt_offset);
+void wilc_mac_indicate(struct wilc *wilc);
+void wilc_netdev_cleanup(struct wilc *wilc);
+void wilc_wfi_mgmt_rx(struct wilc *wilc, u8 *buff, u32 size);
+void wilc_wlan_set_bssid(struct net_device *wilc_netdev, u8 *bssid, u8 mode);
+struct wilc_vif *wilc_netdev_ifc_init(struct wilc *wl, const char *name,
+				      int vif_type, enum nl80211_iftype type,
+				      bool rtnl_locked);
+#endif
-- 
2.24.0
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
