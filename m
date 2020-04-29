Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 915911BE680
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Apr 2020 20:44:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3E8D4231E9;
	Wed, 29 Apr 2020 18:44:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oHM54aoipFVA; Wed, 29 Apr 2020 18:44:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EEC2E2049C;
	Wed, 29 Apr 2020 18:44:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DFF5F1BF59F
 for <devel@linuxdriverproject.org>; Wed, 29 Apr 2020 18:44:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DCA5186DB2
 for <devel@linuxdriverproject.org>; Wed, 29 Apr 2020 18:44:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pArxIwh8dAm8 for <devel@linuxdriverproject.org>;
 Wed, 29 Apr 2020 18:44:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 670E886D39
 for <devel@driverdev.osuosl.org>; Wed, 29 Apr 2020 18:44:33 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id v4so5616948wme.1
 for <devel@driverdev.osuosl.org>; Wed, 29 Apr 2020 11:44:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=RZJHwCxCbQeMsgn1IlnEFNBZsOdeAV4P2O5iQG5bMuA=;
 b=PhQvfhhTBuit2cIQdfBfbUwmb2yIAEX01Nl1CF2WtZtE7F6DpcAqHC2JUiADu/IbfB
 1WOTJvvvu2srdgC2chlKxfWPRkDQai8wvPZ2j1To64FGhxXlcRXe0Itu8Ey8aWVhk3h4
 7pGCkK7NScZQOJlO+I//lZXsLQ2Mkpz2A9PGAXCgXAwAo9b1rFegiNnuskILeKHlYZaR
 os73e3nPDBzzPR0qZPRjfIa9yG2iorGr1xQJh+dOG5r4oPRvMVKJicy1w0Vn5VCC3uJA
 6F5faCGkuMAScXlLXnRciPMrcBCmC7YjcLMEn0M/UwPrAB6FOGn7t0g8XY0r6MvxhwFM
 Q0WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=RZJHwCxCbQeMsgn1IlnEFNBZsOdeAV4P2O5iQG5bMuA=;
 b=iwVHgZjdCEnOIAIf868njOFegWjyjO8WWJYUU1NfONjYKWqMPAegVeJFtYnWqy7YUa
 MTBBc3R/9sqxUGub+s92j1EI6GEr6TUK9EThByFXUmeUuLvrDebkvr3PXDybfxI0wy0n
 NJ9lUxhxYJ1M48YsMAUagTdw2rcE4IVYXzPFe+8kCflpNQRWZS9rRWOkf0AebT4jB7Ee
 K6gIqtkL7QZPNaEn6KucABIczlp71EoaEUHmVlwnocJgFkcAsc6qNozYL6oXK+lLAikf
 KnLslluI+w3PtpkYA2oy9VcHzWgQdn9mLpsBjVx+atbTri5QTxAwyluWT3IWcmVp9Xl1
 IEAQ==
X-Gm-Message-State: AGi0PuYICBXmVeE91JFRzLpucUvqG5aDpIAK6Hgt33OgYku09PrHaE7o
 VB6joowM1MMniBnWQPoAhKo=
X-Google-Smtp-Source: APiQypLtoA222rR5uHfba83rSlpFAPFw/B8xJCaNydBniOGwkm0yOBCrIqi0rt3r/IO6u3ptXpLqVA==
X-Received: by 2002:a1c:bc05:: with SMTP id m5mr4393934wmf.143.1588185871738; 
 Wed, 29 Apr 2020 11:44:31 -0700 (PDT)
Received: from [192.168.43.18] (188.29.164.11.threembb.co.uk. [188.29.164.11])
 by smtp.gmail.com with ESMTPSA id
 p7sm183561wrf.31.2020.04.29.11.44.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 29 Apr 2020 11:44:31 -0700 (PDT)
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH 2/3] staging: vt6656 remove vnt_mac_disable_keyentry calls
Message-ID: <844df68d-08e2-7672-524f-42b918e300c1@gmail.com>
Date: Wed, 29 Apr 2020 19:44:29 +0100
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

It is not necessary to disable all the keys mac80211 will
have removed any existing keys that were used.

Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/key.c | 10 +---------
 1 file changed, 1 insertion(+), 9 deletions(-)

diff --git a/drivers/staging/vt6656/key.c b/drivers/staging/vt6656/key.c
index 47338077c033..de54cc3ff95a 100644
--- a/drivers/staging/vt6656/key.c
+++ b/drivers/staging/vt6656/key.c
@@ -102,22 +102,14 @@ int vnt_set_keys(struct ieee80211_hw *hw, struct ieee80211_sta *sta,
 	struct vnt_private *priv = hw->priv;
 	u8 *mac_addr = NULL;
 	u8 key_dec_mode = 0;
-	int ret = 0, u;
+	int ret = 0;
 
 	if (sta)
 		mac_addr = &sta->addr[0];
 
 	switch (key->cipher) {
-	case 0:
-		for (u = 0 ; u < MAX_KEY_TABLE; u++)
-			vnt_mac_disable_keyentry(priv, u);
-		return ret;
-
 	case WLAN_CIPHER_SUITE_WEP40:
 	case WLAN_CIPHER_SUITE_WEP104:
-		for (u = 0; u < MAX_KEY_TABLE; u++)
-			vnt_mac_disable_keyentry(priv, u);
-
 		vnt_set_keymode(hw, mac_addr, key, VNT_KEY_DEFAULTKEY,
 				KEY_CTL_WEP);
 
-- 
2.25.1
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
