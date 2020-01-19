Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 869CE141DAE
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 Jan 2020 13:02:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3C8EB874F3;
	Sun, 19 Jan 2020 12:02:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EQVMeBTALAE3; Sun, 19 Jan 2020 12:02:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 42C8287527;
	Sun, 19 Jan 2020 12:02:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DF9FF1BF302
 for <devel@linuxdriverproject.org>; Sun, 19 Jan 2020 12:02:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D9B95203DE
 for <devel@linuxdriverproject.org>; Sun, 19 Jan 2020 12:02:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Nah4GsvQsXxw for <devel@linuxdriverproject.org>;
 Sun, 19 Jan 2020 12:02:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by silver.osuosl.org (Postfix) with ESMTPS id BE3BE203DA
 for <devel@driverdev.osuosl.org>; Sun, 19 Jan 2020 12:02:28 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id c9so26703376wrw.8
 for <devel@driverdev.osuosl.org>; Sun, 19 Jan 2020 04:02:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=DsPcqWIhwRO7AQa6kAY2kaYVwcvNZbhPUkWX5eiyeqw=;
 b=L6aBVVs9HzDquqyh6MtL97YWygdLu2BCuY2VE/S89lsJHE3roJ3egJ2m9UM6rNvi1C
 KtBVsgUZjpr7J7z0tMTGYEAxbvCLkaF5+hfk/SvfYCTskUBZWyhttZDAL7+42yaMEIDl
 yJb6PwlhrYhilRTFq4qe8ut8Eir4UzRU7iFvhC6Z738J5qNI5aQI9zu3jPSi9Y0eiYCr
 Nn07CQ7qkpD3IwzhuzqGKpe9IqBroRcxvlXVAVbgwrY79EKKSj5AKXoKc15Vhbc+lMdx
 g79FipdgNWDBzamm7HLsLKI9mdZJP/m6eldtxjmEOQOkyUxyeHy0nbo6El/wj0O/RQmu
 PY2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=DsPcqWIhwRO7AQa6kAY2kaYVwcvNZbhPUkWX5eiyeqw=;
 b=jX21ExJWDYReXJSsvdCrZBBgTMSFpkhusN2Oibmjy+fGiWp0Y/Xbd+Vqb9PKZJfSLg
 fAOV9+BfY2e12DpFHkxXJ9tMIMYBewwFPJLth2jMLjN4euIjUkKYDS6vIIMkmy7KVRbv
 2EaO0GavnHE5MHStDfcKT4j/Jom7i1GTqPETEAISKPtMW/m+Ohw1XzIx9i/sRjQ++4Ae
 xckJa4Q7DRt58y9eWW7PUAvCcPP22FMGiMYL0IsrSNrLqqwdtFhfBz5Ud7OEah6vLt1W
 we7jJGe3hupYGGykAeChNEL2sT7L4csVBuGsCBDtJopG1g4lFLUTfJFaLlrtGGU5jP84
 0XiA==
X-Gm-Message-State: APjAAAVtIsbefySw3G3KSs9Zp4eBHQg3dpMFFXElJgUsaHFjqTvUk4dG
 9t0U5kv2prMVgBi5o4AnxEfiBgLf
X-Google-Smtp-Source: APXvYqzsBX1PWGuz5ZbvfcyMKk4WNasVSUcHULqMkSODDX2ARiku2hNB6rubrhDAwwFOQZxW+mx4cw==
X-Received: by 2002:adf:f803:: with SMTP id s3mr13139026wrp.7.1579435346889;
 Sun, 19 Jan 2020 04:02:26 -0800 (PST)
Received: from [192.168.43.18] (92.40.176.73.threembb.co.uk. [92.40.176.73])
 by smtp.gmail.com with ESMTPSA id z124sm20205748wmc.20.2020.01.19.04.02.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 19 Jan 2020 04:02:26 -0800 (PST)
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH 1/5] staging: vt6656: Simplify RX finding bit rates
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <50d3c4b8-6d17-4fae-ce9c-88a50614450f@gmail.com>
Date: Sun, 19 Jan 2020 12:02:24 +0000
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

The bit rate can be found by multiplying the rate value by 5.

Use rx_bitrate to compared to sband bitrates removing the need
to find it by hw_value.

Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/device.h |  1 -
 drivers/staging/vt6656/dpc.c    | 21 ++++++---------------
 2 files changed, 6 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/vt6656/device.h b/drivers/staging/vt6656/device.h
index e2fabe818b19..2f6567d92b83 100644
--- a/drivers/staging/vt6656/device.h
+++ b/drivers/staging/vt6656/device.h
@@ -264,7 +264,6 @@ struct vnt_private {
 	struct usb_interface *intf;
 
 	u64 tsf_time;
-	u8 rx_rate;
 
 	u32 rx_buf_sz;
 	int mc_list_count;
diff --git a/drivers/staging/vt6656/dpc.c b/drivers/staging/vt6656/dpc.c
index 2bcb29b11883..a55e2f6b09e3 100644
--- a/drivers/staging/vt6656/dpc.c
+++ b/drivers/staging/vt6656/dpc.c
@@ -35,14 +35,13 @@ int vnt_rx_data(struct vnt_private *priv, struct vnt_rcb *ptr_rcb,
 	u8 *rsr, *new_rsr, *rssi;
 	__le64 *tsf_time;
 	u32 frame_size;
-	int ii, r;
-	u8 *rx_rate, *sq, *sq_3;
+	int ii;
+	u8 *sq, *sq_3;
 	u32 wbk_status;
 	u8 *skb_data;
 	u16 *pay_load_len;
-	u16 pay_load_with_padding;
+	u16 rx_bitrate, pay_load_with_padding;
 	u8 rate_idx = 0;
-	u8 rate[MAX_RATE] = {2, 4, 11, 22, 12, 18, 24, 36, 48, 72, 96, 108};
 	long rx_dbm;
 
 	skb = ptr_rcb->skb;
@@ -66,8 +65,6 @@ int vnt_rx_data(struct vnt_private *priv, struct vnt_rcb *ptr_rcb,
 
 	skb_data = (u8 *)skb->data;
 
-	rx_rate = skb_data + 5;
-
 	/* real Frame Size = USBframe_size -4WbkStatus - 4RxStatus */
 	/* -8TSF - 4RSR - 4SQ3 - ?Padding */
 
@@ -85,23 +82,17 @@ int vnt_rx_data(struct vnt_private *priv, struct vnt_rcb *ptr_rcb,
 	}
 
 	sband = hw->wiphy->bands[hw->conf.chandef.chan->band];
-
-	for (r = RATE_1M; r < MAX_RATE; r++) {
-		if (*rx_rate == rate[r])
-			break;
-	}
-
-	priv->rx_rate = r;
+	rx_bitrate = *(skb_data + 5) * 5; /* rx_rate * 5 */
 
 	for (ii = 0; ii < sband->n_bitrates; ii++) {
-		if (sband->bitrates[ii].hw_value == r) {
+		if (sband->bitrates[ii].bitrate == rx_bitrate) {
 			rate_idx = ii;
 				break;
 		}
 	}
 
 	if (ii == sband->n_bitrates) {
-		dev_dbg(&priv->usb->dev, "Wrong RxRate %x\n", *rx_rate);
+		dev_dbg(&priv->usb->dev, "Wrong Rx Bit Rate %d\n", rx_bitrate);
 		return false;
 	}
 
-- 
2.24.0
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
