Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6445A96CF8
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Aug 2019 01:13:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0E1518865B;
	Tue, 20 Aug 2019 23:13:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mu4dFxsyAOqc; Tue, 20 Aug 2019 23:13:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D7FBD8863B;
	Tue, 20 Aug 2019 23:12:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3D6471BF424
 for <devel@linuxdriverproject.org>; Tue, 20 Aug 2019 23:12:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 386938862D
 for <devel@linuxdriverproject.org>; Tue, 20 Aug 2019 23:12:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GSOW7HJhX0Ld for <devel@linuxdriverproject.org>;
 Tue, 20 Aug 2019 23:12:55 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from sender4-of-o55.zoho.com (sender4-of-o55.zoho.com
 [136.143.188.55])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2F1F78861E
 for <devel@driverdev.osuosl.org>; Tue, 20 Aug 2019 23:12:55 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1566342761; cv=none; d=zoho.com; s=zohoarc; 
 b=FLROwqRXFgTPOwcoX+//CTlu3gxawzFTUCSJ/EWcW9Pb8MeS3wle1QKgxrdpODxrc7g9zM2mMPOs53kRA5PqTicJJbpe3lyWIS2tO8WPoyYAqxlMqjDzoqMCd0OVr5j1A3k6Fx3Ysg6DVcoBaTZVSUWXwStV4EWXW5Pr18T6hWE=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.com;
 s=zohoarc; t=1566342761;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results;
 bh=/F1MzkEe+uDcUQiBqaQQOkIXEBgDwot60UzWsiVVtDA=; 
 b=EDRPYAXUKurC6MycyPnPZ9fqiqHS5mAXD3B67mtCOVJ+CtcMwMAeNBgBwHOw/mOwkdrWIVsvolztx6IUD7zwKeyypfPOEJh2mSLuFdQ7BRA3LUHWOWRKvtAWXatj/KG+JLedde23Z1MovcBbWBu4ojQeYgh6jGNWnc5L3sBDmc0=
ARC-Authentication-Results: i=1; mx.zoho.com; dkim=pass  header.i=brennan.io;
 spf=pass  smtp.mailfrom=stephen@brennan.io;
 dmarc=pass header.from=<stephen@brennan.io> header.from=<stephen@brennan.io>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1566342761; 
 s=selector01; d=brennan.io; i=stephen@brennan.io;
 h=From:To:Cc:Message-ID:Subject:Date:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type;
 l=32757; bh=/F1MzkEe+uDcUQiBqaQQOkIXEBgDwot60UzWsiVVtDA=;
 b=mms6VgDarw2nPP5DNb5ls0XmoAddeQghfDSkvxyshHXehkJTt0ZSa8gK7c7hg1fF
 QQJBV6NAD/QHr8QUQ1Rie22WdiAOT+G05kLSXlP0ASFcL1w/Dgc5UUuFhU9K5GFf4OB
 ziZifDunB3ZndlUAirvfkGNgkPg9K3N3SD7ep6Cg=
Received: from localhost (wsip-184-188-36-2.sd.sd.cox.net [184.188.36.2]) by
 mx.zohomail.com with SMTPS id 1566342759703781.3693302639834;
 Tue, 20 Aug 2019 16:12:39 -0700 (PDT)
From: Stephen Brennan <stephen@brennan.io>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <20190820231156.30031-4-stephen@brennan.io>
Subject: [PATCH 3/3] staging: rtl8192u: fix spacing in ieee80211
Date: Tue, 20 Aug 2019 16:11:56 -0700
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190820231156.30031-1-stephen@brennan.io>
References: <20190820231156.30031-1-stephen@brennan.io>
MIME-Version: 1.0
X-ZohoMailClient: External
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
Cc: devel@driverdev.osuosl.org, Stephen Brennan <stephen@brennan.io>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Signed-off-by: Stephen Brennan <stephen@brennan.io>
---
 drivers/staging/rtl8192u/ieee80211/dot11d.c   | 10 ++--
 .../staging/rtl8192u/ieee80211/ieee80211.h    |  4 +-
 .../rtl8192u/ieee80211/ieee80211_crypt.c      |  2 +-
 .../rtl8192u/ieee80211/ieee80211_crypt_tkip.c | 22 ++++----
 .../rtl8192u/ieee80211/ieee80211_crypt_wep.c  |  4 +-
 .../staging/rtl8192u/ieee80211/ieee80211_rx.c |  2 +-
 .../rtl8192u/ieee80211/ieee80211_softmac_wx.c | 14 +++---
 .../staging/rtl8192u/ieee80211/ieee80211_tx.c | 50 +++++++++----------
 .../staging/rtl8192u/ieee80211/ieee80211_wx.c | 32 ++++++------
 .../rtl8192u/ieee80211/rtl819x_BAProc.c       | 12 ++---
 .../staging/rtl8192u/ieee80211/rtl819x_HT.h   |  6 +--
 .../rtl8192u/ieee80211/rtl819x_TSProc.c       | 14 +++---
 12 files changed, 86 insertions(+), 86 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/dot11d.c b/drivers/staging/rtl8192u/ieee80211/dot11d.c
index 130ddfe9868f..bc642076b96f 100644
--- a/drivers/staging/rtl8192u/ieee80211/dot11d.c
+++ b/drivers/staging/rtl8192u/ieee80211/dot11d.c
@@ -12,7 +12,7 @@ void rtl8192u_dot11d_init(struct ieee80211_device *ieee)
 	dot11d_info->state = DOT11D_STATE_NONE;
 	dot11d_info->country_ie_len = 0;
 	memset(dot11d_info->channel_map, 0, MAX_CHANNEL_NUMBER + 1);
-	memset(dot11d_info->max_tx_pwr_dbm_list, 0xFF, MAX_CHANNEL_NUMBER+1);
+	memset(dot11d_info->max_tx_pwr_dbm_list, 0xFF, MAX_CHANNEL_NUMBER + 1);
 	RESET_CIE_WATCHDOG(ieee);
 
 	netdev_info(ieee->dev, "rtl8192u_dot11d_init()\n");
@@ -25,8 +25,8 @@ void dot11d_reset(struct ieee80211_device *ieee)
 	u32 i;
 	struct rt_dot11d_info *dot11d_info = GET_DOT11D_INFO(ieee);
 	/* Clear old channel map */
-	memset(dot11d_info->channel_map, 0, MAX_CHANNEL_NUMBER+1);
-	memset(dot11d_info->max_tx_pwr_dbm_list, 0xFF, MAX_CHANNEL_NUMBER+1);
+	memset(dot11d_info->channel_map, 0, MAX_CHANNEL_NUMBER + 1);
+	memset(dot11d_info->max_tx_pwr_dbm_list, 0xFF, MAX_CHANNEL_NUMBER + 1);
 	/* Set new channel map */
 	for (i = 1; i <= 11; i++)
 		(dot11d_info->channel_map)[i] = 1;
@@ -56,8 +56,8 @@ void dot11d_update_country_ie(struct ieee80211_device *dev, u8 *pTaddr,
 	u8 i, j, NumTriples, MaxChnlNum;
 	struct chnl_txpower_triple *pTriple;
 
-	memset(dot11d_info->channel_map, 0, MAX_CHANNEL_NUMBER+1);
-	memset(dot11d_info->max_tx_pwr_dbm_list, 0xFF, MAX_CHANNEL_NUMBER+1);
+	memset(dot11d_info->channel_map, 0, MAX_CHANNEL_NUMBER + 1);
+	memset(dot11d_info->max_tx_pwr_dbm_list, 0xFF, MAX_CHANNEL_NUMBER + 1);
 	MaxChnlNum = 0;
 	NumTriples = (CoutryIeLen - 3) / 3; /* skip 3-byte country string. */
 	pTriple = (struct chnl_txpower_triple *)(pCoutryIe + 3);
diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
index 6b7828a9e71d..daebbbd8f4dd 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
@@ -456,7 +456,7 @@ do { if (ieee80211_debug_level & (level)) \
 	do { if ((ieee80211_debug_level & (level)) == (level))                 \
 		{                                                              \
 			int i;                                                 \
-			u8 *pdata = (u8 *) data;                               \
+			u8 *pdata = (u8 *)data;                                \
 			printk(KERN_DEBUG "ieee80211: %s()\n", __func__);      \
 			for (i = 0; i < (int)(datalen); i++) {                 \
 				printk("%2x ", pdata[i]);                      \
@@ -468,7 +468,7 @@ do { if (ieee80211_debug_level & (level)) \
 	} while (0)
 #else
 #define IEEE80211_DEBUG (level, fmt, args...) do {} while (0)
-#define IEEE80211_DEBUG_DATA (level, data, datalen) do {} while(0)
+#define IEEE80211_DEBUG_DATA (level, data, datalen) do {} while (0)
 #endif	/* CONFIG_IEEE80211_DEBUG */
 
 /* debug macros not dependent on CONFIG_IEEE80211_DEBUG */
diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
index 36987fccac5d..01012dddcd73 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
@@ -176,7 +176,7 @@ struct ieee80211_crypto_ops *ieee80211_get_crypto_ops(const char *name)
 }
 
 
-static void *ieee80211_crypt_null_init(int keyidx) { return (void *) 1; }
+static void *ieee80211_crypt_null_init(int keyidx) { return (void *)1; }
 static void ieee80211_crypt_null_deinit(void *priv) {}
 
 static struct ieee80211_crypto_ops ieee80211_crypt_null = {
diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c
index 0927b2b15151..6f4710171151 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c
@@ -160,7 +160,7 @@ static inline u16 Hi16(u32 val)
 
 static inline u16 Mk16(u8 hi, u8 lo)
 {
-	return lo | (((u16) hi) << 8);
+	return lo | (((u16)hi) << 8);
 }
 
 static const u16 Sbox[256] = {
@@ -238,7 +238,7 @@ static void tkip_mixing_phase2(u8 *WEPSeed, const u8 *TK, const u16 *TTAK,
 	 * Make temporary area overlap WEP seed so that the final copy can be
 	 * avoided on little endian hosts.
 	 */
-	u16 *PPK = (u16 *) &WEPSeed[4];
+	u16 *PPK = (u16 *)&WEPSeed[4];
 
 	/* Step 1 - make copy of TTAK and bring in TSC */
 	PPK[0] = TTAK[0];
@@ -299,7 +299,7 @@ static int ieee80211_tkip_encrypt(struct sk_buff *skb, int hdr_len, void *priv)
 	    skb->len < hdr_len)
 		return -1;
 
-	hdr = (struct rtl_80211_hdr_4addr *) skb->data;
+	hdr = (struct rtl_80211_hdr_4addr *)skb->data;
 
 	if (!tcb_desc->bHwSec) {
 		if (!tkey->tx_phase1_done) {
@@ -343,7 +343,7 @@ static int ieee80211_tkip_encrypt(struct sk_buff *skb, int hdr_len, void *priv)
 		icv[2] = crc >> 16;
 		icv[3] = crc >> 24;
 		crypto_sync_skcipher_setkey(tkey->tx_tfm_arc4, rc4key, 16);
-		sg_init_one(&sg, pos, len+4);
+		sg_init_one(&sg, pos, len + 4);
 		skcipher_request_set_sync_tfm(req, tkey->tx_tfm_arc4);
 		skcipher_request_set_callback(req, 0, NULL, NULL);
 		skcipher_request_set_crypt(req, &sg, &sg, len + 4, NULL);
@@ -383,7 +383,7 @@ static int ieee80211_tkip_decrypt(struct sk_buff *skb, int hdr_len, void *priv)
 	if (skb->len < hdr_len + 8 + 4)
 		return -1;
 
-	hdr = (struct rtl_80211_hdr_4addr *) skb->data;
+	hdr = (struct rtl_80211_hdr_4addr *)skb->data;
 	pos = skb->data + hdr_len;
 	keyidx = pos[3];
 	if (!(keyidx & BIT(5))) {
@@ -435,7 +435,7 @@ static int ieee80211_tkip_decrypt(struct sk_buff *skb, int hdr_len, void *priv)
 		plen = skb->len - hdr_len - 12;
 
 		crypto_sync_skcipher_setkey(tkey->rx_tfm_arc4, rc4key, 16);
-		sg_init_one(&sg, pos, plen+4);
+		sg_init_one(&sg, pos, plen + 4);
 
 		skcipher_request_set_sync_tfm(req, tkey->rx_tfm_arc4);
 		skcipher_request_set_callback(req, 0, NULL, NULL);
@@ -523,7 +523,7 @@ static void michael_mic_hdr(struct sk_buff *skb, u8 *hdr)
 {
 	struct rtl_80211_hdr_4addr *hdr11;
 
-	hdr11 = (struct rtl_80211_hdr_4addr *) skb->data;
+	hdr11 = (struct rtl_80211_hdr_4addr *)skb->data;
 	switch (le16_to_cpu(hdr11->frame_ctl) &
 		(IEEE80211_FCTL_FROMDS | IEEE80211_FCTL_TODS)) {
 	case IEEE80211_FCTL_TODS:
@@ -556,7 +556,7 @@ static int ieee80211_michael_mic_add(struct sk_buff *skb, int hdr_len, void *pri
 	u8 *pos;
 	struct rtl_80211_hdr_4addr *hdr;
 
-	hdr = (struct rtl_80211_hdr_4addr *) skb->data;
+	hdr = (struct rtl_80211_hdr_4addr *)skb->data;
 
 	if (skb_tailroom(skb) < 8 || skb->len < hdr_len) {
 		printk(KERN_DEBUG "Invalid packet for Michael MIC add "
@@ -599,7 +599,7 @@ static void ieee80211_michael_mic_failure(struct net_device *dev,
 	memcpy(ev.src_addr.sa_data, hdr->addr2, ETH_ALEN);
 	memset(&wrqu, 0, sizeof(wrqu));
 	wrqu.data.length = sizeof(ev);
-	wireless_send_event(dev, IWEVMICHAELMICFAILURE, &wrqu, (char *) &ev);
+	wireless_send_event(dev, IWEVMICHAELMICFAILURE, &wrqu, (char *)&ev);
 }
 
 static int ieee80211_michael_mic_verify(struct sk_buff *skb, int keyidx,
@@ -609,7 +609,7 @@ static int ieee80211_michael_mic_verify(struct sk_buff *skb, int keyidx,
 	u8 mic[8];
 	struct rtl_80211_hdr_4addr *hdr;
 
-	hdr = (struct rtl_80211_hdr_4addr *) skb->data;
+	hdr = (struct rtl_80211_hdr_4addr *)skb->data;
 
 	if (!tkey->key_set)
 		return -1;
@@ -626,7 +626,7 @@ static int ieee80211_michael_mic_verify(struct sk_buff *skb, int keyidx,
 		return -1;
 	if (memcmp(mic, skb->data + skb->len - 8, 8) != 0) {
 		struct rtl_80211_hdr_4addr *hdr;
-		hdr = (struct rtl_80211_hdr_4addr *) skb->data;
+		hdr = (struct rtl_80211_hdr_4addr *)skb->data;
 
 		printk(KERN_DEBUG "%s: Michael MIC verification failed for "
 		       "MSDU from %pM keyidx=%d\n",
diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c
index 805493a0870d..26482c3dcd1c 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c
@@ -135,7 +135,7 @@ static int prism2_wep_encrypt(struct sk_buff *skb, int hdr_len, void *priv)
 		icv[3] = crc >> 24;
 
 		crypto_sync_skcipher_setkey(wep->tx_tfm, key, klen);
-		sg_init_one(&sg, pos, len+4);
+		sg_init_one(&sg, pos, len + 4);
 
 		skcipher_request_set_sync_tfm(req, wep->tx_tfm);
 		skcipher_request_set_callback(req, 0, NULL, NULL);
@@ -192,7 +192,7 @@ static int prism2_wep_decrypt(struct sk_buff *skb, int hdr_len, void *priv)
 		SYNC_SKCIPHER_REQUEST_ON_STACK(req, wep->rx_tfm);
 
 		crypto_sync_skcipher_setkey(wep->rx_tfm, key, klen);
-		sg_init_one(&sg, pos, plen+4);
+		sg_init_one(&sg, pos, plen + 4);
 
 		skcipher_request_set_sync_tfm(req, wep->rx_tfm);
 		skcipher_request_set_callback(req, 0, NULL, NULL);
diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index 9d8b2ff700fe..a1462ec55767 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
@@ -1237,7 +1237,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 		&& !is_multicast_ether_addr(hdr->addr1)) {
 		TID = Frame_QoSTID(skb->data);
 		SeqNum = WLAN_GET_SEQ_SEQ(sc);
-		GetTs(ieee, (struct ts_common_info **) &pTS, hdr->addr2, TID, RX_DIR, true);
+		GetTs(ieee, (struct ts_common_info **)&pTS, hdr->addr2, TID, RX_DIR, true);
 		if (TID != 0 && TID != 3) {
 			ieee->bis_any_nonbepkts = true;
 		}
diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac_wx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac_wx.c
index 4a8d16a45fc5..b1baaa18b129 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac_wx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac_wx.c
@@ -42,8 +42,8 @@ int ieee80211_wx_set_freq(struct ieee80211_device *ieee, struct iw_request_info
 
 	/* if setting by freq convert to channel */
 	if (fwrq->e == 1) {
-		if ((fwrq->m >= (int) 2.412e8 &&
-		     fwrq->m <= (int) 2.487e8)) {
+		if ((fwrq->m >= (int)2.412e8 &&
+		     fwrq->m <= (int)2.487e8)) {
 			int f = fwrq->m / 100000;
 			int c = 0;
 
@@ -92,7 +92,7 @@ int ieee80211_wx_get_freq(struct ieee80211_device *ieee,
 	if (ieee->current_network.channel == 0)
 		return -1;
 	/* NM 0.7.0 will not accept channel any more. */
-	fwrq->m = ieee80211_wlan_frequencies[ieee->current_network.channel-1] * 100000;
+	fwrq->m = ieee80211_wlan_frequencies[ieee->current_network.channel - 1] * 100000;
 	fwrq->e = 1;
 	/* fwrq->m = ieee->current_network.channel; */
 	/* fwrq->e = 0; */
@@ -220,7 +220,7 @@ int ieee80211_wx_set_rate(struct ieee80211_device *ieee,
 
 	u32 target_rate = wrqu->bitrate.value;
 
-	ieee->rate = target_rate/100000;
+	ieee->rate = target_rate / 100000;
 	/* FIXME: we might want to limit rate also in management protocols. */
 	return 0;
 }
@@ -415,9 +415,9 @@ int ieee80211_wx_set_essid(struct ieee80211_device *ieee,
 
 	if (wrqu->essid.flags && wrqu->essid.length) {
 		/* first flush current network.ssid */
-		len = ((wrqu->essid.length-1) < IW_ESSID_MAX_SIZE) ? (wrqu->essid.length-1) : IW_ESSID_MAX_SIZE;
-		strncpy(ieee->current_network.ssid, extra, len+1);
-		ieee->current_network.ssid_len = len+1;
+		len = ((wrqu->essid.length - 1) < IW_ESSID_MAX_SIZE) ? (wrqu->essid.length - 1) : IW_ESSID_MAX_SIZE;
+		strncpy(ieee->current_network.ssid, extra, len + 1);
+		ieee->current_network.ssid_len = len + 1;
 		ieee->ssid_set = 1;
 	} else {
 		ieee->ssid_set = 0;
diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
index c49357067735..e76bdedc8409 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
@@ -294,7 +294,7 @@ static void ieee80211_tx_query_agg_cap(struct ieee80211_device *ieee,
 	struct tx_ts_record        *pTxTs = NULL;
 	struct rtl_80211_hdr_1addr *hdr = (struct rtl_80211_hdr_1addr *)skb->data;
 
-	if (!pHTInfo->bCurrentHTSupport||!pHTInfo->bEnableHT)
+	if (!pHTInfo->bCurrentHTSupport || !pHTInfo->bEnableHT)
 		return;
 	if (!IsQoSDataFrame(skb->data))
 		return;
@@ -334,7 +334,7 @@ static void ieee80211_tx_query_agg_cap(struct ieee80211_device *ieee,
 		}
 	}
 FORCED_AGG_SETTING:
-	switch (pHTInfo->ForcedAMPDUMode ) {
+	switch (pHTInfo->ForcedAMPDUMode) {
 		case HT_AGG_AUTO:
 			break;
 
@@ -372,7 +372,7 @@ ieee80211_query_HTCapShortGI(struct ieee80211_device *ieee, struct cb_desc *tcb_
 
 	tcb_desc->bUseShortGI		= false;
 
-	if (!pHTInfo->bCurrentHTSupport||!pHTInfo->bEnableHT)
+	if (!pHTInfo->bCurrentHTSupport || !pHTInfo->bEnableHT)
 		return;
 
 	if (pHTInfo->bForcedShortGI) {
@@ -380,9 +380,9 @@ ieee80211_query_HTCapShortGI(struct ieee80211_device *ieee, struct cb_desc *tcb_
 		return;
 	}
 
-	if ((pHTInfo->bCurBW40MHz==true) && pHTInfo->bCurShortGI40MHz)
+	if ((pHTInfo->bCurBW40MHz == true) && pHTInfo->bCurShortGI40MHz)
 		tcb_desc->bUseShortGI = true;
-	else if ((pHTInfo->bCurBW40MHz==false) && pHTInfo->bCurShortGI20MHz)
+	else if ((pHTInfo->bCurBW40MHz == false) && pHTInfo->bCurShortGI20MHz)
 		tcb_desc->bUseShortGI = true;
 }
 
@@ -393,16 +393,16 @@ static void ieee80211_query_BandwidthMode(struct ieee80211_device *ieee,
 
 	tcb_desc->bPacketBW = false;
 
-	if (!pHTInfo->bCurrentHTSupport||!pHTInfo->bEnableHT)
+	if (!pHTInfo->bCurrentHTSupport || !pHTInfo->bEnableHT)
 		return;
 
 	if (tcb_desc->bMulticast || tcb_desc->bBroadcast)
 		return;
 
-	if ((tcb_desc->data_rate & 0x80)==0) // If using legacy rate, it shall use 20MHz channel.
+	if ((tcb_desc->data_rate & 0x80) == 0) // If using legacy rate, it shall use 20MHz channel.
 		return;
 	//BandWidthAutoSwitch is for auto switch to 20 or 40 in long distance
-	if(pHTInfo->bCurBW40MHz && pHTInfo->bCurTxBW40MHz && !ieee->bandwidth_auto_switch.bforced_tx20Mhz)
+	if (pHTInfo->bCurBW40MHz && pHTInfo->bCurTxBW40MHz && !ieee->bandwidth_auto_switch.bforced_tx20Mhz)
 		tcb_desc->bPacketBW = true;
 	return;
 }
@@ -418,10 +418,10 @@ static void ieee80211_query_protectionmode(struct ieee80211_device *ieee,
 	tcb_desc->RTSSC				= 0;		// 20MHz: Don't care;  40MHz: Duplicate.
 	tcb_desc->bRTSBW			= false; // RTS frame bandwidth is always 20MHz
 
-	if(tcb_desc->bBroadcast || tcb_desc->bMulticast)//only unicast frame will use rts/cts
+	if (tcb_desc->bBroadcast || tcb_desc->bMulticast) //only unicast frame will use rts/cts
 		return;
 
-	if (is_broadcast_ether_addr(skb->data+16))  //check addr3 as infrastructure add3 is DA.
+	if (is_broadcast_ether_addr(skb->data + 16))  //check addr3 as infrastructure add3 is DA.
 		return;
 
 	if (ieee->mode < IEEE_N_24G) /* b, g mode */ {
@@ -451,9 +451,9 @@ static void ieee80211_query_protectionmode(struct ieee80211_device *ieee,
 				break;
 			}
 			//check HT op mode
-			if(pHTInfo->bCurrentHTSupport  && pHTInfo->bEnableHT) {
+			if (pHTInfo->bCurrentHTSupport && pHTInfo->bEnableHT) {
 				u8 HTOpMode = pHTInfo->CurrentOpMode;
-				if((pHTInfo->bCurBW40MHz && (HTOpMode == 2 || HTOpMode == 3)) ||
+				if ((pHTInfo->bCurBW40MHz && (HTOpMode == 2 || HTOpMode == 3)) ||
 							(!pHTInfo->bCurBW40MHz && HTOpMode == 3)) {
 					tcb_desc->rts_rate = MGN_24M; // Rate is 24Mbps.
 					tcb_desc->bRTSEnable = true;
@@ -468,7 +468,7 @@ static void ieee80211_query_protectionmode(struct ieee80211_device *ieee,
 			}
 			//to do list: check MIMO power save condition.
 			//check AMPDU aggregation for TXOP
-			if(tcb_desc->bAMPDUEnable) {
+			if (tcb_desc->bAMPDUEnable) {
 				tcb_desc->rts_rate = MGN_24M; // Rate is 24Mbps.
 				// According to 8190 design, firmware sends CF-End only if RTS/CTS is enabled. However, it degrads
 				// throughput around 10M, so we disable of this mechanism. 2007.08.03 by Emily
@@ -476,7 +476,7 @@ static void ieee80211_query_protectionmode(struct ieee80211_device *ieee,
 				break;
 			}
 			//check IOT action
-			if(pHTInfo->IOTAction & HT_IOT_ACT_FORCED_CTS2SELF) {
+			if (pHTInfo->IOTAction & HT_IOT_ACT_FORCED_CTS2SELF) {
 				tcb_desc->bCTSEnable	= true;
 				tcb_desc->rts_rate  =	MGN_24M;
 				tcb_desc->bRTSEnable = true;
@@ -517,7 +517,7 @@ static void ieee80211_txrate_selectmode(struct ieee80211_device *ieee,
 		return;
 	}
 
-	if (pMgntInfo->ForcedDataRate!= 0) {
+	if (pMgntInfo->ForcedDataRate != 0) {
 		pTcb->bTxDisableRateFallBack = true;
 		pTcb->bTxUseDriverAssingedRate = true;
 		return;
@@ -576,7 +576,7 @@ int ieee80211_xmit(struct sk_buff *skb, struct net_device *dev)
 	/* If there is no driver handler to take the TXB, dont' bother
 	 * creating it...
 	 */
-	if ((!ieee->hard_start_xmit && !(ieee->softmac_features & IEEE_SOFTMAC_TX_QUEUE))||
+	if ((!ieee->hard_start_xmit && !(ieee->softmac_features & IEEE_SOFTMAC_TX_QUEUE)) ||
 	   ((!ieee->softmac_data_hard_start_xmit && (ieee->softmac_features & IEEE_SOFTMAC_TX_QUEUE)))) {
 		printk(KERN_WARNING "%s: No xmit handler.\n",
 		       ieee->dev->name);
@@ -615,7 +615,7 @@ int ieee80211_xmit(struct sk_buff *skb, struct net_device *dev)
 
 		/* Save source and destination addresses */
 		memcpy(&dest, skb->data, ETH_ALEN);
-		memcpy(&src, skb->data+ETH_ALEN, ETH_ALEN);
+		memcpy(&src, skb->data + ETH_ALEN, ETH_ALEN);
 
 		/* Advance the SKB to the start of the payload */
 		skb_pull(skb, sizeof(struct ethhdr));
@@ -630,7 +630,7 @@ int ieee80211_xmit(struct sk_buff *skb, struct net_device *dev)
 			fc = IEEE80211_FTYPE_DATA;
 
 		//if(ieee->current_network.QoS_Enable)
-		if(qos_actived)
+		if (qos_actived)
 			fc |= IEEE80211_STYPE_QOS_DATA;
 		else
 			fc |= IEEE80211_STYPE_DATA;
@@ -724,7 +724,7 @@ int ieee80211_xmit(struct sk_buff *skb, struct net_device *dev)
 		for (i = 0; i < nr_frags; i++) {
 			skb_frag = txb->fragments[i];
 			tcb_desc = (struct cb_desc *)(skb_frag->cb + MAX_DEV_ADDR_SIZE);
-			if(qos_actived){
+			if (qos_actived) {
 				skb_frag->priority = skb->priority;//UP2AC(skb->priority);
 				tcb_desc->queue_index =  UP2AC(skb->priority);
 			} else {
@@ -757,11 +757,11 @@ int ieee80211_xmit(struct sk_buff *skb, struct net_device *dev)
 				bytes = bytes_last_frag;
 			}
 			//if(ieee->current_network.QoS_Enable)
-			if(qos_actived) {
+			if (qos_actived) {
 				// add 1 only indicate to corresponding seq number control 2006/7/12
-				frag_hdr->seq_ctl = cpu_to_le16(ieee->seq_ctrl[UP2AC(skb->priority)+1]<<4 | i);
+				frag_hdr->seq_ctl = cpu_to_le16(ieee->seq_ctrl[UP2AC(skb->priority) + 1] << 4 | i);
 			} else {
-				frag_hdr->seq_ctl = cpu_to_le16(ieee->seq_ctrl[0]<<4 | i);
+				frag_hdr->seq_ctl = cpu_to_le16(ieee->seq_ctrl[0] << 4 | i);
 			}
 
 			/* Put a SNAP header on the first fragment */
@@ -806,7 +806,7 @@ int ieee80211_xmit(struct sk_buff *skb, struct net_device *dev)
 		}
 
 		txb = ieee80211_alloc_txb(1, skb->len, GFP_ATOMIC);
-		if(!txb){
+		if (!txb) {
 			printk(KERN_WARNING "%s: Could not allocate TXB\n",
 			ieee->dev->name);
 			goto failed;
@@ -841,9 +841,9 @@ int ieee80211_xmit(struct sk_buff *skb, struct net_device *dev)
 	spin_unlock_irqrestore(&ieee->lock, flags);
 	dev_kfree_skb_any(skb);
 	if (txb) {
-		if (ieee->softmac_features & IEEE_SOFTMAC_TX_QUEUE){
+		if (ieee->softmac_features & IEEE_SOFTMAC_TX_QUEUE) {
 			ieee80211_softmac_xmit(txb, ieee);
-		}else{
+		} else {
 			if ((*ieee->hard_start_xmit)(txb, dev) == 0) {
 				stats->tx_packets++;
 				stats->tx_bytes += __le16_to_cpu(txb->payload_size);
diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c
index 8ad85331f020..8ca7a7fd74f9 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c
@@ -70,10 +70,10 @@ static inline char *rtl819x_translate_scan(struct ieee80211_device *ieee,
 	}
 	/* Add the protocol name */
 	iwe.cmd = SIOCGIWNAME;
-	for(i=0; i<ARRAY_SIZE(ieee80211_modes); i++) {
+	for (i = 0; i < ARRAY_SIZE(ieee80211_modes); i++) {
 		if (network->mode & BIT(i)) {
-			sprintf(pname,ieee80211_modes[i].mode_string,ieee80211_modes[i].mode_size);
-			pname +=ieee80211_modes[i].mode_size;
+			sprintf(pname, ieee80211_modes[i].mode_string, ieee80211_modes[i].mode_size);
+			pname += ieee80211_modes[i].mode_size;
 		}
 	}
 	*pname = '\0';
@@ -138,13 +138,13 @@ static inline char *rtl819x_translate_scan(struct ieee80211_device *ieee,
 			ht_cap = (struct ht_capability_ele *)&network->bssht.bdHTCapBuf[4];
 		else
 			ht_cap = (struct ht_capability_ele *)&network->bssht.bdHTCapBuf[0];
-		is40M = (ht_cap->ChlWidth)?1:0;
-		isShortGI = (ht_cap->ChlWidth)?
-						((ht_cap->ShortGI40Mhz)?1:0):
-						((ht_cap->ShortGI20Mhz)?1:0);
+		is40M = (ht_cap->ChlWidth) ? 1 : 0;
+		isShortGI = (ht_cap->ChlWidth) ?
+					((ht_cap->ShortGI40Mhz) ? 1 : 0) :
+					((ht_cap->ShortGI20Mhz) ? 1 : 0);
 
 		max_mcs = HTGetHighestMCSRate(ieee, ht_cap->MCS, MCS_FILTER_ALL);
-		rate = MCS_DATA_RATE[is40M][isShortGI][max_mcs&0x7f];
+		rate = MCS_DATA_RATE[is40M][isShortGI][max_mcs & 0x7f];
 		if (rate > max_rate)
 			max_rate = rate;
 	}
@@ -242,7 +242,7 @@ int ieee80211_wx_get_scan(struct ieee80211_device *ieee,
 
 	list_for_each_entry(network, &ieee->network_list, list) {
 		i++;
-		if((stop-ev)<200) {
+		if ((stop - ev) < 200) {
 			err = -E2BIG;
 			break;
 		}
@@ -453,7 +453,7 @@ int ieee80211_wx_get_encode(struct ieee80211_device *ieee,
 
 	IEEE80211_DEBUG_WX("GET_ENCODE\n");
 
-	if(ieee->iw_mode == IW_MODE_MONITOR)
+	if (ieee->iw_mode == IW_MODE_MONITOR)
 		return -1;
 
 	key = erq->flags & IW_ENCODE_INDEX;
@@ -570,7 +570,7 @@ int ieee80211_wx_set_encode_ext(struct ieee80211_device *ieee,
 		ret = -EINVAL;
 		goto done;
 	}
-	printk("alg name:%s\n",alg);
+	printk("alg name:%s\n", alg);
 
 	ops = try_then_request_module(ieee80211_get_crypto_ops(alg), module);
 	if (!ops) {
@@ -687,7 +687,7 @@ int ieee80211_wx_get_encode_ext(struct ieee80211_device *ieee,
 		ext->key_len = 0;
 		encoding->flags |= IW_ENCODE_DISABLED;
 	} else {
-		if (strcmp(crypt->ops->name, "WEP") == 0 )
+		if (strcmp(crypt->ops->name, "WEP") == 0)
 			ext->alg = IW_ENCODE_ALG_WEP;
 		else if (strcmp(crypt->ops->name, "TKIP"))
 			ext->alg = IW_ENCODE_ALG_TKIP;
@@ -711,7 +711,7 @@ int ieee80211_wx_set_mlme(struct ieee80211_device *ieee,
 			       struct iw_request_info *info,
 			       union iwreq_data *wrqu, char *extra)
 {
-	struct iw_mlme *mlme = (struct iw_mlme *) extra;
+	struct iw_mlme *mlme = (struct iw_mlme *)extra;
 	switch (mlme->cmd) {
 	case IW_MLME_DEAUTH:
 	case IW_MLME_DISASSOC:
@@ -764,7 +764,7 @@ int ieee80211_wx_set_auth(struct ieee80211_device *ieee,
 		break;
 
 	case IW_AUTH_WPA_ENABLED:
-		ieee->wpa_enabled = (data->value)?1:0;
+		ieee->wpa_enabled = (data->value) ? 1 : 0;
 		break;
 
 	case IW_AUTH_RX_UNENCRYPTED_EAPOL:
@@ -784,14 +784,14 @@ int ieee80211_wx_set_gen_ie(struct ieee80211_device *ieee, u8 *ie, size_t len)
 {
 	u8 *buf;
 
-	if (len>MAX_WPA_IE_LEN || (len && !ie)) {
+	if (len > MAX_WPA_IE_LEN || (len && !ie)) {
 	//	printk("return error out, len:%d\n", len);
 	return -EINVAL;
 	}
 
 
 	if (len) {
-		if (len != ie[1]+2) {
+		if (len != ie[1] + 2) {
 			printk("len:%zu, ie:%d\n", len, ie[1]);
 			return -EINVAL;
 		}
diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c b/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
index 53869b3c985c..379a2ccf4d9f 100644
--- a/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
+++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
@@ -162,7 +162,7 @@ static struct sk_buff *ieee80211_ADDBA(struct ieee80211_device *ieee, u8 *Dst, s
 		tag += 2;
 	}
 
-	IEEE80211_DEBUG_DATA(IEEE80211_DL_DATA|IEEE80211_DL_BA, skb->data, skb->len);
+	IEEE80211_DEBUG_DATA(IEEE80211_DL_DATA | IEEE80211_DL_BA, skb->data, skb->len);
 	return skb;
 	//return NULL;
 }
@@ -229,7 +229,7 @@ static struct sk_buff *ieee80211_DELBA(
 	put_unaligned_le16(ReasonCode, tag);
 	tag += 2;
 
-	IEEE80211_DEBUG_DATA(IEEE80211_DL_DATA|IEEE80211_DL_BA, skb->data, skb->len);
+	IEEE80211_DEBUG_DATA(IEEE80211_DL_DATA | IEEE80211_DL_BA, skb->data, skb->len);
 	if (net_ratelimit())
 		IEEE80211_DEBUG(IEEE80211_DL_TRACE | IEEE80211_DL_BA,
 				"<=====%s()\n", __func__);
@@ -331,9 +331,9 @@ int ieee80211_rx_ADDBAReq(struct ieee80211_device *ieee, struct sk_buff *skb)
 		return -1;
 	}
 
-	IEEE80211_DEBUG_DATA(IEEE80211_DL_DATA|IEEE80211_DL_BA, skb->data, skb->len);
+	IEEE80211_DEBUG_DATA(IEEE80211_DL_DATA | IEEE80211_DL_BA, skb->data, skb->len);
 
-	req = (struct rtl_80211_hdr_3addr *) skb->data;
+	req = (struct rtl_80211_hdr_3addr *)skb->data;
 	tag = (u8 *)req;
 	dst = &req->addr2[0];
 	tag += sizeof(struct rtl_80211_hdr_3addr);
@@ -556,7 +556,7 @@ int ieee80211_rx_DELBA(struct ieee80211_device *ieee, struct sk_buff *skb)
 		return -1;
 	}
 
-	IEEE80211_DEBUG_DATA(IEEE80211_DL_DATA|IEEE80211_DL_BA, skb->data, skb->len);
+	IEEE80211_DEBUG_DATA(IEEE80211_DL_DATA | IEEE80211_DL_BA, skb->data, skb->len);
 	delba = (struct rtl_80211_hdr_3addr *)skb->data;
 	dst = &delba->addr2[0];
 	pDelBaParamSet = (union delba_param_set *)&delba->payload[2];
@@ -643,7 +643,7 @@ TsInitDelBA(struct ieee80211_device *ieee, struct ts_common_info *pTsCommonInfo,
 			ieee80211_send_DELBA(
 				ieee,
 				pTsCommonInfo->addr,
-				(pTxTs->tx_admitted_ba_record.valid)?(&pTxTs->tx_admitted_ba_record):(&pTxTs->tx_pending_ba_record),
+				(pTxTs->tx_admitted_ba_record.valid) ? (&pTxTs->tx_admitted_ba_record) : (&pTxTs->tx_pending_ba_record),
 				TxRxSelect,
 				DELBA_REASON_END_BA);
 	} else if (TxRxSelect == RX_DIR) {
diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_HT.h b/drivers/staging/rtl8192u/ieee80211/rtl819x_HT.h
index 586d93720e37..79346a00af09 100644
--- a/drivers/staging/rtl8192u/ieee80211/rtl819x_HT.h
+++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_HT.h
@@ -270,7 +270,7 @@ typedef enum _HT_AGGRE_SIZE {
 	HT_AGG_SIZE_16K = 1,
 	HT_AGG_SIZE_32K = 2,
 	HT_AGG_SIZE_64K = 3,
-}HT_AGGRE_SIZE_E, *PHT_AGGRE_SIZE_E;
+} HT_AGGRE_SIZE_E, *PHT_AGGRE_SIZE_E;
 
 /* Indicate different AP vendor for IOT issue */
 typedef enum _HT_IOT_PEER {
@@ -281,7 +281,7 @@ typedef enum _HT_IOT_PEER {
 	HT_IOT_PEER_ATHEROS = 4,
 	HT_IOT_PEER_CISCO = 5,
 	HT_IOT_PEER_MAX = 6
-}HT_IOT_PEER_E, *PHTIOT_PEER_E;
+} HT_IOT_PEER_E, *PHTIOT_PEER_E;
 
 /*
  * IOT Action for different AP
@@ -297,6 +297,6 @@ typedef enum _HT_IOT_ACTION {
 	HT_IOT_ACT_CDD_FSYNC = 0x00000080,
 	HT_IOT_ACT_PURE_N_MODE = 0x00000100,
 	HT_IOT_ACT_FORCED_CTS2SELF = 0x00000200,
-}HT_IOT_ACTION_E, *PHT_IOT_ACTION_E;
+} HT_IOT_ACTION_E, *PHT_IOT_ACTION_E;
 
 #endif //_RTL819XU_HTTYPE_H_
diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c b/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
index 59d179ae7ad2..f4e5aa07421f 100644
--- a/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
+++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
@@ -105,7 +105,7 @@ static void ResetTsCommonInfo(struct ts_common_info *pTsCommonInfo)
 {
 	eth_zero_addr(pTsCommonInfo->addr);
 	memset(&pTsCommonInfo->t_spec, 0, sizeof(struct tspec_body));
-	memset(&pTsCommonInfo->t_class, 0, sizeof(union qos_tclas)*TCLAS_NUM);
+	memset(&pTsCommonInfo->t_class, 0, sizeof(union qos_tclas) * TCLAS_NUM);
 	pTsCommonInfo->t_clas_proc = 0;
 	pTsCommonInfo->t_clas_num = 0;
 }
@@ -183,9 +183,9 @@ void TSInitialize(struct ieee80211_device *ieee)
 //#ifdef TO_DO_LIST
 	for (count = 0; count < REORDER_ENTRY_NUM; count++) {
 		list_add_tail(&pRxReorderEntry->List, &ieee->RxReorder_Unused_List);
-		if (count == (REORDER_ENTRY_NUM-1))
+		if (count == (REORDER_ENTRY_NUM - 1))
 			break;
-		pRxReorderEntry = &ieee->RxReorderEntry[count+1];
+		pRxReorderEntry = &ieee->RxReorderEntry[count + 1];
 	}
 //#endif
 }
@@ -259,7 +259,7 @@ static struct ts_common_info *SearchAdmitTRStream(struct ieee80211_device *ieee,
 	}
 
 	if (&pRet->list  != psearch_list)
-		return pRet ;
+		return pRet;
 	else
 		return NULL;
 }
@@ -367,8 +367,8 @@ bool GetTs(
 								(&ieee->Rx_TS_Admit_List);
 
 			enum direction_value	Dir =		(ieee->iw_mode == IW_MODE_MASTER) ?
-								((TxRxSelect == TX_DIR)?DIR_DOWN:DIR_UP) :
-								((TxRxSelect == TX_DIR)?DIR_UP:DIR_DOWN);
+								((TxRxSelect == TX_DIR) ? DIR_DOWN : DIR_UP) :
+								((TxRxSelect == TX_DIR) ? DIR_UP : DIR_DOWN);
 			IEEE80211_DEBUG(IEEE80211_DL_TS, "to add Ts\n");
 			if (!list_empty(pUnusedList)) {
 				(*ppTS) = list_entry(pUnusedList->next, struct ts_common_info, list);
@@ -530,7 +530,7 @@ void TsStartAddBaProcess(struct ieee80211_device *ieee, struct tx_ts_record *pTx
 				  jiffies + msecs_to_jiffies(TS_ADDBA_DELAY));
 		} else {
 			IEEE80211_DEBUG(IEEE80211_DL_BA, "%s: Immediately Start ADDBA now!!\n", __func__);
-			mod_timer(&pTxTS->ts_add_ba_timer, jiffies+10); //set 10 ticks
+			mod_timer(&pTxTS->ts_add_ba_timer, jiffies + 10); //set 10 ticks
 		}
 	} else {
 		IEEE80211_DEBUG(IEEE80211_DL_ERR, "%s()==>BA timer is already added\n", __func__);
-- 
2.22.0



_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
