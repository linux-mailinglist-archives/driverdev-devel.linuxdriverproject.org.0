Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F2F0014FD10
	for <lists+driverdev-devel@lfdr.de>; Sun,  2 Feb 2020 13:28:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8B3B32048D;
	Sun,  2 Feb 2020 12:28:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OtZd7kdCTEFt; Sun,  2 Feb 2020 12:28:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7C4D72047A;
	Sun,  2 Feb 2020 12:28:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5EBEB1BF239
 for <devel@linuxdriverproject.org>; Sun,  2 Feb 2020 12:28:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5A18586156
 for <devel@linuxdriverproject.org>; Sun,  2 Feb 2020 12:28:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VXdJSqzNKBPb for <devel@linuxdriverproject.org>;
 Sun,  2 Feb 2020 12:28:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D70F986133
 for <devel@driverdev.osuosl.org>; Sun,  2 Feb 2020 12:28:17 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id t14so13849840wmi.5
 for <devel@driverdev.osuosl.org>; Sun, 02 Feb 2020 04:28:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=zxdNGKo0v1509Ffa6Y8H1/uZUJCyL27pUkrWdEyZRjs=;
 b=G4oRf2Pzuz5KBoikHoZJ0aoMmHdHI4GGtwEOjAxEKo0/d558c69HQx/o5ZfIHHswJn
 AZFGydjA5qqwhGKb91RAUZG9eNmBEas8Gfco0UCxZOM+/j6lrm2Cmdf52vNjeeVQwSrn
 JS7OYWhXrejVViz4MWd4hY4r973L6i1HOncD1PEeAJmYFuR+PajHQHkA5MTqsGpYWn//
 ExhAk3grKeA6bl0KSTbddHMtkMhz9eKN94wtvaGtvQ48BIKuZPyTmvEdFhvgfQRLLAyD
 6fqPPMzf9YrdHzGQfZ2ifnZ3skS3ke7yYhrUmdHfdwdq2nwq7m16rlcNYcvZDRwpkRfH
 /8Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=zxdNGKo0v1509Ffa6Y8H1/uZUJCyL27pUkrWdEyZRjs=;
 b=aC/zXoGj+d9tM+U7giHNYzAjt005AjosOkSGSUyQlcFg+7hvo0bcnm3TLg7Kx5gqOH
 U4a/iu6VVcV8kaNlGMvwtkGlXLqd2PpHwlZ9zf/4FxkQ81WgTZwpxMDprax14bLB4u1Z
 yxsaXNG7P7zTg4LDnwEQ55+oyYa31oHgPZUMDSpM4v2ILgMNL9MLtVIN7+7V/83nDAPJ
 QxeF0tbsQImbehZ3yaQGyqaC0b27m/Spx0U6if6kA1WhUVctrsXSobiRIDrNI70mxd4B
 XEdlqji1DBz+n2mdZ1Y6HTNyyUTQ63cYSPyOASqx/C4PBfNcj7uVo5+9AvGjii+8CQMh
 O3rw==
X-Gm-Message-State: APjAAAU0675x1PR7pHmsEfXXyj8tq9hdjOXwaf+UaPyaYXwhBckdktT1
 taR+uUOJhEj6GzRkpcpwgSg=
X-Google-Smtp-Source: APXvYqzmsee997+fBw0w9AnUz3MKuNVvNIOWVd2SHrYFnjYD+h1OUgJ13t3StWj4e5XC4OBX1ZF7Bg==
X-Received: by 2002:a1c:96c4:: with SMTP id
 y187mr24332432wmd.112.1580646496324; 
 Sun, 02 Feb 2020 04:28:16 -0800 (PST)
Received: from [192.168.43.18] (92.40.248.192.threembb.co.uk. [92.40.248.192])
 by smtp.gmail.com with ESMTPSA id
 c15sm20483111wrt.1.2020.02.02.04.28.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 02 Feb 2020 04:28:15 -0800 (PST)
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH 2/2] staging: vt6656: Fix return for unsupported cipher modes.
Message-ID: <b65a3b23-735f-f679-0f16-a54c3266b5ae@gmail.com>
Date: Sun, 2 Feb 2020 12:28:07 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
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
 llinux-wireless@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

mac80211 expect to see -EOPNOTSUPP on unsupported ciphers so
these can be done on stack.

correct all the returns to do this.

Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/key.c      | 5 ++++-
 drivers/staging/vt6656/main_usb.c | 4 +---
 2 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/vt6656/key.c b/drivers/staging/vt6656/key.c
index dcd933a6b66e..41b73f9670e2 100644
--- a/drivers/staging/vt6656/key.c
+++ b/drivers/staging/vt6656/key.c
@@ -144,11 +144,14 @@ int vnt_set_keys(struct ieee80211_hw *hw, struct ieee80211_sta *sta,
 		break;
 	case WLAN_CIPHER_SUITE_CCMP:
 		if (priv->local_id <= MAC_REVISION_A1)
-			return -EINVAL;
+			return -EOPNOTSUPP;
 
 		key_dec_mode = KEY_CTL_CCMP;
 
 		key->flags |= IEEE80211_KEY_FLAG_GENERATE_IV;
+		break;
+	default:
+		return -EOPNOTSUPP;
 	}
 
 	if (key->flags & IEEE80211_KEY_FLAG_PAIRWISE) {
diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
index 5e48b3ddb94c..6e5963adb501 100644
--- a/drivers/staging/vt6656/main_usb.c
+++ b/drivers/staging/vt6656/main_usb.c
@@ -862,9 +862,7 @@ static int vnt_set_key(struct ieee80211_hw *hw, enum set_key_cmd cmd,
 
 	switch (cmd) {
 	case SET_KEY:
-		if (vnt_set_keys(hw, sta, vif, key))
-			return -EOPNOTSUPP;
-		break;
+		return vnt_set_keys(hw, sta, vif, key);
 	case DISABLE_KEY:
 		if (test_bit(key->hw_key_idx, &priv->key_entry_inuse))
 			clear_bit(key->hw_key_idx, &priv->key_entry_inuse);
-- 
2.25.0
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
