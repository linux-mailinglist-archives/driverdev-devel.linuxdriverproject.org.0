Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C41FE1765DF
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Mar 2020 22:23:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7C279204C1;
	Mon,  2 Mar 2020 21:22:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cA6MnYGZDlw9; Mon,  2 Mar 2020 21:22:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4505820449;
	Mon,  2 Mar 2020 21:22:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E92E01BF366
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 21:22:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E559A8527D
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 21:22:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HXqOUsLX4CIk for <devel@linuxdriverproject.org>;
 Mon,  2 Mar 2020 21:22:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9B46A8506D
 for <devel@driverdev.osuosl.org>; Mon,  2 Mar 2020 21:22:52 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id n7so1623687wrt.11
 for <devel@driverdev.osuosl.org>; Mon, 02 Mar 2020 13:22:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=TOJPvv2FJ1wP/SIsrOvWI0PsIfs34yDzRnPBuZriJB8=;
 b=DBXarg1wATKqYDo2IEJXZg1/5+eHTf5OSDCK+joxF/Tm9Dl89kKowxL9xbM4onxu0i
 3zfpBSgKTo/xRbKSZPJwe5evZsfYOHQNmZCtsHqkkPpj0lBCD2z5/ZSd3iqIGJnFOE9A
 coZxKt8OICMM2W4XdQCQ4MV9Hox/AAJbry8JEPQtFs2P6YFvKE2+dyFGX5DsLxMZoLr5
 QluWw4AqugvTu5IOoNJ6AlGbAZr+BIyFu5wEQz6aZpqBpInpBdOU7OvFjhit+Xb28SlW
 ZoOzit7VMbnoXzRvYDx9fDO3ij6kWrCfMnwD5OQYhYVBo2ktxkTapEnZTcFDt/Z7d0+f
 jrGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=TOJPvv2FJ1wP/SIsrOvWI0PsIfs34yDzRnPBuZriJB8=;
 b=PbkSCZ0/n8GhcWnaz47lFlkwiYSfWJt4DVR8KFZWZBOWbeHErF1kisgAeAszj/C9kM
 AIu3Y+9KiWZ1Khtc2B+ePG2Hto088asfVDR/Qy2x9ovduUSAQ53enjEXjATGfcI5/pvD
 ZQM8Qctx6qpTGPNROvfS/ey+JNNmJgbbgJepDIeAvSuZf7ah291cOhWJmN+ICxDzo8zQ
 z6Jqv8zJOJ8sz8wSR0GU5HYdN3b9imZoEZxv/B9+JrMeXQ57YUmI20nOJX2Y7kwi3FT1
 Rir8dxs8/WBPvKWZABdXzSV2iyhNH4K5jXVxtBTYi/tzPdUUE3usRI8CXWnP0UXF333S
 qbPQ==
X-Gm-Message-State: ANhLgQ3Aj5kIRNmW+h0NTDAPRffg4h9lOTXZ5vYMCmwGQ+xS8sYKujfS
 vth7GjkOyj71U1vzZqEKaMyANbix
X-Google-Smtp-Source: ADFU+vvzTLR3tYefVYn2+MbpamJPrkIDsi99sFr4Qq2LbQHjSytp4Z82Y/jZrqTiQHYOP71qxr19nA==
X-Received: by 2002:adf:8182:: with SMTP id 2mr1361380wra.37.1583184170933;
 Mon, 02 Mar 2020 13:22:50 -0800 (PST)
Received: from [192.168.43.18] (94.197.120.139.threembb.co.uk.
 [94.197.120.139])
 by smtp.gmail.com with ESMTPSA id z64sm385672wmg.35.2020.03.02.13.22.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 02 Mar 2020 13:22:50 -0800 (PST)
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH 3/3] staging: vt6656: Delete int.c/h file and move functions
 to usbpipe
Message-ID: <bc21d3d7-81be-4ec1-030e-4e7a45f98238@gmail.com>
Date: Mon, 2 Mar 2020 21:22:49 +0000
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

Move functions vnt_int_process_data and vnt_int_report_rate to
usbpipe.c and vnt_interrupt_data to usbpipe.h

These form part of the USB structure.

Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/Makefile   |   3 +-
 drivers/staging/vt6656/int.c      | 110 ------------------------------
 drivers/staging/vt6656/int.h      |  46 -------------
 drivers/staging/vt6656/main_usb.c |   1 -
 drivers/staging/vt6656/usbpipe.c  |  88 +++++++++++++++++++++++-
 drivers/staging/vt6656/usbpipe.h  |  23 +++++++
 6 files changed, 111 insertions(+), 160 deletions(-)
 delete mode 100644 drivers/staging/vt6656/int.c
 delete mode 100644 drivers/staging/vt6656/int.h

diff --git a/drivers/staging/vt6656/Makefile b/drivers/staging/vt6656/Makefile
index b64c0d87f612..60a41fe62bed 100644
--- a/drivers/staging/vt6656/Makefile
+++ b/drivers/staging/vt6656/Makefile
@@ -15,7 +15,6 @@ vt6656_stage-y +=	main_usb.o \
 			rf.o \
 			usbpipe.o \
 			channel.o \
-			firmware.o \
-			int.o
+			firmware.o
 
 obj-$(CONFIG_VT6656) +=	vt6656_stage.o
diff --git a/drivers/staging/vt6656/int.c b/drivers/staging/vt6656/int.c
deleted file mode 100644
index 139be3f845c3..000000000000
--- a/drivers/staging/vt6656/int.c
+++ /dev/null
@@ -1,110 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0+
-/*
- * Copyright (c) 1996, 2003 VIA Networking Technologies, Inc.
- * All rights reserved.
- *
- * File: int.c
- *
- * Purpose: Handle USB interrupt endpoint
- *
- * Author: Jerry Chen
- *
- * Date: Apr. 2, 2004
- *
- * Functions:
- *
- * Revision History:
- *      04-02-2004 Jerry Chen:  Initial release
- *
- */
-
-#include "int.h"
-#include "mac.h"
-#include "power.h"
-#include "usbpipe.h"
-
-static int vnt_int_report_rate(struct vnt_private *priv, u8 pkt_no, u8 tsr)
-{
-	struct vnt_usb_send_context *context;
-	struct ieee80211_tx_info *info;
-	u8 tx_retry = (tsr & 0xf0) >> 4;
-	s8 idx;
-
-	if (pkt_no >= priv->num_tx_context)
-		return -EINVAL;
-
-	context = priv->tx_context[pkt_no];
-
-	if (!context->skb)
-		return -EINVAL;
-
-	info = IEEE80211_SKB_CB(context->skb);
-	idx = info->control.rates[0].idx;
-
-	ieee80211_tx_info_clear_status(info);
-
-	info->status.rates[0].count = tx_retry;
-
-	if (!(tsr & TSR_TMO)) {
-		info->status.rates[0].idx = idx;
-
-		if (!(info->flags & IEEE80211_TX_CTL_NO_ACK))
-			info->flags |= IEEE80211_TX_STAT_ACK;
-	}
-
-	ieee80211_tx_status_irqsafe(priv->hw, context->skb);
-
-	context->in_use = false;
-
-	return 0;
-}
-
-void vnt_int_process_data(struct vnt_private *priv)
-{
-	struct vnt_interrupt_data *int_data;
-	struct ieee80211_low_level_stats *low_stats = &priv->low_stats;
-
-	dev_dbg(&priv->usb->dev, "---->s_nsInterruptProcessData\n");
-
-	int_data = (struct vnt_interrupt_data *)priv->int_buf.data_buf;
-
-	if (int_data->tsr0 & TSR_VALID)
-		vnt_int_report_rate(priv, int_data->pkt0, int_data->tsr0);
-
-	if (int_data->tsr1 & TSR_VALID)
-		vnt_int_report_rate(priv, int_data->pkt1, int_data->tsr1);
-
-	if (int_data->tsr2 & TSR_VALID)
-		vnt_int_report_rate(priv, int_data->pkt2, int_data->tsr2);
-
-	if (int_data->tsr3 & TSR_VALID)
-		vnt_int_report_rate(priv, int_data->pkt3, int_data->tsr3);
-
-	if (int_data->isr0 != 0) {
-		if (int_data->isr0 & ISR_BNTX &&
-		    priv->op_mode == NL80211_IFTYPE_AP)
-			vnt_schedule_command(priv, WLAN_CMD_BECON_SEND);
-
-		if (int_data->isr0 & ISR_TBTT &&
-		    priv->hw->conf.flags & IEEE80211_CONF_PS) {
-			if (!priv->wake_up_count)
-				priv->wake_up_count =
-					priv->hw->conf.listen_interval;
-
-			--priv->wake_up_count;
-
-			/* Turn on wake up to listen next beacon */
-			if (priv->wake_up_count == 1)
-				vnt_schedule_command(priv,
-						     WLAN_CMD_TBTT_WAKEUP);
-		}
-		priv->current_tsf = le64_to_cpu(int_data->tsf);
-
-		low_stats->dot11RTSSuccessCount += int_data->rts_success;
-		low_stats->dot11RTSFailureCount += int_data->rts_fail;
-		low_stats->dot11ACKFailureCount += int_data->ack_fail;
-		low_stats->dot11FCSErrorCount += int_data->fcs_err;
-	}
-
-	priv->int_buf.in_use = false;
-}
diff --git a/drivers/staging/vt6656/int.h b/drivers/staging/vt6656/int.h
deleted file mode 100644
index 0b7473a7f190..000000000000
--- a/drivers/staging/vt6656/int.h
+++ /dev/null
@@ -1,46 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0+ */
-/*
- * Copyright (c) 1996, 2003 VIA Networking Technologies, Inc.
- * All rights reserved.
- *
- * File: int.h
- *
- * Purpose:
- *
- * Author: Jerry Chen
- *
- * Date: Apr. 2, 2004
- *
- */
-
-#ifndef __INT_H__
-#define __INT_H__
-
-#include "device.h"
-
-struct vnt_interrupt_data {
-	u8 tsr0;
-	u8 pkt0;
-	u16 time0;
-	u8 tsr1;
-	u8 pkt1;
-	u16 time1;
-	u8 tsr2;
-	u8 pkt2;
-	u16 time2;
-	u8 tsr3;
-	u8 pkt3;
-	u16 time3;
-	__le64 tsf;
-	u8 isr0;
-	u8 isr1;
-	u8 rts_success;
-	u8 rts_fail;
-	u8 ack_fail;
-	u8 fcs_err;
-	u8 sw[2];
-} __packed;
-
-void vnt_int_process_data(struct vnt_private *priv);
-
-#endif /* __INT_H__ */
diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
index a22f88b1f5e9..37fff88a6687 100644
--- a/drivers/staging/vt6656/main_usb.c
+++ b/drivers/staging/vt6656/main_usb.c
@@ -35,7 +35,6 @@
 #include "firmware.h"
 #include "usbpipe.h"
 #include "channel.h"
-#include "int.h"
 
 /*
  * define module options
diff --git a/drivers/staging/vt6656/usbpipe.c b/drivers/staging/vt6656/usbpipe.c
index 0e29dc2f4b0d..c905f3eaf655 100644
--- a/drivers/staging/vt6656/usbpipe.c
+++ b/drivers/staging/vt6656/usbpipe.c
@@ -24,12 +24,12 @@
  *
  */
 
-#include "int.h"
 #include "rxtx.h"
 #include "dpc.h"
 #include "desc.h"
 #include "device.h"
 #include "usbpipe.h"
+#include "mac.h"
 
 #define USB_CTL_WAIT	500 /* ms */
 
@@ -139,6 +139,92 @@ int vnt_control_in_u8(struct vnt_private *priv, u8 reg, u8 reg_off, u8 *data)
 			      reg_off, reg, sizeof(u8), data);
 }
 
+static int vnt_int_report_rate(struct vnt_private *priv, u8 pkt_no, u8 tsr)
+{
+	struct vnt_usb_send_context *context;
+	struct ieee80211_tx_info *info;
+	u8 tx_retry = (tsr & 0xf0) >> 4;
+	s8 idx;
+
+	if (pkt_no >= priv->num_tx_context)
+		return -EINVAL;
+
+	context = priv->tx_context[pkt_no];
+
+	if (!context->skb)
+		return -EINVAL;
+
+	info = IEEE80211_SKB_CB(context->skb);
+	idx = info->control.rates[0].idx;
+
+	ieee80211_tx_info_clear_status(info);
+
+	info->status.rates[0].count = tx_retry;
+
+	if (!(tsr & TSR_TMO)) {
+		info->status.rates[0].idx = idx;
+
+		if (!(info->flags & IEEE80211_TX_CTL_NO_ACK))
+			info->flags |= IEEE80211_TX_STAT_ACK;
+	}
+
+	ieee80211_tx_status_irqsafe(priv->hw, context->skb);
+
+	context->in_use = false;
+
+	return 0;
+}
+
+static void vnt_int_process_data(struct vnt_private *priv)
+{
+	struct vnt_interrupt_data *int_data;
+	struct ieee80211_low_level_stats *low_stats = &priv->low_stats;
+
+	dev_dbg(&priv->usb->dev, "---->s_nsInterruptProcessData\n");
+
+	int_data = (struct vnt_interrupt_data *)priv->int_buf.data_buf;
+
+	if (int_data->tsr0 & TSR_VALID)
+		vnt_int_report_rate(priv, int_data->pkt0, int_data->tsr0);
+
+	if (int_data->tsr1 & TSR_VALID)
+		vnt_int_report_rate(priv, int_data->pkt1, int_data->tsr1);
+
+	if (int_data->tsr2 & TSR_VALID)
+		vnt_int_report_rate(priv, int_data->pkt2, int_data->tsr2);
+
+	if (int_data->tsr3 & TSR_VALID)
+		vnt_int_report_rate(priv, int_data->pkt3, int_data->tsr3);
+
+	if (int_data->isr0 != 0) {
+		if (int_data->isr0 & ISR_BNTX &&
+		    priv->op_mode == NL80211_IFTYPE_AP)
+			vnt_schedule_command(priv, WLAN_CMD_BECON_SEND);
+
+		if (int_data->isr0 & ISR_TBTT &&
+		    priv->hw->conf.flags & IEEE80211_CONF_PS) {
+			if (!priv->wake_up_count)
+				priv->wake_up_count =
+					priv->hw->conf.listen_interval;
+
+			--priv->wake_up_count;
+
+			/* Turn on wake up to listen next beacon */
+			if (priv->wake_up_count == 1)
+				vnt_schedule_command(priv,
+						     WLAN_CMD_TBTT_WAKEUP);
+		}
+		priv->current_tsf = le64_to_cpu(int_data->tsf);
+
+		low_stats->dot11RTSSuccessCount += int_data->rts_success;
+		low_stats->dot11RTSFailureCount += int_data->rts_fail;
+		low_stats->dot11ACKFailureCount += int_data->ack_fail;
+		low_stats->dot11FCSErrorCount += int_data->fcs_err;
+	}
+
+	priv->int_buf.in_use = false;
+}
+
 static void vnt_start_interrupt_urb_complete(struct urb *urb)
 {
 	struct vnt_private *priv = urb->context;
diff --git a/drivers/staging/vt6656/usbpipe.h b/drivers/staging/vt6656/usbpipe.h
index 4e3341bc3221..35697b58d748 100644
--- a/drivers/staging/vt6656/usbpipe.h
+++ b/drivers/staging/vt6656/usbpipe.h
@@ -18,6 +18,29 @@
 
 #include "device.h"
 
+struct vnt_interrupt_data {
+	u8 tsr0;
+	u8 pkt0;
+	u16 time0;
+	u8 tsr1;
+	u8 pkt1;
+	u16 time1;
+	u8 tsr2;
+	u8 pkt2;
+	u16 time2;
+	u8 tsr3;
+	u8 pkt3;
+	u16 time3;
+	__le64 tsf;
+	u8 isr0;
+	u8 isr1;
+	u8 rts_success;
+	u8 rts_fail;
+	u8 ack_fail;
+	u8 fcs_err;
+	u8 sw[2];
+} __packed;
+
 #define VNT_REG_BLOCK_SIZE	64
 
 int vnt_control_out(struct vnt_private *priv, u8 request, u16 value,
-- 
2.25.1
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
