Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 834AEDD8F2
	for <lists+driverdev-devel@lfdr.de>; Sat, 19 Oct 2019 16:07:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8695885E77;
	Sat, 19 Oct 2019 14:07:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id noTLS287VrQU; Sat, 19 Oct 2019 14:07:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C687885EA4;
	Sat, 19 Oct 2019 14:07:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AD7BA1BF334
 for <devel@linuxdriverproject.org>; Sat, 19 Oct 2019 14:07:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9C31F2155F
 for <devel@linuxdriverproject.org>; Sat, 19 Oct 2019 14:07:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NXCaW+kLy+vb for <devel@linuxdriverproject.org>;
 Sat, 19 Oct 2019 14:07:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by silver.osuosl.org (Postfix) with ESMTPS id A82262076F
 for <devel@driverdev.osuosl.org>; Sat, 19 Oct 2019 14:07:47 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id r3so9096817wrj.6
 for <devel@driverdev.osuosl.org>; Sat, 19 Oct 2019 07:07:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=t1oSD9yvg5gmEXonhSx+4hOlKXRU+VMChnziQ21P88w=;
 b=rRWOZNzbvdsYfRVf+DQoWcNdG5jOBr12IFbRzBf+sl6Z11/dWtoUfuLRyaH0U6AVw0
 EnUXa3YNJ6hqzDHQ9I8vdjU/G4F0qi+0rainbRxDI0ukqJSzvlJTC7iVei1qJ34RY2Wz
 0h1KvK1eSthbY1YHKjvxQc4aahY2vCYkuws6yBWYi95nM+cQTgarM/UQixycHan7mtzs
 qEpM6k02g475aN+7hz0mdeZE3kR/Az62alRpml8z0IMNvHzEgyV2iWIwHWgCCj95cl6E
 JYewVWE1so1NAj56PtyuiT4qqNgnmyHZtpuRCT3ADV+ADxpz5eCYgDqGYZo2E0KIeH4l
 frYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=t1oSD9yvg5gmEXonhSx+4hOlKXRU+VMChnziQ21P88w=;
 b=loEnbpbr75YdOedgV8DNQ+41MWlzYQtas/MWNAzOglOVMt/3sbe7zSDhpWI2HuZX07
 FhFkQxzNQrFxDLc3C2drOR0HxGwbBKacQy7evUn6AdzTUjATubbeXA9giDEhVO7PEADp
 y++Caz9YIPtykewFQ2/jGMg76ugE5SRM7Ku1N7gTG3vIXVNcTRDIpU8x64hJr/GkPoA5
 +W/OfcrqtUPkBd1kokgwwBhlfC8Sjme50NtgPa8n4ZWBr9n57BdeVuAXGnb9LETjyNqN
 qaZCqfDZ26Q+5rS15y6IVeJBmZHLm2S5s2oRtfNcQu/cRgDqYvMYZvhN1xwar9yqQHmK
 Ef9Q==
X-Gm-Message-State: APjAAAUcR3tArTYdyTCq1JS0U5zzlK0JhjK4W+ZR9X21e40AOxb/NtkR
 HnIvc83BxhUqrZCtJANz7w==
X-Google-Smtp-Source: APXvYqxO4soD9g8B2NXEpDqszFgjzgsrWg9WyveItixSlbb+ATzui2UCxazkLKkQw63w3GKD1qQjgA==
X-Received: by 2002:a5d:4612:: with SMTP id t18mr11514876wrq.255.1571494065629; 
 Sat, 19 Oct 2019 07:07:45 -0700 (PDT)
Received: from ninjahub.lan (host-92-23-80-57.as13285.net. [92.23.80.57])
 by smtp.googlemail.com with ESMTPSA id t4sm7893080wrm.13.2019.10.19.07.07.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 19 Oct 2019 07:07:45 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v1 1/5] staging: wfx: fix warnings of no space is necessary
Date: Sat, 19 Oct 2019 15:07:15 +0100
Message-Id: <20191019140719.2542-2-jbi.octave@gmail.com>
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

Fix warnings of no space is necessary after a cast.
Issue detected by checkpatch tool.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/wfx/bh.c       |  8 ++++----
 drivers/staging/wfx/bus_sdio.c |  6 +++---
 drivers/staging/wfx/bus_spi.c  |  2 +-
 drivers/staging/wfx/data_rx.c  |  8 ++++----
 drivers/staging/wfx/data_tx.c  | 20 ++++++++++----------
 drivers/staging/wfx/data_tx.h  |  4 ++--
 6 files changed, 24 insertions(+), 24 deletions(-)

diff --git a/drivers/staging/wfx/bh.c b/drivers/staging/wfx/bh.c
index 3355183fc86c..573216b08042 100644
--- a/drivers/staging/wfx/bh.c
+++ b/drivers/staging/wfx/bh.c
@@ -69,13 +69,13 @@ static int rx_helper(struct wfx_dev *wdev, size_t read_len, int *is_cnf)
 	if (wfx_data_read(wdev, skb->data, alloc_len))
 		goto err;
 
-	piggyback = le16_to_cpup((u16 *) (skb->data + alloc_len - 2));
+	piggyback = le16_to_cpup((u16 *)(skb->data + alloc_len - 2));
 	_trace_piggyback(piggyback, false);
 
-	hif = (struct hif_msg *) skb->data;
+	hif = (struct hif_msg *)skb->data;
 	WARN(hif->encrypted & 0x1, "unsupported encryption type");
 	if (hif->encrypted == 0x2) {
-		if (wfx_sl_decode(wdev, (void *) hif)) {
+		if (wfx_sl_decode(wdev, (void *)hif)) {
 			dev_kfree_skb(skb);
 			// If frame was a confirmation, expect trouble in next
 			// exchange. However, it is harmless to fail to decode
@@ -102,7 +102,7 @@ static int rx_helper(struct wfx_dev *wdev, size_t read_len, int *is_cnf)
 	if (!(hif->id & HIF_ID_IS_INDICATION)) {
 		(*is_cnf)++;
 		if (hif->id == HIF_CNF_ID_MULTI_TRANSMIT)
-			release_count = le32_to_cpu(((struct hif_cnf_multi_transmit *) hif->body)->num_tx_confs);
+			release_count = le32_to_cpu(((struct hif_cnf_multi_transmit *)hif->body)->num_tx_confs);
 		else
 			release_count = 1;
 		WARN(wdev->hif.tx_buffers_used < release_count, "corrupted buffer counter");
diff --git a/drivers/staging/wfx/bus_sdio.c b/drivers/staging/wfx/bus_sdio.c
index f97360513150..184e20dfdd62 100644
--- a/drivers/staging/wfx/bus_sdio.c
+++ b/drivers/staging/wfx/bus_sdio.c
@@ -38,7 +38,7 @@ static int wfx_sdio_copy_from_io(void *priv, unsigned int reg_id,
 	int ret;
 
 	WARN(reg_id > 7, "chip only has 7 registers");
-	WARN(((uintptr_t) dst) & 3, "unaligned buffer size");
+	WARN(((uintptr_t)dst) & 3, "unaligned buffer size");
 	WARN(count & 3, "unaligned buffer address");
 
 	/* Use queue mode buffers */
@@ -59,14 +59,14 @@ static int wfx_sdio_copy_to_io(void *priv, unsigned int reg_id,
 	int ret;
 
 	WARN(reg_id > 7, "chip only has 7 registers");
-	WARN(((uintptr_t) src) & 3, "unaligned buffer size");
+	WARN(((uintptr_t)src) & 3, "unaligned buffer size");
 	WARN(count & 3, "unaligned buffer address");
 
 	/* Use queue mode buffers */
 	if (reg_id == WFX_REG_IN_OUT_QUEUE)
 		sdio_addr |= bus->buf_id_tx << 7;
 	// FIXME: discards 'const' qualifier for src
-	ret = sdio_memcpy_toio(bus->func, sdio_addr, (void *) src, count);
+	ret = sdio_memcpy_toio(bus->func, sdio_addr, (void *)src, count);
 	if (!ret && reg_id == WFX_REG_IN_OUT_QUEUE)
 		bus->buf_id_tx = (bus->buf_id_tx + 1) % 32;
 
diff --git a/drivers/staging/wfx/bus_spi.c b/drivers/staging/wfx/bus_spi.c
index f65f7d75e731..effd07957753 100644
--- a/drivers/staging/wfx/bus_spi.c
+++ b/drivers/staging/wfx/bus_spi.c
@@ -90,7 +90,7 @@ static int wfx_spi_copy_to_io(void *priv, unsigned int addr,
 	struct wfx_spi_priv *bus = priv;
 	u16 regaddr = (addr << 12) | (count / 2);
 	// FIXME: use a bounce buffer
-	u16 *src16 = (void *) src;
+	u16 *src16 = (void *)src;
 	int ret, i;
 	struct spi_message      m;
 	struct spi_transfer     t_addr = {
diff --git a/drivers/staging/wfx/data_rx.c b/drivers/staging/wfx/data_rx.c
index 3a79089c8501..3a79ab93e97e 100644
--- a/drivers/staging/wfx/data_rx.c
+++ b/drivers/staging/wfx/data_rx.c
@@ -29,7 +29,7 @@ static int wfx_handle_pspoll(struct wfx_vif *wvif, struct sk_buff *skb)
 	rcu_read_lock();
 	sta = ieee80211_find_sta(wvif->vif, pspoll->ta);
 	if (sta)
-		link_id = ((struct wfx_sta_priv *) &sta->drv_priv)->link_id;
+		link_id = ((struct wfx_sta_priv *)&sta->drv_priv)->link_id;
 	rcu_read_unlock();
 	if (link_id)
 		pspoll_mask = BIT(link_id);
@@ -102,8 +102,8 @@ void wfx_rx_cb(struct wfx_vif *wvif, struct hif_ind_rx *arg, struct sk_buff *skb
 {
 	int link_id = arg->rx_flags.peer_sta_id;
 	struct ieee80211_rx_status *hdr = IEEE80211_SKB_RXCB(skb);
-	struct ieee80211_hdr *frame = (struct ieee80211_hdr *) skb->data;
-	struct ieee80211_mgmt *mgmt = (struct ieee80211_mgmt *) skb->data;
+	struct ieee80211_hdr *frame = (struct ieee80211_hdr *)skb->data;
+	struct ieee80211_mgmt *mgmt = (struct ieee80211_mgmt *)skb->data;
 	struct wfx_link_entry *entry = NULL;
 	bool early_data = false;
 
@@ -173,7 +173,7 @@ void wfx_rx_cb(struct wfx_vif *wvif, struct hif_ind_rx *arg, struct sk_buff *skb
 
 		tim_ie = cfg80211_find_ie(WLAN_EID_TIM, ies, ies_len);
 		if (tim_ie) {
-			struct ieee80211_tim_ie *tim = (struct ieee80211_tim_ie *) &tim_ie[2];
+			struct ieee80211_tim_ie *tim = (struct ieee80211_tim_ie *)&tim_ie[2];
 
 			if (wvif->dtim_period != tim->dtim_period) {
 				wvif->dtim_period = tim->dtim_period;
diff --git a/drivers/staging/wfx/data_tx.c b/drivers/staging/wfx/data_tx.c
index 8ed38cac19f6..cf73b83ccc9e 100644
--- a/drivers/staging/wfx/data_tx.c
+++ b/drivers/staging/wfx/data_tx.c
@@ -427,7 +427,7 @@ void wfx_link_id_work(struct work_struct *work)
 
 static bool ieee80211_is_action_back(struct ieee80211_hdr *hdr)
 {
-	struct ieee80211_mgmt *mgmt = (struct ieee80211_mgmt *) hdr;
+	struct ieee80211_mgmt *mgmt = (struct ieee80211_mgmt *)hdr;
 
 	if (!ieee80211_is_action(mgmt->frame_control))
 		return false;
@@ -591,7 +591,7 @@ static int wfx_tx_inner(struct wfx_vif *wvif, struct ieee80211_sta *sta, struct
 	struct wfx_tx_priv *tx_priv;
 	struct ieee80211_tx_info *tx_info = IEEE80211_SKB_CB(skb);
 	struct ieee80211_key_conf *hw_key = tx_info->control.hw_key;
-	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *) skb->data;
+	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
 	int queue_id = tx_info->hw_queue;
 	size_t offset = (size_t) skb->data & 3;
 	int wmsg_len = sizeof(struct hif_msg) + sizeof(struct hif_req_tx) + offset;
@@ -602,7 +602,7 @@ static int wfx_tx_inner(struct wfx_vif *wvif, struct ieee80211_sta *sta, struct
 	// From now tx_info->control is unusable
 	memset(tx_info->rate_driver_data, 0, sizeof(struct wfx_tx_priv));
 	// Fill tx_priv
-	tx_priv = (struct wfx_tx_priv *) tx_info->rate_driver_data;
+	tx_priv = (struct wfx_tx_priv *)tx_info->rate_driver_data;
 	tx_priv->tid = wfx_tx_get_tid(hdr);
 	tx_priv->raw_link_id = wfx_tx_get_raw_link_id(wvif, sta, hdr);
 	tx_priv->link_id = tx_priv->raw_link_id;
@@ -619,7 +619,7 @@ static int wfx_tx_inner(struct wfx_vif *wvif, struct ieee80211_sta *sta, struct
 	skb_put(skb, wfx_tx_get_icv_len(tx_priv->hw_key));
 	skb_push(skb, wmsg_len);
 	memset(skb->data, 0, wmsg_len);
-	hif_msg = (struct hif_msg *) skb->data;
+	hif_msg = (struct hif_msg *)skb->data;
 	hif_msg->len = cpu_to_le16(skb->len);
 	hif_msg->id = HIF_REQ_ID_TX;
 	hif_msg->interface = wvif->id;
@@ -631,7 +631,7 @@ static int wfx_tx_inner(struct wfx_vif *wvif, struct ieee80211_sta *sta, struct
 	}
 
 	// Fill tx request
-	req = (struct hif_req_tx *) hif_msg->body;
+	req = (struct hif_req_tx *)hif_msg->body;
 	req->packet_id = queue_id << 16 | IEEE80211_SEQ_TO_SN(le16_to_cpu(hdr->seq_ctrl));
 	req->data_flags.fc_offset = offset;
 	req->queue_id.peer_sta_id = tx_priv->raw_link_id;
@@ -654,7 +654,7 @@ void wfx_tx(struct ieee80211_hw *hw, struct ieee80211_tx_control *control,
 	struct wfx_vif *wvif;
 	struct ieee80211_sta *sta = control ? control->sta : NULL;
 	struct ieee80211_tx_info *tx_info = IEEE80211_SKB_CB(skb);
-	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *) skb->data;
+	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
 	size_t driver_data_room = FIELD_SIZEOF(struct ieee80211_tx_info, rate_driver_data);
 
 	compiletime_assert(sizeof(struct wfx_tx_priv) <= driver_data_room,
@@ -662,7 +662,7 @@ void wfx_tx(struct ieee80211_hw *hw, struct ieee80211_tx_control *control,
 	WARN(skb->next || skb->prev, "skb is already member of a list");
 	// control.vif can be NULL for injected frames
 	if (tx_info->control.vif)
-		wvif = (struct wfx_vif *) tx_info->control.vif->drv_priv;
+		wvif = (struct wfx_vif *)tx_info->control.vif->drv_priv;
 	else
 		wvif = wvif_iterate(wdev, NULL);
 	if (WARN_ON(!wvif))
@@ -762,7 +762,7 @@ static void wfx_notify_buffered_tx(struct wfx_vif *wvif, struct sk_buff *skb,
 				   struct hif_req_tx *req)
 {
 	struct ieee80211_sta *sta;
-	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *) skb->data;
+	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
 	int tid = wfx_tx_get_tid(hdr);
 	int raw_link_id = req->queue_id.peer_sta_id;
 	u8 *buffered;
@@ -787,8 +787,8 @@ static void wfx_notify_buffered_tx(struct wfx_vif *wvif, struct sk_buff *skb,
 
 void wfx_skb_dtor(struct wfx_dev *wdev, struct sk_buff *skb)
 {
-	struct hif_msg *hif = (struct hif_msg *) skb->data;
-	struct hif_req_tx *req = (struct hif_req_tx *) hif->body;
+	struct hif_msg *hif = (struct hif_msg *)skb->data;
+	struct hif_req_tx *req = (struct hif_req_tx *)hif->body;
 	struct wfx_vif *wvif = wdev_to_wvif(wdev, hif->interface);
 	unsigned int offset = sizeof(struct hif_req_tx) + sizeof(struct hif_msg) + req->data_flags.fc_offset;
 
diff --git a/drivers/staging/wfx/data_tx.h b/drivers/staging/wfx/data_tx.h
index 0a19ef10a4ab..f74d1988925d 100644
--- a/drivers/staging/wfx/data_tx.h
+++ b/drivers/staging/wfx/data_tx.h
@@ -79,12 +79,12 @@ static inline struct wfx_tx_priv *wfx_skb_tx_priv(struct sk_buff *skb)
 	if (!skb)
 		return NULL;
 	tx_info = IEEE80211_SKB_CB(skb);
-	return (struct wfx_tx_priv *) tx_info->rate_driver_data;
+	return (struct wfx_tx_priv *)tx_info->rate_driver_data;
 }
 
 static inline struct hif_req_tx *wfx_skb_txreq(struct sk_buff *skb)
 {
-	struct hif_msg *hif = (struct hif_msg *) skb->data;
+	struct hif_msg *hif = (struct hif_msg *)skb->data;
 	struct hif_req_tx *req = (struct hif_req_tx *) hif->body;
 
 	return req;
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
