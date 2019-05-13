Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5CE31BE23
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 May 2019 21:40:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B1EE8878E3;
	Mon, 13 May 2019 19:40:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I5H+z35Yp683; Mon, 13 May 2019 19:40:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 25D3F87824;
	Mon, 13 May 2019 19:40:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 868F71BF964
 for <devel@linuxdriverproject.org>; Mon, 13 May 2019 19:40:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8386586977
 for <devel@linuxdriverproject.org>; Mon, 13 May 2019 19:40:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CsdzUP5aiS9I for <devel@linuxdriverproject.org>;
 Mon, 13 May 2019 19:40:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 044638690F
 for <devel@driverdev.osuosl.org>; Mon, 13 May 2019 19:40:39 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id i21so7268538pgi.12
 for <devel@driverdev.osuosl.org>; Mon, 13 May 2019 12:40:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=pkuucXEVpe3NKIfVF0Lc/Y0NzMQKcAFlQEc5dDbeov8=;
 b=UKYkZ5+EBEdr7h9l846zmS1BMPB8o9svQl9DuJCNkvTNFXf0HS0jIYoNdU/HvP/OTE
 vl7ccG8x8JHPMPyQ3PGWlzn822woYwmOfU99s7WjmufETdtnKrRmg7DkgY/1zc3MfqFE
 H2KloQnmKUizow7bmqwL9uHv6g6tK350uZ5n6s6nZRc6/yjtnNZX/ZW7uXwd+ine/D76
 ktexkcxac6KHeGlhXxT2rAEA1W2wtChNFIHyg83t0lsc+P8RowZDONCw7z4dcaAisB4B
 zxQKru8Cn40uJNYIXMAt99Vs+Yb1qwJpJUuumwtmHeEqIuzeFAyFSCPbwXrWeP0tcYZh
 Omiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=pkuucXEVpe3NKIfVF0Lc/Y0NzMQKcAFlQEc5dDbeov8=;
 b=dvIOJLhNPQL87FbOBYFaUnmKSBk6M1pOIisoly20F9y1YCxkP4wEozrWsvrpxb9ZWO
 ClVoytcizGC5rHRFuC7Fp+HwfvEzkRmYd9sVmOmWVizcgwB99+zSz7DGBoiRXVpkn/1L
 Iwo8WvKbQ+AGA/pJL3lOztE7QtBp244iBOTfuNrjJNyNO9JIL2H6hTeQ+3FhNRQcyNU7
 50nUlb4nQ4+oE/uk58RE4JTgvlbCSJ6ITlB95K/rU7SGjWkYTLgbt6NRBhwVHq2HFNuU
 4ws53oWXexqcjf5Ic6kpoRdcyA/pW1EV7HJjncEwX2sW/HLl7LdMhpjyS4XXpaw+CDaF
 Ndmw==
X-Gm-Message-State: APjAAAVzGkN5cMtPx4nyjY4GBFe2T0qaXhzt0fx6BRQsrqN4SY/dgcWu
 Iy8Ui7a4its5vIk7bI+leb557Tvy
X-Google-Smtp-Source: APXvYqxeoguytZZebU+pMoIXlFgk0MMmQIQW+Dp0/BYQggm7eBVeQk59lkmXDYCH4Vqh9aM+/F0sZQ==
X-Received: by 2002:a62:ac01:: with SMTP id v1mr10300864pfe.110.1557776438543; 
 Mon, 13 May 2019 12:40:38 -0700 (PDT)
Received: from arch ([2405:204:7102:1ca6:a53f:1f68:43dd:48ab])
 by smtp.gmail.com with ESMTPSA id n2sm4491985pgp.27.2019.05.13.12.40.35
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 13 May 2019 12:40:38 -0700 (PDT)
Date: Tue, 14 May 2019 01:10:31 +0530
From: Puranjay Mohan <puranjay12@gmail.com>
To: greg@kroah.com
Subject: [PATCH 4/5] Staging: rtl8192u: ieee80211: Add spaces around '&&'
 operator
Message-ID: <20190513194027.GA30669@arch>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix coding style errors by adding spaces around '&&' operators.

Signed-off-by: Puranjay Mohan <puranjay12@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index 72f418e5b49e..ab546a63ead1 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
@@ -102,7 +102,7 @@ ieee80211_frag_cache_get(struct ieee80211_device *ieee,
 	struct rtl_80211_hdr_4addrqos *hdr_4addrqos;
 	u8 tid;
 
-	if (((fc & IEEE80211_FCTL_DSTODS) == IEEE80211_FCTL_DSTODS)&&IEEE80211_QOS_HAS_SEQ(fc)) {
+	if (((fc & IEEE80211_FCTL_DSTODS) == IEEE80211_FCTL_DSTODS) && IEEE80211_QOS_HAS_SEQ(fc)) {
 	  hdr_4addrqos = (struct rtl_80211_hdr_4addrqos *)hdr;
 	  tid = le16_to_cpu(hdr_4addrqos->qos_ctl) & IEEE80211_QCTL_TID;
 	  tid = UP2AC(tid);
@@ -169,7 +169,7 @@ static int ieee80211_frag_cache_invalidate(struct ieee80211_device *ieee,
 	struct rtl_80211_hdr_4addrqos *hdr_4addrqos;
 	u8 tid;
 
-	if(((fc & IEEE80211_FCTL_DSTODS) == IEEE80211_FCTL_DSTODS)&&IEEE80211_QOS_HAS_SEQ(fc)) {
+	if(((fc & IEEE80211_FCTL_DSTODS) == IEEE80211_FCTL_DSTODS) && IEEE80211_QOS_HAS_SEQ(fc)) {
 	  hdr_4addrqos = (struct rtl_80211_hdr_4addrqos *)hdr;
 	  tid = le16_to_cpu(hdr_4addrqos->qos_ctl) & IEEE80211_QCTL_TID;
 	  tid = UP2AC(tid);
@@ -426,7 +426,7 @@ static int is_duplicate_packet(struct ieee80211_device *ieee,
 
 
 	//TO2DS and QoS
-	if(((fc & IEEE80211_FCTL_DSTODS) == IEEE80211_FCTL_DSTODS)&&IEEE80211_QOS_HAS_SEQ(fc)) {
+	if(((fc & IEEE80211_FCTL_DSTODS) == IEEE80211_FCTL_DSTODS) && IEEE80211_QOS_HAS_SEQ(fc)) {
 	  hdr_4addrqos = (struct rtl_80211_hdr_4addrqos *)header;
 	  tid = le16_to_cpu(hdr_4addrqos->qos_ctl) & IEEE80211_QCTL_TID;
 	  tid = UP2AC(tid);
@@ -773,7 +773,7 @@ static u8 parse_subframe(struct sk_buff *skb,
 	/* just for debug purpose */
 	SeqNum = WLAN_GET_SEQ_SEQ(le16_to_cpu(hdr->seq_ctl));
 
-	if ((IEEE80211_QOS_HAS_SEQ(fc))&&\
+	if ((IEEE80211_QOS_HAS_SEQ(fc)) && \
 			(((frameqos *)(skb->data + IEEE80211_3ADDR_LEN))->field.reserved)) {
 		bIsAggregateFrame = true;
 	}
@@ -1109,7 +1109,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 	if (stype != IEEE80211_STYPE_DATA &&
 	    stype != IEEE80211_STYPE_DATA_CFACK &&
 	    stype != IEEE80211_STYPE_DATA_CFPOLL &&
-	    stype != IEEE80211_STYPE_DATA_CFACKPOLL&&
+	    stype != IEEE80211_STYPE_DATA_CFACKPOLL &&
 	    stype != IEEE80211_STYPE_QOS_DATA//add by David,2006.8.4
 	    ) {
 		if (stype != IEEE80211_STYPE_NULLFUNC)
@@ -2565,7 +2565,7 @@ static inline void ieee80211_process_probe_response(
 		//	printk("====>2 network->ssid=%s FLAG=%d target.ssid=%s FLAG=%d\n", network->ssid, network->flags, target->ssid, target->flags);
 		if(((network->flags & NETWORK_EMPTY_ESSID) == NETWORK_EMPTY_ESSID) \
 		    && (((network->ssid_len > 0) && (strncmp(target->ssid, network->ssid, network->ssid_len)))\
-		    ||((ieee->current_network.ssid_len == network->ssid_len)&&(strncmp(ieee->current_network.ssid, network->ssid, network->ssid_len) == 0)&&(ieee->state == IEEE80211_NOLINK))))
+		    ||((ieee->current_network.ssid_len == network->ssid_len) && (strncmp(ieee->current_network.ssid, network->ssid, network->ssid_len) == 0) && (ieee->state == IEEE80211_NOLINK))))
 			renew = 1;
 		//YJ,add,080819,for hidden ap,end
 
@@ -2575,7 +2575,7 @@ static inline void ieee80211_process_probe_response(
 	}
 
 	spin_unlock_irqrestore(&ieee->lock, flags);
-	if (is_beacon(beacon->header.frame_ctl)&&is_same_network(&ieee->current_network, network, ieee)&&\
+	if (is_beacon(beacon->header.frame_ctl) && is_same_network(&ieee->current_network, network, ieee) && \
 		(ieee->state == IEEE80211_LINKED)) {
 		if (ieee->handle_beacon != NULL)
 			ieee->handle_beacon(ieee->dev,beacon,&ieee->current_network);
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
