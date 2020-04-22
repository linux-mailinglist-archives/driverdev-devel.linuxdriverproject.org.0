Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id ED8E61B48E7
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 Apr 2020 17:39:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C46F287CAB;
	Wed, 22 Apr 2020 15:39:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id izRTih0O2T41; Wed, 22 Apr 2020 15:39:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0B23A878C1;
	Wed, 22 Apr 2020 15:39:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7EDD11BF489
 for <devel@linuxdriverproject.org>; Wed, 22 Apr 2020 15:39:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7A0888769A
 for <devel@linuxdriverproject.org>; Wed, 22 Apr 2020 15:39:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6bwiuhNf-AaF for <devel@linuxdriverproject.org>;
 Wed, 22 Apr 2020 15:39:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EE8FC8768A
 for <devel@driverdev.osuosl.org>; Wed, 22 Apr 2020 15:39:16 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id f7so1264398pfa.9
 for <devel@driverdev.osuosl.org>; Wed, 22 Apr 2020 08:39:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=OSzsOQN8Z1q5Ww0pPBotbwJfApA1ur1KHIVoOxI4Rrw=;
 b=g6+ewChR1dfm8d7rbsEaXxVVw8tca9f8lcTqPwL2DHu8RVOvpgak8FFsHJXn+8zdJS
 TQomHYy5JEP16wiHIJhMl/Yc9H4L53lH3a+NN0gwQHA/cUPbTgdjfbnOGoV06w85VQko
 FYaEXTatbcNneu451BucAl8GA6y4rDMBGfp91F2ct/NmwErVYA1PrgbKsdrsecqH5zZU
 IxhBj6rybFoKPmm1hwe7/vSczGLbji8kQOFjcmwVrdQeWXO4Srz8afR2NfWbPjNGY26L
 wj5sCPFs3NaCS/iFMIKPuks34mkZf/24JcUzlwl0af5LMGlXQj2cLmxEK582nA5xD1b2
 uz6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=OSzsOQN8Z1q5Ww0pPBotbwJfApA1ur1KHIVoOxI4Rrw=;
 b=NLQsq0djSxaNdaYbCsSy6KZk5O/t0Q9TeSXJcegqLXBTySLIe2bglOgTcUq5l+rkwK
 HB8wO4rBiugeVsdUTUnW0Bdqel5/UXA60150RvlQXxe0opfbFClrq/qk+J0KC8J6RB+Y
 w4156SEg+Nd9uADbbTfFI1evSbJ1w0rVyrT2iacM14tMs47p1i1rISH1Y63h7pnTk2WN
 hNdhvDo3jLimWgOh9SqcvyedTedxBJMqnGz6841lnLwprqLMbrf7An9X6pBQ6Z3Nb1+F
 mR94FBgRRrgzNKaIX76x3MI3e+QhLwGPIHKwvlGepq3ioPfTyxAe3SPFhqRB4l/LUpwE
 CFcQ==
X-Gm-Message-State: AGi0Pua8QvRIYCWN6itcUymoHx+ZpNnq3jwpmfnXOM//DVEBcy5g4iPF
 zZd34jSFIY2KWoo1x+lQEqQ=
X-Google-Smtp-Source: APiQypI3c0dky0npRWJ2vqUNhjgaVx/d2aoSqIAgxb9oK5DJxVFZ+N0yGfof2GL4IhuULOChQShSDA==
X-Received: by 2002:a63:e607:: with SMTP id g7mr26503214pgh.303.1587569956501; 
 Wed, 22 Apr 2020 08:39:16 -0700 (PDT)
Received: from blackclown ([182.70.139.46])
 by smtp.gmail.com with ESMTPSA id m14sm5358050pgk.56.2020.04.22.08.39.14
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 22 Apr 2020 08:39:15 -0700 (PDT)
Date: Wed, 22 Apr 2020 21:09:00 +0530
From: Suraj Upadhyay <usuraj35@gmail.com>
To: jerome.pouiller@silabs.com, gregkh@linuxfoundation.org
Subject: [PATCH] staging: wfx: cleanup long lines in data_tx.c
Message-ID: <20200422153900.GA6184@blackclown>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Break lines with length over 80 characters to conform
to the linux coding style. Issue found by checkpatch.

Signed-off-by: Suraj Upadhyay <usuraj35@gmail.com>
---
 drivers/staging/wfx/data_tx.c | 25 +++++++++++++++++--------
 1 file changed, 17 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/wfx/data_tx.c b/drivers/staging/wfx/data_tx.c
index c30e4f5b6e2d..85ad94de20e5 100644
--- a/drivers/staging/wfx/data_tx.c
+++ b/drivers/staging/wfx/data_tx.c
@@ -165,7 +165,8 @@ static int wfx_tx_policy_upload(struct wfx_vif *wvif)
 		spin_lock_bh(&wvif->tx_policy_cache.lock);
 		for (i = 0; i < HIF_TX_RETRY_POLICY_MAX; ++i)
 			if (!policies[i].uploaded &&
-			    memzcmp(policies[i].rates, sizeof(policies[i].rates)))
+			    memzcmp(policies[i].rates,
+				    sizeof(policies[i].rates)))
 				break;
 		if (i < HIF_TX_RETRY_POLICY_MAX) {
 			policies[i].uploaded = true;
@@ -290,7 +291,8 @@ static void wfx_tx_fixup_rates(struct ieee80211_tx_rate *rates)
 		if (rates[i].idx == -1) {
 			rates[i].idx = 0;
 			rates[i].count = 8; // == hw->max_rate_tries
-			rates[i].flags = rates[i - 1].flags & IEEE80211_TX_RC_MCS;
+			rates[i].flags = rates[i - 1].flags &
+					 IEEE80211_TX_RC_MCS;
 			break;
 		}
 	}
@@ -318,7 +320,9 @@ static u8 wfx_tx_get_rate_id(struct wfx_vif *wvif,
 	return rate_id;
 }
 
-static struct hif_ht_tx_parameters wfx_tx_get_tx_parms(struct wfx_dev *wdev, struct ieee80211_tx_info *tx_info)
+static struct
+hif_ht_tx_parameters wfx_tx_get_tx_parms(struct wfx_dev *wdev,
+					 struct ieee80211_tx_info *tx_info)
 {
 	struct ieee80211_tx_rate *rate = &tx_info->driver_rates[0];
 	struct hif_ht_tx_parameters ret = { };
@@ -381,7 +385,8 @@ static int wfx_tx_inner(struct wfx_vif *wvif, struct ieee80211_sta *sta,
 	hif_msg->id = HIF_REQ_ID_TX;
 	hif_msg->interface = wvif->id;
 	if (skb->len > wvif->wdev->hw_caps.size_inp_ch_buf) {
-		dev_warn(wvif->wdev->dev, "requested frame size (%d) is larger than maximum supported (%d)\n",
+		dev_warn(wvif->wdev->dev,
+			 "requested frame size (%d) is larger than maximum supported (%d)\n",
 			 skb->len, wvif->wdev->hw_caps.size_inp_ch_buf);
 		skb_pull(skb, wmsg_len);
 		return -EIO;
@@ -394,7 +399,8 @@ static int wfx_tx_inner(struct wfx_vif *wvif, struct ieee80211_sta *sta,
 	// data for debug.
 	req->packet_id = queue_id << 28 |
 			 IEEE80211_SEQ_TO_SN(le16_to_cpu(hdr->seq_ctrl)) << 16 |
-			 (atomic_add_return(1, &wvif->wdev->packet_id) & 0xFFFF);
+			 (atomic_add_return(1, &wvif->wdev->packet_id) &
+			  0xFFFF);
 	req->data_flags.fc_offset = offset;
 	if (tx_info->flags & IEEE80211_TX_CTL_SEND_AFTER_DTIM)
 		req->data_flags.after_dtim = 1;
@@ -517,7 +523,8 @@ void wfx_tx_confirm_cb(struct wfx_vif *wvif, const struct hif_cnf_tx *arg)
 		if (tx_count < rate->count &&
 		    arg->status == HIF_STATUS_RETRY_EXCEEDED &&
 		    arg->ack_failures)
-			dev_dbg(wvif->wdev->dev, "all retries were not consumed: %d != %d\n",
+			dev_dbg(wvif->wdev->dev,
+				"all retries were not consumed: %d != %d\n",
 				rate->count, tx_count);
 		if (tx_count <= rate->count && tx_count &&
 		    arg->txed_rate != wfx_get_hw_rate(wvif->wdev, rate))
@@ -557,7 +564,8 @@ void wfx_tx_confirm_cb(struct wfx_vif *wvif, const struct hif_cnf_tx *arg)
 		else
 			tx_info->flags |= IEEE80211_TX_STAT_ACK;
 	} else if (arg->status == HIF_REQUEUE) {
-		WARN(!arg->tx_result_flags.requeue, "incoherent status and result_flags");
+		WARN(!arg->tx_result_flags.requeue,
+		     "incoherent status and result_flags");
 		if (tx_info->flags & IEEE80211_TX_CTL_SEND_AFTER_DTIM) {
 			wvif->after_dtim_tx_allowed = false; // DTIM period elapsed
 			schedule_work(&wvif->update_tim_work);
@@ -595,7 +603,8 @@ void wfx_flush(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
 		if (wait_event_timeout(wdev->tx_dequeue,
 				       wfx_tx_queue_empty(wdev, queue, vif_id),
 				       msecs_to_jiffies(1000)) <= 0)
-			dev_warn(wdev->dev, "frames queued while flushing tx queues?");
+			dev_warn(wdev->dev,
+				 "frames queued while flushing tx queues?");
 	}
 	wfx_tx_flush(wdev);
 	if (wdev->chip_frozen)
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
