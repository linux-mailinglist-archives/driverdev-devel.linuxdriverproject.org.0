Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E8B09141DB1
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 Jan 2020 13:04:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 991F38577F;
	Sun, 19 Jan 2020 12:04:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G0uyAQLcbn5C; Sun, 19 Jan 2020 12:04:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7AA2B853E5;
	Sun, 19 Jan 2020 12:04:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1436B1BF302
 for <devel@linuxdriverproject.org>; Sun, 19 Jan 2020 12:04:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 10ACA874AB
 for <devel@linuxdriverproject.org>; Sun, 19 Jan 2020 12:04:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Mikwn2YVZJXJ for <devel@linuxdriverproject.org>;
 Sun, 19 Jan 2020 12:04:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3FB1F87475
 for <devel@driverdev.osuosl.org>; Sun, 19 Jan 2020 12:04:09 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id q10so26701096wrm.11
 for <devel@driverdev.osuosl.org>; Sun, 19 Jan 2020 04:04:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=VHpzohIDN436Hmx2m0b7IgdBERl5kehK/IrqKraNdPs=;
 b=uUcLyTpYUWdf6xjKiV2t4Mz7+7DUnns1iAhQBm1BE1+D9LbNIUmHkAE/C9sEsMAFfP
 n1k0mWM7EmWKbLwInXEmqflJTUaNiajk5Zl5d7aCjNPf+CLHp6PIe7dXS3U4i2kchdDm
 wRc/SorRdVmsddxtlON0Qj222OAq+7XftMgqAo4WSSkiNzDHnGY97Ax6CFyHgU9c5jpq
 5ID3mdcAVnM7zZI6y0vWul9RkUcjj3M1lZR2U+NHEvs7Jx6uBiVQsrIyw8b/XBBbx0UT
 F0LYC2DY3qITxTcGeLDfT8V4/tJ3gE0lzEkUxyq0lHENAYUh4JQA48a6v8TTcjPJNtA0
 9sLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=VHpzohIDN436Hmx2m0b7IgdBERl5kehK/IrqKraNdPs=;
 b=NSdqeOC/ceXEwghk3KeiBCiw9aDRYxYWavOv+BG+/iWhtdeLdcqwPL6+tKe3nrBPUw
 0z2P04bmRqog6CBnF6DRcN6pw4tKOC3SmRh0xakRr1ank8pZZypXhB85BJE0nN88gAOX
 co6sNcxRj7vQJtzbTgAOIuTm4l3BPxpuH5XB3P0hdgRbX83UMdghepPVDMRuEtklkPHt
 PLSzFPCNQiWy/3jI5ueeySG75JiY0NgOE55lCOwbWTkp3D/mjtWkhnMpArZ+aEOe8zUA
 SNRdeT7rqEa10N0K+uER+NnDob/6r/RBFTdmiv7tjNIkW8MZjc7o1OlNCv6fDLPFiWtJ
 0g1A==
X-Gm-Message-State: APjAAAUFR7RucYIKKG48kj2xzMC4lHrJEPcMNRUZvPRYKZPVQcOCF5o6
 lLgRBKTuPes+57H3kSRPmGjLQtLF
X-Google-Smtp-Source: APXvYqxY+pKlqWDO2Y/y3ajGujuY0LoMgtuV/fU9RzavgDIlzwP1sSuUwEgW0Rq57peqd1Vla37T3A==
X-Received: by 2002:a5d:46c7:: with SMTP id g7mr13066065wrs.11.1579435447571; 
 Sun, 19 Jan 2020 04:04:07 -0800 (PST)
Received: from [192.168.43.18] (92.40.176.73.threembb.co.uk. [92.40.176.73])
 by smtp.gmail.com with ESMTPSA id q3sm124576wmc.47.2020.01.19.04.04.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 19 Jan 2020 04:04:07 -0800 (PST)
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH 4/5] staging: vt6656: Just check NEWRSR_DECRYPTOK for
 RX_FLAG_DECRYPTED.
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <75bbaa08-2465-b057-64ce-b67933409bc6@gmail.com>
Date: Sun, 19 Jan 2020 12:04:05 +0000
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

At present the driver does a number of checks for RX_FLAG_DECRYPTED.

Remove all these and just pass check NEWRSR_DECRYPTOK mac80211
will handle the processing of the sk_buff and dispose of it.

This means that mac80211 can do unsupported encryption modes
on stack.

Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/dpc.c | 18 ++----------------
 1 file changed, 2 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/vt6656/dpc.c b/drivers/staging/vt6656/dpc.c
index 981de5687341..821aae8ca402 100644
--- a/drivers/staging/vt6656/dpc.c
+++ b/drivers/staging/vt6656/dpc.c
@@ -30,10 +30,8 @@ int vnt_rx_data(struct vnt_private *priv, struct vnt_rcb *ptr_rcb,
 	struct ieee80211_supported_band *sband;
 	struct sk_buff *skb;
 	struct ieee80211_rx_status *rx_status;
-	struct ieee80211_hdr *hdr;
 	struct vnt_rx_header *head;
 	struct vnt_rx_tail *tail;
-	__le16 fc;
 	u32 frame_size;
 	int ii;
 	u16 rx_bitrate, pay_load_with_padding;
@@ -115,22 +113,10 @@ int vnt_rx_data(struct vnt_private *priv, struct vnt_rcb *ptr_rcb,
 	if (!(tail->rsr & RSR_CRCOK))
 		rx_status->flag |= RX_FLAG_FAILED_FCS_CRC;
 
-	hdr = (struct ieee80211_hdr *)(skb->data);
-	fc = hdr->frame_control;
-
 	rx_status->rate_idx = rate_idx;
 
-	if (ieee80211_has_protected(fc)) {
-		if (priv->local_id > REV_ID_VT3253_A1) {
-			rx_status->flag |= RX_FLAG_DECRYPTED;
-
-			/* Drop packet */
-			if (!(tail->new_rsr & NEWRSR_DECRYPTOK)) {
-				dev_kfree_skb(skb);
-				return true;
-			}
-		}
-	}
+	if (tail->new_rsr & NEWRSR_DECRYPTOK)
+		rx_status->flag |= RX_FLAG_DECRYPTED;
 
 	ieee80211_rx_irqsafe(priv->hw, skb);
 
-- 
2.24.0
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
