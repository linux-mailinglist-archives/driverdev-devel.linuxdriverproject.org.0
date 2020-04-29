Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC0AC1BE65C
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Apr 2020 20:39:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A458D88461;
	Wed, 29 Apr 2020 18:39:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZXD3pxExQHul; Wed, 29 Apr 2020 18:39:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2CB9F87DB1;
	Wed, 29 Apr 2020 18:39:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D6C5C1BF59F
 for <devel@linuxdriverproject.org>; Wed, 29 Apr 2020 18:39:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BD55920498
 for <devel@linuxdriverproject.org>; Wed, 29 Apr 2020 18:39:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nvEFMxF8C9RV for <devel@linuxdriverproject.org>;
 Wed, 29 Apr 2020 18:39:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 4504B20492
 for <devel@driverdev.osuosl.org>; Wed, 29 Apr 2020 18:39:07 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id z6so3153258wml.2
 for <devel@driverdev.osuosl.org>; Wed, 29 Apr 2020 11:39:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=2b18ysXI32I8mHEzjma7PL/yS9Aub1eqd1HMHVebyB4=;
 b=J35UU2p9u1+cHQRXZPr/wVc9wtLHvFS/uQwBXFnd6IVNAmOV73DJ7v70bUsHCXL1KU
 IyEGsAvDLYkCVLxiBFYXJ373FM0rtaMhskvdzdn4Cs8RdlOjMc3zUHo4NY/9VbMUhzWp
 y/SOE0lLpVxrBdW/Mj6Oq6x2LZ6I80kLNa9SZvDtGGXDR82SmmwBMhPntpJKUiRTgYqi
 etBJThCWQ4vsstuxFcTE+B2szQp4niRwvwwwbKaXkq729mmrFuWLBQf6GDiENaTfgR7/
 qJ2W3UnJS1O2qaAdyU52Otvjg6dcLi9d+DmKn/NPW5ZWxy+Fn9p7a+T4Yr3qyl8DojeG
 3E1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=2b18ysXI32I8mHEzjma7PL/yS9Aub1eqd1HMHVebyB4=;
 b=nKQffyzqQ4+6isxhPwAWPlUP+O6F9VebZxXv186SjvFTWswi6sFJ1a4YO11p3X1gT3
 Ls/H8xO6ATwXU90e0CIfo1idX7IBavKB+tkVQtuyAvny55ejcJO3FtH8GouvAnn3J4Bb
 hc2nkHBCZiZyA57PuepsbO+545dGw4bUp3/yD0BKSWbNrnx3LMK+CTRH9XrpGfX/Rhcn
 XXFeArcMLwwkVtJaw/VcyZEviqPzBzohHyhib7uKuhJgMCqGH6tzM5BKP4RmqAhISWfQ
 SMft1jkzsHsFXR7BAVM1wbaV9RrYJYeOeimtl0ROLlrD8lpQy89bkrp9XYvu386oH2vX
 d+nQ==
X-Gm-Message-State: AGi0PuYWJxPBchHxQ1EnrXW17Ns6eC4hfGtCsnj3NbFXeURWlT4pyXHc
 0xcuBAyFSK+pq6JiqQXVZXI=
X-Google-Smtp-Source: APiQypLEXo2qyodrHD3T4LGV0PDMnIAeChRnBgROobFW6BWed6hg92O1RPKer2m/T9QqLNPo3XnMcA==
X-Received: by 2002:a1c:a9c3:: with SMTP id s186mr4686917wme.89.1588185545469; 
 Wed, 29 Apr 2020 11:39:05 -0700 (PDT)
Received: from [192.168.43.18] (188.29.164.11.threembb.co.uk. [188.29.164.11])
 by smtp.gmail.com with ESMTPSA id
 f23sm8632510wml.4.2020.04.29.11.39.04
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 29 Apr 2020 11:39:04 -0700 (PDT)
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH 1/3] staging: vt6656: vnt_set_keymode simplify key modes.
Message-ID: <0eb6f5bb-f756-ab1d-5b63-db9b0dc422da@gmail.com>
Date: Wed, 29 Apr 2020 19:39:03 +0100
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

Unused macros and onfly_latch are removed and others contain
to actual key_type value is or-ed with key_mode.

Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/key.c | 25 +++++++++----------------
 drivers/staging/vt6656/key.h | 13 +++++++------
 2 files changed, 16 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/vt6656/key.c b/drivers/staging/vt6656/key.c
index ac3b188984d0..47338077c033 100644
--- a/drivers/staging/vt6656/key.c
+++ b/drivers/staging/vt6656/key.c
@@ -35,7 +35,7 @@ int vnt_key_init_table(struct vnt_private *priv)
 
 static int vnt_set_keymode(struct ieee80211_hw *hw, u8 *mac_addr,
 			   struct ieee80211_key_conf *key, u32 key_type,
-			   u32 mode, bool onfly_latch)
+			   u32 mode)
 {
 	struct vnt_private *priv = hw->priv;
 	u8 broadcast[6] = {0xff, 0xff, 0xff, 0xff, 0xff, 0xff};
@@ -68,17 +68,11 @@ static int vnt_set_keymode(struct ieee80211_hw *hw, u8 *mac_addr,
 		entry = MAX_KEY_TABLE - 1;
 		key->hw_key_idx = entry;
 		/* fall through */
-	case VNT_KEY_ALLGROUP:
-		key_mode |= VNT_KEY_ALLGROUP;
-		if (onfly_latch)
-			key_mode |= VNT_KEY_ONFLY_ALL;
-		/* fall through */
 	case VNT_KEY_GROUP_ADDRESS:
-		key_mode |= mode;
-		/* fall through */
+		key_mode = mode | (mode << 4);
+		break;
 	case VNT_KEY_GROUP:
-		key_mode |= (mode << 4);
-		key_mode |= VNT_KEY_GROUP;
+		key_mode = mode << 4;
 		break;
 	case  VNT_KEY_PAIRWISE:
 		key_mode |= mode;
@@ -88,8 +82,7 @@ static int vnt_set_keymode(struct ieee80211_hw *hw, u8 *mac_addr,
 		return -EINVAL;
 	}
 
-	if (onfly_latch)
-		key_mode |= VNT_KEY_ONFLY;
+	key_mode |= key_type;
 
 	if (mode == KEY_CTL_WEP) {
 		if (key->keylen == WLAN_KEY_LEN_WEP40)
@@ -126,7 +119,7 @@ int vnt_set_keys(struct ieee80211_hw *hw, struct ieee80211_sta *sta,
 			vnt_mac_disable_keyentry(priv, u);
 
 		vnt_set_keymode(hw, mac_addr, key, VNT_KEY_DEFAULTKEY,
-				KEY_CTL_WEP, true);
+				KEY_CTL_WEP);
 
 		key->flags |= IEEE80211_KEY_FLAG_GENERATE_IV;
 
@@ -152,10 +145,10 @@ int vnt_set_keys(struct ieee80211_hw *hw, struct ieee80211_sta *sta,
 
 	if (key->flags & IEEE80211_KEY_FLAG_PAIRWISE)
 		vnt_set_keymode(hw, mac_addr, key, VNT_KEY_PAIRWISE,
-				key_dec_mode, true);
+				key_dec_mode);
 	else
-		vnt_set_keymode(hw, mac_addr, key, VNT_KEY_GROUP_ADDRESS,
-				key_dec_mode, true);
+		vnt_set_keymode(hw, mac_addr, key,
+				VNT_KEY_GROUP_ADDRESS, key_dec_mode);
 
 	return 0;
 }
diff --git a/drivers/staging/vt6656/key.h b/drivers/staging/vt6656/key.h
index 918c07cf86cd..1f3449e66143 100644
--- a/drivers/staging/vt6656/key.h
+++ b/drivers/staging/vt6656/key.h
@@ -25,13 +25,14 @@
 #define KEY_CTL_TKIP        0x02
 #define KEY_CTL_CCMP        0x03
 
-#define VNT_KEY_DEFAULTKEY	0x1
-#define VNT_KEY_GROUP_ADDRESS	0x2
-#define VNT_KEY_ALLGROUP	0x4
-#define VNT_KEY_GROUP		0x40
-#define VNT_KEY_PAIRWISE	0x00
-#define VNT_KEY_ONFLY		0x8000
 #define VNT_KEY_ONFLY_ALL	0x4000
+#define VNT_KEY_ONFLY		0x8000
+#define VNT_KEY_ALLGROUP	0x04
+#define VNT_KEY_GROUP		0x40
+#define VNT_KEY_PAIRWISE	VNT_KEY_ONFLY
+#define VNT_KEY_GROUP_ADDRESS	(VNT_KEY_ALLGROUP | VNT_KEY_GROUP)
+#define VNT_KEY_DEFAULTKEY	(VNT_KEY_GROUP_ADDRESS | VNT_KEY_ONFLY |\
+				VNT_KEY_ONFLY_ALL)
 
 int vnt_key_init_table(struct vnt_private *priv);
 
-- 
2.25.1
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
