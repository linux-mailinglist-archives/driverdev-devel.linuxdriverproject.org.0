Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A6ADDD8F5
	for <lists+driverdev-devel@lfdr.de>; Sat, 19 Oct 2019 16:08:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1003C87B94;
	Sat, 19 Oct 2019 14:07:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o2ELE+Rd6aOp; Sat, 19 Oct 2019 14:07:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6B0E087B82;
	Sat, 19 Oct 2019 14:07:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 453F51BF334
 for <devel@linuxdriverproject.org>; Sat, 19 Oct 2019 14:07:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3DE452155B
 for <devel@linuxdriverproject.org>; Sat, 19 Oct 2019 14:07:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NTc-vd4oJTur for <devel@linuxdriverproject.org>;
 Sat, 19 Oct 2019 14:07:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 139492154B
 for <devel@driverdev.osuosl.org>; Sat, 19 Oct 2019 14:07:49 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id r19so8871682wmh.2
 for <devel@driverdev.osuosl.org>; Sat, 19 Oct 2019 07:07:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=M5yxLqHvJwEUftu3qq2vEcIwK5tNn7BPR5RV6UrprK4=;
 b=HkEq50yYpejf11Cniqi05m3vcZDHop3874Kzy4g2Kj12LuSSKtF+pgqnmh5Y3zNevp
 nNaXYI+QbTc9sSxa2WNg8u9yvGNJ/tii6rdgQ9Dr2BTsC35iaKcFWOnFjQIFKU+XTlu3
 TckWfGtWEjyCeFzVldoNfcMWDAmBRmyfSMMhnMAkiuxtMTXIHKg9kR5gXvGOwXl1Rgx9
 /1lVb42/u0aKnkHx64u1VKM8Uxi5c7T+6fT+w/5DAkYyHRrKbuatdcdsEl5+6FA3TDlc
 +ciRFO1Be6BfipSzm/xqXti7rFY8fNPMwNxLh9enEcSLAV2nxcgnLeQNS8QEAlOKFbih
 Tipg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=M5yxLqHvJwEUftu3qq2vEcIwK5tNn7BPR5RV6UrprK4=;
 b=kJjjYgbJ14nIaGxAkqfCDlXWw0rcMGBNmIS52qjyNlZlyMggwR39fhn5jOAtdhWiGP
 QnxCxPJdlH10vbNHnWsGnPf2txRN2RWCIt3Jo42mgRGnDoAu+uHDmQ3FMTEZS/9PlPUI
 i+kxCA78yhsn0QwGs1uIkpHAdc6Hhx7UThdGUy+M8RuN5B7AoQiE3PkPGgHpUXbkFjmh
 CsqWkzocr4wNsJXc9ZZ7U0/MkzOooJPnryjRLjbastsj2+P0JvvoAwJ+GP9apPMkzK4e
 8YfttvJg/P4HukFNtJCH61o0zO8wBu+N5KDL721dAPrMS3ZtUSzNgPploQV4YJS2Agfv
 3OOA==
X-Gm-Message-State: APjAAAUW/T5vhno36oHUVsnckzTAyBa12eLwmHky4A/kMnjTEBd6mjdq
 mpWTmffZL5qnLWxtfVzDKO9l7wPd6U9G
X-Google-Smtp-Source: APXvYqztUdZGlbcfhCigQINd+0oJLXMU0znxbWmQdJd83Q9ohdeEAAXs/g1xcQ3T6QYnoFiDa8cgZA==
X-Received: by 2002:a7b:c049:: with SMTP id u9mr11544614wmc.12.1571494067103; 
 Sat, 19 Oct 2019 07:07:47 -0700 (PDT)
Received: from ninjahub.lan (host-92-23-80-57.as13285.net. [92.23.80.57])
 by smtp.googlemail.com with ESMTPSA id t4sm7893080wrm.13.2019.10.19.07.07.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 19 Oct 2019 07:07:46 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v1 2/5] staging: wfx: fix warning of line over 80 characters
Date: Sat, 19 Oct 2019 15:07:16 +0100
Message-Id: <20191019140719.2542-3-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191019140719.2542-1-jbi.octave@gmail.com>
References: <20191019140719.2542-1-jbi.octave@gmail.com>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 Jules Irenge <jbi.octave@gmail.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix warning of lines over 80 characters.
Issue detected by checkpatch tool.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/wfx/bh.c       |  17 ++++--
 drivers/staging/wfx/bus.h      |   6 +-
 drivers/staging/wfx/bus_sdio.c |   3 +-
 drivers/staging/wfx/bus_spi.c  |   9 ++-
 drivers/staging/wfx/data_rx.c  |  15 +++--
 drivers/staging/wfx/data_tx.c  | 101 ++++++++++++++++++++++-----------
 6 files changed, 102 insertions(+), 49 deletions(-)

diff --git a/drivers/staging/wfx/bh.c b/drivers/staging/wfx/bh.c
index 573216b08042..955ed3a1dd73 100644
--- a/drivers/staging/wfx/bh.c
+++ b/drivers/staging/wfx/bh.c
@@ -32,7 +32,8 @@ static void device_wakeup(struct wfx_dev *wdev)
 		// completion without consume it (a kind of
 		// wait_for_completion_done_timeout()). So we have to emulate
 		// it.
-		if (wait_for_completion_timeout(&wdev->hif.ctrl_ready, msecs_to_jiffies(2) + 1))
+		if (wait_for_completion_timeout(&wdev->hif.ctrl_ready,
+						msecs_to_jiffies(2) + 1))
 			complete(&wdev->hif.ctrl_ready);
 		else
 			dev_err(wdev->dev, "timeout while wake up chip\n");
@@ -179,8 +180,9 @@ static void tx_helper(struct wfx_dev *wdev, struct hif_msg *hif)
 	wdev->hif.tx_seqnum = (wdev->hif.tx_seqnum + 1) % (HIF_COUNTER_MAX + 1);
 
 	if (wfx_is_secure_command(wdev, hif->id)) {
-		len = round_up(len - sizeof(hif->len), 16) + sizeof(hif->len)
-		      + sizeof(struct hif_sl_msg_hdr) + sizeof(struct hif_sl_tag);
+		len = round_up(len - sizeof(hif->len), 16) + sizeof(hif->len) +
+			sizeof(struct hif_sl_msg_hdr) +
+			sizeof(struct hif_sl_tag);
 		// AES support encryption in-place. However, mac80211 access to
 		// 802.11 header after frame was sent (to get MAC addresses).
 		// So, keep origin buffer clear.
@@ -241,7 +243,8 @@ static void ack_sdio_data(struct wfx_dev *wdev)
 
 	config_reg_read(wdev, &cfg_reg);
 	if (cfg_reg & 0xFF) {
-		dev_warn(wdev->dev, "chip reports errors: %02x\n", cfg_reg & 0xFF);
+		dev_warn(wdev->dev, "chip reports errors: %02x\n",
+			 cfg_reg & 0xFF);
 		config_reg_write_bits(wdev, 0xFF, 0x00);
 	}
 }
@@ -268,11 +271,13 @@ static void bh_work(struct work_struct *work)
 
 	if (last_op_is_rx)
 		ack_sdio_data(wdev);
-	if (!wdev->hif.tx_buffers_used && !work_pending(work) && !atomic_read(&wdev->scan_in_progress)) {
+	if (!wdev->hif.tx_buffers_used && !work_pending(work) &&
+	    !atomic_read(&wdev->scan_in_progress)) {
 		device_release(wdev);
 		release_chip = true;
 	}
-	_trace_bh_stats(stats_ind, stats_req, stats_cnf, wdev->hif.tx_buffers_used, release_chip);
+	_trace_bh_stats(stats_ind, stats_req, stats_cnf,
+			wdev->hif.tx_buffers_used, release_chip);
 }
 
 /*
diff --git a/drivers/staging/wfx/bus.h b/drivers/staging/wfx/bus.h
index eb77abc09ec2..62d6ecabe4cb 100644
--- a/drivers/staging/wfx/bus.h
+++ b/drivers/staging/wfx/bus.h
@@ -21,8 +21,10 @@
 #define WFX_REG_FRAME_OUT     0x7
 
 struct hwbus_ops {
-	int (*copy_from_io)(void *bus_priv, unsigned int addr, void *dst, size_t count);
-	int (*copy_to_io)(void *bus_priv, unsigned int addr, const void *src, size_t count);
+	int (*copy_from_io)(void *bus_priv, unsigned int addr,
+			    void *dst, size_t count);
+	int (*copy_to_io)(void *bus_priv, unsigned int addr,
+			  const void *src, size_t count);
 	void (*lock)(void *bus_priv);
 	void (*unlock)(void *bus_priv);
 	size_t (*align_size)(void *bus_priv, size_t size);
diff --git a/drivers/staging/wfx/bus_sdio.c b/drivers/staging/wfx/bus_sdio.c
index 184e20dfdd62..375e07d6d9ae 100644
--- a/drivers/staging/wfx/bus_sdio.c
+++ b/drivers/staging/wfx/bus_sdio.c
@@ -180,7 +180,8 @@ static int wfx_sdio_probe(struct sdio_func *func,
 		}
 		bus->of_irq = irq_of_parse_and_map(np, 0);
 	} else {
-		dev_warn(&func->dev, "device is not declared in DT, features will be limited\n");
+		dev_warn(&func->dev,
+			 "device is not declared in DT, features will be limited\n");
 		// FIXME: ignore VID/PID and only rely on device tree
 		// return -ENODEV;
 	}
diff --git a/drivers/staging/wfx/bus_spi.c b/drivers/staging/wfx/bus_spi.c
index effd07957753..ab0cda1e124f 100644
--- a/drivers/staging/wfx/bus_spi.c
+++ b/drivers/staging/wfx/bus_spi.c
@@ -178,11 +178,14 @@ static int wfx_spi_probe(struct spi_device *func)
 		return ret;
 	// Trace below is also displayed by spi_setup() if compiled with DEBUG
 	dev_dbg(&func->dev, "SPI params: CS=%d, mode=%d bits/word=%d speed=%d\n",
-		func->chip_select, func->mode, func->bits_per_word, func->max_speed_hz);
+		func->chip_select, func->mode, func->bits_per_word,
+		func->max_speed_hz);
 	if (func->bits_per_word != 16 && func->bits_per_word != 8)
-		dev_warn(&func->dev, "unusual bits/word value: %d\n", func->bits_per_word);
+		dev_warn(&func->dev, "unusual bits/word value: %d\n",
+			 func->bits_per_word);
 	if (func->max_speed_hz > 49000000)
-		dev_warn(&func->dev, "%dHz is a very high speed\n", func->max_speed_hz);
+		dev_warn(&func->dev, "%dHz is a very high speed\n",
+			 func->max_speed_hz);
 
 	bus = devm_kzalloc(&func->dev, sizeof(*bus), GFP_KERNEL);
 	if (!bus)
diff --git a/drivers/staging/wfx/data_rx.c b/drivers/staging/wfx/data_rx.c
index 3a79ab93e97e..522592d71aac 100644
--- a/drivers/staging/wfx/data_rx.c
+++ b/drivers/staging/wfx/data_rx.c
@@ -98,7 +98,8 @@ static int wfx_drop_encrypt_data(struct wfx_dev *wdev, struct hif_ind_rx *arg, s
 
 }
 
-void wfx_rx_cb(struct wfx_vif *wvif, struct hif_ind_rx *arg, struct sk_buff *skb)
+void wfx_rx_cb(struct wfx_vif *wvif, struct hif_ind_rx *arg,
+	       struct sk_buff *skb)
 {
 	int link_id = arg->rx_flags.peer_sta_id;
 	struct ieee80211_rx_status *hdr = IEEE80211_SKB_RXCB(skb);
@@ -118,7 +119,8 @@ void wfx_rx_cb(struct wfx_vif *wvif, struct hif_ind_rx *arg, struct sk_buff *skb
 	if (link_id && link_id <= WFX_MAX_STA_IN_AP_MODE) {
 		entry = &wvif->link_id_db[link_id - 1];
 		entry->timestamp = jiffies;
-		if (entry->status == WFX_LINK_SOFT && ieee80211_is_data(frame->frame_control))
+		if (entry->status == WFX_LINK_SOFT &&
+		    ieee80211_is_data(frame->frame_control))
 			early_data = true;
 	}
 
@@ -137,7 +139,8 @@ void wfx_rx_cb(struct wfx_vif *wvif, struct hif_ind_rx *arg, struct sk_buff *skb
 			goto drop;
 
 	hdr->band = NL80211_BAND_2GHZ;
-	hdr->freq = ieee80211_channel_to_frequency(arg->channel_number, hdr->band);
+	hdr->freq = ieee80211_channel_to_frequency(arg->channel_number,
+						   hdr->band);
 
 	if (arg->rxed_rate >= 14) {
 		hdr->encoding = RX_ENC_HT;
@@ -166,7 +169,8 @@ void wfx_rx_cb(struct wfx_vif *wvif, struct hif_ind_rx *arg, struct sk_buff *skb
 		goto drop;
 	if (ieee80211_is_beacon(frame->frame_control)
 	    && !arg->status && wvif->vif
-	    && ether_addr_equal(ieee80211_get_SA(frame), wvif->vif->bss_conf.bssid)) {
+	    && ether_addr_equal(ieee80211_get_SA(frame),
+				wvif->vif->bss_conf.bssid)) {
 		const u8 *tim_ie;
 		u8 *ies = mgmt->u.beacon.variable;
 		size_t ies_len = skb->len - (ies - skb->data);
@@ -183,7 +187,8 @@ void wfx_rx_cb(struct wfx_vif *wvif, struct hif_ind_rx *arg, struct sk_buff *skb
 
 		/* Disable beacon filter once we're associated... */
 		if (wvif->disable_beacon_filter &&
-		    (wvif->vif->bss_conf.assoc || wvif->vif->bss_conf.ibss_joined)) {
+		    (wvif->vif->bss_conf.assoc ||
+		     wvif->vif->bss_conf.ibss_joined)) {
 			wvif->disable_beacon_filter = false;
 			schedule_work(&wvif->update_filtering_work);
 		}
diff --git a/drivers/staging/wfx/data_tx.c b/drivers/staging/wfx/data_tx.c
index cf73b83ccc9e..619ab2cac5fc 100644
--- a/drivers/staging/wfx/data_tx.c
+++ b/drivers/staging/wfx/data_tx.c
@@ -20,7 +20,8 @@
 #define WFX_LINK_ID_NO_ASSOC   15
 #define WFX_LINK_ID_GC_TIMEOUT ((unsigned long)(10 * HZ))
 
-static int wfx_get_hw_rate(struct wfx_dev *wdev, const struct ieee80211_tx_rate *rate)
+static int wfx_get_hw_rate(struct wfx_dev *wdev,
+			   const struct ieee80211_tx_rate *rate)
 {
 	if (rate->idx < 0)
 		return -1;
@@ -120,12 +121,14 @@ static void wfx_tx_policy_build(struct wfx_vif *wvif, struct tx_policy *policy,
 	}
 }
 
-static bool tx_policy_is_equal(const struct tx_policy *a, const struct tx_policy *b)
+static bool tx_policy_is_equal(const struct tx_policy *a,
+			       const struct tx_policy *b)
 {
 	return !memcmp(a->rates, b->rates, sizeof(a->rates));
 }
 
-static int wfx_tx_policy_find(struct tx_policy_cache *cache, struct tx_policy *wanted)
+static int wfx_tx_policy_find(struct tx_policy_cache *cache,
+			      struct tx_policy *wanted)
 {
 	struct tx_policy *it;
 
@@ -138,13 +141,15 @@ static int wfx_tx_policy_find(struct tx_policy_cache *cache, struct tx_policy *w
 	return -1;
 }
 
-static void wfx_tx_policy_use(struct tx_policy_cache *cache, struct tx_policy *entry)
+static void wfx_tx_policy_use(struct tx_policy_cache *cache,
+			      struct tx_policy *entry)
 {
 	++entry->usage_count;
 	list_move(&entry->link, &cache->used);
 }
 
-static int wfx_tx_policy_release(struct tx_policy_cache *cache, struct tx_policy *entry)
+static int wfx_tx_policy_release(struct tx_policy_cache *cache,
+				 struct tx_policy *entry)
 {
 	int ret = --entry->usage_count;
 
@@ -153,8 +158,9 @@ static int wfx_tx_policy_release(struct tx_policy_cache *cache, struct tx_policy
 	return ret;
 }
 
-static int wfx_tx_policy_get(struct wfx_vif *wvif, struct ieee80211_tx_rate *rates,
-			 bool *renew)
+static int wfx_tx_policy_get(struct wfx_vif *wvif,
+			     struct ieee80211_tx_rate *rates,
+			     bool *renew)
 {
 	int idx;
 	struct tx_policy_cache *cache = &wvif->tx_policy_cache;
@@ -211,7 +217,10 @@ static int wfx_tx_policy_upload(struct wfx_vif *wvif)
 	int i;
 	struct tx_policy_cache *cache = &wvif->tx_policy_cache;
 	struct hif_mib_set_tx_rate_retry_policy *arg =
-		kzalloc(struct_size(arg, tx_rate_retry_policy, HIF_MIB_NUM_TX_RATE_RETRY_POLICIES), GFP_KERNEL);
+		kzalloc(struct_size(arg,
+				    tx_rate_retry_policy,
+				    HIF_MIB_NUM_TX_RATE_RETRY_POLICIES),
+			GFP_KERNEL);
 	struct hif_mib_tx_rate_retry_policy *dst;
 
 	spin_lock_bh(&cache->lock);
@@ -220,7 +229,8 @@ static int wfx_tx_policy_upload(struct wfx_vif *wvif)
 		struct tx_policy *src = &cache->cache[i];
 
 		if (!src->uploaded && memzcmp(src->rates, sizeof(src->rates))) {
-			dst = arg->tx_rate_retry_policy + arg->num_tx_rate_policies;
+			dst = arg->tx_rate_retry_policy +
+				arg->num_tx_rate_policies;
 
 			dst->policy_index = i;
 			dst->short_retry_count = 255;
@@ -326,7 +336,8 @@ int wfx_find_link_id(struct wfx_vif *wvif, const u8 *mac)
 	return ret;
 }
 
-static int wfx_map_link(struct wfx_vif *wvif, struct wfx_link_entry *link_entry, int sta_id)
+static int wfx_map_link(struct wfx_vif *wvif,
+			struct wfx_link_entry *link_entry, int sta_id)
 {
 	int ret;
 
@@ -437,7 +448,8 @@ static bool ieee80211_is_action_back(struct ieee80211_hdr *hdr)
 }
 
 static void wfx_tx_manage_pm(struct wfx_vif *wvif, struct ieee80211_hdr *hdr,
-			     struct wfx_tx_priv *tx_priv, struct ieee80211_sta *sta)
+			     struct wfx_tx_priv *tx_priv,
+			     struct ieee80211_sta *sta)
 {
 	u32 mask = ~BIT(tx_priv->raw_link_id);
 
@@ -447,7 +459,8 @@ static void wfx_tx_manage_pm(struct wfx_vif *wvif, struct ieee80211_hdr *hdr,
 		wvif->pspoll_mask &= mask;
 	}
 
-	if (tx_priv->link_id == WFX_LINK_ID_AFTER_DTIM && !wvif->mcast_buffered) {
+	if (tx_priv->link_id == WFX_LINK_ID_AFTER_DTIM &&
+	    !wvif->mcast_buffered) {
 		wvif->mcast_buffered = true;
 		if (wvif->sta_asleep_mask)
 			schedule_work(&wvif->mcast_start_work);
@@ -464,9 +477,12 @@ static void wfx_tx_manage_pm(struct wfx_vif *wvif, struct ieee80211_hdr *hdr,
 		ieee80211_sta_set_buffered(sta, tx_priv->tid, true);
 }
 
-static uint8_t wfx_tx_get_raw_link_id(struct wfx_vif *wvif, struct ieee80211_sta *sta, struct ieee80211_hdr *hdr)
+static uint8_t wfx_tx_get_raw_link_id(struct wfx_vif *wvif,
+				      struct ieee80211_sta *sta,
+				      struct ieee80211_hdr *hdr)
 {
-	struct wfx_sta_priv *sta_priv = sta ? (struct wfx_sta_priv *) &sta->drv_priv : NULL;
+	struct wfx_sta_priv *sta_priv =
+		sta ? (struct wfx_sta_priv *) &sta->drv_priv : NULL;
 	const u8 *da = ieee80211_get_DA(hdr);
 	int ret;
 
@@ -505,8 +521,11 @@ static void wfx_tx_fixup_rates(struct ieee80211_tx_rate *rates)
 	do {
 		finished = true;
 		for (i = 0; i < IEEE80211_TX_MAX_RATES - 1; i++) {
-			if (rates[i + 1].idx == rates[i].idx && rates[i].idx != -1) {
-				rates[i].count =  max_t(int, rates[i].count, rates[i + 1].count);
+			if (rates[i + 1].idx == rates[i].idx &&
+			    rates[i].idx != -1) {
+				rates[i].count =
+					max_t(int, rates[i].count,
+					      rates[i + 1].count);
 				rates[i + 1].idx = -1;
 				rates[i + 1].count = 0;
 
@@ -523,12 +542,14 @@ static void wfx_tx_fixup_rates(struct ieee80211_tx_rate *rates)
 		rates[i].flags &= ~IEEE80211_TX_RC_SHORT_GI;
 }
 
-static uint8_t wfx_tx_get_rate_id(struct wfx_vif *wvif, struct ieee80211_tx_info *tx_info)
+static uint8_t wfx_tx_get_rate_id(struct wfx_vif *wvif,
+				  struct ieee80211_tx_info *tx_info)
 {
 	bool tx_policy_renew = false;
 	uint8_t rate_id;
 
-	rate_id = wfx_tx_policy_get(wvif, tx_info->driver_rates, &tx_policy_renew);
+	rate_id = wfx_tx_policy_get(wvif,
+				    tx_info->driver_rates, &tx_policy_renew);
 	WARN(rate_id == WFX_INVALID_RATE_ID, "unable to get a valid Tx policy");
 
 	if (tx_policy_renew) {
@@ -584,7 +605,8 @@ static int wfx_tx_get_icv_len(struct ieee80211_key_conf *hw_key)
 	return hw_key->icv_len + mic_space;
 }
 
-static int wfx_tx_inner(struct wfx_vif *wvif, struct ieee80211_sta *sta, struct sk_buff *skb)
+static int wfx_tx_inner(struct wfx_vif *wvif, struct ieee80211_sta *sta,
+			struct sk_buff *skb)
 {
 	struct hif_msg *hif_msg;
 	struct hif_req_tx *req;
@@ -594,7 +616,8 @@ static int wfx_tx_inner(struct wfx_vif *wvif, struct ieee80211_sta *sta, struct
 	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
 	int queue_id = tx_info->hw_queue;
 	size_t offset = (size_t) skb->data & 3;
-	int wmsg_len = sizeof(struct hif_msg) + sizeof(struct hif_req_tx) + offset;
+	int wmsg_len = sizeof(struct hif_msg) +
+			sizeof(struct hif_req_tx) + offset;
 
 	WARN(queue_id >= IEEE80211_NUM_ACS, "unsupported queue_id");
 	wfx_tx_fixup_rates(tx_info->driver_rates);
@@ -632,7 +655,8 @@ static int wfx_tx_inner(struct wfx_vif *wvif, struct ieee80211_sta *sta, struct
 
 	// Fill tx request
 	req = (struct hif_req_tx *)hif_msg->body;
-	req->packet_id = queue_id << 16 | IEEE80211_SEQ_TO_SN(le16_to_cpu(hdr->seq_ctrl));
+	req->packet_id = queue_id << 16 |
+			 IEEE80211_SEQ_TO_SN(le16_to_cpu(hdr->seq_ctrl));
 	req->data_flags.fc_offset = offset;
 	req->queue_id.peer_sta_id = tx_priv->raw_link_id;
 	// Queue index are inverted between firmware and Linux
@@ -655,7 +679,8 @@ void wfx_tx(struct ieee80211_hw *hw, struct ieee80211_tx_control *control,
 	struct ieee80211_sta *sta = control ? control->sta : NULL;
 	struct ieee80211_tx_info *tx_info = IEEE80211_SKB_CB(skb);
 	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
-	size_t driver_data_room = FIELD_SIZEOF(struct ieee80211_tx_info, rate_driver_data);
+	size_t driver_data_room = FIELD_SIZEOF(struct ieee80211_tx_info,
+					       rate_driver_data);
 
 	compiletime_assert(sizeof(struct wfx_tx_priv) <= driver_data_room,
 			   "struct tx_priv is too large");
@@ -692,12 +717,15 @@ void wfx_tx_confirm_cb(struct wfx_vif *wvif, struct hif_cnf_tx *arg)
 
 	skb = wfx_pending_get(wvif->wdev, arg->packet_id);
 	if (!skb) {
-		dev_warn(wvif->wdev->dev, "received unknown packet_id (%#.8x) from chip\n", arg->packet_id);
+		dev_warn(wvif->wdev->dev,
+			 "received unknown packet_id (%#.8x) from chip\n",
+			 arg->packet_id);
 		return;
 	}
 	tx_info = IEEE80211_SKB_CB(skb);
 	tx_priv = wfx_skb_tx_priv(skb);
-	_trace_tx_stats(arg, skb, wfx_pending_get_pkt_us_delay(wvif->wdev, skb));
+	_trace_tx_stats(arg, skb,
+			wfx_pending_get_pkt_us_delay(wvif->wdev, skb));
 
 	// You can touch to tx_priv, but don't touch to tx_info->status.
 	tx_count = arg->ack_failures;
@@ -710,9 +738,12 @@ void wfx_tx_confirm_cb(struct wfx_vif *wvif, struct hif_cnf_tx *arg)
 		if (tx_count < rate->count && arg->status && arg->ack_failures)
 			dev_dbg(wvif->wdev->dev, "all retries were not consumed: %d != %d\n",
 				rate->count, tx_count);
-		if (tx_count <= rate->count && tx_count && arg->txed_rate != wfx_get_hw_rate(wvif->wdev, rate))
-			dev_dbg(wvif->wdev->dev, "inconsistent tx_info rates: %d != %d\n",
-				arg->txed_rate, wfx_get_hw_rate(wvif->wdev, rate));
+		if (tx_count <= rate->count && tx_count &&
+		    arg->txed_rate != wfx_get_hw_rate(wvif->wdev, rate))
+			dev_dbg(wvif->wdev->dev,
+				"inconsistent tx_info rates: %d != %d\n",
+				arg->txed_rate,
+				wfx_get_hw_rate(wvif->wdev, rate));
 		if (tx_count > rate->count) {
 			tx_count -= rate->count;
 		} else if (!tx_count) {
@@ -724,7 +755,8 @@ void wfx_tx_confirm_cb(struct wfx_vif *wvif, struct hif_cnf_tx *arg)
 		}
 	}
 	if (tx_count)
-		dev_dbg(wvif->wdev->dev, "%d more retries than expected\n", tx_count);
+		dev_dbg(wvif->wdev->dev,
+			"%d more retries than expected\n", tx_count);
 	skb_trim(skb, skb->len - wfx_tx_get_icv_len(tx_priv->hw_key));
 
 	// From now, you can touch to tx_info->status, but do not touch to
@@ -734,9 +766,11 @@ void wfx_tx_confirm_cb(struct wfx_vif *wvif, struct hif_cnf_tx *arg)
 	memset(tx_info->pad, 0, sizeof(tx_info->pad));
 
 	if (!arg->status) {
-		if (wvif->bss_loss_state && arg->packet_id == wvif->bss_loss_confirm_id)
+		if (wvif->bss_loss_state &&
+		    arg->packet_id == wvif->bss_loss_confirm_id)
 			wfx_cqm_bssloss_sm(wvif, 0, 1, 0);
-		tx_info->status.tx_time = arg->media_delay - arg->tx_queue_delay;
+		tx_info->status.tx_time =
+		arg->media_delay - arg->tx_queue_delay;
 		if (tx_info->flags & IEEE80211_TX_CTL_NO_ACK)
 			tx_info->flags |= IEEE80211_TX_STAT_NOACK_TRANSMITTED;
 		else
@@ -752,7 +786,8 @@ void wfx_tx_confirm_cb(struct wfx_vif *wvif, struct hif_cnf_tx *arg)
 		wfx_suspend_resume(wvif, &suspend);
 		tx_info->flags |= IEEE80211_TX_STAT_TX_FILTERED;
 	} else {
-		if (wvif->bss_loss_state && arg->packet_id == wvif->bss_loss_confirm_id)
+		if (wvif->bss_loss_state &&
+		    arg->packet_id == wvif->bss_loss_confirm_id)
 			wfx_cqm_bssloss_sm(wvif, 0, 0, 1);
 	}
 	wfx_pending_remove(wvif->wdev, skb);
@@ -790,7 +825,9 @@ void wfx_skb_dtor(struct wfx_dev *wdev, struct sk_buff *skb)
 	struct hif_msg *hif = (struct hif_msg *)skb->data;
 	struct hif_req_tx *req = (struct hif_req_tx *)hif->body;
 	struct wfx_vif *wvif = wdev_to_wvif(wdev, hif->interface);
-	unsigned int offset = sizeof(struct hif_req_tx) + sizeof(struct hif_msg) + req->data_flags.fc_offset;
+	unsigned int offset = sizeof(struct hif_req_tx) +
+				sizeof(struct hif_msg) +
+				req->data_flags.fc_offset;
 
 	WARN_ON(!wvif);
 	skb_pull(skb, offset);
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
