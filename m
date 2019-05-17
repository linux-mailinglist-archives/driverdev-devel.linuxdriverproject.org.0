Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99DF121C7D
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 May 2019 19:30:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CDDBC8859D;
	Fri, 17 May 2019 17:30:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ML6M-k3nViTu; Fri, 17 May 2019 17:30:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BA66A883B0;
	Fri, 17 May 2019 17:30:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D99F41BF397
 for <devel@linuxdriverproject.org>; Fri, 17 May 2019 17:30:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D2CCA318AC
 for <devel@linuxdriverproject.org>; Fri, 17 May 2019 17:30:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8D9YUqPc9hOR for <devel@linuxdriverproject.org>;
 Fri, 17 May 2019 17:30:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 11459215DF
 for <devel@driverdev.osuosl.org>; Fri, 17 May 2019 17:30:01 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id d21so3658794plr.3
 for <devel@driverdev.osuosl.org>; Fri, 17 May 2019 10:30:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JYORoBm54C5/p3Yk+dlvfU/hEvCVN/+HUMPRR7AEikQ=;
 b=kQTpjV5/iBgDmyCV09T+vllHpjfVXtP4lgP1DelDebKExCBD/pUp+YrPwSVIWz5lcI
 pXPRCpV/j5CIEfvSEjr+VrbeiICFYQrvs1pBNV88DVW8RjCHob31w1DavBeEtjI5fIcQ
 4F7M3x141Bj0LYjTMTeZdYOuodlx1aBCrmge62N/345ozOs0NcogiO+xHltpjh0/lzmu
 2xJirHvfZGZyRLC9zoBCMgJ5qPTaxd7a4EJCTIoQCxfZjoseLPRLTt7oLQBC0hfKtKen
 HSeAlrbSA8+euyq0rv/IWNKxKHZH9fxl6u0mnBuZWy3PDr1X2la1FCmTZkYGZ6tNWDoX
 WLBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JYORoBm54C5/p3Yk+dlvfU/hEvCVN/+HUMPRR7AEikQ=;
 b=aClnqfH5rTYd4O8MQ/vBx5e+0LM3nBKAwM6upPErDbA4/l2sx4d94lTDdNWxrS/ak1
 pPUzqFKMEMGJ5U9z8hkmyAHI1uwm21Zvz6sFR+foNhpuYA8aSbmgd97H3EGw+nn4J/29
 XCZ12mMq2cGwU42M1IPoi2IMvrwwIZ890ZwPDccBcmGhcQi7I1Vgw36rDZW0sy2PmdcV
 klvpsKJ6R5MZquDDTONCcoTd1Y0CXMPlSrQpgriK08e6c3MdRSJJ4CXuFXS+UDpZSgAH
 Ue3ZOoQG7KaqvwoVblhhlwvcSXfKPivPVl4Um3NOzj3oj2z4wxBwnevLSskScEMQK5JO
 k4uw==
X-Gm-Message-State: APjAAAUHw4xxRwcXmG6TFakuWH4aI/Ld+PU1ZHbScV5CYI+brSC2K8kD
 MX/u4MvHLZcmUTZbPk9HNUU=
X-Google-Smtp-Source: APXvYqyEDzocOsjjxHKrIt35SVmzCLRUC3fjSO352vKFCsgBLCUNfOMj5tMU7Si72fKZ6X416Dn2Uw==
X-Received: by 2002:a17:902:5589:: with SMTP id
 g9mr26214471pli.187.1558114200493; 
 Fri, 17 May 2019 10:30:00 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:c:5f83:f3fb:fd6a:8472:ff9a])
 by smtp.googlemail.com with ESMTPSA id
 f22sm9936496pgl.25.2019.05.17.10.29.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 17 May 2019 10:29:59 -0700 (PDT)
From: Puranjay Mohan <puranjay12@gmail.com>
To: greg@kroah.com
Subject: [PATCH] Staging: rtl8192u: ieee80211: Use !x in place of NULL
 comparisons
Date: Fri, 17 May 2019 22:59:30 +0530
Message-Id: <20190517172930.1855-1-puranjay12@gmail.com>
X-Mailer: git-send-email 2.21.0
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
Cc: devel@driverdev.osuosl.org, Puranjay Mohan <puranjay12@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix the following checkpatch.pl warning :
CHECK: Comparison to NULL could be written "!x"
by changing (x == NULL) to !x and (x != NULL) to x.

Signed-off-by: Puranjay Mohan <puranjay12@gmail.com>
---
 .../rtl8192u/ieee80211/ieee80211_module.c     |  2 +-
 .../staging/rtl8192u/ieee80211/ieee80211_rx.c | 14 ++++++-------
 .../rtl8192u/ieee80211/ieee80211_softmac.c    |  4 ++--
 .../staging/rtl8192u/ieee80211/ieee80211_wx.c | 20 +++++++++----------
 4 files changed, 20 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
index d7975aa335b2..3532ea9a66c7 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
@@ -155,7 +155,7 @@ struct net_device *alloc_ieee80211(int sizeof_priv)
 	ieee80211_softmac_init(ieee);
 
 	ieee->pHTInfo = kzalloc(sizeof(RT_HIGH_THROUGHPUT), GFP_KERNEL);
-	if (ieee->pHTInfo == NULL) {
+	if (!ieee->pHTInfo) {
 		IEEE80211_DEBUG(IEEE80211_DL_ERR, "can't alloc memory for HTInfo\n");
 
 		/* By this point in code ieee80211_networks_allocate() has been
diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index 5483df408049..0a3e478fccd6 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
@@ -67,7 +67,7 @@ ieee80211_frag_cache_find(struct ieee80211_device *ieee, unsigned int seq,
 
 	for (i = 0; i < IEEE80211_FRAG_CACHE_LEN; i++) {
 		entry = &ieee->frag_cache[tid][i];
-		if (entry->skb != NULL &&
+		if (entry->skb &&
 		    time_after(jiffies, entry->first_frag_time + 2 * HZ)) {
 			IEEE80211_DEBUG_FRAG(
 				"expiring fragment cache entry "
@@ -77,7 +77,7 @@ ieee80211_frag_cache_find(struct ieee80211_device *ieee, unsigned int seq,
 			entry->skb = NULL;
 		}
 
-		if (entry->skb != NULL && entry->seq == seq &&
+		if (entry->skb && entry->seq == seq &&
 		    (entry->last_frag + 1 == frag || frag == -1) &&
 		    memcmp(entry->src_addr, src, ETH_ALEN) == 0 &&
 		    memcmp(entry->dst_addr, dst, ETH_ALEN) == 0)
@@ -133,7 +133,7 @@ ieee80211_frag_cache_get(struct ieee80211_device *ieee,
 		if (ieee->frag_next_idx[tid] >= IEEE80211_FRAG_CACHE_LEN)
 			ieee->frag_next_idx[tid] = 0;
 
-		if (entry->skb != NULL)
+		if (entry->skb)
 			dev_kfree_skb_any(entry->skb);
 
 		entry->first_frag_time = jiffies;
@@ -1092,7 +1092,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 	     ieee->iw_mode == IW_MODE_REPEAT) &&
 	    !from_assoc_ap) {
 		switch (hostap_handle_sta_rx(ieee, dev, skb, rx_stats,
-					     wds != NULL)) {
+					     wds)) {
 		case AP_RX_CONTINUE_NOT_AUTHORIZED:
 		case AP_RX_CONTINUE:
 			break;
@@ -1388,7 +1388,7 @@ static int ieee80211_read_qos_param_element(struct ieee80211_qos_parameter_info
 	int ret = 0;
 	u16 size = sizeof(struct ieee80211_qos_parameter_info) - 2;
 
-	if ((info_element == NULL) || (element_param == NULL))
+	if (!info_element || !element_param)
 		return -1;
 
 	if (info_element->id == QOS_ELEMENT_ID && info_element->len == size) {
@@ -2508,7 +2508,7 @@ static inline void ieee80211_process_probe_response(
 	list_for_each_entry(target, &ieee->network_list, list) {
 		if (is_same_network(target, network, ieee))
 			break;
-		if ((oldest == NULL) ||
+		if (!oldest ||
 		    (target->last_scanned < oldest->last_scanned))
 			oldest = target;
 	}
@@ -2577,7 +2577,7 @@ static inline void ieee80211_process_probe_response(
 	spin_unlock_irqrestore(&ieee->lock, flags);
 	if (is_beacon(beacon->header.frame_ctl) && is_same_network(&ieee->current_network, network, ieee) && \
 		(ieee->state == IEEE80211_LINKED)) {
-		if (ieee->handle_beacon != NULL)
+		if (ieee->handle_beacon)
 			ieee->handle_beacon(ieee->dev,beacon,&ieee->current_network);
 	}
 
diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
index 9f54adede230..f38f9d8b78bb 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
@@ -2660,13 +2660,13 @@ static int ieee80211_wpa_set_wpa_ie(struct ieee80211_device *ieee,
 	u8 *buf;
 
 	if (param->u.wpa_ie.len > MAX_WPA_IE_LEN ||
-	    (param->u.wpa_ie.len && param->u.wpa_ie.data == NULL))
+	    (param->u.wpa_ie.len && !param->u.wpa_ie.data))
 		return -EINVAL;
 
 	if (param->u.wpa_ie.len) {
 		buf = kmemdup(param->u.wpa_ie.data, param->u.wpa_ie.len,
 			      GFP_KERNEL);
-		if (buf == NULL)
+		if (!buf)
 			return -ENOMEM;
 
 		kfree(ieee->wpa_ie);
diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c
index 204c3c0443a6..be08cd1d37a7 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c
@@ -311,7 +311,7 @@ int ieee80211_wx_set_encode(struct ieee80211_device *ieee,
 		/* Check all the keys to see if any are still configured,
 		 * and if no key index was provided, de-init them all */
 		for (i = 0; i < WEP_KEYS; i++) {
-			if (ieee->crypt[i] != NULL) {
+			if (ieee->crypt[i]) {
 				if (key_provided)
 					break;
 				ieee80211_crypt_delayed_deinit(
@@ -333,14 +333,14 @@ int ieee80211_wx_set_encode(struct ieee80211_device *ieee,
 	sec.enabled = 1;
 	sec.flags |= SEC_ENABLED;
 
-	if (*crypt != NULL && (*crypt)->ops != NULL &&
+	if (*crypt && (*crypt)->ops &&
 	    strcmp((*crypt)->ops->name, "WEP") != 0) {
 		/* changing to use WEP; deinit previously used algorithm
 		 * on this key */
 		ieee80211_crypt_delayed_deinit(ieee, crypt);
 	}
 
-	if (*crypt == NULL) {
+	if (!*crypt) {
 		struct ieee80211_crypt_data *new_crypt;
 
 		/* take WEP into use */
@@ -468,7 +468,7 @@ int ieee80211_wx_get_encode(struct ieee80211_device *ieee,
 	crypt = ieee->crypt[key];
 	erq->flags = key + 1;
 
-	if (crypt == NULL || crypt->ops == NULL) {
+	if (!crypt || !crypt->ops) {
 		erq->length = 0;
 		erq->flags |= IW_ENCODE_DISABLED;
 		return 0;
@@ -537,7 +537,7 @@ int ieee80211_wx_set_encode_ext(struct ieee80211_device *ieee,
 
 		for (i = 0; i < WEP_KEYS; i++)
 
-			if (ieee->crypt[i] != NULL)
+			if (ieee->crypt[i])
 
 				break;
 
@@ -582,7 +582,7 @@ int ieee80211_wx_set_encode_ext(struct ieee80211_device *ieee,
 		goto done;
 	}
 
-	if (*crypt == NULL || (*crypt)->ops != ops) {
+	if (!*crypt || (*crypt)->ops != ops) {
 		struct ieee80211_crypt_data *new_crypt;
 
 		ieee80211_crypt_delayed_deinit(ieee, crypt);
@@ -595,7 +595,7 @@ int ieee80211_wx_set_encode_ext(struct ieee80211_device *ieee,
 		new_crypt->ops = ops;
 		if (new_crypt->ops && try_module_get(new_crypt->ops->owner))
 			new_crypt->priv = new_crypt->ops->init(idx);
-		if (new_crypt->priv == NULL) {
+		if (!new_crypt->priv) {
 			kfree(new_crypt);
 			ret = -EINVAL;
 			goto done;
@@ -683,7 +683,7 @@ int ieee80211_wx_get_encode_ext(struct ieee80211_device *ieee,
 	encoding->flags = idx + 1;
 	memset(ext, 0, sizeof(*ext));
 
-	if (crypt == NULL || crypt->ops == NULL ) {
+	if (!crypt || !crypt->ops) {
 		ext->alg = IW_ENCODE_ALG_NONE;
 		ext->key_len = 0;
 		encoding->flags |= IW_ENCODE_DISABLED;
@@ -785,7 +785,7 @@ int ieee80211_wx_set_gen_ie(struct ieee80211_device *ieee, u8 *ie, size_t len)
 {
 	u8 *buf;
 
-	if (len>MAX_WPA_IE_LEN || (len && ie == NULL)) {
+	if (len>MAX_WPA_IE_LEN || (len && !ie)) {
 	//	printk("return error out, len:%d\n", len);
 	return -EINVAL;
 	}
@@ -797,7 +797,7 @@ int ieee80211_wx_set_gen_ie(struct ieee80211_device *ieee, u8 *ie, size_t len)
 			return -EINVAL;
 		}
 		buf = kmemdup(ie, len, GFP_KERNEL);
-		if (buf == NULL)
+		if (!buf)
 			return -ENOMEM;
 		kfree(ieee->wpa_ie);
 		ieee->wpa_ie = buf;
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
