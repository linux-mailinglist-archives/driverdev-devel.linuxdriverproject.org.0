Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 53D211BE695
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Apr 2020 20:48:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 19B412344A;
	Wed, 29 Apr 2020 18:48:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id az49nuNiA+eD; Wed, 29 Apr 2020 18:48:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AC54D204D2;
	Wed, 29 Apr 2020 18:48:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1DE551BF59F
 for <devel@linuxdriverproject.org>; Wed, 29 Apr 2020 18:48:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 18EB9876F6
 for <devel@linuxdriverproject.org>; Wed, 29 Apr 2020 18:48:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Zg9ZW00ZjjPP for <devel@linuxdriverproject.org>;
 Wed, 29 Apr 2020 18:48:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9AF4B86DB2
 for <devel@driverdev.osuosl.org>; Wed, 29 Apr 2020 18:48:18 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id d17so3783274wrg.11
 for <devel@driverdev.osuosl.org>; Wed, 29 Apr 2020 11:48:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=CDyB54AjrNjFSRl8MhLod74ljRZRfy3XowXumg1NuYA=;
 b=RFScoR6J8meDk+PuK2qeAGbRkEVzZHhD1uzBwEJ3DQIcVuxphdWlDVf0fgX2hJIqBx
 YTz6jzAXFrAfbNp47ifFA2RHHuWlxI9AIinVzfZPApdRnXhllA5zFbpzSnfuRilh8jhG
 skmXqtlsKN1kxXtdIrVJXiLYbKYSbauT0rT0uuy3Mmx+5rdUj41bDCsHOBjB4rz+jmFQ
 Qgi6AgskeaeEHq70tSzHYCON5fAPq5ctWxmzLifGl26WCWnUatDX9Ll1iCLpjQivmWSq
 Z1hgFT8YHzZtM8kXgf77XOOYVfWf7TNswDuplPDs1/PQdSBrhjvcW//GfxvLLQMtHeRt
 J6vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=CDyB54AjrNjFSRl8MhLod74ljRZRfy3XowXumg1NuYA=;
 b=ILWqf56CDpW0d+BtRTYejbHdZLGazGd/tgm9jEBfAk9sZHJ2GYDMqF4iSEbDy3FyB+
 n0fKud7pXB+1MS+Q5G0QBYiMSkcWXqHfGehq+E9OOC96GBm5Xe3fukat5XeqiESPW3Gm
 1Npb6Apg4MDsII6hc+9wF05bWOPjH0/JwGfi09tlOpx7MSfuheJ8YeMnahyCO/F/Xwjk
 7RQmWdbyMirm3ZRiS48y6m2BjArK1OFv6Wbuj1FmTxBtnI6MZQEWtn/MM4IJpKzds9nl
 cVIqvZMb3CeyowcvySBAM4iUbADAPmglE/A2oSsb8EdRgoniglW701mb0MnIotdSOdal
 JjsQ==
X-Gm-Message-State: AGi0Pua5naUT1yyIwabWe0FPqxb2gW0GXaYngvvDM/XHy2O//IAAtFhp
 JxqjkK47g3miFXGlqNwc0b8=
X-Google-Smtp-Source: APiQypK15N3MYMdXuYh567Rs8EzSzfvFBlvE/iyAcEzmCfK8JKzNtPKARNjeW+aRpjc3w8l3d/RF+g==
X-Received: by 2002:adf:e5c8:: with SMTP id a8mr44341553wrn.56.1588186096957; 
 Wed, 29 Apr 2020 11:48:16 -0700 (PDT)
Received: from [192.168.43.18] (188.29.164.11.threembb.co.uk. [188.29.164.11])
 by smtp.gmail.com with ESMTPSA id
 17sm8790455wmo.2.2020.04.29.11.48.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 29 Apr 2020 11:48:16 -0700 (PDT)
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH 3/3] staging: vt6656: return all key calls to mac80211 stack.
Message-ID: <f1be8ba0-9513-55cb-de9d-dcd4341e5b78@gmail.com>
Date: Wed, 29 Apr 2020 19:48:14 +0100
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

vnt_mac_set_keyentry can return USB calls so return them to
mac80211.

Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/key.c | 20 +++++++++-----------
 1 file changed, 9 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/vt6656/key.c b/drivers/staging/vt6656/key.c
index de54cc3ff95a..c66cb53cfc09 100644
--- a/drivers/staging/vt6656/key.c
+++ b/drivers/staging/vt6656/key.c
@@ -91,9 +91,8 @@ static int vnt_set_keymode(struct ieee80211_hw *hw, u8 *mac_addr,
 			key->key[15] |= 0x80;
 	}
 
-	vnt_mac_set_keyentry(priv, key_mode, entry, key_inx, bssid, key->key);
-
-	return 0;
+	return vnt_mac_set_keyentry(priv, key_mode, entry,
+				    key_inx, bssid, key->key);
 }
 
 int vnt_set_keys(struct ieee80211_hw *hw, struct ieee80211_sta *sta,
@@ -102,7 +101,6 @@ int vnt_set_keys(struct ieee80211_hw *hw, struct ieee80211_sta *sta,
 	struct vnt_private *priv = hw->priv;
 	u8 *mac_addr = NULL;
 	u8 key_dec_mode = 0;
-	int ret = 0;
 
 	if (sta)
 		mac_addr = &sta->addr[0];
@@ -115,7 +113,9 @@ int vnt_set_keys(struct ieee80211_hw *hw, struct ieee80211_sta *sta,
 
 		key->flags |= IEEE80211_KEY_FLAG_GENERATE_IV;
 
-		return ret;
+		return vnt_set_keymode(hw, mac_addr, key, VNT_KEY_DEFAULTKEY,
+				       KEY_CTL_WEP);
+
 	case WLAN_CIPHER_SUITE_TKIP:
 		key->flags |= IEEE80211_KEY_FLAG_GENERATE_MMIC;
 		key->flags |= IEEE80211_KEY_FLAG_GENERATE_IV;
@@ -136,11 +136,9 @@ int vnt_set_keys(struct ieee80211_hw *hw, struct ieee80211_sta *sta,
 	}
 
 	if (key->flags & IEEE80211_KEY_FLAG_PAIRWISE)
-		vnt_set_keymode(hw, mac_addr, key, VNT_KEY_PAIRWISE,
-				key_dec_mode);
-	else
-		vnt_set_keymode(hw, mac_addr, key,
-				VNT_KEY_GROUP_ADDRESS, key_dec_mode);
+		return vnt_set_keymode(hw, mac_addr, key, VNT_KEY_PAIRWISE,
+				       key_dec_mode);
 
-	return 0;
+	return vnt_set_keymode(hw, mac_addr, key,
+				VNT_KEY_GROUP_ADDRESS, key_dec_mode);
 }
-- 
2.25.1
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
