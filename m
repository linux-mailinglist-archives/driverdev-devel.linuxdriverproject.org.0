Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C6281817A8
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Mar 2020 13:18:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BE1DF87A11;
	Wed, 11 Mar 2020 12:18:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BFn1e+2v8fZS; Wed, 11 Mar 2020 12:18:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 34864879A6;
	Wed, 11 Mar 2020 12:18:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CB2531BF599
 for <devel@linuxdriverproject.org>; Wed, 11 Mar 2020 12:18:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C8408847F8
 for <devel@linuxdriverproject.org>; Wed, 11 Mar 2020 12:18:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sJ_J4NYmEf4G for <devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 12:18:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa6.microchip.iphmx.com (esa6.microchip.iphmx.com
 [216.71.154.253])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4C78C84828
 for <devel@driverdev.osuosl.org>; Wed, 11 Mar 2020 12:18:46 +0000 (UTC)
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Ajay.Kathat@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Ajay.Kathat@microchip.com";
 x-sender="Ajay.Kathat@microchip.com"; x-conformance=spf_only;
 x-record-type="v=spf1"; x-record-text="v=spf1 mx
 a:ushub1.microchip.com a:smtpout.microchip.com
 -exists:%{i}.spf.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Ajay.Kathat@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Ajay.Kathat@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: CgpQzqJCZbB2IPLL6kmHo9dsFDylp22aE9OWJsZXiHzVDuDv8OGah6vsu9yT5yfvJla9vTKHSa
 QVaRvn5eMBwDgJvd3u7Fr1TEzMY463tk1v45So9eBcw7Rkf3bD7dD5rDSt4OB3BPmkzaHrRhO/
 lBk04dTYEneBkgb+A0jbtXGHKThHELGWGyvCc901S5MkT3JIAYmPelqh3tdAOC3jT4oyiXMaV4
 BVEUwJMT67G5VY2UMI/R2eTjzQSIr+3OtE5ObuPsJ+87YpZvC+efXc41J+vhBWD8nxLl/5xWVA
 5AQ=
X-IronPort-AV: E=Sophos;i="5.70,540,1574146800"; 
   d="scan'208";a="5254832"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 11 Mar 2020 05:18:45 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 11 Mar 2020 05:18:45 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Wed, 11 Mar 2020 05:18:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HfljdJjLb//+kN0bggjhiLdCADZ7QblHXnSPrkub99Y1OVjYXGFyzXENEVQ1A9YW2HbY3u6SWbfY6LyPiz5kQt6B4VHFYVZwkH/hjOrJxGIjaevLvGmaRqQzVvjLt+WYd9LN78xPo4G5zb8tAgeAnmX+ZpAou9CvNjInOjj6CLgVduORfVVrhComu7ng3uUeNN6mvljU5hw0CREI8wmsaxhPaSlGczkxAI20hDEtP6Of6KCr/WLCjbMIVI4Dgixk8TGRxtSjwqpPPI/EiVsZweukBw7V3pU/XoezTmfzYErXz8BeNYsvFWxCT2wBHldZJ6PelCo/8nWNUh5PPapdXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MiAsrOYsP30GtRBrM48mwYCMUnIJvzhFbAQwDwmMWJ0=;
 b=eaergFSh3yr6rmyjdOMIae8CqQwdDX9Vo5a7/bgjs5I1JP6n/6jKnZHymNIbVOJ+gLLY+imoRFr1/b39GAbDAp+ykztJpaeIHXQmkI8TJFC46ffAEcqPzy+GcDpJUGXiBUYmKFznJgccBwLFE9KRuCJ1OKVPnxzmZe4aixWP9jiw6LxxECbT9nOZoTDM1wMw3R/4oZKpmw4JumPlUIjkFLf+AgdT1kqnyNKTeHjcTshJFNfS9SHg8QQbaarvvBxpPbwQwlj2AsNl2mcOYHnPlUnfQPud/qrmTfp/+Sxshr44/Q2ZAhUNlU3TGoasvinOl2NKV9pegfeOJWU4Ky88Yg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MiAsrOYsP30GtRBrM48mwYCMUnIJvzhFbAQwDwmMWJ0=;
 b=TQPM5oEmCQzmMghSSu22W6m/B2eUmiQfQQfkpQ/Iep6waBYY+AuFMdt+wEb8dcxeb8YlLH0BNMZENFoHLXMWakztirtgVE7PWZ0NwYgKLSrZRlSLiNKV/9vwY+ai6YDcgCVqt083Acu4d2lleec6whTWzvDSOqinFmyFnuiczKU=
Received: from BYAPR11MB3125.namprd11.prod.outlook.com (2603:10b6:a03:8e::32)
 by BYAPR11MB2805.namprd11.prod.outlook.com (2603:10b6:a02:c1::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.14; Wed, 11 Mar
 2020 12:18:41 +0000
Received: from BYAPR11MB3125.namprd11.prod.outlook.com
 ([fe80::c27:87cf:ca4:d86e]) by BYAPR11MB3125.namprd11.prod.outlook.com
 ([fe80::c27:87cf:ca4:d86e%4]) with mapi id 15.20.2793.013; Wed, 11 Mar 2020
 12:18:41 +0000
From: <Ajay.Kathat@microchip.com>
To: <linux-wireless@vger.kernel.org>
Subject: [PATCH v5 01/17] wilc1000: add hif.h
Thread-Topic: [PATCH v5 01/17] wilc1000: add hif.h
Thread-Index: AQHV958yXyXB7giAEUeJSrkRyyuM3Q==
Date: Wed, 11 Mar 2020 12:18:40 +0000
Message-ID: <20200311121809.5610-2-ajay.kathat@microchip.com>
References: <20200311121809.5610-1-ajay.kathat@microchip.com>
In-Reply-To: <20200311121809.5610-1-ajay.kathat@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-originating-ip: [121.244.27.38]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1dba8de8-aa35-4e93-e751-08d7c5b65649
x-ms-traffictypediagnostic: BYAPR11MB2805:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB2805699B5D41F0B4E007BE0BE3FC0@BYAPR11MB2805.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:127;
x-forefront-prvs: 0339F89554
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(376002)(136003)(346002)(396003)(366004)(199004)(478600001)(2906002)(71200400001)(8936002)(81166006)(81156014)(316002)(5660300002)(54906003)(6506007)(1076003)(8676002)(6512007)(86362001)(36756003)(107886003)(4326008)(6486002)(76116006)(91956017)(66476007)(64756008)(66446008)(66946007)(66556008)(6916009)(2616005)(186003)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR11MB2805;
 H:BYAPR11MB3125.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ocIbQrfou7wdB8rhxqUky5Yhj/jqBtxgIDj+e0JHozo1V/vDbZdpXYvmGalVPH/I8plKUcvAeL7cWDzcy8OdcAgKWEPz6Q2/8VZUAdatS8MKQmLzLbRS+TqlTT/zsn7D13JRQ00nP6eX4qveytfgOQ79OoHIpujh19vKE0GIFpB3rxMZ7VEhPQNEzvNgoJlI1TmfsmRKFJ7ifZRTXxtgQPmaOLcSY8zGrZWCzn5KB5BcBU1vDsxHMnaUcqr9AzTNA3XGPwke62F26aeUi24yqkr/uJVCsrcBbJuoRwE/zr5/iDlKzCN8/io0w3l7ryZJs9gchJ5F2LTK9riPkZmAMaeN9pScChFP/5yGdEyGCURG7Gb6evAZyyu/S7c79HANmZIOdd/k6DqTIpPEWAtz+BXTDOSg4D0wy4p3y1h6rbnIZMaCdoDj99Au2BTP+AFx
x-ms-exchange-antispam-messagedata: ZhnTUJhrnHsviCA4st0zHJF04wCxrK1H9b0FKN5cMx0baSwgo/XjG3l8W5YNTbj+I4kn4rYUGeuOW/zwwHY5BJRrkOZOdeS6Ps0C46GY39A7kmEMHZ9zTb6xq1oWC3J1PmC3Q7PpekfXnermTui9/w==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 1dba8de8-aa35-4e93-e751-08d7c5b65649
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2020 12:18:40.4826 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UnSrzUhb//k/hdx/9HubtRKJhdq65VcJMuTALPN9EThA5zatTmvA8jYacL9/jgVyR1eQDSWc8QBLyKoSNmbRBmfZUcktjMCk8v2vwXj5KSE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2805
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
