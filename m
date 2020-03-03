Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 174CF178435
	for <lists+driverdev-devel@lfdr.de>; Tue,  3 Mar 2020 21:41:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1F721878A0;
	Tue,  3 Mar 2020 20:41:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6g0ir0f4v1bZ; Tue,  3 Mar 2020 20:41:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5C6E08766C;
	Tue,  3 Mar 2020 20:41:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 860771BF30E
 for <devel@linuxdriverproject.org>; Tue,  3 Mar 2020 20:41:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 81C6320436
 for <devel@linuxdriverproject.org>; Tue,  3 Mar 2020 20:41:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3CsIx5-ooR1P for <devel@linuxdriverproject.org>;
 Tue,  3 Mar 2020 20:41:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 1965220415
 for <devel@driverdev.osuosl.org>; Tue,  3 Mar 2020 20:41:09 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id g83so4320092wme.1
 for <devel@driverdev.osuosl.org>; Tue, 03 Mar 2020 12:41:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=0yBjZ+W9kMbOQECv1GCePMW+wcA7l9c/hP48OyDCvgs=;
 b=d4SaQ6B7NjFMxLgjhm/YIdzn4Y/0KKzXr3RBxD33JmUxiYPyIAT77WotvAa9sVHhKG
 ooswmOvOnpi2RVWDa4t4FaZLeq6pwOoNHv1JVH7WK/5GKsXfipqjif9Sj7mWyiXj5Lya
 tJYOCpy5bp+eNbBzS/4N98Je3h8gxA/Od7PAgkr+ld1JySpj3bgDZUi/OlAKyXNiUaZ+
 DNffKJLb/Zu9ds1rL7JD8srVR180uLOcBXceyWTXxCgPUiQi3kxZs2tp5wccKAMZoHRg
 C7grgKxHTRQIGDXo26/ZRYmVcAxRKdhGdujxuDsviBavsxVQtWe7Zw7478/Ld49g6OAh
 DgQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=0yBjZ+W9kMbOQECv1GCePMW+wcA7l9c/hP48OyDCvgs=;
 b=mtj1/aRP2QiK46CrUCQvpG3rczLXgMhGUiM1V20j/ImmQsu3vkoI34YytkAVqXgpYF
 +sXwXQTto4zZVo4shBay2CYyQFr1O4JubdE6CRkSZnb9JfX+yvJ7acMKCqsNJkEiTm1r
 Kv1DiwNROLO2paccWfsIkWCjdzpL9S0Fmw0P048zyw0i/F5yF3TiH5MKtbEFezZTbGOv
 mqDxa2kIa2xurJyO9JfEwfMhMCsjQNZV8xC9+VVm42dUbwb/1kMx0KTr8x2m8sicHT73
 g6ipCcadlBOt5scSf43uYayra0BhDUZNfSeGQ1pisEEy0SBeeTDXhPpopT2WsRhExOEe
 ecDw==
X-Gm-Message-State: ANhLgQ2gtF983WHU1izMUYvw2NpQc7lmd9ojo5lH6vmWTu/xvxwxk3J/
 GCaZs5r3RwADov3EDA5zjVo=
X-Google-Smtp-Source: ADFU+vsVyM9g5VtsS46kzNkwr775rrRQ9zhV0KHbwsiedmpZ60OpcI/EpKFOnuCZHjyfRYUQzkz4fg==
X-Received: by 2002:a7b:cb46:: with SMTP id v6mr328058wmj.117.1583268067331;
 Tue, 03 Mar 2020 12:41:07 -0800 (PST)
Received: from [192.168.43.18] (94.197.121.117.threembb.co.uk.
 [94.197.121.117])
 by smtp.gmail.com with ESMTPSA id a7sm825971wmb.0.2020.03.03.12.41.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 03 Mar 2020 12:41:06 -0800 (PST)
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH] staging: vt6656: Move vnt_rx_data to usbpipe.c
Message-ID: <d3937276-5a47-7184-e263-84d9c9cb5c7a@gmail.com>
Date: Tue, 3 Mar 2020 20:41:05 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

vnt_rx_data is a USB function and vnt_submit_rx_urb_complete is
the only caller therefore removing dpc.c/h files and becoming
static.

Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/Makefile   |   1 -
 drivers/staging/vt6656/dpc.c      | 124 ------------------------------
 drivers/staging/vt6656/dpc.h      |  24 ------
 drivers/staging/vt6656/main_usb.c |   1 -
 drivers/staging/vt6656/usbpipe.c  | 102 +++++++++++++++++++++++-
 5 files changed, 101 insertions(+), 151 deletions(-)
 delete mode 100644 drivers/staging/vt6656/dpc.c
 delete mode 100644 drivers/staging/vt6656/dpc.h

diff --git a/drivers/staging/vt6656/Makefile b/drivers/staging/vt6656/Makefile
index 60a41fe62bed..375f54e9f58b 100644
--- a/drivers/staging/vt6656/Makefile
+++ b/drivers/staging/vt6656/Makefile
@@ -9,7 +9,6 @@ vt6656_stage-y +=	main_usb.o \
 			baseband.o \
 			wcmd.o\
 			rxtx.o \
-			dpc.o \
 			power.o \
 			key.o \
 			rf.o \
diff --git a/drivers/staging/vt6656/dpc.c b/drivers/staging/vt6656/dpc.c
deleted file mode 100644
index a0b60e7d1086..000000000000
--- a/drivers/staging/vt6656/dpc.c
+++ /dev/null
@@ -1,124 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0+
-/*
- * Copyright (c) 1996, 2003 VIA Networking Technologies, Inc.
- * All rights reserved.
- *
- * File: dpc.c
- *
- * Purpose: handle dpc rx functions
- *
- * Author: Lyndon Chen
- *
- * Date: May 20, 2003
- *
- * Functions:
- *
- * Revision History:
- *
- */
-
-#include "dpc.h"
-#include "device.h"
-#include "mac.h"
-#include "baseband.h"
-#include "rf.h"
-
-int vnt_rx_data(struct vnt_private *priv, struct vnt_rcb *ptr_rcb,
-		unsigned long bytes_received)
-{
-	struct ieee80211_hw *hw = priv->hw;
-	struct ieee80211_supported_band *sband;
-	struct sk_buff *skb;
-	struct ieee80211_rx_status *rx_status;
-	struct vnt_rx_header *head;
-	struct vnt_rx_tail *tail;
-	u32 frame_size;
-	int ii;
-	u16 rx_bitrate, pay_load_with_padding;
-	u8 rate_idx = 0;
-	long rx_dbm;
-
-	skb = ptr_rcb->skb;
-	rx_status = IEEE80211_SKB_RXCB(skb);
-
-	/* [31:16]RcvByteCount ( not include 4-byte Status ) */
-	head = (struct vnt_rx_header *)skb->data;
-	frame_size = head->wbk_status >> 16;
-	frame_size += 4;
-
-	if (bytes_received != frame_size) {
-		dev_dbg(&priv->usb->dev, "------- WRONG Length 1\n");
-		return false;
-	}
-
-	if ((bytes_received > 2372) || (bytes_received <= 40)) {
-		/* Frame Size error drop this packet.*/
-		dev_dbg(&priv->usb->dev, "------ WRONG Length 2\n");
-		return false;
-	}
-
-	/* real Frame Size = USBframe_size -4WbkStatus - 4RxStatus */
-	/* -8TSF - 4RSR - 4SQ3 - ?Padding */
-
-	/* if SQ3 the range is 24~27, if no SQ3 the range is 20~23 */
-
-	/*Fix hardware bug => PLCP_Length error */
-	if (((bytes_received - head->pay_load_len) > 27) ||
-	    ((bytes_received - head->pay_load_len) < 24) ||
-	    (bytes_received < head->pay_load_len)) {
-		dev_dbg(&priv->usb->dev, "Wrong PLCP Length %x\n",
-			head->pay_load_len);
-		return false;
-	}
-
-	sband = hw->wiphy->bands[hw->conf.chandef.chan->band];
-	rx_bitrate = head->rx_rate * 5; /* rx_rate * 5 */
-
-	for (ii = 0; ii < sband->n_bitrates; ii++) {
-		if (sband->bitrates[ii].bitrate == rx_bitrate) {
-			rate_idx = ii;
-				break;
-		}
-	}
-
-	if (ii == sband->n_bitrates) {
-		dev_dbg(&priv->usb->dev, "Wrong Rx Bit Rate %d\n", rx_bitrate);
-		return false;
-	}
-
-	pay_load_with_padding = ((head->pay_load_len / 4) +
-		((head->pay_load_len % 4) ? 1 : 0)) * 4;
-
-	tail = (struct vnt_rx_tail *)(skb->data +
-				      sizeof(*head) + pay_load_with_padding);
-	priv->tsf_time = le64_to_cpu(tail->tsf_time);
-
-	if (tail->rsr & (RSR_IVLDTYP | RSR_IVLDLEN))
-		return false;
-
-	vnt_rf_rssi_to_dbm(priv, tail->rssi, &rx_dbm);
-
-	priv->bb_pre_ed_rssi = (u8)-rx_dbm + 1;
-	priv->current_rssi = priv->bb_pre_ed_rssi;
-
-	skb_pull(skb, sizeof(*head));
-	skb_trim(skb, head->pay_load_len);
-
-	rx_status->mactime = priv->tsf_time;
-	rx_status->band = hw->conf.chandef.chan->band;
-	rx_status->signal = rx_dbm;
-	rx_status->flag = 0;
-	rx_status->freq = hw->conf.chandef.chan->center_freq;
-
-	if (!(tail->rsr & RSR_CRCOK))
-		rx_status->flag |= RX_FLAG_FAILED_FCS_CRC;
-
-	rx_status->rate_idx = rate_idx;
-
-	if (tail->new_rsr & NEWRSR_DECRYPTOK)
-		rx_status->flag |= RX_FLAG_DECRYPTED;
-
-	ieee80211_rx_irqsafe(priv->hw, skb);
-
-	return true;
-}
diff --git a/drivers/staging/vt6656/dpc.h b/drivers/staging/vt6656/dpc.h
deleted file mode 100644
index e080add823cb..000000000000
--- a/drivers/staging/vt6656/dpc.h
+++ /dev/null
@@ -1,24 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0+ */
-/*
- * Copyright (c) 1996, 2003 VIA Networking Technologies, Inc.
- * All rights reserved.
- *
- * File: dpc.h
- *
- * Purpose:
- *
- * Author: Jerry Chen
- *
- * Date: Jun. 27, 2002
- *
- */
-
-#ifndef __DPC_H__
-#define __DPC_H__
-
-#include "device.h"
-
-int vnt_rx_data(struct vnt_private *priv, struct vnt_rcb *ptr_rcb,
-		unsigned long bytes_received);
-
-#endif /* __RXTX_H__ */
diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
index 37fff88a6687..30cb2eb7be3e 100644
--- a/drivers/staging/vt6656/main_usb.c
+++ b/drivers/staging/vt6656/main_usb.c
@@ -30,7 +30,6 @@
 #include "power.h"
 #include "wcmd.h"
 #include "rxtx.h"
-#include "dpc.h"
 #include "rf.h"
 #include "firmware.h"
 #include "usbpipe.h"
diff --git a/drivers/staging/vt6656/usbpipe.c b/drivers/staging/vt6656/usbpipe.c
index c905f3eaf655..b9e79755e7fa 100644
--- a/drivers/staging/vt6656/usbpipe.c
+++ b/drivers/staging/vt6656/usbpipe.c
@@ -25,11 +25,11 @@
  */
 
 #include "rxtx.h"
-#include "dpc.h"
 #include "desc.h"
 #include "device.h"
 #include "usbpipe.h"
 #include "mac.h"
+#include "rf.h"
 
 #define USB_CTL_WAIT	500 /* ms */
 
@@ -294,6 +294,106 @@ int vnt_start_interrupt_urb(struct vnt_private *priv)
 	return ret;
 }
 
+static int vnt_rx_data(struct vnt_private *priv, struct vnt_rcb *ptr_rcb,
+		       unsigned long bytes_received)
+{
+	struct ieee80211_hw *hw = priv->hw;
+	struct ieee80211_supported_band *sband;
+	struct sk_buff *skb;
+	struct ieee80211_rx_status *rx_status;
+	struct vnt_rx_header *head;
+	struct vnt_rx_tail *tail;
+	u32 frame_size;
+	int ii;
+	u16 rx_bitrate, pay_load_with_padding;
+	u8 rate_idx = 0;
+	long rx_dbm;
+
+	skb = ptr_rcb->skb;
+	rx_status = IEEE80211_SKB_RXCB(skb);
+
+	/* [31:16]RcvByteCount ( not include 4-byte Status ) */
+	head = (struct vnt_rx_header *)skb->data;
+	frame_size = head->wbk_status >> 16;
+	frame_size += 4;
+
+	if (bytes_received != frame_size) {
+		dev_dbg(&priv->usb->dev, "------- WRONG Length 1\n");
+		return false;
+	}
+
+	if ((bytes_received > 2372) || (bytes_received <= 40)) {
+		/* Frame Size error drop this packet.*/
+		dev_dbg(&priv->usb->dev, "------ WRONG Length 2\n");
+		return false;
+	}
+
+	/* real Frame Size = USBframe_size -4WbkStatus - 4RxStatus */
+	/* -8TSF - 4RSR - 4SQ3 - ?Padding */
+
+	/* if SQ3 the range is 24~27, if no SQ3 the range is 20~23 */
+
+	/*Fix hardware bug => PLCP_Length error */
+	if (((bytes_received - head->pay_load_len) > 27) ||
+	    ((bytes_received - head->pay_load_len) < 24) ||
+	    (bytes_received < head->pay_load_len)) {
+		dev_dbg(&priv->usb->dev, "Wrong PLCP Length %x\n",
+			head->pay_load_len);
+		return false;
+	}
+
+	sband = hw->wiphy->bands[hw->conf.chandef.chan->band];
+	rx_bitrate = head->rx_rate * 5; /* rx_rate * 5 */
+
+	for (ii = 0; ii < sband->n_bitrates; ii++) {
+		if (sband->bitrates[ii].bitrate == rx_bitrate) {
+			rate_idx = ii;
+				break;
+		}
+	}
+
+	if (ii == sband->n_bitrates) {
+		dev_dbg(&priv->usb->dev, "Wrong Rx Bit Rate %d\n", rx_bitrate);
+		return false;
+	}
+
+	pay_load_with_padding = ((head->pay_load_len / 4) +
+		((head->pay_load_len % 4) ? 1 : 0)) * 4;
+
+	tail = (struct vnt_rx_tail *)(skb->data +
+				      sizeof(*head) + pay_load_with_padding);
+	priv->tsf_time = le64_to_cpu(tail->tsf_time);
+
+	if (tail->rsr & (RSR_IVLDTYP | RSR_IVLDLEN))
+		return false;
+
+	vnt_rf_rssi_to_dbm(priv, tail->rssi, &rx_dbm);
+
+	priv->bb_pre_ed_rssi = (u8)-rx_dbm + 1;
+	priv->current_rssi = priv->bb_pre_ed_rssi;
+
+	skb_pull(skb, sizeof(*head));
+	skb_trim(skb, head->pay_load_len);
+
+	rx_status->mactime = priv->tsf_time;
+	rx_status->band = hw->conf.chandef.chan->band;
+	rx_status->signal = rx_dbm;
+	rx_status->flag = 0;
+	rx_status->freq = hw->conf.chandef.chan->center_freq;
+
+	if (!(tail->rsr & RSR_CRCOK))
+		rx_status->flag |= RX_FLAG_FAILED_FCS_CRC;
+
+	rx_status->rate_idx = rate_idx;
+
+	if (tail->new_rsr & NEWRSR_DECRYPTOK)
+		rx_status->flag |= RX_FLAG_DECRYPTED;
+
+	ieee80211_rx_irqsafe(priv->hw, skb);
+
+	return true;
+}
+
 static void vnt_submit_rx_urb_complete(struct urb *urb)
 {
 	struct vnt_rcb *rcb = urb->context;
-- 
2.25.1
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
