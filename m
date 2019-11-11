Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 188B8F74F1
	for <lists+driverdev-devel@lfdr.de>; Mon, 11 Nov 2019 14:31:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 40A1487E4D;
	Mon, 11 Nov 2019 13:31:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I8Suppapplw5; Mon, 11 Nov 2019 13:31:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CB2E486DD3;
	Mon, 11 Nov 2019 13:31:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 00A801BF3DE
 for <devel@linuxdriverproject.org>; Mon, 11 Nov 2019 13:31:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E30DD86D11
 for <devel@linuxdriverproject.org>; Mon, 11 Nov 2019 13:31:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XtJZavOXg0BV for <devel@linuxdriverproject.org>;
 Mon, 11 Nov 2019 13:31:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3CB5686CD3
 for <devel@driverdev.osuosl.org>; Mon, 11 Nov 2019 13:31:14 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id t26so13216265wmi.4
 for <devel@driverdev.osuosl.org>; Mon, 11 Nov 2019 05:31:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=o/rdDkRzfgUjzCts37yR7u4980P6JUZWSN+RyW3zXS4=;
 b=LpJiCbUt8/od+ZoLPitmR38wQpFyOd1BMGie25lH3K/rqEWkk6o2cAcgY3YB7tIwMl
 BtNam4L/RW9nlxCJeBOuCdcDTK6qsjJUKTlNFoPF6xGgvC3C0BKjaCTzo5DP7mxTnESi
 r2zEhxOzvZsWkbN35oLcqr1ZVeuAVzGydfGKFHc0KVXHb0iwZ5RSqKSTjcBI5eYJ8mrN
 Pk7R1D2wSheM2BlGqevBaaARKEzUM4cpn9oJbOvfzvw+BbjOnU62GN2YdYHpti2cOkoT
 WcxKzyoZUlsBxxcUouOCM067T7cuFMxwBjnXLbruL+gQz+CnDV7r8kX2Lk5zLFN4G8ej
 +AsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=o/rdDkRzfgUjzCts37yR7u4980P6JUZWSN+RyW3zXS4=;
 b=Chm3DyksQdBPBYmtaHWIS0eyz3/6Dnw9RGGr7MOLssv401N+rqUVpx1I02xJSVazvV
 BQMkO0p7puE07ma+5V6VGJp24dOj0ElEfk5rO9U3y7Dw8BZ0yMfYiDSfvVQK8oOxi8wa
 ptbTdDgJDN1tsGTq5Wvl63r7tsu5Q0E7j5Z5r+I9UgijnU9DnlNSMIrW/3MGSDqwujH4
 Zov73RslK1pw+m4AYG0hBF11enI/qdgJtc86cmcD8+16MDKRZVqjU3mw8S65ybQZqelx
 nnbe3ZXfj1olaiCv53SAVkDLZ/9XZydtAWdOCj3GptrWDRO6xOA2ITySOm6AXr/rjiLk
 JcVQ==
X-Gm-Message-State: APjAAAUn4g3J9KJax0A9MJOPtGCz2UbAg5PEQhFkIFCltQOQAGotmVTg
 4MDeHkqj0CtBXr8g76G9kA==
X-Google-Smtp-Source: APXvYqxb+S+hxa4/j10IyDZjAmhFIUva7341tMfENQEoD+BxmgqRDNOcvfBf0YpoSC7AMw3bPf0+Gg==
X-Received: by 2002:a1c:480a:: with SMTP id v10mr21201100wma.138.1573479071814; 
 Mon, 11 Nov 2019 05:31:11 -0800 (PST)
Received: from ninjahub.lan (79-73-36-243.dynamic.dsl.as9105.com.
 [79.73.36.243])
 by smtp.googlemail.com with ESMTPSA id w11sm8470143wra.83.2019.11.11.05.31.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Nov 2019 05:31:11 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 1/3] staging: wfx: replace uintXX_t to uXX and intXX_t to
 sXX
Date: Mon, 11 Nov 2019 13:30:53 +0000
Message-Id: <20191111133055.214410-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, Jules Irenge <jbi.octave@gmail.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Replace uint8_t to u8, uint16_t to u16, uint32_t to u32
int8_t to s8,int16_t to s16 and int32_t to s32
As per recommendation of checkpatch tool.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
Changes
v1 had a spacing error
v2 fixes the error and includes all the changes related to this patch in
the driver.

 drivers/staging/wfx/bh.c              |   2 +-
 drivers/staging/wfx/data_tx.c         |  10 +-
 drivers/staging/wfx/data_tx.h         |  18 +-
 drivers/staging/wfx/hif_api_cmd.h     | 498 +++++++++++++-------------
 drivers/staging/wfx/hif_api_general.h | 212 +++++------
 drivers/staging/wfx/hif_api_mib.h     | 477 ++++++++++++------------
 drivers/staging/wfx/hif_tx.c          |   3 +-
 drivers/staging/wfx/hif_tx.h          |   7 +-
 drivers/staging/wfx/hif_tx_mib.h      |   2 +-
 drivers/staging/wfx/key.c             |  32 +-
 drivers/staging/wfx/secure_link.h     |   6 +-
 drivers/staging/wfx/sta.c             |  13 +-
 drivers/staging/wfx/sta.h             |   2 +-
 drivers/staging/wfx/wfx.h             |  10 +-
 14 files changed, 649 insertions(+), 643 deletions(-)

diff --git a/drivers/staging/wfx/bh.c b/drivers/staging/wfx/bh.c
index 955ed3a1dd73..2432ba95c2f5 100644
--- a/drivers/staging/wfx/bh.c
+++ b/drivers/staging/wfx/bh.c
@@ -239,7 +239,7 @@ static int bh_work_tx(struct wfx_dev *wdev, int max_msg)
  */
 static void ack_sdio_data(struct wfx_dev *wdev)
 {
-	uint32_t cfg_reg;
+	u32 cfg_reg;
 
 	config_reg_read(wdev, &cfg_reg);
 	if (cfg_reg & 0xFF) {
diff --git a/drivers/staging/wfx/data_tx.c b/drivers/staging/wfx/data_tx.c
index ea4205ac2149..b722e9773232 100644
--- a/drivers/staging/wfx/data_tx.c
+++ b/drivers/staging/wfx/data_tx.c
@@ -107,7 +107,7 @@ static void wfx_tx_policy_build(struct wfx_vif *wvif, struct tx_policy *policy,
 
 	for (i = 0; i < IEEE80211_TX_MAX_RATES; ++i) {
 		int rateid;
-		uint8_t count;
+		u8 count;
 
 		if (rates[i].idx < 0)
 			break;
@@ -477,7 +477,7 @@ static void wfx_tx_manage_pm(struct wfx_vif *wvif, struct ieee80211_hdr *hdr,
 		ieee80211_sta_set_buffered(sta, tx_priv->tid, true);
 }
 
-static uint8_t wfx_tx_get_raw_link_id(struct wfx_vif *wvif,
+static u8 wfx_tx_get_raw_link_id(struct wfx_vif *wvif,
 				      struct ieee80211_sta *sta,
 				      struct ieee80211_hdr *hdr)
 {
@@ -542,11 +542,11 @@ static void wfx_tx_fixup_rates(struct ieee80211_tx_rate *rates)
 		rates[i].flags &= ~IEEE80211_TX_RC_SHORT_GI;
 }
 
-static uint8_t wfx_tx_get_rate_id(struct wfx_vif *wvif,
+static u8 wfx_tx_get_rate_id(struct wfx_vif *wvif,
 				  struct ieee80211_tx_info *tx_info)
 {
 	bool tx_policy_renew = false;
-	uint8_t rate_id;
+	u8 rate_id;
 
 	rate_id = wfx_tx_policy_get(wvif,
 				    tx_info->driver_rates, &tx_policy_renew);
@@ -584,7 +584,7 @@ static struct hif_ht_tx_parameters wfx_tx_get_tx_parms(struct wfx_dev *wdev, str
 	return ret;
 }
 
-static uint8_t wfx_tx_get_tid(struct ieee80211_hdr *hdr)
+static u8 wfx_tx_get_tid(struct ieee80211_hdr *hdr)
 {
 	// FIXME: ieee80211_get_tid(hdr) should be sufficient for all cases.
 	if (!ieee80211_is_data(hdr->frame_control))
diff --git a/drivers/staging/wfx/data_tx.h b/drivers/staging/wfx/data_tx.h
index f74d1988925d..29faa5640516 100644
--- a/drivers/staging/wfx/data_tx.h
+++ b/drivers/staging/wfx/data_tx.h
@@ -31,17 +31,17 @@ enum wfx_link_status {
 struct wfx_link_entry {
 	unsigned long		timestamp;
 	enum wfx_link_status	status;
-	uint8_t			mac[ETH_ALEN];
-	uint8_t			old_mac[ETH_ALEN];
-	uint8_t			buffered[WFX_MAX_TID];
+	u8			mac[ETH_ALEN];
+	u8			old_mac[ETH_ALEN];
+	u8			buffered[WFX_MAX_TID];
 	struct sk_buff_head	rx_queue;
 };
 
 struct tx_policy {
 	struct list_head link;
-	uint8_t rates[12];
-	uint8_t usage_count;
-	uint8_t uploaded;
+	u8 rates[12];
+	u8 usage_count;
+	u8 uploaded;
 };
 
 struct tx_policy_cache {
@@ -55,9 +55,9 @@ struct tx_policy_cache {
 struct wfx_tx_priv {
 	ktime_t xmit_timestamp;
 	struct ieee80211_key_conf *hw_key;
-	uint8_t link_id;
-	uint8_t raw_link_id;
-	uint8_t tid;
+	u8 link_id;
+	u8 raw_link_id;
+	u8 tid;
 } __packed;
 
 void wfx_tx_policy_init(struct wfx_vif *wvif);
diff --git a/drivers/staging/wfx/hif_api_cmd.h b/drivers/staging/wfx/hif_api_cmd.h
index 7c5d1ea6098d..c15831de4ff4 100644
--- a/drivers/staging/wfx/hif_api_cmd.h
+++ b/drivers/staging/wfx/hif_api_cmd.h
@@ -85,10 +85,10 @@ enum hif_status {
 };
 
 struct hif_reset_flags {
-	uint8_t    reset_stat:1;
-	uint8_t    reset_all_int:1;
-	uint8_t    reserved1:6;
-	uint8_t    reserved2[3];
+	u8    reset_stat:1;
+	u8    reset_all_int:1;
+	u8    reserved1:6;
+	u8    reserved2[3];
 } __packed;
 
 struct hif_req_reset {
@@ -96,121 +96,121 @@ struct hif_req_reset {
 } __packed;
 
 struct hif_cnf_reset {
-	uint32_t   status;
+	u32   status;
 } __packed;
 
 struct hif_req_read_mib {
-	uint16_t   mib_id;
-	uint16_t   reserved;
+	u16   mib_id;
+	u16   reserved;
 } __packed;
 
 struct hif_cnf_read_mib {
-	uint32_t   status;
-	uint16_t   mib_id;
-	uint16_t   length;
-	uint8_t    mib_data[];
+	u32   status;
+	u16   mib_id;
+	u16   length;
+	u8    mib_data[];
 } __packed;
 
 struct hif_req_write_mib {
-	uint16_t   mib_id;
-	uint16_t   length;
-	uint8_t    mib_data[];
+	u16   mib_id;
+	u16   length;
+	u8    mib_data[];
 } __packed;
 
 struct hif_cnf_write_mib {
-	uint32_t   status;
+	u32   status;
 } __packed;
 
 struct hif_ie_flags {
-	uint8_t    beacon:1;
-	uint8_t    probe_resp:1;
-	uint8_t    probe_req:1;
-	uint8_t    reserved1:5;
-	uint8_t    reserved2;
+	u8    beacon:1;
+	u8    probe_resp:1;
+	u8    probe_req:1;
+	u8    reserved1:5;
+	u8    reserved2;
 } __packed;
 
 struct hif_ie_tlv {
-	uint8_t    type;
-	uint8_t    length;
-	uint8_t    data[];
+	u8    type;
+	u8    length;
+	u8    data[];
 } __packed;
 
 struct hif_req_update_ie {
 	struct hif_ie_flags ie_flags;
-	uint16_t   num_i_es;
+	u16   num_i_es;
 	struct hif_ie_tlv ie[];
 } __packed;
 
 struct hif_cnf_update_ie {
-	uint32_t   status;
+	u32   status;
 } __packed;
 
 struct hif_scan_type {
-	uint8_t    type:1;
-	uint8_t    mode:1;
-	uint8_t    reserved:6;
+	u8    type:1;
+	u8    mode:1;
+	u8    reserved:6;
 } __packed;
 
 struct hif_scan_flags {
-	uint8_t    fbg:1;
-	uint8_t    reserved1:1;
-	uint8_t    pre:1;
-	uint8_t    reserved2:5;
+	u8    fbg:1;
+	u8    reserved1:1;
+	u8    pre:1;
+	u8    reserved2:5;
 } __packed;
 
 struct hif_auto_scan_param {
-	uint16_t   interval;
-	uint8_t    reserved;
-	int8_t     rssi_thr;
+	u16   interval;
+	u8    reserved;
+	s8     rssi_thr;
 } __packed;
 
 struct hif_ssid_def {
-	uint32_t   ssid_length;
-	uint8_t    ssid[HIF_API_SSID_SIZE];
+	u32   ssid_length;
+	u8    ssid[HIF_API_SSID_SIZE];
 } __packed;
 
 #define HIF_API_MAX_NB_SSIDS                           2
 #define HIF_API_MAX_NB_CHANNELS                       14
 
 struct hif_req_start_scan {
-	uint8_t    band;
+	u8    band;
 	struct hif_scan_type scan_type;
 	struct hif_scan_flags scan_flags;
-	uint8_t    max_transmit_rate;
+	u8    max_transmit_rate;
 	struct hif_auto_scan_param auto_scan_param;
-	uint8_t    num_of_probe_requests;
-	uint8_t    probe_delay;
-	uint8_t    num_of_ssi_ds;
-	uint8_t    num_of_channels;
-	uint32_t   min_channel_time;
-	uint32_t   max_channel_time;
-	int32_t    tx_power_level;
-	uint8_t    ssid_and_channel_lists[];
+	u8    num_of_probe_requests;
+	u8    probe_delay;
+	u8    num_of_ssi_ds;
+	u8    num_of_channels;
+	u32   min_channel_time;
+	u32   max_channel_time;
+	s32    tx_power_level;
+	u8    ssid_and_channel_lists[];
 } __packed;
 
 struct hif_start_scan_req_cstnbssid_body {
-	uint8_t    band;
+	u8    band;
 	struct hif_scan_type scan_type;
 	struct hif_scan_flags scan_flags;
-	uint8_t    max_transmit_rate;
+	u8    max_transmit_rate;
 	struct hif_auto_scan_param auto_scan_param;
-	uint8_t    num_of_probe_requests;
-	uint8_t    probe_delay;
-	uint8_t    num_of_ssi_ds;
-	uint8_t    num_of_channels;
-	uint32_t   min_channel_time;
-	uint32_t   max_channel_time;
-	int32_t    tx_power_level;
+	u8    num_of_probe_requests;
+	u8    probe_delay;
+	u8    num_of_ssi_ds;
+	u8    num_of_channels;
+	u32   min_channel_time;
+	u32   max_channel_time;
+	s32    tx_power_level;
 	struct hif_ssid_def ssid_def[HIF_API_MAX_NB_SSIDS];
-	uint8_t    channel_list[];
+	u8    channel_list[];
 } __packed;
 
 struct hif_cnf_start_scan {
-	uint32_t   status;
+	u32   status;
 } __packed;
 
 struct hif_cnf_stop_scan {
-	uint32_t   status;
+	u32   status;
 } __packed;
 
 enum hif_pm_mode_status {
@@ -220,10 +220,10 @@ enum hif_pm_mode_status {
 };
 
 struct hif_ind_scan_cmpl {
-	uint32_t   status;
-	uint8_t    pm_mode;
-	uint8_t    num_channels_completed;
-	uint16_t   reserved;
+	u32   status;
+	u8    pm_mode;
+	u8    num_channels_completed;
+	u16   reserved;
 } __packed;
 
 enum hif_queue_id {
@@ -245,45 +245,45 @@ enum hif_stbc {
 };
 
 struct hif_queue {
-	uint8_t    queue_id:2;
-	uint8_t    peer_sta_id:4;
-	uint8_t    reserved:2;
+	u8    queue_id:2;
+	u8    peer_sta_id:4;
+	u8    reserved:2;
 } __packed;
 
 struct hif_data_flags {
-	uint8_t    more:1;
-	uint8_t    fc_offset:3;
-	uint8_t    reserved:4;
+	u8    more:1;
+	u8    fc_offset:3;
+	u8    reserved:4;
 } __packed;
 
 struct hif_tx_flags {
-	uint8_t    start_exp:1;
-	uint8_t    reserved:3;
-	uint8_t    retry_policy_index:4;
+	u8    start_exp:1;
+	u8    reserved:3;
+	u8    retry_policy_index:4;
 } __packed;
 
 struct hif_ht_tx_parameters {
-	uint8_t    frame_format:4;
-	uint8_t    fec_coding:1;
-	uint8_t    short_gi:1;
-	uint8_t    reserved1:1;
-	uint8_t    stbc:1;
-	uint8_t    reserved2;
-	uint8_t    aggregation:1;
-	uint8_t    reserved3:7;
-	uint8_t    reserved4;
+	u8    frame_format:4;
+	u8    fec_coding:1;
+	u8    short_gi:1;
+	u8    reserved1:1;
+	u8    stbc:1;
+	u8    reserved2;
+	u8    aggregation:1;
+	u8    reserved3:7;
+	u8    reserved4;
 } __packed;
 
 struct hif_req_tx {
-	uint32_t   packet_id;
-	uint8_t    max_tx_rate;
+	u32   packet_id;
+	u8    max_tx_rate;
 	struct hif_queue queue_id;
 	struct hif_data_flags data_flags;
 	struct hif_tx_flags tx_flags;
-	uint32_t   reserved;
-	uint32_t   expire_time;
+	u32   reserved;
+	u32   expire_time;
 	struct hif_ht_tx_parameters ht_tx_parameters;
-	uint8_t    frame[];
+	u8    frame[];
 } __packed;
 
 enum hif_qos_ackplcy {
@@ -294,26 +294,26 @@ enum hif_qos_ackplcy {
 };
 
 struct hif_tx_result_flags {
-	uint8_t    aggr:1;
-	uint8_t    requeue:1;
-	uint8_t    ack_policy:2;
-	uint8_t    txop_limit:1;
-	uint8_t    reserved1:3;
-	uint8_t    reserved2;
+	u8    aggr:1;
+	u8    requeue:1;
+	u8    ack_policy:2;
+	u8    txop_limit:1;
+	u8    reserved1:3;
+	u8    reserved2;
 } __packed;
 
 struct hif_cnf_tx {
-	uint32_t   status;
-	uint32_t   packet_id;
-	uint8_t    txed_rate;
-	uint8_t    ack_failures;
+	u32   status;
+	u32   packet_id;
+	u8    txed_rate;
+	u8    ack_failures;
 	struct hif_tx_result_flags tx_result_flags;
-	uint32_t   media_delay;
-	uint32_t   tx_queue_delay;
+	u32   media_delay;
+	u32   tx_queue_delay;
 } __packed;
 
 struct hif_cnf_multi_transmit {
-	uint32_t   num_tx_confs;
+	u32   num_tx_confs;
 	struct hif_cnf_tx   tx_conf_payload[];
 } __packed;
 
@@ -326,55 +326,55 @@ enum hif_ri_flags_encrypt {
 };
 
 struct hif_rx_flags {
-	uint8_t    encryp:3;
-	uint8_t    in_aggr:1;
-	uint8_t    first_aggr:1;
-	uint8_t    last_aggr:1;
-	uint8_t    defrag:1;
-	uint8_t    beacon:1;
-	uint8_t    tim:1;
-	uint8_t    bitmap:1;
-	uint8_t    match_ssid:1;
-	uint8_t    match_bssid:1;
-	uint8_t    more:1;
-	uint8_t    reserved1:1;
-	uint8_t    ht:1;
-	uint8_t    stbc:1;
-	uint8_t    match_uc_addr:1;
-	uint8_t    match_mc_addr:1;
-	uint8_t    match_bc_addr:1;
-	uint8_t    key_type:1;
-	uint8_t    key_index:4;
-	uint8_t    reserved2:1;
-	uint8_t    peer_sta_id:4;
-	uint8_t    reserved3:2;
-	uint8_t    reserved4:1;
+	u8    encryp:3;
+	u8    in_aggr:1;
+	u8    first_aggr:1;
+	u8    last_aggr:1;
+	u8    defrag:1;
+	u8    beacon:1;
+	u8    tim:1;
+	u8    bitmap:1;
+	u8    match_ssid:1;
+	u8    match_bssid:1;
+	u8    more:1;
+	u8    reserved1:1;
+	u8    ht:1;
+	u8    stbc:1;
+	u8    match_uc_addr:1;
+	u8    match_mc_addr:1;
+	u8    match_bc_addr:1;
+	u8    key_type:1;
+	u8    key_index:4;
+	u8    reserved2:1;
+	u8    peer_sta_id:4;
+	u8    reserved3:2;
+	u8    reserved4:1;
 } __packed;
 
 struct hif_ind_rx {
-	uint32_t   status;
-	uint16_t   channel_number;
-	uint8_t    rxed_rate;
-	uint8_t    rcpi_rssi;
+	u32   status;
+	u16   channel_number;
+	u8    rxed_rate;
+	u8    rcpi_rssi;
 	struct hif_rx_flags rx_flags;
-	uint8_t    frame[];
+	u8    frame[];
 } __packed;
 
 
 struct hif_req_edca_queue_params {
-	uint8_t    queue_id;
-	uint8_t    reserved1;
-	uint8_t    aifsn;
-	uint8_t    reserved2;
-	uint16_t   cw_min;
-	uint16_t   cw_max;
-	uint16_t   tx_op_limit;
-	uint16_t   allowed_medium_time;
-	uint32_t   reserved3;
+	u8    queue_id;
+	u8    reserved1;
+	u8    aifsn;
+	u8    reserved2;
+	u16   cw_min;
+	u16   cw_max;
+	u16   tx_op_limit;
+	u16   allowed_medium_time;
+	u32   reserved3;
 } __packed;
 
 struct hif_cnf_edca_queue_params {
-	uint32_t   status;
+	u32   status;
 } __packed;
 
 enum hif_ap_mode {
@@ -389,92 +389,92 @@ enum hif_preamble {
 };
 
 struct hif_join_flags {
-	uint8_t    reserved1:2;
-	uint8_t    force_no_beacon:1;
-	uint8_t    force_with_ind:1;
-	uint8_t    reserved2:4;
+	u8    reserved1:2;
+	u8    force_no_beacon:1;
+	u8    force_with_ind:1;
+	u8    reserved2:4;
 } __packed;
 
 struct hif_req_join {
-	uint8_t    mode;
-	uint8_t    band;
-	uint16_t   channel_number;
-	uint8_t    bssid[ETH_ALEN];
-	uint16_t   atim_window;
-	uint8_t    preamble_type;
-	uint8_t    probe_for_join;
-	uint8_t    reserved;
+	u8    mode;
+	u8    band;
+	u16   channel_number;
+	u8    bssid[ETH_ALEN];
+	u16   atim_window;
+	u8    preamble_type;
+	u8    probe_for_join;
+	u8    reserved;
 	struct hif_join_flags join_flags;
-	uint32_t   ssid_length;
-	uint8_t    ssid[HIF_API_SSID_SIZE];
-	uint32_t   beacon_interval;
-	uint32_t   basic_rate_set;
+	u32   ssid_length;
+	u8    ssid[HIF_API_SSID_SIZE];
+	u32   beacon_interval;
+	u32   basic_rate_set;
 } __packed;
 
 struct hif_cnf_join {
-	uint32_t   status;
+	u32   status;
 } __packed;
 
 struct hif_ind_join_complete {
-	uint32_t   status;
+	u32   status;
 } __packed;
 
 struct hif_bss_flags {
-	uint8_t    lost_count_only:1;
-	uint8_t    reserved:7;
+	u8    lost_count_only:1;
+	u8    reserved:7;
 } __packed;
 
 struct hif_req_set_bss_params {
 	struct hif_bss_flags bss_flags;
-	uint8_t    beacon_lost_count;
-	uint16_t   aid;
-	uint32_t   operational_rate_set;
+	u8    beacon_lost_count;
+	u16   aid;
+	u32   operational_rate_set;
 } __packed;
 
 struct hif_cnf_set_bss_params {
-	uint32_t   status;
+	u32   status;
 } __packed;
 
 struct hif_pm_mode {
-	uint8_t    enter_psm:1;
-	uint8_t    reserved:6;
-	uint8_t    fast_psm:1;
+	u8    enter_psm:1;
+	u8    reserved:6;
+	u8    fast_psm:1;
 } __packed;
 
 struct hif_req_set_pm_mode {
 	struct hif_pm_mode pm_mode;
-	uint8_t    fast_psm_idle_period;
-	uint8_t    ap_psm_change_period;
-	uint8_t    min_auto_ps_poll_period;
+	u8    fast_psm_idle_period;
+	u8    ap_psm_change_period;
+	u8    min_auto_ps_poll_period;
 } __packed;
 
 struct hif_cnf_set_pm_mode {
-	uint32_t   status;
+	u32   status;
 } __packed;
 
 struct hif_ind_set_pm_mode_cmpl {
-	uint32_t   status;
-	uint8_t    pm_mode;
-	uint8_t    reserved[3];
+	u32   status;
+	u8    pm_mode;
+	u8    reserved[3];
 } __packed;
 
 
 struct hif_req_start {
-	uint8_t    mode;
-	uint8_t    band;
-	uint16_t   channel_number;
-	uint32_t   reserved1;
-	uint32_t   beacon_interval;
-	uint8_t    dtim_period;
-	uint8_t    preamble_type;
-	uint8_t    reserved2;
-	uint8_t    ssid_length;
-	uint8_t    ssid[HIF_API_SSID_SIZE];
-	uint32_t   basic_rate_set;
+	u8    mode;
+	u8    band;
+	u16   channel_number;
+	u32   reserved1;
+	u32   beacon_interval;
+	u8    dtim_period;
+	u8    preamble_type;
+	u8    reserved2;
+	u8    ssid_length;
+	u8    ssid[HIF_API_SSID_SIZE];
+	u32   basic_rate_set;
 } __packed;
 
 struct hif_cnf_start {
-	uint32_t   status;
+	u32   status;
 } __packed;
 
 enum hif_beacon {
@@ -483,12 +483,12 @@ enum hif_beacon {
 };
 
 struct hif_req_beacon_transmit {
-	uint8_t    enable_beaconing;
-	uint8_t    reserved[3];
+	u8    enable_beaconing;
+	u8    reserved[3];
 } __packed;
 
 struct hif_cnf_beacon_transmit {
-	uint32_t   status;
+	u32   status;
 } __packed;
 
 enum hif_sta_map_direction {
@@ -497,32 +497,32 @@ enum hif_sta_map_direction {
 };
 
 struct hif_map_link_flags {
-	uint8_t    map_direction:1;
-	uint8_t    mfpc:1;
-	uint8_t    reserved:6;
+	u8    map_direction:1;
+	u8    mfpc:1;
+	u8    reserved:6;
 } __packed;
 
 struct hif_req_map_link {
-	uint8_t    mac_addr[ETH_ALEN];
+	u8    mac_addr[ETH_ALEN];
 	struct hif_map_link_flags map_link_flags;
-	uint8_t    peer_sta_id;
+	u8    peer_sta_id;
 } __packed;
 
 struct hif_cnf_map_link {
-	uint32_t   status;
+	u32   status;
 } __packed;
 
 struct hif_suspend_resume_flags {
-	uint8_t    resume:1;
-	uint8_t    reserved1:2;
-	uint8_t    bc_mc_only:1;
-	uint8_t    reserved2:4;
-	uint8_t    reserved3;
+	u8    resume:1;
+	u8    reserved1:2;
+	u8    bc_mc_only:1;
+	u8    reserved2:4;
+	u8    reserved3;
 } __packed;
 
 struct hif_ind_suspend_resume_tx {
 	struct hif_suspend_resume_flags suspend_resume_flags;
-	uint16_t   peer_sta_set;
+	u16   peer_sta_set;
 } __packed;
 
 
@@ -552,68 +552,68 @@ enum hif_key_type {
 };
 
 struct hif_wep_pairwise_key {
-	uint8_t    peer_address[ETH_ALEN];
-	uint8_t    reserved;
-	uint8_t    key_length;
-	uint8_t    key_data[HIF_API_WEP_KEY_DATA_SIZE];
+	u8    peer_address[ETH_ALEN];
+	u8    reserved;
+	u8    key_length;
+	u8    key_data[HIF_API_WEP_KEY_DATA_SIZE];
 } __packed;
 
 struct hif_wep_group_key {
-	uint8_t    key_id;
-	uint8_t    key_length;
-	uint8_t    reserved[2];
-	uint8_t    key_data[HIF_API_WEP_KEY_DATA_SIZE];
+	u8    key_id;
+	u8    key_length;
+	u8    reserved[2];
+	u8    key_data[HIF_API_WEP_KEY_DATA_SIZE];
 } __packed;
 
 struct hif_tkip_pairwise_key {
-	uint8_t    peer_address[ETH_ALEN];
-	uint8_t    reserved[2];
-	uint8_t    tkip_key_data[HIF_API_TKIP_KEY_DATA_SIZE];
-	uint8_t    rx_mic_key[HIF_API_RX_MIC_KEY_SIZE];
-	uint8_t    tx_mic_key[HIF_API_TX_MIC_KEY_SIZE];
+	u8    peer_address[ETH_ALEN];
+	u8    reserved[2];
+	u8    tkip_key_data[HIF_API_TKIP_KEY_DATA_SIZE];
+	u8    rx_mic_key[HIF_API_RX_MIC_KEY_SIZE];
+	u8    tx_mic_key[HIF_API_TX_MIC_KEY_SIZE];
 } __packed;
 
 struct hif_tkip_group_key {
-	uint8_t    tkip_key_data[HIF_API_TKIP_KEY_DATA_SIZE];
-	uint8_t    rx_mic_key[HIF_API_RX_MIC_KEY_SIZE];
-	uint8_t    key_id;
-	uint8_t    reserved[3];
-	uint8_t    rx_sequence_counter[HIF_API_RX_SEQUENCE_COUNTER_SIZE];
+	u8    tkip_key_data[HIF_API_TKIP_KEY_DATA_SIZE];
+	u8    rx_mic_key[HIF_API_RX_MIC_KEY_SIZE];
+	u8    key_id;
+	u8    reserved[3];
+	u8    rx_sequence_counter[HIF_API_RX_SEQUENCE_COUNTER_SIZE];
 } __packed;
 
 struct hif_aes_pairwise_key {
-	uint8_t    peer_address[ETH_ALEN];
-	uint8_t    reserved[2];
-	uint8_t    aes_key_data[HIF_API_AES_KEY_DATA_SIZE];
+	u8    peer_address[ETH_ALEN];
+	u8    reserved[2];
+	u8    aes_key_data[HIF_API_AES_KEY_DATA_SIZE];
 } __packed;
 
 struct hif_aes_group_key {
-	uint8_t    aes_key_data[HIF_API_AES_KEY_DATA_SIZE];
-	uint8_t    key_id;
-	uint8_t    reserved[3];
-	uint8_t    rx_sequence_counter[HIF_API_RX_SEQUENCE_COUNTER_SIZE];
+	u8    aes_key_data[HIF_API_AES_KEY_DATA_SIZE];
+	u8    key_id;
+	u8    reserved[3];
+	u8    rx_sequence_counter[HIF_API_RX_SEQUENCE_COUNTER_SIZE];
 } __packed;
 
 struct hif_wapi_pairwise_key {
-	uint8_t    peer_address[ETH_ALEN];
-	uint8_t    key_id;
-	uint8_t    reserved;
-	uint8_t    wapi_key_data[HIF_API_WAPI_KEY_DATA_SIZE];
-	uint8_t    mic_key_data[HIF_API_MIC_KEY_DATA_SIZE];
+	u8    peer_address[ETH_ALEN];
+	u8    key_id;
+	u8    reserved;
+	u8    wapi_key_data[HIF_API_WAPI_KEY_DATA_SIZE];
+	u8    mic_key_data[HIF_API_MIC_KEY_DATA_SIZE];
 } __packed;
 
 struct hif_wapi_group_key {
-	uint8_t    wapi_key_data[HIF_API_WAPI_KEY_DATA_SIZE];
-	uint8_t    mic_key_data[HIF_API_MIC_KEY_DATA_SIZE];
-	uint8_t    key_id;
-	uint8_t    reserved[3];
+	u8    wapi_key_data[HIF_API_WAPI_KEY_DATA_SIZE];
+	u8    mic_key_data[HIF_API_MIC_KEY_DATA_SIZE];
+	u8    key_id;
+	u8    reserved[3];
 } __packed;
 
 struct hif_igtk_group_key {
-	uint8_t    igtk_key_data[HIF_API_IGTK_KEY_DATA_SIZE];
-	uint8_t    key_id;
-	uint8_t    reserved[3];
-	uint8_t    ipn[HIF_API_IPN_SIZE];
+	u8    igtk_key_data[HIF_API_IGTK_KEY_DATA_SIZE];
+	u8    key_id;
+	u8    reserved[3];
+	u8    ipn[HIF_API_IPN_SIZE];
 } __packed;
 
 union hif_privacy_key_data {
@@ -629,25 +629,25 @@ union hif_privacy_key_data {
 };
 
 struct hif_req_add_key {
-	uint8_t    type;
-	uint8_t    entry_index;
-	uint8_t    int_id:2;
-	uint8_t    reserved1:6;
-	uint8_t    reserved2;
+	u8    type;
+	u8    entry_index;
+	u8    int_id:2;
+	u8    reserved1:6;
+	u8    reserved2;
 	union hif_privacy_key_data key;
 } __packed;
 
 struct hif_cnf_add_key {
-	uint32_t   status;
+	u32   status;
 } __packed;
 
 struct hif_req_remove_key {
-	uint8_t    entry_index;
-	uint8_t    reserved[3];
+	u8    entry_index;
+	u8    reserved[3];
 } __packed;
 
 struct hif_cnf_remove_key {
-	uint32_t   status;
+	u32   status;
 } __packed;
 
 enum hif_event_ind {
@@ -667,13 +667,13 @@ enum hif_ps_mode_error {
 };
 
 union hif_event_data {
-	uint8_t    rcpi_rssi;
-	uint32_t   ps_mode_error;
-	uint32_t   peer_sta_set;
+	u8    rcpi_rssi;
+	u32   ps_mode_error;
+	u32   peer_sta_set;
 };
 
 struct hif_ind_event {
-	uint32_t   event_id;
+	u32   event_id;
 	union hif_event_data event_data;
 } __packed;
 
diff --git a/drivers/staging/wfx/hif_api_general.h b/drivers/staging/wfx/hif_api_general.h
index d885b55d2882..a069c3a21b4d 100644
--- a/drivers/staging/wfx/hif_api_general.h
+++ b/drivers/staging/wfx/hif_api_general.h
@@ -23,13 +23,13 @@
 #define HIF_COUNTER_MAX                    7
 
 struct hif_msg {
-	uint16_t    len;
-	uint8_t     id;
-	uint8_t     reserved:1;
-	uint8_t     interface:2;
-	uint8_t     seqnum:3;
-	uint8_t     encrypted:2;
-	uint8_t     body[];
+	u16    len;
+	u8     id;
+	u8     reserved:1;
+	u8     interface:2;
+	u8     seqnum:3;
+	u8     encrypted:2;
+	u8     body[];
 } __packed;
 
 enum hif_general_requests_ids {
@@ -117,22 +117,22 @@ enum hif_fw_type {
 };
 
 struct hif_capabilities {
-	uint8_t    link_mode:2;
-	uint8_t    reserved1:6;
-	uint8_t    reserved2;
-	uint8_t    reserved3;
-	uint8_t    reserved4;
+	u8    link_mode:2;
+	u8    reserved1:6;
+	u8    reserved2;
+	u8    reserved3;
+	u8    reserved4;
 } __packed;
 
 struct hif_otp_regul_sel_mode_info {
-	uint8_t    region_sel_mode:4;
-	uint8_t    reserved:4;
+	u8    region_sel_mode:4;
+	u8    reserved:4;
 } __packed;
 
 struct hif_otp_phy_info {
-	uint8_t    phy1_region:3;
-	uint8_t    phy0_region:3;
-	uint8_t    otp_phy_ver:2;
+	u8    phy1_region:3;
+	u8    phy0_region:3;
+	u8    otp_phy_ver:2;
 } __packed;
 
 #define API_OPN_SIZE                                    14
@@ -141,39 +141,39 @@ struct hif_otp_phy_info {
 #define API_FIRMWARE_LABEL_SIZE                         128
 
 struct hif_ind_startup {
-	uint32_t   status;
-	uint16_t   hardware_id;
-	uint8_t    opn[API_OPN_SIZE];
-	uint8_t    uid[API_UID_SIZE];
-	uint16_t   num_inp_ch_bufs;
-	uint16_t   size_inp_ch_buf;
-	uint8_t    num_links_ap;
-	uint8_t    num_interfaces;
-	uint8_t    mac_addr[2][ETH_ALEN];
-	uint8_t    api_version_minor;
-	uint8_t    api_version_major;
+	u32   status;
+	u16   hardware_id;
+	u8    opn[API_OPN_SIZE];
+	u8    uid[API_UID_SIZE];
+	u16   num_inp_ch_bufs;
+	u16   size_inp_ch_buf;
+	u8    num_links_ap;
+	u8    num_interfaces;
+	u8    mac_addr[2][ETH_ALEN];
+	u8    api_version_minor;
+	u8    api_version_major;
 	struct hif_capabilities capabilities;
-	uint8_t    firmware_build;
-	uint8_t    firmware_minor;
-	uint8_t    firmware_major;
-	uint8_t    firmware_type;
-	uint8_t    disabled_channel_list[API_DISABLED_CHANNEL_LIST_SIZE];
+	u8    firmware_build;
+	u8    firmware_minor;
+	u8    firmware_major;
+	u8    firmware_type;
+	u8    disabled_channel_list[API_DISABLED_CHANNEL_LIST_SIZE];
 	struct hif_otp_regul_sel_mode_info regul_sel_mode_info;
 	struct hif_otp_phy_info otp_phy_info;
-	uint32_t   supported_rate_mask;
-	uint8_t    firmware_label[API_FIRMWARE_LABEL_SIZE];
+	u32   supported_rate_mask;
+	u8    firmware_label[API_FIRMWARE_LABEL_SIZE];
 } __packed;
 
 struct hif_ind_wakeup {
 } __packed;
 
 struct hif_req_configuration {
-	uint16_t   length;
-	uint8_t    pds_data[];
+	u16   length;
+	u8    pds_data[];
 } __packed;
 
 struct hif_cnf_configuration {
-	uint32_t   status;
+	u32   status;
 } __packed;
 
 enum hif_gpio_mode {
@@ -187,8 +187,8 @@ enum hif_gpio_mode {
 };
 
 struct hif_req_control_gpio {
-	uint8_t gpio_label;
-	uint8_t gpio_mode;
+	u8 gpio_label;
+	u8 gpio_mode;
 } __packed;
 
 enum hif_gpio_error {
@@ -198,8 +198,8 @@ enum hif_gpio_error {
 };
 
 struct hif_cnf_control_gpio {
-	uint32_t status;
-	uint32_t value;
+	u32 status;
+	u32 value;
 } __packed;
 
 enum hif_generic_indication_type {
@@ -209,28 +209,28 @@ enum hif_generic_indication_type {
 };
 
 struct hif_rx_stats {
-	uint32_t   nb_rx_frame;
-	uint32_t   nb_crc_frame;
-	uint32_t   per_total;
-	uint32_t   throughput;
-	uint32_t   nb_rx_by_rate[API_RATE_NUM_ENTRIES];
-	uint16_t   per[API_RATE_NUM_ENTRIES];
-	int16_t    snr[API_RATE_NUM_ENTRIES];
-	int16_t    rssi[API_RATE_NUM_ENTRIES];
-	int16_t    cfo[API_RATE_NUM_ENTRIES];
-	uint32_t   date;
-	uint32_t   pwr_clk_freq;
-	uint8_t    is_ext_pwr_clk;
-	int8_t     current_temp;
+	u32   nb_rx_frame;
+	u32   nb_crc_frame;
+	u32   per_total;
+	u32   throughput;
+	u32   nb_rx_by_rate[API_RATE_NUM_ENTRIES];
+	u16   per[API_RATE_NUM_ENTRIES];
+	s16    snr[API_RATE_NUM_ENTRIES];
+	s16    rssi[API_RATE_NUM_ENTRIES];
+	s16    cfo[API_RATE_NUM_ENTRIES];
+	u32   date;
+	u32   pwr_clk_freq;
+	u8    is_ext_pwr_clk;
+	s8     current_temp;
 } __packed;
 
 union hif_indication_data {
 	struct hif_rx_stats                                   rx_stats;
-	uint8_t                                       raw_data[1];
+	u8                                       raw_data[1];
 };
 
 struct hif_ind_generic {
-	uint32_t indication_type;
+	u32 indication_type;
 	union hif_indication_data indication_data;
 } __packed;
 
@@ -238,7 +238,7 @@ struct hif_ind_generic {
 #define HIF_EXCEPTION_DATA_SIZE            124
 
 struct hif_ind_exception {
-	uint8_t    data[HIF_EXCEPTION_DATA_SIZE];
+	u8    data[HIF_EXCEPTION_DATA_SIZE];
 } __packed;
 
 
@@ -257,8 +257,8 @@ enum hif_error {
 };
 
 struct hif_ind_error {
-	uint32_t   type;
-	uint8_t    data[];
+	u32   type;
+	u8    data[];
 } __packed;
 
 enum hif_secure_link_state {
@@ -276,20 +276,20 @@ enum hif_sl_encryption_type {
 };
 
 struct hif_sl_msg_hdr {
-	uint32_t    seqnum:30;
-	uint32_t    encrypted:2;
+	u32    seqnum:30;
+	u32    encrypted:2;
 } __packed;
 
 struct hif_sl_msg {
 	struct hif_sl_msg_hdr hdr;
-	uint16_t        len;
-	uint8_t         payload[];
+	u16        len;
+	u8         payload[];
 } __packed;
 
 #define AES_CCM_TAG_SIZE     16
 
 struct hif_sl_tag {
-	uint8_t tag[16];
+	u8 tag[16];
 } __packed;
 
 enum hif_sl_mac_key_dest {
@@ -300,12 +300,12 @@ enum hif_sl_mac_key_dest {
 #define API_KEY_VALUE_SIZE      32
 
 struct hif_req_set_sl_mac_key {
-	uint8_t    otp_or_ram;
-	uint8_t    key_value[API_KEY_VALUE_SIZE];
+	u8    otp_or_ram;
+	u8    key_value[API_KEY_VALUE_SIZE];
 } __packed;
 
 struct hif_cnf_set_sl_mac_key {
-	uint32_t   status;
+	u32   status;
 } __packed;
 
 #define API_HOST_PUB_KEY_SIZE                           32
@@ -317,45 +317,45 @@ enum hif_sl_session_key_alg {
 };
 
 struct hif_req_sl_exchange_pub_keys {
-	uint8_t    algorithm:2;
-	uint8_t    reserved1:6;
-	uint8_t    reserved2[3];
-	uint8_t    host_pub_key[API_HOST_PUB_KEY_SIZE];
-	uint8_t    host_pub_key_mac[API_HOST_PUB_KEY_MAC_SIZE];
+	u8    algorithm:2;
+	u8    reserved1:6;
+	u8    reserved2[3];
+	u8    host_pub_key[API_HOST_PUB_KEY_SIZE];
+	u8    host_pub_key_mac[API_HOST_PUB_KEY_MAC_SIZE];
 } __packed;
 
 struct hif_cnf_sl_exchange_pub_keys {
-	uint32_t   status;
+	u32   status;
 } __packed;
 
 #define API_NCP_PUB_KEY_SIZE                            32
 #define API_NCP_PUB_KEY_MAC_SIZE                        64
 
 struct hif_ind_sl_exchange_pub_keys {
-	uint32_t   status;
-	uint8_t    ncp_pub_key[API_NCP_PUB_KEY_SIZE];
-	uint8_t    ncp_pub_key_mac[API_NCP_PUB_KEY_MAC_SIZE];
+	u32   status;
+	u8    ncp_pub_key[API_NCP_PUB_KEY_SIZE];
+	u8    ncp_pub_key_mac[API_NCP_PUB_KEY_MAC_SIZE];
 } __packed;
 
 #define API_ENCR_BMP_SIZE        32
 
 struct hif_req_sl_configure {
-	uint8_t    encr_bmp[API_ENCR_BMP_SIZE];
-	uint8_t    disable_session_key_protection:1;
-	uint8_t    reserved1:7;
-	uint8_t    reserved2[3];
+	u8    encr_bmp[API_ENCR_BMP_SIZE];
+	u8    disable_session_key_protection:1;
+	u8    reserved1:7;
+	u8    reserved2[3];
 } __packed;
 
 struct hif_cnf_sl_configure {
-	uint32_t status;
+	u32 status;
 } __packed;
 
 struct hif_req_prevent_rollback {
-	uint32_t   magic_word;
+	u32   magic_word;
 } __packed;
 
 struct hif_cnf_prevent_rollback {
-	uint32_t    status;
+	u32    status;
 } __packed;
 
 enum hif_pta_mode {
@@ -382,27 +382,27 @@ enum hif_grant_state {
 };
 
 struct hif_req_pta_settings {
-	uint8_t pta_mode;
-	uint8_t request_signal_active_level;
-	uint8_t priority_signal_active_level;
-	uint8_t freq_signal_active_level;
-	uint8_t grant_signal_active_level;
-	uint8_t coex_type;
-	uint8_t default_grant_state;
-	uint8_t simultaneous_rx_accesses;
-	uint8_t priority_sampling_time;
-	uint8_t tx_rx_sampling_time;
-	uint8_t freq_sampling_time;
-	uint8_t grant_valid_time;
-	uint8_t fem_control_time;
-	uint8_t first_slot_time;
-	uint16_t periodic_tx_rx_sampling_time;
-	uint16_t coex_quota;
-	uint16_t wlan_quota;
+	u8 pta_mode;
+	u8 request_signal_active_level;
+	u8 priority_signal_active_level;
+	u8 freq_signal_active_level;
+	u8 grant_signal_active_level;
+	u8 coex_type;
+	u8 default_grant_state;
+	u8 simultaneous_rx_accesses;
+	u8 priority_sampling_time;
+	u8 tx_rx_sampling_time;
+	u8 freq_sampling_time;
+	u8 grant_valid_time;
+	u8 fem_control_time;
+	u8 first_slot_time;
+	u16 periodic_tx_rx_sampling_time;
+	u16 coex_quota;
+	u16 wlan_quota;
 } __packed;
 
 struct hif_cnf_pta_settings {
-	uint32_t status;
+	u32 status;
 } __packed;
 
 enum hif_pta_priority {
@@ -414,11 +414,11 @@ enum hif_pta_priority {
 };
 
 struct hif_req_pta_priority {
-	uint32_t priority;
+	u32 priority;
 } __packed;
 
 struct hif_cnf_pta_priority {
-	uint32_t status;
+	u32 status;
 } __packed;
 
 enum hif_pta_state {
@@ -427,11 +427,11 @@ enum hif_pta_state {
 };
 
 struct hif_req_pta_state {
-	uint32_t pta_state;
+	u32 pta_state;
 } __packed;
 
 struct hif_cnf_pta_state {
-	uint32_t status;
+	u32 status;
 } __packed;
 
 #endif
diff --git a/drivers/staging/wfx/hif_api_mib.h b/drivers/staging/wfx/hif_api_mib.h
index af657555f894..94b789ceb4ff 100644
--- a/drivers/staging/wfx/hif_api_mib.h
+++ b/drivers/staging/wfx/hif_api_mib.h
@@ -72,23 +72,23 @@ enum hif_op_power_mode {
 };
 
 struct hif_mib_gl_operational_power_mode {
-	uint8_t    power_mode:4;
-	uint8_t    reserved1:3;
-	uint8_t    wup_ind_activation:1;
-	uint8_t    reserved2[3];
+	u8    power_mode:4;
+	u8    reserved1:3;
+	u8    wup_ind_activation:1;
+	u8    reserved2[3];
 } __packed;
 
 struct hif_mib_gl_block_ack_info {
-	uint8_t    rx_buffer_size;
-	uint8_t    rx_max_num_agreements;
-	uint8_t    tx_buffer_size;
-	uint8_t    tx_max_num_agreements;
+	u8    rx_buffer_size;
+	u8    rx_max_num_agreements;
+	u8    tx_buffer_size;
+	u8    tx_max_num_agreements;
 } __packed;
 
 struct hif_mib_gl_set_multi_msg {
-	uint8_t    enable_multi_tx_conf:1;
-	uint8_t    reserved1:7;
-	uint8_t    reserved2[3];
+	u8    enable_multi_tx_conf:1;
+	u8    reserved1:7;
+	u8    reserved2[3];
 } __packed;
 
 enum hif_cca_thr_mode {
@@ -97,8 +97,8 @@ enum hif_cca_thr_mode {
 };
 
 struct hif_mib_gl_cca_config {
-	uint8_t  cca_thr_mode;
-	uint8_t  reserved[3];
+	u8  cca_thr_mode;
+	u8  reserved[3];
 } __packed;
 
 #define MAX_NUMBER_DATA_FILTERS             0xA
@@ -114,9 +114,9 @@ struct hif_mib_gl_cca_config {
 #define MAX_NUMBER_NS_CONDITIONS            0x2
 
 struct hif_mib_ethertype_data_frame_condition {
-	uint8_t    condition_idx;
-	uint8_t    reserved;
-	uint16_t   ether_type;
+	u8    condition_idx;
+	u8    reserved;
+	u16   ether_type;
 } __packed;
 
 enum hif_udp_tcp_protocol {
@@ -132,22 +132,22 @@ enum hif_which_port {
 };
 
 struct hif_mib_ports_data_frame_condition {
-	uint8_t    condition_idx;
-	uint8_t    protocol;
-	uint8_t    which_port;
-	uint8_t    reserved1;
-	uint16_t   port_number;
-	uint8_t    reserved2[2];
+	u8    condition_idx;
+	u8    protocol;
+	u8    which_port;
+	u8    reserved1;
+	u16   port_number;
+	u8    reserved2[2];
 } __packed;
 
 #define HIF_API_MAGIC_PATTERN_SIZE                 32
 
 struct hif_mib_magic_data_frame_condition {
-	uint8_t    condition_idx;
-	uint8_t    offset;
-	uint8_t    magic_pattern_length;
-	uint8_t    reserved;
-	uint8_t    magic_pattern[HIF_API_MAGIC_PATTERN_SIZE];
+	u8    condition_idx;
+	u8    offset;
+	u8    magic_pattern_length;
+	u8    reserved;
+	u8    magic_pattern[HIF_API_MAGIC_PATTERN_SIZE];
 } __packed;
 
 enum hif_mac_addr_type {
@@ -157,9 +157,9 @@ enum hif_mac_addr_type {
 };
 
 struct hif_mib_mac_addr_data_frame_condition {
-	uint8_t    condition_idx;
-	uint8_t    address_type;
-	uint8_t    mac_address[ETH_ALEN];
+	u8    condition_idx;
+	u8    address_type;
+	u8    mac_address[ETH_ALEN];
 } __packed;
 
 enum hif_ip_addr_mode {
@@ -168,53 +168,53 @@ enum hif_ip_addr_mode {
 };
 
 struct hif_mib_ipv4_addr_data_frame_condition {
-	uint8_t    condition_idx;
-	uint8_t    address_mode;
-	uint8_t    reserved[2];
-	uint8_t    i_pv4_address[HIF_API_IPV4_ADDRESS_SIZE];
+	u8    condition_idx;
+	u8    address_mode;
+	u8    reserved[2];
+	u8    i_pv4_address[HIF_API_IPV4_ADDRESS_SIZE];
 } __packed;
 
 struct hif_mib_ipv6_addr_data_frame_condition {
-	uint8_t    condition_idx;
-	uint8_t    address_mode;
-	uint8_t    reserved[2];
-	uint8_t    i_pv6_address[HIF_API_IPV6_ADDRESS_SIZE];
+	u8    condition_idx;
+	u8    address_mode;
+	u8    reserved[2];
+	u8    i_pv6_address[HIF_API_IPV6_ADDRESS_SIZE];
 } __packed;
 
 union hif_addr_type {
-	uint8_t value;
+	u8 value;
 	struct {
-		uint8_t    type_unicast:1;
-		uint8_t    type_multicast:1;
-		uint8_t    type_broadcast:1;
-		uint8_t    reserved:5;
+		u8    type_unicast:1;
+		u8    type_multicast:1;
+		u8    type_broadcast:1;
+		u8    reserved:5;
 	} bits;
 };
 
 struct hif_mib_uc_mc_bc_data_frame_condition {
-	uint8_t    condition_idx;
+	u8    condition_idx;
 	union hif_addr_type param;
-	uint8_t    reserved[2];
+	u8    reserved[2];
 } __packed;
 
 struct hif_mib_config_data_filter {
-	uint8_t    filter_idx;
-	uint8_t    enable;
-	uint8_t    reserved1[2];
-	uint8_t    eth_type_cond;
-	uint8_t    port_cond;
-	uint8_t    magic_cond;
-	uint8_t    mac_cond;
-	uint8_t    ipv4_cond;
-	uint8_t    ipv6_cond;
-	uint8_t    uc_mc_bc_cond;
-	uint8_t    reserved2;
+	u8    filter_idx;
+	u8    enable;
+	u8    reserved1[2];
+	u8    eth_type_cond;
+	u8    port_cond;
+	u8    magic_cond;
+	u8    mac_cond;
+	u8    ipv4_cond;
+	u8    ipv6_cond;
+	u8    uc_mc_bc_cond;
+	u8    reserved2;
 } __packed;
 
 struct hif_mib_set_data_filtering {
-	uint8_t    default_filter;
-	uint8_t    enable;
-	uint8_t    reserved[2];
+	u8    default_filter;
+	u8    enable;
+	u8    reserved[2];
 } __packed;
 
 enum hif_arp_ns_frame_treatment {
@@ -224,45 +224,45 @@ enum hif_arp_ns_frame_treatment {
 };
 
 struct hif_mib_arp_ip_addr_table {
-	uint8_t    condition_idx;
-	uint8_t    arp_enable;
-	uint8_t    reserved[2];
-	uint8_t    ipv4_address[HIF_API_IPV4_ADDRESS_SIZE];
+	u8    condition_idx;
+	u8    arp_enable;
+	u8    reserved[2];
+	u8    ipv4_address[HIF_API_IPV4_ADDRESS_SIZE];
 } __packed;
 
 struct hif_mib_ns_ip_addr_table {
-	uint8_t    condition_idx;
-	uint8_t    ns_enable;
-	uint8_t    reserved[2];
-	uint8_t    ipv6_address[HIF_API_IPV6_ADDRESS_SIZE];
+	u8    condition_idx;
+	u8    ns_enable;
+	u8    reserved[2];
+	u8    ipv6_address[HIF_API_IPV6_ADDRESS_SIZE];
 } __packed;
 
 struct hif_mib_rx_filter {
-	uint8_t    reserved1:1;
-	uint8_t    bssid_filter:1;
-	uint8_t    reserved2:1;
-	uint8_t    fwd_probe_req:1;
-	uint8_t    keep_alive_filter:1;
-	uint8_t    reserved3:3;
-	uint8_t    reserved4[3];
+	u8    reserved1:1;
+	u8    bssid_filter:1;
+	u8    reserved2:1;
+	u8    fwd_probe_req:1;
+	u8    keep_alive_filter:1;
+	u8    reserved3:3;
+	u8    reserved4[3];
 } __packed;
 
 #define HIF_API_OUI_SIZE                                3
 #define HIF_API_MATCH_DATA_SIZE                         3
 
 struct hif_ie_table_entry {
-	uint8_t    ie_id;
-	uint8_t    has_changed:1;
-	uint8_t    no_longer:1;
-	uint8_t    has_appeared:1;
-	uint8_t    reserved:1;
-	uint8_t    num_match_data:4;
-	uint8_t    oui[HIF_API_OUI_SIZE];
-	uint8_t    match_data[HIF_API_MATCH_DATA_SIZE];
+	u8    ie_id;
+	u8    has_changed:1;
+	u8    no_longer:1;
+	u8    has_appeared:1;
+	u8    reserved:1;
+	u8    num_match_data:4;
+	u8    oui[HIF_API_OUI_SIZE];
+	u8    match_data[HIF_API_MATCH_DATA_SIZE];
 } __packed;
 
 struct hif_mib_bcn_filter_table {
-	uint32_t   num_of_info_elmts;
+	u32   num_of_info_elmts;
 	struct hif_ie_table_entry ie_table[];
 } __packed;
 
@@ -273,126 +273,126 @@ enum hif_beacon_filter {
 };
 
 struct hif_mib_bcn_filter_enable {
-	uint32_t   enable;
-	uint32_t   bcn_count;
+	u32   enable;
+	u32   bcn_count;
 } __packed;
 
 struct hif_mib_group_seq_counter {
-	uint32_t   bits4716;
-	uint16_t   bits1500;
-	uint16_t   reserved;
+	u32   bits4716;
+	u16   bits1500;
+	u16   reserved;
 } __packed;
 
 struct hif_mib_tsf_counter {
-	uint32_t   tsf_counterlo;
-	uint32_t   tsf_counterhi;
+	u32   tsf_counterlo;
+	u32   tsf_counterhi;
 } __packed;
 
 struct hif_mib_stats_table {
-	int16_t    latest_snr;
-	uint8_t    latest_rcpi;
-	int8_t     latest_rssi;
+	s16    latest_snr;
+	u8    latest_rcpi;
+	s8     latest_rssi;
 } __packed;
 
 struct hif_mib_extended_count_table {
-	uint32_t   count_plcp_errors;
-	uint32_t   count_fcs_errors;
-	uint32_t   count_tx_packets;
-	uint32_t   count_rx_packets;
-	uint32_t   count_rx_packet_errors;
-	uint32_t   count_rx_decryption_failures;
-	uint32_t   count_rx_mic_failures;
-	uint32_t   count_rx_no_key_failures;
-	uint32_t   count_tx_multicast_frames;
-	uint32_t   count_tx_frames_success;
-	uint32_t   count_tx_frame_failures;
-	uint32_t   count_tx_frames_retried;
-	uint32_t   count_tx_frames_multi_retried;
-	uint32_t   count_rx_frame_duplicates;
-	uint32_t   count_rts_success;
-	uint32_t   count_rts_failures;
-	uint32_t   count_ack_failures;
-	uint32_t   count_rx_multicast_frames;
-	uint32_t   count_rx_frames_success;
-	uint32_t   count_rx_cmacicv_errors;
-	uint32_t   count_rx_cmac_replays;
-	uint32_t   count_rx_mgmt_ccmp_replays;
-	uint32_t   count_rx_bipmic_errors;
-	uint32_t   count_rx_beacon;
-	uint32_t   count_miss_beacon;
-	uint32_t   reserved[15];
+	u32   count_plcp_errors;
+	u32   count_fcs_errors;
+	u32   count_tx_packets;
+	u32   count_rx_packets;
+	u32   count_rx_packet_errors;
+	u32   count_rx_decryption_failures;
+	u32   count_rx_mic_failures;
+	u32   count_rx_no_key_failures;
+	u32   count_tx_multicast_frames;
+	u32   count_tx_frames_success;
+	u32   count_tx_frame_failures;
+	u32   count_tx_frames_retried;
+	u32   count_tx_frames_multi_retried;
+	u32   count_rx_frame_duplicates;
+	u32   count_rts_success;
+	u32   count_rts_failures;
+	u32   count_ack_failures;
+	u32   count_rx_multicast_frames;
+	u32   count_rx_frames_success;
+	u32   count_rx_cmacicv_errors;
+	u32   count_rx_cmac_replays;
+	u32   count_rx_mgmt_ccmp_replays;
+	u32   count_rx_bipmic_errors;
+	u32   count_rx_beacon;
+	u32   count_miss_beacon;
+	u32   reserved[15];
 } __packed;
 
 struct hif_mib_count_table {
-	uint32_t   count_plcp_errors;
-	uint32_t   count_fcs_errors;
-	uint32_t   count_tx_packets;
-	uint32_t   count_rx_packets;
-	uint32_t   count_rx_packet_errors;
-	uint32_t   count_rx_decryption_failures;
-	uint32_t   count_rx_mic_failures;
-	uint32_t   count_rx_no_key_failures;
-	uint32_t   count_tx_multicast_frames;
-	uint32_t   count_tx_frames_success;
-	uint32_t   count_tx_frame_failures;
-	uint32_t   count_tx_frames_retried;
-	uint32_t   count_tx_frames_multi_retried;
-	uint32_t   count_rx_frame_duplicates;
-	uint32_t   count_rts_success;
-	uint32_t   count_rts_failures;
-	uint32_t   count_ack_failures;
-	uint32_t   count_rx_multicast_frames;
-	uint32_t   count_rx_frames_success;
-	uint32_t   count_rx_cmacicv_errors;
-	uint32_t   count_rx_cmac_replays;
-	uint32_t   count_rx_mgmt_ccmp_replays;
-	uint32_t   count_rx_bipmic_errors;
+	u32   count_plcp_errors;
+	u32   count_fcs_errors;
+	u32   count_tx_packets;
+	u32   count_rx_packets;
+	u32   count_rx_packet_errors;
+	u32   count_rx_decryption_failures;
+	u32   count_rx_mic_failures;
+	u32   count_rx_no_key_failures;
+	u32   count_tx_multicast_frames;
+	u32   count_tx_frames_success;
+	u32   count_tx_frame_failures;
+	u32   count_tx_frames_retried;
+	u32   count_tx_frames_multi_retried;
+	u32   count_rx_frame_duplicates;
+	u32   count_rts_success;
+	u32   count_rts_failures;
+	u32   count_ack_failures;
+	u32   count_rx_multicast_frames;
+	u32   count_rx_frames_success;
+	u32   count_rx_cmacicv_errors;
+	u32   count_rx_cmac_replays;
+	u32   count_rx_mgmt_ccmp_replays;
+	u32   count_rx_bipmic_errors;
 } __packed;
 
 struct hif_mib_max_tx_power_level {
-	int32_t       max_tx_power_level_rf_port1;
-	int32_t       max_tx_power_level_rf_port2;
+	s32       max_tx_power_level_rf_port1;
+	s32       max_tx_power_level_rf_port2;
 } __packed;
 
 struct hif_mib_beacon_stats {
-	int32_t     latest_tbtt_diff;
-	uint32_t    reserved[4];
+	s32     latest_tbtt_diff;
+	u32    reserved[4];
 } __packed;
 
 struct hif_mib_mac_address {
-	uint8_t    mac_addr[ETH_ALEN];
-	uint16_t   reserved;
+	u8    mac_addr[ETH_ALEN];
+	u16   reserved;
 } __packed;
 
 struct hif_mib_dot11_max_transmit_msdu_lifetime {
-	uint32_t   max_life_time;
+	u32   max_life_time;
 } __packed;
 
 struct hif_mib_dot11_max_receive_lifetime {
-	uint32_t   max_life_time;
+	u32   max_life_time;
 } __packed;
 
 struct hif_mib_wep_default_key_id {
-	uint8_t    wep_default_key_id;
-	uint8_t    reserved[3];
+	u8    wep_default_key_id;
+	u8    reserved[3];
 } __packed;
 
 struct hif_mib_dot11_rts_threshold {
-	uint32_t   threshold;
+	u32   threshold;
 } __packed;
 
 struct hif_mib_slot_time {
-	uint32_t   slot_time;
+	u32   slot_time;
 } __packed;
 
 struct hif_mib_current_tx_power_level {
-	int32_t   power_level;
+	s32   power_level;
 } __packed;
 
 struct hif_mib_non_erp_protection {
-	uint8_t   use_cts_to_self:1;
-	uint8_t   reserved1:7;
-	uint8_t   reserved2[3];
+	u8   use_cts_to_self:1;
+	u8   reserved1:7;
+	u8   reserved2[3];
 } __packed;
 
 enum hif_tx_mode {
@@ -414,45 +414,45 @@ enum hif_tmplt {
 #define HIF_API_MAX_TEMPLATE_FRAME_SIZE                              700
 
 struct hif_mib_template_frame {
-	uint8_t    frame_type;
-	uint8_t    init_rate:7;
-	uint8_t    mode:1;
-	uint16_t   frame_length;
-	uint8_t    frame[HIF_API_MAX_TEMPLATE_FRAME_SIZE];
+	u8    frame_type;
+	u8    init_rate:7;
+	u8    mode:1;
+	u16   frame_length;
+	u8    frame[HIF_API_MAX_TEMPLATE_FRAME_SIZE];
 } __packed;
 
 struct hif_mib_beacon_wake_up_period {
-	uint8_t    wakeup_period_min;
-	uint8_t    receive_dtim:1;
-	uint8_t    reserved1:7;
-	uint8_t    wakeup_period_max;
-	uint8_t    reserved2;
+	u8    wakeup_period_min;
+	u8    receive_dtim:1;
+	u8    reserved1:7;
+	u8    wakeup_period_max;
+	u8    reserved2;
 } __packed;
 
 struct hif_mib_rcpi_rssi_threshold {
-	uint8_t    detection:1;
-	uint8_t    rcpi_rssi:1;
-	uint8_t    upperthresh:1;
-	uint8_t    lowerthresh:1;
-	uint8_t    reserved:4;
-	uint8_t    lower_threshold;
-	uint8_t    upper_threshold;
-	uint8_t    rolling_average_count;
+	u8    detection:1;
+	u8    rcpi_rssi:1;
+	u8    upperthresh:1;
+	u8    lowerthresh:1;
+	u8    reserved:4;
+	u8    lower_threshold;
+	u8    upper_threshold;
+	u8    rolling_average_count;
 } __packed;
 
 #define DEFAULT_BA_MAX_RX_BUFFER_SIZE 16
 
 struct hif_mib_block_ack_policy {
-	uint8_t    block_ack_tx_tid_policy;
-	uint8_t    reserved1;
-	uint8_t    block_ack_rx_tid_policy;
-	uint8_t    block_ack_rx_max_buffer_size;
+	u8    block_ack_tx_tid_policy;
+	u8    reserved1;
+	u8    block_ack_rx_tid_policy;
+	u8    block_ack_rx_max_buffer_size;
 } __packed;
 
 struct hif_mib_override_int_rate {
-	uint8_t    internal_tx_rate;
-	uint8_t    non_erp_internal_tx_rate;
-	uint8_t    reserved[2];
+	u8    internal_tx_rate;
+	u8    non_erp_internal_tx_rate;
+	u8    reserved[2];
 } __packed;
 
 enum hif_mpdu_start_spacing {
@@ -467,92 +467,91 @@ enum hif_mpdu_start_spacing {
 };
 
 struct hif_mib_set_association_mode {
-	uint8_t    preambtype_use:1;
-	uint8_t    mode:1;
-	uint8_t    rateset:1;
-	uint8_t    spacing:1;
-	uint8_t    reserved:4;
-	uint8_t    preamble_type;
-	uint8_t    mixed_or_greenfield_type;
-	uint8_t    mpdu_start_spacing;
-	uint32_t   basic_rate_set;
+	u8    preambtype_use:1;
+	u8    mode:1;
+	u8    rateset:1;
+	u8    spacing:1;
+	u8    reserved:4;
+	u8    preamble_type;
+	u8    mixed_or_greenfield_type;
+	u8    mpdu_start_spacing;
+	u32   basic_rate_set;
 } __packed;
 
 struct hif_mib_set_uapsd_information {
-	uint8_t    trig_bckgrnd:1;
-	uint8_t    trig_be:1;
-	uint8_t    trig_video:1;
-	uint8_t    trig_voice:1;
-	uint8_t    reserved1:4;
-	uint8_t    deliv_bckgrnd:1;
-	uint8_t    deliv_be:1;
-	uint8_t    deliv_video:1;
-	uint8_t    deliv_voice:1;
-	uint8_t    reserved2:4;
-	uint16_t   min_auto_trigger_interval;
-	uint16_t   max_auto_trigger_interval;
-	uint16_t   auto_trigger_step;
+	u8    trig_bckgrnd:1;
+	u8    trig_be:1;
+	u8    trig_video:1;
+	u8    trig_voice:1;
+	u8    reserved1:4;
+	u8    deliv_bckgrnd:1;
+	u8    deliv_be:1;
+	u8    deliv_video:1;
+	u8    deliv_voice:1;
+	u8    reserved2:4;
+	u16   min_auto_trigger_interval;
+	u16   max_auto_trigger_interval;
+	u16   auto_trigger_step;
 } __packed;
 
 struct hif_mib_tx_rate_retry_policy {
-	uint8_t    policy_index;
-	uint8_t    short_retry_count;
-	uint8_t    long_retry_count;
-	uint8_t    first_rate_sel:2;
-	uint8_t    terminate:1;
-	uint8_t    count_init:1;
-	uint8_t    reserved1:4;
-	uint8_t    rate_recovery_count;
-	uint8_t    reserved2[3];
-	uint8_t    rates[12];
+	u8    policy_index;
+	u8    short_retry_count;
+	u8    long_retry_count;
+	u8    first_rate_sel:2;
+	u8    terminate:1;
+	u8    count_init:1;
+	u8    reserved1:4;
+	u8    rate_recovery_count;
+	u8    reserved2[3];
+	u8    rates[12];
 } __packed;
 
 #define HIF_MIB_NUM_TX_RATE_RETRY_POLICIES    15
 
 struct hif_mib_set_tx_rate_retry_policy {
-	uint8_t    num_tx_rate_policies;
-	uint8_t    reserved[3];
+	u8    num_tx_rate_policies;
+	u8    reserved[3];
 	struct hif_mib_tx_rate_retry_policy tx_rate_retry_policy[];
 } __packed;
 
 struct hif_mib_protected_mgmt_policy {
-	uint8_t   pmf_enable:1;
-	uint8_t   unpmf_allowed:1;
-	uint8_t   host_enc_auth_frames:1;
-	uint8_t   reserved1:5;
-	uint8_t   reserved2[3];
+	u8   pmf_enable:1;
+	u8   unpmf_allowed:1;
+	u8   host_enc_auth_frames:1;
+	u8   reserved1:5;
+	u8   reserved2[3];
 } __packed;
 
 struct hif_mib_set_ht_protection {
-	uint8_t   dual_cts_prot:1;
-	uint8_t   reserved1:7;
-	uint8_t   reserved2[3];
+	u8   dual_cts_prot:1;
+	u8   reserved1:7;
+	u8   reserved2[3];
 } __packed;
 
 struct hif_mib_keep_alive_period {
-	uint16_t   keep_alive_period;
-	uint8_t    reserved[2];
+	u16   keep_alive_period;
+	u8    reserved[2];
 } __packed;
 
 struct hif_mib_arp_keep_alive_period {
-	uint16_t   arp_keep_alive_period;
-	uint8_t    encr_type;
-	uint8_t    reserved;
-	uint8_t    sender_ipv4_address[HIF_API_IPV4_ADDRESS_SIZE];
-	uint8_t    target_ipv4_address[HIF_API_IPV4_ADDRESS_SIZE];
+	u16   arp_keep_alive_period;
+	u8    encr_type;
+	u8    reserved;
+	u8    sender_ipv4_address[HIF_API_IPV4_ADDRESS_SIZE];
+	u8    target_ipv4_address[HIF_API_IPV4_ADDRESS_SIZE];
 } __packed;
 
 struct hif_mib_inactivity_timer {
-	uint8_t    min_active_time;
-	uint8_t    max_active_time;
-	uint16_t   reserved;
+	u8    min_active_time;
+	u8    max_active_time;
+	u16   reserved;
 } __packed;
 
 struct hif_mib_interface_protection {
-	uint8_t   use_cts_prot:1;
-	uint8_t   reserved1:7;
-	uint8_t   reserved2[3];
+	u8   use_cts_prot:1;
+	u8   reserved1:7;
+	u8   reserved2[3];
 } __packed;
 
-
 #endif
diff --git a/drivers/staging/wfx/hif_tx.c b/drivers/staging/wfx/hif_tx.c
index 2d40225a0fce..2f5dadff0660 100644
--- a/drivers/staging/wfx/hif_tx.c
+++ b/drivers/staging/wfx/hif_tx.c
@@ -452,7 +452,8 @@ int hif_sl_config(struct wfx_dev *wdev, const unsigned long *bitmap)
 	return ret;
 }
 
-int hif_sl_set_mac_key(struct wfx_dev *wdev, const uint8_t *slk_key, int destination)
+int hif_sl_set_mac_key(struct wfx_dev *wdev, const u8 *slk_key,
+		       int destination)
 {
 	int ret;
 	struct hif_msg *hif;
diff --git a/drivers/staging/wfx/hif_tx.h b/drivers/staging/wfx/hif_tx.h
index 6f2ea2f3a77d..f61ae7b0d41c 100644
--- a/drivers/staging/wfx/hif_tx.h
+++ b/drivers/staging/wfx/hif_tx.h
@@ -18,7 +18,7 @@ struct wfx_vif;
 struct wfx_scan_params {
 	struct hif_req_start_scan scan_req;
 	struct hif_ssid_def *ssids;
-	uint8_t *ch;
+	u8 *ch;
 };
 
 struct wfx_hif_cmd {
@@ -59,9 +59,10 @@ int hif_beacon_transmit(struct wfx_vif *wvif, bool enable);
 int hif_map_link(struct wfx_vif *wvif, u8 *mac_addr, int flags, int sta_id);
 int hif_update_ie(struct wfx_vif *wvif, const struct hif_ie_flags *target_frame,
 		  const u8 *ies, size_t ies_len);
-int hif_sl_set_mac_key(struct wfx_dev *wdev, const uint8_t *slk_key, int destination);
+int hif_sl_set_mac_key(struct wfx_dev *wdev, const u8 *slk_key,
+		       int destination);
 int hif_sl_config(struct wfx_dev *wdev, const unsigned long *bitmap);
 int hif_sl_send_pub_keys(struct wfx_dev *wdev,
-			 const uint8_t *pubkey, const uint8_t *pubkey_hmac);
+			 const u8 *pubkey, const u8 *pubkey_hmac);
 
 #endif
diff --git a/drivers/staging/wfx/hif_tx_mib.h b/drivers/staging/wfx/hif_tx_mib.h
index 3339ad95f732..d1cabd697205 100644
--- a/drivers/staging/wfx/hif_tx_mib.h
+++ b/drivers/staging/wfx/hif_tx_mib.h
@@ -145,7 +145,7 @@ static inline int hif_set_mfp(struct wfx_vif *wvif, bool capable, bool required)
 	}
 	if (!required)
 		val.unpmf_allowed = 1;
-	cpu_to_le32s((uint32_t *) &val);
+	cpu_to_le32s((u32 *) &val);
 	return hif_write_mib(wvif->wdev, wvif->id,
 			     HIF_MIB_ID_PROTECTED_MGMT_POLICY,
 			     &val, sizeof(val));
diff --git a/drivers/staging/wfx/key.c b/drivers/staging/wfx/key.c
index 6d03abec20e4..caea6d959b0e 100644
--- a/drivers/staging/wfx/key.c
+++ b/drivers/staging/wfx/key.c
@@ -31,7 +31,7 @@ static void wfx_free_key(struct wfx_dev *wdev, int idx)
 	wdev->key_map &= ~BIT(idx);
 }
 
-static uint8_t fill_wep_pair(struct hif_wep_pairwise_key *msg,
+static u8 fill_wep_pair(struct hif_wep_pairwise_key *msg,
 			     struct ieee80211_key_conf *key, u8 *peer_addr)
 {
 	WARN(key->keylen > sizeof(msg->key_data), "inconsistent data");
@@ -41,7 +41,7 @@ static uint8_t fill_wep_pair(struct hif_wep_pairwise_key *msg,
 	return HIF_KEY_TYPE_WEP_PAIRWISE;
 }
 
-static uint8_t fill_wep_group(struct hif_wep_group_key *msg,
+static u8 fill_wep_group(struct hif_wep_group_key *msg,
 			      struct ieee80211_key_conf *key)
 {
 	WARN(key->keylen > sizeof(msg->key_data), "inconsistent data");
@@ -51,10 +51,10 @@ static uint8_t fill_wep_group(struct hif_wep_group_key *msg,
 	return HIF_KEY_TYPE_WEP_DEFAULT;
 }
 
-static uint8_t fill_tkip_pair(struct hif_tkip_pairwise_key *msg,
+static u8 fill_tkip_pair(struct hif_tkip_pairwise_key *msg,
 			      struct ieee80211_key_conf *key, u8 *peer_addr)
 {
-	uint8_t *keybuf = key->key;
+	u8 *keybuf = key->key;
 
 	WARN(key->keylen != sizeof(msg->tkip_key_data)
 			    + sizeof(msg->tx_mic_key)
@@ -68,18 +68,20 @@ static uint8_t fill_tkip_pair(struct hif_tkip_pairwise_key *msg,
 	return HIF_KEY_TYPE_TKIP_PAIRWISE;
 }
 
-static uint8_t fill_tkip_group(struct hif_tkip_group_key *msg,
+static u8 fill_tkip_group(struct hif_tkip_group_key *msg,
 			       struct ieee80211_key_conf *key,
 			       struct ieee80211_key_seq *seq,
 			       enum nl80211_iftype iftype)
 {
-	uint8_t *keybuf = key->key;
+	u8 *keybuf = key->key;
 
 	WARN(key->keylen != sizeof(msg->tkip_key_data)
 			    + 2 * sizeof(msg->rx_mic_key), "inconsistent data");
 	msg->key_id = key->keyidx;
-	memcpy(msg->rx_sequence_counter, &seq->tkip.iv16, sizeof(seq->tkip.iv16));
-	memcpy(msg->rx_sequence_counter + sizeof(uint16_t), &seq->tkip.iv32, sizeof(seq->tkip.iv32));
+	memcpy(msg->rx_sequence_counter,
+	       &seq->tkip.iv16, sizeof(seq->tkip.iv16));
+	memcpy(msg->rx_sequence_counter + sizeof(u16),
+	       &seq->tkip.iv32, sizeof(seq->tkip.iv32));
 	memcpy(msg->tkip_key_data, keybuf, sizeof(msg->tkip_key_data));
 	keybuf += sizeof(msg->tkip_key_data);
 	if (iftype == NL80211_IFTYPE_AP)
@@ -91,7 +93,7 @@ static uint8_t fill_tkip_group(struct hif_tkip_group_key *msg,
 	return HIF_KEY_TYPE_TKIP_GROUP;
 }
 
-static uint8_t fill_ccmp_pair(struct hif_aes_pairwise_key *msg,
+static u8 fill_ccmp_pair(struct hif_aes_pairwise_key *msg,
 			      struct ieee80211_key_conf *key, u8 *peer_addr)
 {
 	WARN(key->keylen != sizeof(msg->aes_key_data), "inconsistent data");
@@ -100,7 +102,7 @@ static uint8_t fill_ccmp_pair(struct hif_aes_pairwise_key *msg,
 	return HIF_KEY_TYPE_AES_PAIRWISE;
 }
 
-static uint8_t fill_ccmp_group(struct hif_aes_group_key *msg,
+static u8 fill_ccmp_group(struct hif_aes_group_key *msg,
 			       struct ieee80211_key_conf *key,
 			       struct ieee80211_key_seq *seq)
 {
@@ -112,10 +114,10 @@ static uint8_t fill_ccmp_group(struct hif_aes_group_key *msg,
 	return HIF_KEY_TYPE_AES_GROUP;
 }
 
-static uint8_t fill_sms4_pair(struct hif_wapi_pairwise_key *msg,
+static u8 fill_sms4_pair(struct hif_wapi_pairwise_key *msg,
 			      struct ieee80211_key_conf *key, u8 *peer_addr)
 {
-	uint8_t *keybuf = key->key;
+	u8 *keybuf = key->key;
 
 	WARN(key->keylen != sizeof(msg->wapi_key_data)
 			    + sizeof(msg->mic_key_data), "inconsistent data");
@@ -127,10 +129,10 @@ static uint8_t fill_sms4_pair(struct hif_wapi_pairwise_key *msg,
 	return HIF_KEY_TYPE_WAPI_PAIRWISE;
 }
 
-static uint8_t fill_sms4_group(struct hif_wapi_group_key *msg,
+static u8 fill_sms4_group(struct hif_wapi_group_key *msg,
 			       struct ieee80211_key_conf *key)
 {
-	uint8_t *keybuf = key->key;
+	u8 *keybuf = key->key;
 
 	WARN(key->keylen != sizeof(msg->wapi_key_data)
 			    + sizeof(msg->mic_key_data), "inconsistent data");
@@ -141,7 +143,7 @@ static uint8_t fill_sms4_group(struct hif_wapi_group_key *msg,
 	return HIF_KEY_TYPE_WAPI_GROUP;
 }
 
-static uint8_t fill_aes_cmac_group(struct hif_igtk_group_key *msg,
+static u8 fill_aes_cmac_group(struct hif_igtk_group_key *msg,
 				   struct ieee80211_key_conf *key,
 				   struct ieee80211_key_seq *seq)
 {
diff --git a/drivers/staging/wfx/secure_link.h b/drivers/staging/wfx/secure_link.h
index 376d7bc4c0c4..666b26e5308d 100644
--- a/drivers/staging/wfx/secure_link.h
+++ b/drivers/staging/wfx/secure_link.h
@@ -25,12 +25,14 @@ static inline int wfx_sl_decode(struct wfx_dev *wdev, struct hif_sl_msg *m)
 	return -EIO;
 }
 
-static inline int wfx_sl_encode(struct wfx_dev *wdev, struct hif_msg *input, struct hif_sl_msg *output)
+static inline int wfx_sl_encode(struct wfx_dev *wdev, struct hif_msg *input,
+				struct hif_sl_msg *output)
 {
 	return -EIO;
 }
 
-static inline int wfx_sl_check_pubkey(struct wfx_dev *wdev, uint8_t *ncp_pubkey, uint8_t *ncp_pubmac)
+static inline int wfx_sl_check_pubkey(struct wfx_dev *wdev, u8 *ncp_pubkey,
+				      u8 *ncp_pubmac)
 {
 	return -EIO;
 }
diff --git a/drivers/staging/wfx/sta.c b/drivers/staging/wfx/sta.c
index 93f3739b5f3a..43137657209c 100644
--- a/drivers/staging/wfx/sta.c
+++ b/drivers/staging/wfx/sta.c
@@ -456,7 +456,7 @@ void wfx_flush(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
 
 /* WSM callbacks */
 
-static void wfx_event_report_rssi(struct wfx_vif *wvif, uint8_t raw_rcpi_rssi)
+static void wfx_event_report_rssi(struct wfx_vif *wvif, u8 raw_rcpi_rssi)
 {
 	/* RSSI: signed Q8.0, RCPI: unsigned Q7.1
 	 * RSSI = RCPI / 2 - 110
@@ -593,10 +593,10 @@ static void wfx_do_unjoin(struct wfx_vif *wvif)
 
 static void wfx_set_mfp(struct wfx_vif *wvif, struct cfg80211_bss *bss)
 {
-	const int pairwise_cipher_suite_count_offset = 8 / sizeof(uint16_t);
-	const int pairwise_cipher_suite_size = 4 / sizeof(uint16_t);
-	const int akm_suite_size = 4 / sizeof(uint16_t);
-	const uint16_t *ptr = NULL;
+	const int pairwise_cipher_suite_count_offset = 8 / sizeof(u16);
+	const int pairwise_cipher_suite_size = 4 / sizeof(u16);
+	const int akm_suite_size = 4 / sizeof(u16);
+	const u16 *ptr = NULL;
 	bool mfpc = false;
 	bool mfpr = false;
 
@@ -606,7 +606,8 @@ static void wfx_set_mfp(struct wfx_vif *wvif, struct cfg80211_bss *bss)
 
 	rcu_read_lock();
 	if (bss)
-		ptr = (const uint16_t *) ieee80211_bss_get_ie(bss, WLAN_EID_RSN);
+		ptr = (const u16 *) ieee80211_bss_get_ie(bss,
+							      WLAN_EID_RSN);
 
 	if (ptr) {
 		ptr += pairwise_cipher_suite_count_offset;
diff --git a/drivers/staging/wfx/sta.h b/drivers/staging/wfx/sta.h
index 307ed0196110..57c46bd4e650 100644
--- a/drivers/staging/wfx/sta.h
+++ b/drivers/staging/wfx/sta.h
@@ -26,7 +26,7 @@ enum wfx_state {
 struct wfx_ht_info {
 	struct ieee80211_sta_ht_cap ht_cap;
 	enum nl80211_channel_type channel_type;
-	uint16_t operation_mode;
+	u16 operation_mode;
 };
 
 struct wfx_hif_event {
diff --git a/drivers/staging/wfx/wfx.h b/drivers/staging/wfx/wfx.h
index d678b5a08873..44e580a07c91 100644
--- a/drivers/staging/wfx/wfx.h
+++ b/drivers/staging/wfx/wfx.h
@@ -179,11 +179,11 @@ static inline int wvif_count(struct wfx_dev *wdev)
 	return ret;
 }
 
-static inline void memreverse(uint8_t *src, uint8_t length)
+static inline void memreverse(u8 *src, u8 length)
 {
-	uint8_t *lo = src;
-	uint8_t *hi = src + length - 1;
-	uint8_t swap;
+	u8 *lo = src;
+	u8 *hi = src + length - 1;
+	u8 swap;
 
 	while (lo < hi) {
 		swap = *lo;
@@ -194,7 +194,7 @@ static inline void memreverse(uint8_t *src, uint8_t length)
 
 static inline int memzcmp(void *src, unsigned int size)
 {
-	uint8_t *buf = src;
+	u8 *buf = src;
 
 	if (!size)
 		return 0;
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
