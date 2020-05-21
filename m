Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62BB51DCA76
	for <lists+driverdev-devel@lfdr.de>; Thu, 21 May 2020 11:49:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3288F891E0;
	Thu, 21 May 2020 09:49:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1c86AGYaYDJr; Thu, 21 May 2020 09:49:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A320F89170;
	Thu, 21 May 2020 09:49:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AAD6E1BF47D
 for <devel@linuxdriverproject.org>; Thu, 21 May 2020 09:49:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9B5E92314E
 for <devel@linuxdriverproject.org>; Thu, 21 May 2020 09:49:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U1K6MEi5tVAQ for <devel@linuxdriverproject.org>;
 Thu, 21 May 2020 09:49:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 66505204E9
 for <devel@driverdev.osuosl.org>; Thu, 21 May 2020 09:49:44 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id s8so6005128wrt.9
 for <devel@driverdev.osuosl.org>; Thu, 21 May 2020 02:49:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=L5hgR3ScM9kCl+6+EZ5ctodeKVTcZYOKQzyH7lseAGo=;
 b=IfqQfFH+DZUfo3RHEKmYBDR4aCE116Cz2ouRa1kJsa7QwgM/TVw0n9mLEvr/NCvAzT
 2iOOmlhzolHWfUH91wvid/FIXKuy8aEaK5t7XEqkhAPA+ZZStmXRqXJ1jcAwmDZx++SU
 bwBs0A1MpvAtA/nBjtZfYKXy+Dp2dwwgz2UpI01m7etx+vpfze3xlfZyycfncssQomOY
 +10hq+OP4bIfjUYUQedfhsCKjsgTm8Pmc+YSpXY6VONLTYi1bWvd6UwuoAfIgxj6eW7L
 bCfBgPNBS+rIBDQvMiWhJ/g5RDN9vzZIj+GHbzqhKJAk5LBPtSX2aonGCoE7rvvNaCk7
 0jWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=L5hgR3ScM9kCl+6+EZ5ctodeKVTcZYOKQzyH7lseAGo=;
 b=DGhxwYiM/CyenlAu4ednSVaf/xf8nCo19CZS8SIoxRP2h8vbxjDcleNj+jtwJ2ewtY
 Wxijlv9s1e34vV+oBS42n8GXKfEeazQkYQjvkrjsJ1VuFyN9h9f/APrghaWhIFIRPrcC
 9lLYu94hqTZeJ7gBt30UygxlyQG3XLHjEiDg05auTuR4IAfSsEJasyPJ/W9F1BIOd4kC
 m+M/Uql8PL5RtBPCnkf9GxnhC4q++VFN1cn4+h3MY2Stc2ns3RN4igtv40Elzw9CPhjj
 R/aeQttRauO2Z5z/VVhmMWAcmZA2FVh8VJrkv989MFX9xBrhOsR3KlDpfq6YIS3smWGm
 cW+w==
X-Gm-Message-State: AOAM531VB5ZAGI8rP1PIyH8yWa8bhulkRUALN1TgbGHA2xiUNkR49Qi8
 c7T7lOHuJ5/PcaW2n6JJFUe9h4lWU5rsbA==
X-Google-Smtp-Source: ABdhPJw0BQBqdBSBX01iSr3Hrw293C4Q1sSJ3xSWwi9lk0bO9qkMwq0ntFa6d3DAoTtStKHkf7A4tw==
X-Received: by 2002:a5d:61d2:: with SMTP id q18mr7503030wrv.46.1590054582943; 
 Thu, 21 May 2020 02:49:42 -0700 (PDT)
Received: from [192.168.43.18] ([85.255.237.70])
 by smtp.gmail.com with ESMTPSA id p7sm5916815wmg.38.2020.05.21.02.49.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 21 May 2020 02:49:42 -0700 (PDT)
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH 08/10] staging: vt6656: Move tx_key inside vnt_fill_txkey.
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <1b964a6c-5cf7-e675-cf53-3a632acc0be9@gmail.com>
Date: Thu, 21 May 2020 10:49:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
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

tx_key can be got directly from info.

Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/rxtx.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/vt6656/rxtx.c b/drivers/staging/vt6656/rxtx.c
index b9164142e2b5..a0672ca51138 100644
--- a/drivers/staging/vt6656/rxtx.c
+++ b/drivers/staging/vt6656/rxtx.c
@@ -382,12 +382,11 @@ static void vnt_generate_tx_parameter(struct vnt_usb_send_context *tx_context,
 	vnt_rxtx_ab(tx_context, &tx_buffer->tx_head);
 }
 
-static void vnt_fill_txkey(struct vnt_tx_buffer *tx_buffer,
-			   struct ieee80211_key_conf *tx_key,
-			   struct sk_buff *skb)
+static void vnt_fill_txkey(struct vnt_tx_buffer *tx_buffer, struct sk_buff *skb)
 {
 	struct vnt_tx_fifo_head *fifo = &tx_buffer->fifo_head;
 	struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);
+	struct ieee80211_key_conf *tx_key = info->control.hw_key;
 	struct vnt_mic_hdr *mic_hdr;
 	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
 	u64 pn64;
@@ -629,7 +628,7 @@ int vnt_tx_packet(struct vnt_private *priv, struct sk_buff *skb)
 	if (info->control.hw_key) {
 		tx_key = info->control.hw_key;
 		if (tx_key->keylen > 0)
-			vnt_fill_txkey(tx_buffer, tx_key, skb);
+			vnt_fill_txkey(tx_buffer, skb);
 	}
 
 	priv->seq_counter = (le16_to_cpu(hdr->seq_ctrl) &
-- 
2.25.1


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
