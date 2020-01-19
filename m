Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DCC07141DAF
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 Jan 2020 13:03:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id ECC0D856E8;
	Sun, 19 Jan 2020 12:03:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I098mCANs1G3; Sun, 19 Jan 2020 12:03:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8519385593;
	Sun, 19 Jan 2020 12:03:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 00B421BF302
 for <devel@linuxdriverproject.org>; Sun, 19 Jan 2020 12:03:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id F17A5874AB
 for <devel@linuxdriverproject.org>; Sun, 19 Jan 2020 12:03:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NTm8HKmac4kC for <devel@linuxdriverproject.org>;
 Sun, 19 Jan 2020 12:03:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 15C4687475
 for <devel@driverdev.osuosl.org>; Sun, 19 Jan 2020 12:03:00 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id b6so26742428wrq.0
 for <devel@driverdev.osuosl.org>; Sun, 19 Jan 2020 04:03:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=yaxhFfgiLFSp8UEfkMmbiZ/sl3sdHclyZYTZ6Fp/POI=;
 b=NHBhm139c6r9tuaOT40Eebd8947C07FQ4EKI9LJUC3mT5no53cdPKITzIcw/WHpiV2
 igxAKPSMu3dDd0BOopVk0D90TYGvfFsggG+GJSu1BO2/7TK0wnBmkz3un3kFe/4qUlOD
 gH1urcSyRZqEXBENtPCq6OfsF2dmjuVgwEwmlOSi28npgfgcaZjut5qcfFbrEDL+gNTY
 qRhegA9Zkdd7KyY458pYYL/EUETpEh2jSNRuba9D1/bDSU91kipVCkKlYGERPmlvClbN
 0YcA7ZA/W/r8bXm5zkGmkCOpMQ0+PHlsoildZlUXiGJOYMo3eIj9809p1UVIdQvHhWA9
 nFJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=yaxhFfgiLFSp8UEfkMmbiZ/sl3sdHclyZYTZ6Fp/POI=;
 b=GWoGFZgdqm57bPKAJvWHXj/2Tp5lsWNluCir3DbML6zyy6hCMj69Nlt4uclzZLauE0
 cWb+hWcfnFS/oailm+91zOBXQRxNj/PtLCNG2hVoLCF0NWd8KH1i49ZvtPZ+MTdkUFKh
 57LKLUEELZ/7ArVFQPZk2FyE37t2lgTHPueIEgMq5XF1HokSLXNO36wRbFcpGviR56W3
 RE36/ocOY3pPCV5xNw33xJLh8zVZcPycQIEQCjCwaYMk7njxa87vtMDDfF3g2h6UDTlJ
 5dg1epoK341RAJlCj8wyMCFzc+l5nxYzIdaiSf291/SzaQ0BFEHQ9YQx0TNdcyzhNLLJ
 yWsw==
X-Gm-Message-State: APjAAAW0FPYwVr3Ctf38Fl7V2sIGBxg0nfb8SkfAPUoERVjcTzj8lJPY
 6Caqi8X5eVEdcM7mBgmIds/K/5E5
X-Google-Smtp-Source: APXvYqxFiXZMH+rmZ1CC+/xAZ4GWFW1KUrPLLzLFtCE4rTPjC1PZENb9i3vBH8KI/Ron6dbRj7HOdA==
X-Received: by 2002:a5d:6305:: with SMTP id i5mr13433360wru.399.1579435378062; 
 Sun, 19 Jan 2020 04:02:58 -0800 (PST)
Received: from [192.168.43.18] (92.40.176.82.threembb.co.uk. [92.40.176.82])
 by smtp.gmail.com with ESMTPSA id b67sm3245557wmc.38.2020.01.19.04.02.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 19 Jan 2020 04:02:57 -0800 (PST)
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH 2/5] staging: vt6656: create vnt rx header for sk_buff.
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <094ee227-b114-ee75-67f7-bf07f8de099f@gmail.com>
Date: Sun, 19 Jan 2020 12:02:56 +0000
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

vnt_rx_header contains the structure of the original variables
wbk_status, rx_sts, rx_rate and pay_load_len packed.

Replace all the old variables for the ones in this.

Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/device.h |  7 +++++++
 drivers/staging/vt6656/dpc.c    | 29 ++++++++++++-----------------
 2 files changed, 19 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/vt6656/device.h b/drivers/staging/vt6656/device.h
index 2f6567d92b83..84d170420c8a 100644
--- a/drivers/staging/vt6656/device.h
+++ b/drivers/staging/vt6656/device.h
@@ -206,6 +206,13 @@ enum {
 	CONTEXT_BEACON_PACKET
 };
 
+struct vnt_rx_header {
+	u32 wbk_status;
+	u8 rx_sts;
+	u8 rx_rate;
+	u16 pay_load_len;
+} __packed;
+
 /* RCB (Receive Control Block) */
 struct vnt_rcb {
 	void *priv;
diff --git a/drivers/staging/vt6656/dpc.c b/drivers/staging/vt6656/dpc.c
index a55e2f6b09e3..8fbb911144c6 100644
--- a/drivers/staging/vt6656/dpc.c
+++ b/drivers/staging/vt6656/dpc.c
@@ -31,15 +31,14 @@ int vnt_rx_data(struct vnt_private *priv, struct vnt_rcb *ptr_rcb,
 	struct sk_buff *skb;
 	struct ieee80211_rx_status *rx_status;
 	struct ieee80211_hdr *hdr;
+	struct vnt_rx_header *head;
 	__le16 fc;
 	u8 *rsr, *new_rsr, *rssi;
 	__le64 *tsf_time;
 	u32 frame_size;
 	int ii;
 	u8 *sq, *sq_3;
-	u32 wbk_status;
 	u8 *skb_data;
-	u16 *pay_load_len;
 	u16 rx_bitrate, pay_load_with_padding;
 	u8 rate_idx = 0;
 	long rx_dbm;
@@ -48,8 +47,8 @@ int vnt_rx_data(struct vnt_private *priv, struct vnt_rcb *ptr_rcb,
 	rx_status = IEEE80211_SKB_RXCB(skb);
 
 	/* [31:16]RcvByteCount ( not include 4-byte Status ) */
-	wbk_status = *((u32 *)(skb->data));
-	frame_size = wbk_status >> 16;
+	head = (struct vnt_rx_header *)skb->data;
+	frame_size = head->wbk_status >> 16;
 	frame_size += 4;
 
 	if (bytes_received != frame_size) {
@@ -70,19 +69,17 @@ int vnt_rx_data(struct vnt_private *priv, struct vnt_rcb *ptr_rcb,
 
 	/* if SQ3 the range is 24~27, if no SQ3 the range is 20~23 */
 
-	pay_load_len = (u16 *)(skb_data + 6);
-
 	/*Fix hardware bug => PLCP_Length error */
-	if (((bytes_received - (*pay_load_len)) > 27) ||
-	    ((bytes_received - (*pay_load_len)) < 24) ||
-	    (bytes_received < (*pay_load_len))) {
+	if (((bytes_received - head->pay_load_len) > 27) ||
+	    ((bytes_received - head->pay_load_len) < 24) ||
+	    (bytes_received < head->pay_load_len)) {
 		dev_dbg(&priv->usb->dev, "Wrong PLCP Length %x\n",
-			*pay_load_len);
+			head->pay_load_len);
 		return false;
 	}
 
 	sband = hw->wiphy->bands[hw->conf.chandef.chan->band];
-	rx_bitrate = *(skb_data + 5) * 5; /* rx_rate * 5 */
+	rx_bitrate = head->rx_rate * 5; /* rx_rate * 5 */
 
 	for (ii = 0; ii < sband->n_bitrates; ii++) {
 		if (sband->bitrates[ii].bitrate == rx_bitrate) {
@@ -96,8 +93,8 @@ int vnt_rx_data(struct vnt_private *priv, struct vnt_rcb *ptr_rcb,
 		return false;
 	}
 
-	pay_load_with_padding = ((*pay_load_len / 4) +
-		((*pay_load_len % 4) ? 1 : 0)) * 4;
+	pay_load_with_padding = ((head->pay_load_len / 4) +
+		((head->pay_load_len % 4) ? 1 : 0)) * 4;
 
 	tsf_time = (__le64 *)(skb_data + 8 + pay_load_with_padding);
 
@@ -118,15 +115,13 @@ int vnt_rx_data(struct vnt_private *priv, struct vnt_rcb *ptr_rcb,
 	if (*rsr & (RSR_IVLDTYP | RSR_IVLDLEN))
 		return false;
 
-	frame_size = *pay_load_len;
-
 	vnt_rf_rssi_to_dbm(priv, *rssi, &rx_dbm);
 
 	priv->bb_pre_ed_rssi = (u8)rx_dbm + 1;
 	priv->current_rssi = priv->bb_pre_ed_rssi;
 
-	skb_pull(skb, 8);
-	skb_trim(skb, frame_size);
+	skb_pull(skb, sizeof(*head));
+	skb_trim(skb, head->pay_load_len);
 
 	rx_status->mactime = priv->tsf_time;
 	rx_status->band = hw->conf.chandef.chan->band;
-- 
2.24.0
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
