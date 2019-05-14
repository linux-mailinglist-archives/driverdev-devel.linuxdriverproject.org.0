Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DF15E1CE07
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 May 2019 19:31:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8EA6C860E6;
	Tue, 14 May 2019 17:31:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hCI_oa_4xWG4; Tue, 14 May 2019 17:31:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AE8DC86088;
	Tue, 14 May 2019 17:31:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D1C671BF5F5
 for <devel@linuxdriverproject.org>; Tue, 14 May 2019 17:31:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CEA19860D5
 for <devel@linuxdriverproject.org>; Tue, 14 May 2019 17:31:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Gv-Ty32MwgKW for <devel@linuxdriverproject.org>;
 Tue, 14 May 2019 17:31:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 592D0860C5
 for <devel@driverdev.osuosl.org>; Tue, 14 May 2019 17:31:26 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id t87so9500211pfa.2
 for <devel@driverdev.osuosl.org>; Tue, 14 May 2019 10:31:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WbasAqxEX90JoEwbVcdWCG+zNNy6OvBBl6/AUooAmpA=;
 b=aQLWz7cR9HXoi7/OlrcTT82M7u7bwn84nUA6VJP0NwdBAeOMQXiog/BTLC7M7Pxhbl
 uaN1oeDHZaPtIWBQWr9N2hgnnOwnC6/o4AZdZJ31DpJIH9NUmqkXBDUd7kqnsPjJZXsh
 htTJY248x+q0UyEGXdekhirGIMivfE+oi09AK+Y54A0z1LvHVNtTLHo2i+HlGNJHn+PM
 jZ6gijIYO/cHM56j5w3QQVxSQkQXI/nC5xWbn9IUJv/v/0FHvs7K0tp4a1dmkEQT1pEL
 KfS/+BPdK4XLTXtTYSqibTOVAO5x7b2FypJ2kdBVKTlLAY0da+RwyzirYnuO+iHOX6Lu
 MDwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WbasAqxEX90JoEwbVcdWCG+zNNy6OvBBl6/AUooAmpA=;
 b=A7q/eoRNrTs2W/DsL2FnUZ/dDkc787yk6biPRkiJsn9EsfW7NG14gIuqkZwPSLfdOe
 6BSAEbLsjuhD4aMPIcD/fbBjvCPVHHDNpWi2sgFii6Fujy+BAPHQTBMS09g/qTKGKi4k
 i+3BeRk+skVeD7FTNL+f9JgfE2qPkwpffT65xzNJINMG2/+M6WNaQ9NVT20qFQ+IHiIC
 tOerw7hXaw0qEHbzM//p+X4XNhnZB7X6trNUaChaGit4hBjtGk7A4P1BvdAVyzMWSJUo
 ftf4HrYmKtO6NtzBiclD+wvmZVLtfkmaR2z+7h3L6LQjdcguxQ9WL1M30d9K4iTjMEx1
 BKXQ==
X-Gm-Message-State: APjAAAUcbbDKGsdB/+IZezbFIKOeEwAjAGVc+a4KgOUaUryjClcaUQt2
 hB9X2ekByXGh4DbbnSLUUd5es2gmxnM=
X-Google-Smtp-Source: APXvYqyuVkkYTa6xTng+g84uN1ocI673ynEVxM6CR6S2yU4SGUTL7YjZC5fpLyJRWgrY1Ju9g6WyNw==
X-Received: by 2002:aa7:9203:: with SMTP id 3mr42332432pfo.123.1557855085925; 
 Tue, 14 May 2019 10:31:25 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:7145:24c8:f23d:8e91:fd10:9c55])
 by smtp.googlemail.com with ESMTPSA id n9sm2222485pfq.53.2019.05.14.10.31.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 14 May 2019 10:31:25 -0700 (PDT)
From: Puranjay Mohan <puranjay12@gmail.com>
To: puranjaymohan@gmail.com,
	greg@kroah.com
Subject: [PATCH v2 4/5] Staging: rtl8192u: ieee80211: Add spaces around '&&'
 operator
Date: Tue, 14 May 2019 23:00:22 +0530
Message-Id: <20190514173023.31146-5-puranjay12@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190514173023.31146-1-puranjay12@gmail.com>
References: <20190514173023.31146-1-puranjay12@gmail.com>
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
Cc: devel@driverdev.osuosl.org, dan.carpenter@oracle.com,
 Puranjay Mohan <puranjay12@gmail.com>
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
index a4477b8e7f2a..5483df408049 100644
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
