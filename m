Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 571851AF509
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 Apr 2020 23:02:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3238E85C4C;
	Sat, 18 Apr 2020 21:01:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id psCe38oX64eP; Sat, 18 Apr 2020 21:01:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E31808506B;
	Sat, 18 Apr 2020 21:01:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 08CB81BF288
 for <devel@linuxdriverproject.org>; Sat, 18 Apr 2020 21:01:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 00C7586223
 for <devel@linuxdriverproject.org>; Sat, 18 Apr 2020 21:01:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qRdlJsff2fbp for <devel@linuxdriverproject.org>;
 Sat, 18 Apr 2020 21:01:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8465D8676A
 for <devel@driverdev.osuosl.org>; Sat, 18 Apr 2020 21:01:53 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id a81so6852150wmf.5
 for <devel@driverdev.osuosl.org>; Sat, 18 Apr 2020 14:01:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=Tew4LyoxzA+8ILWEXdL0lFb7J9u5PLFyT03YNQBKChg=;
 b=F8r8Z8+lxpoNLyuAFsfsg/0P0LI6N6cu6MGEi+HuAs5pInsvLfGjMGBnY39BE2sfl6
 W3uks9BewWlC/Wa812eMmggSnb+xLWPWOOkD0DAJQLd9/xd21lX14Twl5MgJUd2kmWMT
 zV+JU0dH4WujxA3EZRQU9Vr8w6RQhVGoFL0xz9htv9w4ME4johhT6u+116e7ZaEytr+Z
 OAqG2TlScZDItFPEnmvtTxXLp+jkFuA7BbAw8xDUKgIE56zX9A2g4RB2Y9OHRgQM0GFz
 T2QY7vQgkMXMyRAruvF98+Agv2xSD3KA/52l1Kxft9mB53a/+RuwED4SJG3YNiNaS76X
 CfQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=Tew4LyoxzA+8ILWEXdL0lFb7J9u5PLFyT03YNQBKChg=;
 b=SMM+6uudYdBN7G/fHEy2LbkUCBeU+tgz7wfvWOa3Yn2gmPwi66zFGkFTtKc+Si1Qgv
 s4qBQ6wrZyR7he6AMxGKVB8CUNZR899uk/+AFyJuz1qvamFGKWYVnG/G7qZ9wTWbnigj
 e3sjI4MjJIW3vji9kQB1IAvq97ZtvcRoOt8fg3mN9ITzH5VdnUiBZ2QyG+Rjc85IYDOF
 8mW00YgbcbBkdNypooLt7MffGr4GJkldd4N2hV03Ki9vkFaQUBVM0mfP29KNMi+oaAMn
 9JPDSksEXvOB/m5eP0H8ymugWVHSVNTL82ahGL/vpnYFCMJMiEW3gRcDmDuHrk9f0bGb
 bXLg==
X-Gm-Message-State: AGi0PuZmKNVyttdmlMQVmwNSw/GzJIX/5254uKg2MebRX0jO/TMjdKf1
 1h4aF/jbLaMO8tiABa1XixM=
X-Google-Smtp-Source: APiQypLFblHzAOCz0/khHHmy6cToLYeZ5WeBveLHvJcfFrR5yZ9CgZGiiMJOSVDVvvmc8m7wruks1w==
X-Received: by 2002:a1c:6787:: with SMTP id
 b129mr10170101wmc.165.1587243712068; 
 Sat, 18 Apr 2020 14:01:52 -0700 (PDT)
Received: from [192.168.43.18] (188.29.165.57.threembb.co.uk. [188.29.165.57])
 by smtp.gmail.com with ESMTPSA id
 17sm12834027wmo.2.2020.04.18.14.01.50
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 18 Apr 2020 14:01:51 -0700 (PDT)
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH] staging: vt6656: Fix pairwise key entry save.
Message-ID: <da2f7e7f-1658-1320-6eee-0f55770ca391@gmail.com>
Date: Sat, 18 Apr 2020 22:01:49 +0100
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
 Oscar Carter <oscar.carter@gmx.com>, linux-wireless@vger.kernel.org,
 stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The problem is that the group key was saved as VNT_KEY_DEFAULTKEY
was over written by the VNT_KEY_GROUP_ADDRESS index.

mac80211 could not clear the mac_addr in the default key.

The VNT_KEY_DEFAULTKEY is not necesscary so remove it and set as
VNT_KEY_GROUP_ADDRESS.

mac80211 can clear any key using vnt_mac_disable_keyentry.
 
Fixes: f9ef05ce13e4 ("staging: vt6656: Fix pairwise key for non station modes")
Cc: stable <stable@vger.kernel.org>
Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/key.c      | 14 +++-----------
 drivers/staging/vt6656/main_usb.c |  6 +++++-
 2 files changed, 8 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/vt6656/key.c b/drivers/staging/vt6656/key.c
index 41b73f9670e2..ac3b188984d0 100644
--- a/drivers/staging/vt6656/key.c
+++ b/drivers/staging/vt6656/key.c
@@ -83,9 +83,6 @@ static int vnt_set_keymode(struct ieee80211_hw *hw, u8 *mac_addr,
 	case  VNT_KEY_PAIRWISE:
 		key_mode |= mode;
 		key_inx = 4;
-		/* Don't save entry for pairwise key for station mode */
-		if (priv->op_mode == NL80211_IFTYPE_STATION)
-			clear_bit(entry, &priv->key_entry_inuse);
 		break;
 	default:
 		return -EINVAL;
@@ -109,7 +106,6 @@ static int vnt_set_keymode(struct ieee80211_hw *hw, u8 *mac_addr,
 int vnt_set_keys(struct ieee80211_hw *hw, struct ieee80211_sta *sta,
 		 struct ieee80211_vif *vif, struct ieee80211_key_conf *key)
 {
-	struct ieee80211_bss_conf *conf = &vif->bss_conf;
 	struct vnt_private *priv = hw->priv;
 	u8 *mac_addr = NULL;
 	u8 key_dec_mode = 0;
@@ -154,16 +150,12 @@ int vnt_set_keys(struct ieee80211_hw *hw, struct ieee80211_sta *sta,
 		return -EOPNOTSUPP;
 	}
 
-	if (key->flags & IEEE80211_KEY_FLAG_PAIRWISE) {
+	if (key->flags & IEEE80211_KEY_FLAG_PAIRWISE)
 		vnt_set_keymode(hw, mac_addr, key, VNT_KEY_PAIRWISE,
 				key_dec_mode, true);
-	} else {
-		vnt_set_keymode(hw, mac_addr, key, VNT_KEY_DEFAULTKEY,
+	else
+		vnt_set_keymode(hw, mac_addr, key, VNT_KEY_GROUP_ADDRESS,
 				key_dec_mode, true);
 
-		vnt_set_keymode(hw, (u8 *)conf->bssid, key,
-				VNT_KEY_GROUP_ADDRESS, key_dec_mode, true);
-	}
-
 	return 0;
 }
diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
index 85d4133315b1..b9e809ccd264 100644
--- a/drivers/staging/vt6656/main_usb.c
+++ b/drivers/staging/vt6656/main_usb.c
@@ -847,8 +847,12 @@ static int vnt_set_key(struct ieee80211_hw *hw, enum set_key_cmd cmd,
 	case SET_KEY:
 		return vnt_set_keys(hw, sta, vif, key);
 	case DISABLE_KEY:
-		if (test_bit(key->hw_key_idx, &priv->key_entry_inuse))
+		if (test_bit(key->hw_key_idx, &priv->key_entry_inuse)) {
 			clear_bit(key->hw_key_idx, &priv->key_entry_inuse);
+
+			vnt_mac_disable_keyentry(priv, key->hw_key_idx);
+		}
+
 	default:
 		break;
 	}
-- 
2.25.1
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
