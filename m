Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F00F141DB0
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 Jan 2020 13:03:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EACB18561D;
	Sun, 19 Jan 2020 12:03:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 37YTk9k40i17; Sun, 19 Jan 2020 12:03:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7ED84853E5;
	Sun, 19 Jan 2020 12:03:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3DF8B1BF302
 for <devel@linuxdriverproject.org>; Sun, 19 Jan 2020 12:03:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EB726203DE
 for <devel@linuxdriverproject.org>; Sun, 19 Jan 2020 12:03:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YuhEgDmDBBeb for <devel@linuxdriverproject.org>;
 Sun, 19 Jan 2020 12:03:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by silver.osuosl.org (Postfix) with ESMTPS id D7326203DA
 for <devel@driverdev.osuosl.org>; Sun, 19 Jan 2020 12:03:44 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id z7so26658186wrl.13
 for <devel@driverdev.osuosl.org>; Sun, 19 Jan 2020 04:03:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=HpREos7IIquBpQkSBTnBimJoA29tNONT0uYl13L+zYY=;
 b=gEVqbhkRxtJKdL/bGLGaPTVMUwnTbAUTga4Zo9atm8hCvhltaeGCblOU9FE9cRalLo
 gGHKYYy8j1gL4wkVJcHiIuPVUTfbzstF0SJTFI9WgfbxnP2v8VD696xIc48DcqDI21Yw
 qKIzD+ZoIdWHNZwRSJs430eSQ8BocB1BD8xPFAqTUQu89ZtjicSVB8UtiUtWNRTKAX/b
 hcUxKfVK5It5UEi5SL1oTHOMzV7gxX90l5PuxyxH7c3VH+Cd6yYU9XV3MZbuzcftCKlm
 0fUBWbfPrL2TKWz0irnby0B8d+u8+uuM5jEod06zpAqaxUxhTmCQOZgFlFMNyJsei5KP
 jSWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=HpREos7IIquBpQkSBTnBimJoA29tNONT0uYl13L+zYY=;
 b=DH7yViq+xBaQXswoaC4GsQntqwLMzovD+fL4eZNejtpNY92oGxwqFdxLr6dMEL8iF/
 orHSOM1ujfhuxm6I2B5wNmVHaHI2P+j3nKSHNzCmHnDjd944s/toDtiXasE26+dy8GF+
 Rf6a+Uw/iNr25qnfzFtxQ9gszRDPAm+kDsD1wk3kRpUm6XfIjifUlXO4nTrbX27bdVRW
 D0MPaHDGNmI9TM1xSm7oElAqitPf++7uZNGk6BXhy6oAcYjSYm3ZchDLLlKXbwsjkb2G
 j2uX9cSlZimdCZrZlvNNfJ+EyeyiwwVHoyfjzA7zxrUQsHBZ3btUOka79OJXHygjEtyT
 DmHA==
X-Gm-Message-State: APjAAAUIKbTbvtRPfDPBdqGPVsTlH0nTBsAdfdybVDlHToWHh5/a2But
 89fpjP6X1uDap0dnZP7raz2UbyD8
X-Google-Smtp-Source: APXvYqw2fSHoLvtKDf3F+uO+HKHNKG9nk1kNh5MmBH495FsX7QS3ve1MIwccClGm0HrGTbH04WCPBQ==
X-Received: by 2002:adf:df90:: with SMTP id z16mr13011442wrl.273.1579435423233; 
 Sun, 19 Jan 2020 04:03:43 -0800 (PST)
Received: from [192.168.43.18] (92.40.176.73.threembb.co.uk. [92.40.176.73])
 by smtp.gmail.com with ESMTPSA id f1sm44184437wro.85.2020.01.19.04.03.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 19 Jan 2020 04:03:42 -0800 (PST)
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH 3/5] staging: vt6656: Use vnt_rx_tail struct for tail
 variables.
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <6ac6eae0-7b71-fefe-9230-da3b345b634b@gmail.com>
Date: Sun, 19 Jan 2020 12:03:41 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
Content-Language: en-US
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Place tsf_time, sq, new_rsr, rssi, rsr and sq3 packed in the structure.

Unused variables are removed along with skb_data and structure is
placed beyond vnt_rx_header + pay_load_with_padding on skb->data.

Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/device.h |  9 +++++++++
 drivers/staging/vt6656/dpc.c    | 33 ++++++++-------------------------
 2 files changed, 17 insertions(+), 25 deletions(-)

diff --git a/drivers/staging/vt6656/device.h b/drivers/staging/vt6656/device.h
index 84d170420c8a..fe6c11266123 100644
--- a/drivers/staging/vt6656/device.h
+++ b/drivers/staging/vt6656/device.h
@@ -213,6 +213,15 @@ struct vnt_rx_header {
 	u16 pay_load_len;
 } __packed;
 
+struct vnt_rx_tail {
+	__le64 tsf_time;
+	u8 sq;
+	u8 new_rsr;
+	u8 rssi;
+	u8 rsr;
+	u8 sq_3;
+} __packed;
+
 /* RCB (Receive Control Block) */
 struct vnt_rcb {
 	void *priv;
diff --git a/drivers/staging/vt6656/dpc.c b/drivers/staging/vt6656/dpc.c
index 8fbb911144c6..981de5687341 100644
--- a/drivers/staging/vt6656/dpc.c
+++ b/drivers/staging/vt6656/dpc.c
@@ -32,13 +32,10 @@ int vnt_rx_data(struct vnt_private *priv, struct vnt_rcb *ptr_rcb,
 	struct ieee80211_rx_status *rx_status;
 	struct ieee80211_hdr *hdr;
 	struct vnt_rx_header *head;
+	struct vnt_rx_tail *tail;
 	__le16 fc;
-	u8 *rsr, *new_rsr, *rssi;
-	__le64 *tsf_time;
 	u32 frame_size;
 	int ii;
-	u8 *sq, *sq_3;
-	u8 *skb_data;
 	u16 rx_bitrate, pay_load_with_padding;
 	u8 rate_idx = 0;
 	long rx_dbm;
@@ -62,8 +59,6 @@ int vnt_rx_data(struct vnt_private *priv, struct vnt_rcb *ptr_rcb,
 		return false;
 	}
 
-	skb_data = (u8 *)skb->data;
-
 	/* real Frame Size = USBframe_size -4WbkStatus - 4RxStatus */
 	/* -8TSF - 4RSR - 4SQ3 - ?Padding */
 
@@ -96,26 +91,14 @@ int vnt_rx_data(struct vnt_private *priv, struct vnt_rcb *ptr_rcb,
 	pay_load_with_padding = ((head->pay_load_len / 4) +
 		((head->pay_load_len % 4) ? 1 : 0)) * 4;
 
-	tsf_time = (__le64 *)(skb_data + 8 + pay_load_with_padding);
-
-	priv->tsf_time = le64_to_cpu(*tsf_time);
-
-	if (priv->bb_type == BB_TYPE_11G) {
-		sq_3 = skb_data + 8 + pay_load_with_padding + 12;
-		sq = sq_3;
-	} else {
-		sq = skb_data + 8 + pay_load_with_padding + 8;
-		sq_3 = sq;
-	}
-
-	new_rsr = skb_data + 8 + pay_load_with_padding + 9;
-	rssi = skb_data + 8 + pay_load_with_padding + 10;
+	tail = (struct vnt_rx_tail *)(skb->data +
+				      sizeof(*head) + pay_load_with_padding);
+	priv->tsf_time = le64_to_cpu(tail->tsf_time);
 
-	rsr = skb_data + 8 + pay_load_with_padding + 11;
-	if (*rsr & (RSR_IVLDTYP | RSR_IVLDLEN))
+	if (tail->rsr & (RSR_IVLDTYP | RSR_IVLDLEN))
 		return false;
 
-	vnt_rf_rssi_to_dbm(priv, *rssi, &rx_dbm);
+	vnt_rf_rssi_to_dbm(priv, tail->rssi, &rx_dbm);
 
 	priv->bb_pre_ed_rssi = (u8)rx_dbm + 1;
 	priv->current_rssi = priv->bb_pre_ed_rssi;
@@ -129,7 +112,7 @@ int vnt_rx_data(struct vnt_private *priv, struct vnt_rcb *ptr_rcb,
 	rx_status->flag = 0;
 	rx_status->freq = hw->conf.chandef.chan->center_freq;
 
-	if (!(*rsr & RSR_CRCOK))
+	if (!(tail->rsr & RSR_CRCOK))
 		rx_status->flag |= RX_FLAG_FAILED_FCS_CRC;
 
 	hdr = (struct ieee80211_hdr *)(skb->data);
@@ -142,7 +125,7 @@ int vnt_rx_data(struct vnt_private *priv, struct vnt_rcb *ptr_rcb,
 			rx_status->flag |= RX_FLAG_DECRYPTED;
 
 			/* Drop packet */
-			if (!(*new_rsr & NEWRSR_DECRYPTOK)) {
+			if (!(tail->new_rsr & NEWRSR_DECRYPTOK)) {
 				dev_kfree_skb(skb);
 				return true;
 			}
-- 
2.24.0
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
