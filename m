Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FEA9175FE3
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Mar 2020 17:35:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6AB95204B6;
	Mon,  2 Mar 2020 16:34:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XX6w+mU8bv+B; Mon,  2 Mar 2020 16:34:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9C48E204A6;
	Mon,  2 Mar 2020 16:34:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EFD741BF321
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 16:34:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EAFB9877E9
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 16:34:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jTs2gSJAyqNw for <devel@linuxdriverproject.org>;
 Mon,  2 Mar 2020 16:34:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9B7AE87816
 for <devel@driverdev.osuosl.org>; Mon,  2 Mar 2020 16:34:50 +0000 (UTC)
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Ajay.Kathat@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Ajay.Kathat@microchip.com";
 x-sender="Ajay.Kathat@microchip.com"; x-conformance=spf_only;
 x-record-type="v=spf1"; x-record-text="v=spf1 mx
 a:ushub1.microchip.com a:smtpout.microchip.com
 -exists:%{i}.spf.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Ajay.Kathat@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Ajay.Kathat@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: n9nOUU703OmtvOB4YfdYVYmQdvY7pzto3gNAH8sIFSkF0SbBuOVKIXUPbsvquRFD7OEbRn11E4
 OHuJ3X1L+h3lbGTDCptawRQoAHfxDkURk5QyOzEgk5yhpSspC7U5C1Km7EUaqVMGPHr6rwn7wl
 nSS5lJXYqxwzRV+URmCC27vcEPZCHyRtZWGhIsxFnws7cu4ArnOAhELzGEa0bNEuVpR4NkF+ND
 Z+Cdp0PdZIGdYt39/0qcNePc42mFBsZrqa5swE5M65ItsMD1dMS9ogDMqkTzd3NS9nlGiq7M09
 3ro=
X-IronPort-AV: E=Sophos;i="5.70,507,1574146800"; d="scan'208";a="67327151"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 02 Mar 2020 09:34:33 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 2 Mar 2020 09:34:32 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 2 Mar 2020 09:34:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hHTXA90yHGx34h0NV/bk8yYi1PhdfSbmOLjeWXb6tkQLHgaXWx8diAs03zqIso5MCPm7kS7Ip8Fr87ZbjZ4avjYKUDEX3xymDmm6ny0hOTrGKJJ7PIUTCIL17omCVzAUxY5+JN9jO5NKtPdvIhZt0LSq1ZlOQCNjikbdQh8WZsbadWWsEMqxgT+crSgqBJMIauQRn79xAmgM6jNj0rztMBy/WAYFLvGeTVbOGKsN2EZOBFvwiQaUB2C1mypGYXQoDXhOidVrco9xNRkqJXv0nnmU9fO+pcjn3eiwiqPHUrcHHDwYrOD5EoamXzIp+YSRl/VgWfFw/ibDgutr3ofaXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MiAsrOYsP30GtRBrM48mwYCMUnIJvzhFbAQwDwmMWJ0=;
 b=DRpyS1Yslj4ErHiv5jGEUFF5it+tQSEtfAzcspvkdKGgMJ3hiicJs8xPZzhwTbjLJ3Olx0kVrwI5FuMdihq9FjcuofyF5CyjkrFs5cZj3hXrscTWVCcoGi3rsjQvUbchcUB3j95K+NASRbuPRqCiU5M9VPw9Wp26K/HmCHoN0lEuMcVZ0Nc7Qr74khDBrZZQ1nqfEsgASjiowJT/THZE0no+t/yTqTtUA8rNa7b1tXXoyZBXXoY0d3KCZZ2o0D2fd1QKlmm0JG7qh9HNdJaghQ0fYRcGsy3tM+rEqN1Htk29RSvXd5wER459namQBU5pF/n60lhQewxBbwnG7PIr7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MiAsrOYsP30GtRBrM48mwYCMUnIJvzhFbAQwDwmMWJ0=;
 b=YqP9IgQ7n2pOwAXGTvLf4VD7BqhyzLj408oKl0mamhrFQ1095T7fQcyFc4foW0idB2pUXg7auCdyURbbYuITYMfQ19JnkSKHwsg7fjbZ4drTjUf/u5J7VAt+e1LYlvcgte+XV7r9GI+ChLcCVMJcyzW8sAk+JKX+Ny5XnbFesp4=
Received: from BN6PR11MB3985.namprd11.prod.outlook.com (2603:10b6:405:7b::14)
 by BN6PR11MB1411.namprd11.prod.outlook.com (2603:10b6:404:3c::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.14; Mon, 2 Mar
 2020 16:34:30 +0000
Received: from BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::ec62:e7fd:f17c:dfd4]) by BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::ec62:e7fd:f17c:dfd4%3]) with mapi id 15.20.2772.019; Mon, 2 Mar 2020
 16:34:30 +0000
From: <Ajay.Kathat@microchip.com>
To: <linux-wireless@vger.kernel.org>
Subject: [PATCH v4 01/18] wilc1000: add hif.h
Thread-Topic: [PATCH v4 01/18] wilc1000: add hif.h
Thread-Index: AQHV8LByJyrnXAnKxEWeIlg34xayzQ==
Date: Mon, 2 Mar 2020 16:34:30 +0000
Message-ID: <20200302163414.4342-2-ajay.kathat@microchip.com>
References: <20200302163414.4342-1-ajay.kathat@microchip.com>
In-Reply-To: <20200302163414.4342-1-ajay.kathat@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-originating-ip: [121.244.27.38]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4fcb8495-c8b2-4ccc-7c56-08d7bec794e6
x-ms-traffictypediagnostic: BN6PR11MB1411:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN6PR11MB1411B524B85511EA87B014EFE3E70@BN6PR11MB1411.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:127;
x-forefront-prvs: 033054F29A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(376002)(346002)(136003)(366004)(396003)(189003)(199004)(26005)(186003)(8936002)(2616005)(6916009)(316002)(478600001)(36756003)(54906003)(2906002)(86362001)(8676002)(6486002)(81166006)(81156014)(6512007)(71200400001)(6506007)(1076003)(107886003)(66476007)(66946007)(4326008)(5660300002)(76116006)(91956017)(66556008)(64756008)(66446008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN6PR11MB1411;
 H:BN6PR11MB3985.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Dw5JICSGH7TMnHJJeufgDCPvWMBHbsi8NGTc61cKRiyHW9kR9eZfA5gl5v1FgwXJWO1wmyy4DtDTtvA0bbYvRYzeLMHgKjowrgrKf4ZxyzIwXvpVhOc44mOkqEdsKoaKgCTjx2eKTdnyep12ndlrPTN9dodZqA4kJ/Lxp/Uhz9AbT+QitRPdqithFsK1dBUOVOOwf38DW0n9Mwvha1/mSNjIUqpn9AqdCuQp/5TDHfFszEJlF/BeUCWJid0GQy/SShQ4cpED+OOdTcLcS5n9k8IQZcD+Ksp2uaNZI1lQSMaE2RWWFiDqYFXh9Ac1+x4Oq0ylc363L8PcFmAarNlBFTZg3vZrm5nGQCHe3nMh2pG2WJO0sC4nRZmB7whlaL15m/vLvxXf06qF/lasfspPkX4gr9/M+U9XBOZba5McfiWSP6qQp2qQqkW8SV3ql2xK
x-ms-exchange-antispam-messagedata: /bFkUe/Xj1bbWnunJx9JVsvfNV0h9ktyu3dV7/jvfMgmAgqAGPbN03zArnLgwH74Nidv+3+pnoEMs1KO65Uq69051YBuSUs8JJ/6hhjGxxqjRLwzRoZAJbvZQWScQctkQCxPIEVOwvs0hsriynzeQQ==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 4fcb8495-c8b2-4ccc-7c56-08d7bec794e6
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2020 16:34:30.0358 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GVbSl9OVGQotajncx+YCSlICUsNvWusXK2GnS74whsUr9K2mhmENzAHbj38ca6vqHc/I/8Jm9ED7UBWpiQcYgPbcCZe6Tk2jJD1ACuCG51w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1411
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
