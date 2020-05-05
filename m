Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B1C1C62BC
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 May 2020 23:14:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1848886EE3;
	Tue,  5 May 2020 21:14:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u18kbb1_aPej; Tue,  5 May 2020 21:14:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EB8F486CF5;
	Tue,  5 May 2020 21:14:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9C05B1BF3D4
 for <devel@linuxdriverproject.org>; Tue,  5 May 2020 21:13:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 97CE988808
 for <devel@linuxdriverproject.org>; Tue,  5 May 2020 21:13:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CrbbXh6er282 for <devel@linuxdriverproject.org>;
 Tue,  5 May 2020 21:13:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A9E0D88800
 for <devel@driverdev.osuosl.org>; Tue,  5 May 2020 21:13:58 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id k12so167471wmj.3
 for <devel@driverdev.osuosl.org>; Tue, 05 May 2020 14:13:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=SxoGNbx/SjEjX8E4Hfylau22uU5ODb774u0e2Ds9cX0=;
 b=cjRXihmYVgY/DEY8cx0GirJlX5d3QDZS3HLWZypl+C3mRXPKi6AmMRU3Tv6Sr/kVT1
 NZRFD9jfn9uAzz3EhgpSBmBiXDHw55duZKGWHD7JGJ0jI5zLXVOJh8YpEvee1RCZSDiG
 SAbMrIK2xGfBPCy5ofR1bv1E4Y4ZdvShBmeCtUHjg/uDqMEcMC0x7VVqbp6yQJNyD5ua
 RnyMKn5gjA4ZXIIYooDX4ceVnJS8+SP4L1h6BsyBwM93KLmIk2iDMdd/m37OpolmU9GP
 blYT8Zjy8lGrenpsCgEyXgO06hPQHSzJdujvSJz0Un3qKcR8VcK+NsCuyIz8VTajp1DD
 FDlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=SxoGNbx/SjEjX8E4Hfylau22uU5ODb774u0e2Ds9cX0=;
 b=A41j80e8Wnb4G90qIuZqkMARPXKSsklDNbmFDYxSdLlVZo2nXJNSRqCHqgyHKxKziK
 8QrqPsJ1yanlIKOOpIs4Xr/1sQC2VAr4uQiOpi0HQnSrKUuhpr78GwhdPo39WHVrOwlW
 kHMIeSBa8Pnf3C0xGGhhPi5C5ZMrhX9GAMB0IYSmIO5ChIkwPQrwn8vYVgGVhpwyUZGM
 d9Sq3iGgURbRokpvQAZusHA9SW7Y0dM41kF09SW/8bFq4VRZce4A8echuomTEnd3wPxw
 NaxioczpeBflGK5JYNhBMwRMnPI8oiXNWsenTs3WT7nuoUAwAToene6/Nyz171yTDZlA
 gqIw==
X-Gm-Message-State: AGi0PuYMESkn+YMLQoLi17CYrV6T+NeXacgJHSVdh224DttjjOeVDef3
 VZHFNzsqXY9NKacaZ12aBxw=
X-Google-Smtp-Source: APiQypJgxGTND2E1DiYbST1RbWViLXfQvDD+e1P9B+SUKy7ccWb4fMfiookyvbBlS6BCs3HgStu/Iw==
X-Received: by 2002:a1c:bc08:: with SMTP id m8mr521963wmf.119.1588713237066;
 Tue, 05 May 2020 14:13:57 -0700 (PDT)
Received: from [192.168.43.18] (188.29.165.117.threembb.co.uk.
 [188.29.165.117])
 by smtp.gmail.com with ESMTPSA id a8sm5280774wrg.85.2020.05.05.14.13.55
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 05 May 2020 14:13:56 -0700 (PDT)
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH 2/6] staging: vt6656: vnt_get_rtscts_duration_le use
 ieee80211_rts_duration
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <377a4cc3-cfe3-91aa-cf71-1063f311426a@gmail.com>
Date: Tue, 5 May 2020 22:13:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
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
 Oscar Carter <oscar.carter@gmx.com>, linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

use the mac80211 ieee80211_rts_duration for RTS frames.

Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/rxtx.c | 20 +++++---------------
 1 file changed, 5 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/vt6656/rxtx.c b/drivers/staging/vt6656/rxtx.c
index 6724b213a723..48fe16c27d3f 100644
--- a/drivers/staging/vt6656/rxtx.c
+++ b/drivers/staging/vt6656/rxtx.c
@@ -285,28 +285,18 @@ static __le16 vnt_get_rtscts_duration_le(struct vnt_usb_send_context *context,
 					 u8 dur_type, u8 pkt_type, u16 rate)
 {
 	struct vnt_private *priv = context->priv;
-	u32 cts_time = 0, dur_time = 0;
+	u32 dur_time = 0;
 	u32 frame_length = context->frame_len;
 	u8 need_ack = context->need_ack;
+	struct ieee80211_tx_info *info = IEEE80211_SKB_CB(context->skb);
 
 	switch (dur_type) {
+	/* fall through */
 	case RTSDUR_BB:
 	case RTSDUR_BA:
-		cts_time = vnt_get_frame_time(priv->preamble_type, pkt_type,
-					      14, priv->top_cck_basic_rate);
-		dur_time = cts_time + 2 * priv->sifs +
-			vnt_get_rsvtime(priv, pkt_type,
-					frame_length, rate, need_ack);
-		break;
-
 	case RTSDUR_AA:
-		cts_time = vnt_get_frame_time(priv->preamble_type, pkt_type,
-					      14, priv->top_ofdm_basic_rate);
-		dur_time = cts_time + 2 * priv->sifs +
-			vnt_get_rsvtime(priv, pkt_type,
-					frame_length, rate, need_ack);
-		break;
-
+		return ieee80211_rts_duration(priv->hw, priv->vif,
+					      context->frame_len, info);
 	case CTSDUR_BA:
 		dur_time = priv->sifs + vnt_get_rsvtime(priv,
 				pkt_type, frame_length, rate, need_ack);
-- 
2.25.1
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
