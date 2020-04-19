Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 65DC41AF98C
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 Apr 2020 13:21:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3175F86174;
	Sun, 19 Apr 2020 11:21:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tUdlrVDpJI0t; Sun, 19 Apr 2020 11:21:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C7414857A4;
	Sun, 19 Apr 2020 11:20:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 892621BF5AA
 for <devel@linuxdriverproject.org>; Sun, 19 Apr 2020 11:20:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 86420852FE
 for <devel@linuxdriverproject.org>; Sun, 19 Apr 2020 11:20:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r73tJ9GDueCc for <devel@linuxdriverproject.org>;
 Sun, 19 Apr 2020 11:20:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BDB3885166
 for <devel@driverdev.osuosl.org>; Sun, 19 Apr 2020 11:20:56 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id u127so6829613wmg.1
 for <devel@driverdev.osuosl.org>; Sun, 19 Apr 2020 04:20:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=oqIZa3zYdSKtfEDW9ORxtSFvOk9NL3nLKI1j4QeSOmQ=;
 b=Bi0/GvMW65TgGIUxdL7xdk4vUKiw75Y3eeIbhx/Hf8Ct93Lh3J9p2G7NAdrwrRJTZ4
 u/sYbkMNGWcyMu+n9L7PpzSe8it37ZEqkXaoy8csZlthHAv51yHP8Bk56SJaV9BOXybI
 VkC0PosRPTZ5Jwg5SE2KlUgUs3JKc5/8RwK/wLKs9w7STzfDsVw8cZqdjuHKQdxR0Wsz
 qvpcwE+xPiqkd0KAKzOvSEev/uSuw6mh8ZVx4L10+Uvj/GlLvhFek+nvwVw0TdxspHns
 5Zxf3N34FfJxK/tugrNxVLGfjiYvRwSAxNhnyEd75Ec+RogEg+CG1gWBxc3uTK2k8lxg
 8rHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=oqIZa3zYdSKtfEDW9ORxtSFvOk9NL3nLKI1j4QeSOmQ=;
 b=k99gMp6+eZlxGahDuLJa5BP02Nfv0imSEbgfqPJMrbxxjzoiU/Lrr1+gk2DmvkbTkm
 edKF2zamDNf/mKE6XPTNCB3ZMDcPZV+j5XHdcBWp+b7TZLnQ1a0egqBE8bRknjb2AmVb
 +TM1ckJGKgNpBVW2BxtM+T91IS9a/hDdRc3vwRupA946hYrJhPiEnLR78cilOYD3M7Gj
 NHTXcX5Jf2CyjMOlWhVPSdyijxBE1WaLyWFkNV+twB4DIB+bnpEFv2b/GdP96rvQCV3F
 c8/EVlYWWJTk4U2Dj8/wRedieRfj1cpb1mGN6FXdbrzTm9vp5yWzHENAr1LrG8Mm3wam
 NDQA==
X-Gm-Message-State: AGi0PuYiCM83ZxQrkHOv48H9hFr9StDx8GYfKLqSxxctui0/EOsuuhwL
 aS4Exsei0NJJoxJ/0qhkiAo=
X-Google-Smtp-Source: APiQypITdwLs5sm4fkLQ+Cc9wBCnJAbhHoWvcC9iP4kttxUEj+2b/aAk0pp922KwhaduX4klj4gh6A==
X-Received: by 2002:a1c:ba56:: with SMTP id k83mr12141163wmf.1.1587295255163; 
 Sun, 19 Apr 2020 04:20:55 -0700 (PDT)
Received: from [192.168.43.18] (188.29.165.57.threembb.co.uk. [188.29.165.57])
 by smtp.gmail.com with ESMTPSA id
 h2sm14536720wmb.16.2020.04.19.04.20.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 19 Apr 2020 04:20:54 -0700 (PDT)
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH] staging: vt6656: call vnt_update_pre_ed_threshold from
 vnt_config.
Message-ID: <1b00c112-347c-b0bb-61ed-a874ee448ff8@gmail.com>
Date: Sun, 19 Apr 2020 12:20:52 +0100
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

vnt_update_pre_ed_threshold needs to be updated more often so
call from vnt_config where it updated on any of config changes.

It must have maximum sensitivity when the device is off channel
or idle.

Remove all the other calls in scanning and bss.

Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/main_usb.c | 28 ++++++----------------------
 1 file changed, 6 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
index 3268d86fe93b..4bca0b99cf45 100644
--- a/drivers/staging/vt6656/main_usb.c
+++ b/drivers/staging/vt6656/main_usb.c
@@ -763,6 +763,12 @@ static int vnt_config(struct ieee80211_hw *hw, u32 changed)
 	if (changed & IEEE80211_CONF_CHANGE_POWER)
 		vnt_rf_setpower(priv, conf->chandef.chan);
 
+	if (conf->flags & (IEEE80211_CONF_OFFCHANNEL | IEEE80211_CONF_IDLE))
+		/* Set max sensitivity*/
+		vnt_update_pre_ed_threshold(priv, true);
+	else
+		vnt_update_pre_ed_threshold(priv, false);
+
 	return 0;
 }
 
@@ -810,7 +816,6 @@ static void vnt_bss_info_changed(struct ieee80211_hw *hw,
 
 		vnt_set_short_slot_time(priv);
 		vnt_set_vga_gain_offset(priv, priv->bb_vga[0]);
-		vnt_update_pre_ed_threshold(priv, false);
 	}
 
 	if (changed & (BSS_CHANGED_BASIC_RATES | BSS_CHANGED_ERP_PREAMBLE |
@@ -937,25 +942,6 @@ static int vnt_set_key(struct ieee80211_hw *hw, enum set_key_cmd cmd,
 	return 0;
 }
 
-static void vnt_sw_scan_start(struct ieee80211_hw *hw,
-			      struct ieee80211_vif *vif,
-			      const u8 *addr)
-{
-	struct vnt_private *priv = hw->priv;
-
-	/* Set max sensitivity*/
-	vnt_update_pre_ed_threshold(priv, true);
-}
-
-static void vnt_sw_scan_complete(struct ieee80211_hw *hw,
-				 struct ieee80211_vif *vif)
-{
-	struct vnt_private *priv = hw->priv;
-
-	/* Return sensitivity to channel level*/
-	vnt_update_pre_ed_threshold(priv, false);
-}
-
 static int vnt_get_stats(struct ieee80211_hw *hw,
 			 struct ieee80211_low_level_stats *stats)
 {
@@ -1001,8 +987,6 @@ static const struct ieee80211_ops vnt_mac_ops = {
 	.prepare_multicast	= vnt_prepare_multicast,
 	.configure_filter	= vnt_configure,
 	.set_key		= vnt_set_key,
-	.sw_scan_start		= vnt_sw_scan_start,
-	.sw_scan_complete	= vnt_sw_scan_complete,
 	.get_stats		= vnt_get_stats,
 	.get_tsf		= vnt_get_tsf,
 	.set_tsf		= vnt_set_tsf,
-- 
2.25.1
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
