Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1088344F739
	for <lists+driverdev-devel@lfdr.de>; Sun, 14 Nov 2021 09:20:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 54C1C6061E;
	Sun, 14 Nov 2021 08:20:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zFDUv2j6XeVT; Sun, 14 Nov 2021 08:20:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C0AF36060E;
	Sun, 14 Nov 2021 08:20:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 28CA61BF2AA
 for <devel@linuxdriverproject.org>; Sun, 14 Nov 2021 08:20:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 17C7080E0C
 for <devel@linuxdriverproject.org>; Sun, 14 Nov 2021 08:20:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aEjGjkPopHoO for <devel@linuxdriverproject.org>;
 Sun, 14 Nov 2021 08:20:34 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com
 [IPv6:2a00:1450:4864:20::530])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4388180DFA
 for <devel@driverdev.osuosl.org>; Sun, 14 Nov 2021 08:20:34 +0000 (UTC)
Received: by mail-ed1-x530.google.com with SMTP id o8so56866455edc.3
 for <devel@driverdev.osuosl.org>; Sun, 14 Nov 2021 00:20:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=JvrOVb+OYdh3RUbgIUh+BL7bxRIhj19ylfnHWurNVig=;
 b=JqcZtEx6ZKkdAQfXCs+2nwXgTgy4ZIqomyA2YOzFG4qFj4TpOEiH+9WG+yPjSr1QIV
 jYZ9nPmNe6kcMVzgIOSZbsJ5LlB+FCjI6NTXosKbiaCKtqHQNFG1fnAxngqOsQwH7YkS
 bwZSgzuCo+XSmzgOJ/gZ/ldB4hwkBQeUQX1iZyTZ8AVCCsTEiM93MCm3BFvk3FK4wCip
 +/wqpXbwIdHO4RLkDI/6uDFkzHSfU552OHbHkF0lygjN8liA9q6hZ89nq1o168FqezEW
 7b4bFCJ0UPeqqrCYnCreCd+AtmLtUn7vkJcinz2MtjXFxXixcFxxijy2HCqNmfsx4V1E
 HmIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=JvrOVb+OYdh3RUbgIUh+BL7bxRIhj19ylfnHWurNVig=;
 b=L9w9XHgxGLHnzKHQqYTksqQyPw+Dre1lIBIjtgoyoL0EOLhKJhyfxC8lQxWKMVkFOM
 +ZKV/AWbHsStyXj6StUAjC+PLfdXX7vLFJYmn8Q/8P/u357n67T1rMJBz0wT9+rjfp8P
 aBA6D2g+MYHKtoSg56wwP1qLy2RvvEAGdjByGQcqjtIW4lGtq0RYR+dnNiS24/6mBQJm
 ZBrNXNwltOsdEuRK7ACPrgdFQ96FgUADMZZQtymjrj+zhLhHt7jfLI11mjujEsAZ3cTM
 VDEE7hTeYkoMeR4MoL419mtzUvnIDjkMtBU1v9Qu6dDHcvgbNJ/toprLFgETNeDYTp2r
 Xr+w==
X-Gm-Message-State: AOAM531e+2e+8zoQFWAM5eBL2v3XQCE0MkBwaNZPqUs2ZLh+bHjMwMIo
 qdaORN7wMCARHz4MrsHYq1A=
X-Google-Smtp-Source: ABdhPJzlp5YOBh1xUNu87VwWxja9XJvJ5+UhsJn+HEhE0c0pEag4ffDSbCSGvyLV9unw3hu/Z+IF+g==
X-Received: by 2002:a17:906:fcd9:: with SMTP id
 qx25mr38802254ejb.326.1636878032214; 
 Sun, 14 Nov 2021 00:20:32 -0800 (PST)
Received: from t470p (host-82-51-109-131.retail.telecomitalia.it.
 [82.51.109.131])
 by smtp.gmail.com with ESMTPSA id go10sm4874340ejc.115.2021.11.14.00.20.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 14 Nov 2021 00:20:31 -0800 (PST)
Date: Sun, 14 Nov 2021 09:20:29 +0100
From: Alberto Merciai <alb3rt0.m3rciai@gmail.com>
To: alb3rt0.m3rciai@gmail.com
Subject: [PATCH v2] staging: vt6655: fix camelcase in wCurrentRate
Message-ID: <20211114082029.GA118847@t470p>
MIME-Version: 1.0
Content-Disposition: inline
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
 forest@alittletooquiet.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Replace camelcase word variable "wCurrentRate" into linux kernel coding
style equivalent "current_rate".

References:
https://www.kernel.org/doc/html/latest/process/coding-style.html
https://www.cse.iitk.ac.in/users/dsrkg/cs245/html/Guide.htm

Signed-off-by: Alberto Merciai <alb3rt0.m3rciai@gmail.com>
---
 drivers/staging/vt6655/device.h      |   2 +-
 drivers/staging/vt6655/device_main.c |  12 +--
 drivers/staging/vt6655/rxtx.c        | 134 +++++++++++++--------------
 3 files changed, 74 insertions(+), 74 deletions(-)

diff --git a/drivers/staging/vt6655/device.h b/drivers/staging/vt6655/device.h
index 29f354ced563..f5dee7ad99cd 100644
--- a/drivers/staging/vt6655/device.h
+++ b/drivers/staging/vt6655/device.h
@@ -208,7 +208,7 @@ struct vnt_private {
 	unsigned char byPreambleType;
 	unsigned char byShortPreamble;
 
-	unsigned short wCurrentRate;
+	unsigned short current_rate;
 	unsigned char byShortRetryLimit;
 	unsigned char byLongRetryLimit;
 	enum nl80211_iftype op_mode;
diff --git a/drivers/staging/vt6655/device_main.c b/drivers/staging/vt6655/device_main.c
index 41cbec4134b0..2c5398b128df 100644
--- a/drivers/staging/vt6655/device_main.c
+++ b/drivers/staging/vt6655/device_main.c
@@ -213,7 +213,7 @@ static void device_init_registers(struct vnt_private *priv)
 
 	priv->bNonERPPresent = false;
 	priv->bBarkerPreambleMd = false;
-	priv->wCurrentRate = RATE_1M;
+	priv->current_rate = RATE_1M;
 	priv->byTopOFDMBasicRate = RATE_24M;
 	priv->byTopCCKBasicRate = RATE_1M;
 
@@ -369,7 +369,7 @@ static void device_init_registers(struct vnt_private *priv)
 
 	/* Set BB and packet type at the same time. */
 	/* Set Short Slot Time, xIFS, and RSPINF. */
-	priv->wCurrentRate = RATE_54M;
+	priv->current_rate = RATE_54M;
 
 	priv->bRadioOff = false;
 
@@ -1382,11 +1382,11 @@ static int vnt_config(struct ieee80211_hw *hw, u32 changed)
 
 	if (changed & IEEE80211_CONF_CHANGE_POWER) {
 		if (priv->byBBType == BB_TYPE_11B)
-			priv->wCurrentRate = RATE_1M;
+			priv->current_rate = RATE_1M;
 		else
-			priv->wCurrentRate = RATE_54M;
+			priv->current_rate = RATE_54M;
 
-		RFbSetPower(priv, priv->wCurrentRate,
+		RFbSetPower(priv, priv->current_rate,
 			    conf->chandef.chan->hw_value);
 	}
 
@@ -1448,7 +1448,7 @@ static void vnt_bss_info_changed(struct ieee80211_hw *hw,
 	}
 
 	if (changed & BSS_CHANGED_TXPOWER)
-		RFbSetPower(priv, priv->wCurrentRate,
+		RFbSetPower(priv, priv->current_rate,
 			    conf->chandef.chan->hw_value);
 
 	if (changed & BSS_CHANGED_BEACON_ENABLED) {
diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
index cfab64d2b312..17795ebcdfbc 100644
--- a/drivers/staging/vt6655/rxtx.c
+++ b/drivers/staging/vt6655/rxtx.c
@@ -97,7 +97,7 @@ s_vFillRTSHead(
 	bool bNeedAck,
 	bool bDisCRC,
 	struct ieee80211_hdr *hdr,
-	unsigned short wCurrentRate,
+	unsigned short current_rate,
 	unsigned char byFBOption
 );
 
@@ -114,7 +114,7 @@ s_vGenerateTxParameter(
 	bool bNeedACK,
 	unsigned int	uDMAIdx,
 	void *psEthHeader,
-	unsigned short wCurrentRate
+	unsigned short current_rate
 );
 
 static unsigned int
@@ -136,7 +136,7 @@ s_uFillDataHead(
 	unsigned int cbLastFragmentSize,
 	unsigned int uMACfragNum,
 	unsigned char byFBOption,
-	unsigned short wCurrentRate,
+	unsigned short current_rate,
 	bool is_pspoll
 );
 
@@ -197,7 +197,7 @@ s_uGetRTSCTSRsvTime(
 	unsigned char byRTSRsvType,
 	unsigned char byPktType,
 	unsigned int cbFrameLength,
-	unsigned short wCurrentRate
+	unsigned short current_rate
 )
 {
 	unsigned int uRrvTime = 0;
@@ -206,7 +206,7 @@ s_uGetRTSCTSRsvTime(
 	unsigned int uAckTime = 0;
 	unsigned int uDataTime = 0;
 
-	uDataTime = bb_get_frame_time(pDevice->byPreambleType, byPktType, cbFrameLength, wCurrentRate);
+	uDataTime = bb_get_frame_time(pDevice->byPreambleType, byPktType, cbFrameLength, current_rate);
 	if (byRTSRsvType == 0) { /* RTSTxRrvTime_bb */
 		uRTSTime = bb_get_frame_time(pDevice->byPreambleType, byPktType, 20, pDevice->byTopCCKBasicRate);
 		uAckTime = bb_get_frame_time(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
@@ -440,7 +440,7 @@ s_uFillDataHead(
 	unsigned int cbLastFragmentSize,
 	unsigned int uMACfragNum,
 	unsigned char byFBOption,
-	unsigned short wCurrentRate,
+	unsigned short current_rate,
 	bool is_pspoll
 )
 {
@@ -451,7 +451,7 @@ s_uFillDataHead(
 		if (byFBOption == AUTO_FB_NONE) {
 			struct vnt_tx_datahead_g *buf = pTxDataHead;
 			/* Get SignalField, ServiceField & Length */
-			vnt_get_phy_field(pDevice, cbFrameLength, wCurrentRate,
+			vnt_get_phy_field(pDevice, cbFrameLength, current_rate,
 					  byPktType, &buf->a);
 
 			vnt_get_phy_field(pDevice, cbFrameLength,
@@ -467,7 +467,7 @@ s_uFillDataHead(
 				/* Get Duration and TimeStamp */
 				buf->duration_a =
 					cpu_to_le16((u16)s_uGetDataDuration(pDevice, DATADUR_A, cbFrameLength,
-									    byPktType, wCurrentRate, bNeedAck, uFragIdx,
+									    byPktType, current_rate, bNeedAck, uFragIdx,
 									    cbLastFragmentSize, uMACfragNum,
 									    byFBOption));
 				buf->duration_b =
@@ -477,7 +477,7 @@ s_uFillDataHead(
 									    uMACfragNum, byFBOption));
 			}
 
-			buf->time_stamp_off_a = vnt_time_stamp_off(pDevice, wCurrentRate);
+			buf->time_stamp_off_a = vnt_time_stamp_off(pDevice, current_rate);
 			buf->time_stamp_off_b = vnt_time_stamp_off(pDevice, pDevice->byTopCCKBasicRate);
 
 			return buf->duration_a;
@@ -485,7 +485,7 @@ s_uFillDataHead(
 			/* Auto Fallback */
 			struct vnt_tx_datahead_g_fb *buf = pTxDataHead;
 			/* Get SignalField, ServiceField & Length */
-			vnt_get_phy_field(pDevice, cbFrameLength, wCurrentRate,
+			vnt_get_phy_field(pDevice, cbFrameLength, current_rate,
 					  byPktType, &buf->a);
 
 			vnt_get_phy_field(pDevice, cbFrameLength,
@@ -493,15 +493,15 @@ s_uFillDataHead(
 					  PK_TYPE_11B, &buf->b);
 			/* Get Duration and TimeStamp */
 			buf->duration_a = cpu_to_le16((u16)s_uGetDataDuration(pDevice, DATADUR_A, cbFrameLength, byPktType,
-									      wCurrentRate, bNeedAck, uFragIdx, cbLastFragmentSize, uMACfragNum, byFBOption));
+									      current_rate, bNeedAck, uFragIdx, cbLastFragmentSize, uMACfragNum, byFBOption));
 			buf->duration_b = cpu_to_le16((u16)s_uGetDataDuration(pDevice, DATADUR_B, cbFrameLength, PK_TYPE_11B,
 									       pDevice->byTopCCKBasicRate, bNeedAck, uFragIdx, cbLastFragmentSize, uMACfragNum, byFBOption));
 			buf->duration_a_f0 = cpu_to_le16((u16)s_uGetDataDuration(pDevice, DATADUR_A_F0, cbFrameLength, byPktType,
-										  wCurrentRate, bNeedAck, uFragIdx, cbLastFragmentSize, uMACfragNum, byFBOption));
+										  current_rate, bNeedAck, uFragIdx, cbLastFragmentSize, uMACfragNum, byFBOption));
 			buf->duration_a_f1 = cpu_to_le16((u16)s_uGetDataDuration(pDevice, DATADUR_A_F1, cbFrameLength, byPktType,
-										 wCurrentRate, bNeedAck, uFragIdx, cbLastFragmentSize, uMACfragNum, byFBOption));
+										 current_rate, bNeedAck, uFragIdx, cbLastFragmentSize, uMACfragNum, byFBOption));
 
-			buf->time_stamp_off_a = vnt_time_stamp_off(pDevice, wCurrentRate);
+			buf->time_stamp_off_a = vnt_time_stamp_off(pDevice, current_rate);
 			buf->time_stamp_off_b = vnt_time_stamp_off(pDevice, pDevice->byTopCCKBasicRate);
 
 			return buf->duration_a;
@@ -511,22 +511,22 @@ s_uFillDataHead(
 			/* Auto Fallback */
 			struct vnt_tx_datahead_a_fb *buf = pTxDataHead;
 			/* Get SignalField, ServiceField & Length */
-			vnt_get_phy_field(pDevice, cbFrameLength, wCurrentRate,
+			vnt_get_phy_field(pDevice, cbFrameLength, current_rate,
 					  byPktType, &buf->a);
 
 			/* Get Duration and TimeStampOff */
 			buf->duration = cpu_to_le16((u16)s_uGetDataDuration(pDevice, DATADUR_A, cbFrameLength, byPktType,
-									    wCurrentRate, bNeedAck, uFragIdx, cbLastFragmentSize, uMACfragNum, byFBOption));
+									    current_rate, bNeedAck, uFragIdx, cbLastFragmentSize, uMACfragNum, byFBOption));
 			buf->duration_f0 = cpu_to_le16((u16)s_uGetDataDuration(pDevice, DATADUR_A_F0, cbFrameLength, byPktType,
-									       wCurrentRate, bNeedAck, uFragIdx, cbLastFragmentSize, uMACfragNum, byFBOption));
+									       current_rate, bNeedAck, uFragIdx, cbLastFragmentSize, uMACfragNum, byFBOption));
 			buf->duration_f1 = cpu_to_le16((u16)s_uGetDataDuration(pDevice, DATADUR_A_F1, cbFrameLength, byPktType,
-										wCurrentRate, bNeedAck, uFragIdx, cbLastFragmentSize, uMACfragNum, byFBOption));
-			buf->time_stamp_off = vnt_time_stamp_off(pDevice, wCurrentRate);
+										current_rate, bNeedAck, uFragIdx, cbLastFragmentSize, uMACfragNum, byFBOption));
+			buf->time_stamp_off = vnt_time_stamp_off(pDevice, current_rate);
 			return buf->duration;
 		} else {
 			struct vnt_tx_datahead_ab *buf = pTxDataHead;
 			/* Get SignalField, ServiceField & Length */
-			vnt_get_phy_field(pDevice, cbFrameLength, wCurrentRate,
+			vnt_get_phy_field(pDevice, cbFrameLength, current_rate,
 					  byPktType, &buf->ab);
 
 			if (is_pspoll) {
@@ -537,18 +537,18 @@ s_uFillDataHead(
 				/* Get Duration and TimeStampOff */
 				buf->duration =
 					cpu_to_le16((u16)s_uGetDataDuration(pDevice, DATADUR_A, cbFrameLength, byPktType,
-									    wCurrentRate, bNeedAck, uFragIdx,
+									    current_rate, bNeedAck, uFragIdx,
 									    cbLastFragmentSize, uMACfragNum,
 									    byFBOption));
 			}
 
-			buf->time_stamp_off = vnt_time_stamp_off(pDevice, wCurrentRate);
+			buf->time_stamp_off = vnt_time_stamp_off(pDevice, current_rate);
 			return buf->duration;
 		}
 	} else {
 		struct vnt_tx_datahead_ab *buf = pTxDataHead;
 		/* Get SignalField, ServiceField & Length */
-		vnt_get_phy_field(pDevice, cbFrameLength, wCurrentRate,
+		vnt_get_phy_field(pDevice, cbFrameLength, current_rate,
 				  byPktType, &buf->ab);
 
 		if (is_pspoll) {
@@ -559,12 +559,12 @@ s_uFillDataHead(
 			/* Get Duration and TimeStampOff */
 			buf->duration =
 				cpu_to_le16((u16)s_uGetDataDuration(pDevice, DATADUR_B, cbFrameLength, byPktType,
-								    wCurrentRate, bNeedAck, uFragIdx,
+								    current_rate, bNeedAck, uFragIdx,
 								    cbLastFragmentSize, uMACfragNum,
 								    byFBOption));
 		}
 
-		buf->time_stamp_off = vnt_time_stamp_off(pDevice, wCurrentRate);
+		buf->time_stamp_off = vnt_time_stamp_off(pDevice, current_rate);
 		return buf->duration;
 	}
 	return 0;
@@ -580,7 +580,7 @@ s_vFillRTSHead(
 	bool bNeedAck,
 	bool bDisCRC,
 	struct ieee80211_hdr *hdr,
-	unsigned short wCurrentRate,
+	unsigned short current_rate,
 	unsigned char byFBOption
 )
 {
@@ -620,12 +620,12 @@ s_vFillRTSHead(
 			buf->duration_aa =
 				s_uGetRTSCTSDuration(pDevice, RTSDUR_AA,
 						     cbFrameLength, byPktType,
-						     wCurrentRate, bNeedAck,
+						     current_rate, bNeedAck,
 						     byFBOption);
 			buf->duration_ba =
 				s_uGetRTSCTSDuration(pDevice, RTSDUR_BA,
 						     cbFrameLength, byPktType,
-						     wCurrentRate, bNeedAck,
+						     current_rate, bNeedAck,
 						     byFBOption);
 
 			buf->data.duration = buf->duration_aa;
@@ -655,32 +655,32 @@ s_vFillRTSHead(
 			buf->duration_aa =
 				s_uGetRTSCTSDuration(pDevice, RTSDUR_AA,
 						     cbFrameLength, byPktType,
-						     wCurrentRate, bNeedAck,
+						     current_rate, bNeedAck,
 						     byFBOption);
 			buf->duration_ba =
 				s_uGetRTSCTSDuration(pDevice, RTSDUR_BA,
 						     cbFrameLength, byPktType,
-						     wCurrentRate, bNeedAck,
+						     current_rate, bNeedAck,
 						     byFBOption);
 			buf->rts_duration_ba_f0 =
 				s_uGetRTSCTSDuration(pDevice, RTSDUR_BA_F0,
 						     cbFrameLength, byPktType,
-						     wCurrentRate, bNeedAck,
+						     current_rate, bNeedAck,
 						     byFBOption);
 			buf->rts_duration_aa_f0 =
 				s_uGetRTSCTSDuration(pDevice, RTSDUR_AA_F0,
 						     cbFrameLength, byPktType,
-						     wCurrentRate, bNeedAck,
+						     current_rate, bNeedAck,
 						     byFBOption);
 			buf->rts_duration_ba_f1 =
 				s_uGetRTSCTSDuration(pDevice, RTSDUR_BA_F1,
 						     cbFrameLength, byPktType,
-						     wCurrentRate, bNeedAck,
+						     current_rate, bNeedAck,
 						     byFBOption);
 			buf->rts_duration_aa_f1 =
 				s_uGetRTSCTSDuration(pDevice, RTSDUR_AA_F1,
 						     cbFrameLength, byPktType,
-						     wCurrentRate, bNeedAck,
+						     current_rate, bNeedAck,
 						     byFBOption);
 			buf->data.duration = buf->duration_aa;
 			/* Get RTS Frame body */
@@ -702,7 +702,7 @@ s_vFillRTSHead(
 			buf->duration =
 				s_uGetRTSCTSDuration(pDevice, RTSDUR_AA,
 						     cbFrameLength, byPktType,
-						     wCurrentRate, bNeedAck,
+						     current_rate, bNeedAck,
 						     byFBOption);
 			buf->data.duration = buf->duration;
 			/* Get RTS Frame body */
@@ -722,17 +722,17 @@ s_vFillRTSHead(
 			buf->duration =
 				s_uGetRTSCTSDuration(pDevice, RTSDUR_AA,
 						     cbFrameLength, byPktType,
-						     wCurrentRate, bNeedAck,
+						     current_rate, bNeedAck,
 						     byFBOption);
 			buf->rts_duration_f0 =
 				s_uGetRTSCTSDuration(pDevice, RTSDUR_AA_F0,
 						     cbFrameLength, byPktType,
-						     wCurrentRate, bNeedAck,
+						     current_rate, bNeedAck,
 						     byFBOption);
 			buf->rts_duration_f1 =
 				s_uGetRTSCTSDuration(pDevice, RTSDUR_AA_F1,
 						     cbFrameLength, byPktType,
-						     wCurrentRate, bNeedAck,
+						     current_rate, bNeedAck,
 						     byFBOption);
 			buf->data.duration = buf->duration;
 			/* Get RTS Frame body */
@@ -752,7 +752,7 @@ s_vFillRTSHead(
 		/* Get Duration */
 		buf->duration =
 			s_uGetRTSCTSDuration(pDevice, RTSDUR_BB, cbFrameLength,
-					     byPktType, wCurrentRate, bNeedAck,
+					     byPktType, current_rate, bNeedAck,
 					     byFBOption);
 
 		buf->data.duration = buf->duration;
@@ -775,7 +775,7 @@ s_vFillCTSHead(
 	unsigned int cbFrameLength,
 	bool bNeedAck,
 	bool bDisCRC,
-	unsigned short wCurrentRate,
+	unsigned short current_rate,
 	unsigned char byFBOption
 )
 {
@@ -803,21 +803,21 @@ s_vFillCTSHead(
 			buf->duration_ba =
 				s_uGetRTSCTSDuration(pDevice, CTSDUR_BA,
 						     cbFrameLength, byPktType,
-						     wCurrentRate, bNeedAck,
+						     current_rate, bNeedAck,
 						     byFBOption);
 
 			/* Get CTSDuration_ba_f0 */
 			buf->cts_duration_ba_f0 =
 				s_uGetRTSCTSDuration(pDevice, CTSDUR_BA_F0,
 						     cbFrameLength, byPktType,
-						     wCurrentRate, bNeedAck,
+						     current_rate, bNeedAck,
 						     byFBOption);
 
 			/* Get CTSDuration_ba_f1 */
 			buf->cts_duration_ba_f1 =
 				s_uGetRTSCTSDuration(pDevice, CTSDUR_BA_F1,
 						     cbFrameLength, byPktType,
-						     wCurrentRate, bNeedAck,
+						     current_rate, bNeedAck,
 						     byFBOption);
 
 			/* Get CTS Frame body */
@@ -842,7 +842,7 @@ s_vFillCTSHead(
 			buf->duration_ba =
 				s_uGetRTSCTSDuration(pDevice, CTSDUR_BA,
 						     cbFrameLength, byPktType,
-						     wCurrentRate, bNeedAck,
+						     current_rate, bNeedAck,
 						     byFBOption);
 
 			/* Get CTS Frame body */
@@ -896,14 +896,14 @@ s_vGenerateTxParameter(
 	bool bNeedACK,
 	unsigned int uDMAIdx,
 	void *psEthHeader,
-	unsigned short wCurrentRate
+	unsigned short current_rate
 )
 {
 	u16 fifo_ctl = le16_to_cpu(tx_buffer_head->fifo_ctl);
 	bool bDisCRC = false;
 	unsigned char byFBOption = AUTO_FB_NONE;
 
-	tx_buffer_head->current_rate = cpu_to_le16(wCurrentRate);
+	tx_buffer_head->current_rate = cpu_to_le16(current_rate);
 
 	if (fifo_ctl & FIFOCTL_CRCDIS)
 		bDisCRC = true;
@@ -921,50 +921,50 @@ s_vGenerateTxParameter(
 			/* Fill RsvTime */
 			struct vnt_rrv_time_rts *buf = pvRrvTime;
 
-			buf->rts_rrv_time_aa = s_uGetRTSCTSRsvTime(pDevice, 2, byPktType, cbFrameSize, wCurrentRate);
-			buf->rts_rrv_time_ba = s_uGetRTSCTSRsvTime(pDevice, 1, byPktType, cbFrameSize, wCurrentRate);
-			buf->rts_rrv_time_bb = s_uGetRTSCTSRsvTime(pDevice, 0, byPktType, cbFrameSize, wCurrentRate);
-			buf->rrv_time_a = vnt_rxtx_rsvtime_le16(pDevice, byPktType, cbFrameSize, wCurrentRate, bNeedACK);
+			buf->rts_rrv_time_aa = s_uGetRTSCTSRsvTime(pDevice, 2, byPktType, cbFrameSize, current_rate);
+			buf->rts_rrv_time_ba = s_uGetRTSCTSRsvTime(pDevice, 1, byPktType, cbFrameSize, current_rate);
+			buf->rts_rrv_time_bb = s_uGetRTSCTSRsvTime(pDevice, 0, byPktType, cbFrameSize, current_rate);
+			buf->rrv_time_a = vnt_rxtx_rsvtime_le16(pDevice, byPktType, cbFrameSize, current_rate, bNeedACK);
 			buf->rrv_time_b = vnt_rxtx_rsvtime_le16(pDevice, PK_TYPE_11B, cbFrameSize, pDevice->byTopCCKBasicRate, bNeedACK);
 
-			s_vFillRTSHead(pDevice, byPktType, pvRTS, cbFrameSize, bNeedACK, bDisCRC, psEthHeader, wCurrentRate, byFBOption);
+			s_vFillRTSHead(pDevice, byPktType, pvRTS, cbFrameSize, bNeedACK, bDisCRC, psEthHeader, current_rate, byFBOption);
 		} else {/* RTS_needless, PCF mode */
 			struct vnt_rrv_time_cts *buf = pvRrvTime;
 
-			buf->rrv_time_a = vnt_rxtx_rsvtime_le16(pDevice, byPktType, cbFrameSize, wCurrentRate, bNeedACK);
+			buf->rrv_time_a = vnt_rxtx_rsvtime_le16(pDevice, byPktType, cbFrameSize, current_rate, bNeedACK);
 			buf->rrv_time_b = vnt_rxtx_rsvtime_le16(pDevice, PK_TYPE_11B, cbFrameSize, pDevice->byTopCCKBasicRate, bNeedACK);
-			buf->cts_rrv_time_ba = s_uGetRTSCTSRsvTime(pDevice, 3, byPktType, cbFrameSize, wCurrentRate);
+			buf->cts_rrv_time_ba = s_uGetRTSCTSRsvTime(pDevice, 3, byPktType, cbFrameSize, current_rate);
 
 			/* Fill CTS */
-			s_vFillCTSHead(pDevice, uDMAIdx, byPktType, pvCTS, cbFrameSize, bNeedACK, bDisCRC, wCurrentRate, byFBOption);
+			s_vFillCTSHead(pDevice, uDMAIdx, byPktType, pvCTS, cbFrameSize, bNeedACK, bDisCRC, current_rate, byFBOption);
 		}
 	} else if (byPktType == PK_TYPE_11A) {
 		if (pvRTS) {/* RTS_need, non PCF mode */
 			struct vnt_rrv_time_ab *buf = pvRrvTime;
 
-			buf->rts_rrv_time = s_uGetRTSCTSRsvTime(pDevice, 2, byPktType, cbFrameSize, wCurrentRate);
-			buf->rrv_time = vnt_rxtx_rsvtime_le16(pDevice, byPktType, cbFrameSize, wCurrentRate, bNeedACK);
+			buf->rts_rrv_time = s_uGetRTSCTSRsvTime(pDevice, 2, byPktType, cbFrameSize, current_rate);
+			buf->rrv_time = vnt_rxtx_rsvtime_le16(pDevice, byPktType, cbFrameSize, current_rate, bNeedACK);
 
 			/* Fill RTS */
-			s_vFillRTSHead(pDevice, byPktType, pvRTS, cbFrameSize, bNeedACK, bDisCRC, psEthHeader, wCurrentRate, byFBOption);
+			s_vFillRTSHead(pDevice, byPktType, pvRTS, cbFrameSize, bNeedACK, bDisCRC, psEthHeader, current_rate, byFBOption);
 		} else if (!pvRTS) {/* RTS_needless, non PCF mode */
 			struct vnt_rrv_time_ab *buf = pvRrvTime;
 
-			buf->rrv_time = vnt_rxtx_rsvtime_le16(pDevice, PK_TYPE_11A, cbFrameSize, wCurrentRate, bNeedACK);
+			buf->rrv_time = vnt_rxtx_rsvtime_le16(pDevice, PK_TYPE_11A, cbFrameSize, current_rate, bNeedACK);
 		}
 	} else if (byPktType == PK_TYPE_11B) {
 		if (pvRTS) {/* RTS_need, non PCF mode */
 			struct vnt_rrv_time_ab *buf = pvRrvTime;
 
-			buf->rts_rrv_time = s_uGetRTSCTSRsvTime(pDevice, 0, byPktType, cbFrameSize, wCurrentRate);
-			buf->rrv_time = vnt_rxtx_rsvtime_le16(pDevice, PK_TYPE_11B, cbFrameSize, wCurrentRate, bNeedACK);
+			buf->rts_rrv_time = s_uGetRTSCTSRsvTime(pDevice, 0, byPktType, cbFrameSize, current_rate);
+			buf->rrv_time = vnt_rxtx_rsvtime_le16(pDevice, PK_TYPE_11B, cbFrameSize, current_rate, bNeedACK);
 
 			/* Fill RTS */
-			s_vFillRTSHead(pDevice, byPktType, pvRTS, cbFrameSize, bNeedACK, bDisCRC, psEthHeader, wCurrentRate, byFBOption);
+			s_vFillRTSHead(pDevice, byPktType, pvRTS, cbFrameSize, bNeedACK, bDisCRC, psEthHeader, current_rate, byFBOption);
 		} else { /* RTS_needless, non PCF mode */
 			struct vnt_rrv_time_ab *buf = pvRrvTime;
 
-			buf->rrv_time = vnt_rxtx_rsvtime_le16(pDevice, PK_TYPE_11B, cbFrameSize, wCurrentRate, bNeedACK);
+			buf->rrv_time = vnt_rxtx_rsvtime_le16(pDevice, PK_TYPE_11B, cbFrameSize, current_rate, bNeedACK);
 		}
 	}
 }
@@ -1126,10 +1126,10 @@ s_cbFillTxBufHead(struct vnt_private *pDevice, unsigned char byPktType,
 
 	/* Fill FIFO,RrvTime,RTS,and CTS */
 	s_vGenerateTxParameter(pDevice, byPktType, tx_buffer_head, pvRrvTime, pvRTS, pvCTS,
-			       cbFrameSize, bNeedACK, uDMAIdx, hdr, pDevice->wCurrentRate);
+			       cbFrameSize, bNeedACK, uDMAIdx, hdr, pDevice->current_rate);
 	/* Fill DataHead */
 	uDuration = s_uFillDataHead(pDevice, byPktType, pvTxDataHd, cbFrameSize, uDMAIdx, bNeedACK,
-				    0, 0, uMACfragNum, byFBOption, pDevice->wCurrentRate, is_pspoll);
+				    0, 0, uMACfragNum, byFBOption, pDevice->current_rate, is_pspoll);
 
 	hdr->duration_id = uDuration;
 
@@ -1240,11 +1240,11 @@ int vnt_generate_fifo_header(struct vnt_private *priv, u32 dma_idx,
 	rate = ieee80211_get_tx_rate(priv->hw, info);
 
 	current_rate = rate->hw_value;
-	if (priv->wCurrentRate != current_rate &&
+	if (priv->current_rate != current_rate &&
 	    !(priv->hw->conf.flags & IEEE80211_CONF_OFFCHANNEL)) {
-		priv->wCurrentRate = current_rate;
+		priv->current_rate = current_rate;
 
-		RFbSetPower(priv, priv->wCurrentRate,
+		RFbSetPower(priv, priv->current_rate,
 			    priv->hw->conf.chandef.chan->hw_value);
 	}
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
