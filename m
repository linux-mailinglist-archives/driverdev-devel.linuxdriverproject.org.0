Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 38DE756211
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jun 2019 08:11:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 85DCE86849;
	Wed, 26 Jun 2019 06:11:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GLLhpu5MFvmz; Wed, 26 Jun 2019 06:11:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2860E86816;
	Wed, 26 Jun 2019 06:11:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 423741BF3CC
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 06:10:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3826D21514
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 06:10:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aFOQsRdaUhH6 for <devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 06:10:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by silver.osuosl.org (Postfix) with ESMTPS id F16B620489
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 06:09:59 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id bh12so822062plb.4
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 23:09:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0s2RzxIdFVJCI67dtumZ/nGWnA16Ie+d+DiLMeKZGXM=;
 b=s9QRZTPKV7/Fig1rfz3VYdYBH/TUvX352z2udIJMZiiT49EV73b7Y8qsXpBebvgmWy
 NSWw9/Ui2ymA5mBtBuqNQjeEXU19As/RfrL5KT0d89D+9L2PArU08DrwvvYBB/7qGO+5
 Fz0oASmHh49PmxPtbGp91YuBzR/4lQHNXfJE0I3GrFeTiSlyyWKse3xrl0tPVz5wfnel
 crG/pad3D9qjNZrPbTJ1nIevr8w2E7jLTp9kFZgGmJ07Bu+UF6DuegS9TwCOWOZo+QD3
 cmlN2+6XEwJTcKJ4B7abnicvwAFX6qKMmVIZzcp7NEC4JDmFDer0kcwWXdIy0HzHIxsK
 Jdhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0s2RzxIdFVJCI67dtumZ/nGWnA16Ie+d+DiLMeKZGXM=;
 b=KlzN62sLsif6TSNC/3KAKbbZ0vFTeIhRMC18gZJ9SdMpTZ5GuOJtc03188RGWvobas
 q8Zhco5zBhp8gTlxIIL7QPRgg2gzYeD62WWO6KknkMgY/xe7vEWV47ZBIFhPme0oR/y9
 29MCnPzeh7si4Nmcfs04l6pNEVg51Q2qXw1hfLYG7LrDn3qWYpBYJp+5kZYshFiWFnxj
 5CxvlMNI2yvpWVogOIZqEefft9l2x20wfffbNYuadDHILPRK9vEihxw/gQ4xFn3XPvdV
 ge5g6WXYos7iLDrmaEQaObQFMLsNJ+zE9K+KpmEi2TirIupNY7WCwlSix5vsbM/vyeZr
 PrMg==
X-Gm-Message-State: APjAAAW1MEdA6t4NFXO2uxQ5hb0+e61jG4SmPoHx7ctdCoe4zMzY5h1m
 XhRwoyxuBvYjHcF/hA7KG+D/Ixj9
X-Google-Smtp-Source: APXvYqyYeQc9r2mjQZ3kMPnFhv7xAz2pJ8OFj6v7s1bC4huFGDuWxlGO1qvNkXwtko4dF+lTUjKa2Q==
X-Received: by 2002:a17:902:1003:: with SMTP id
 b3mr3371038pla.172.1561529399709; 
 Tue, 25 Jun 2019 23:09:59 -0700 (PDT)
Received: from localhost.localdomain ([110.227.94.173])
 by smtp.gmail.com with ESMTPSA id v13sm17613407pfe.105.2019.06.25.23.09.57
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 23:09:59 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org, larry.finger@lwfinger.net,
 florian.c.schilhabel@googlemail.com, devel@driverdev.osuosl.org
Subject: [PATCH 2/9] staging: rtl8712: r8712_parse_wpa_ie(): Change return
 values
Date: Wed, 26 Jun 2019 11:39:34 +0530
Message-Id: <20190626060941.2441-2-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190626060941.2441-1-nishkadg.linux@gmail.com>
References: <20190626060941.2441-1-nishkadg.linux@gmail.com>
MIME-Version: 1.0
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Change return values of function r8712_parse_wpa_ie from _SUCCESS/_FAIL
to 0/-EINVAL. Modify call site accordingly.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/ieee80211.c           | 12 ++++++------
 drivers/staging/rtl8712/rtl871x_ioctl_linux.c |  2 +-
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8712/ieee80211.c b/drivers/staging/rtl8712/ieee80211.c
index fe94e5c15836..5821ccd3b50d 100644
--- a/drivers/staging/rtl8712/ieee80211.c
+++ b/drivers/staging/rtl8712/ieee80211.c
@@ -283,12 +283,12 @@ int r8712_parse_wpa_ie(u8 *wpa_ie, int wpa_ie_len, int *group_cipher,
 
 	if (wpa_ie_len <= 0) {
 		/* No WPA IE - fail silently */
-		return _FAIL;
+		return -EINVAL;
 	}
 	if ((*wpa_ie != _WPA_IE_ID_) ||
 	    (*(wpa_ie + 1) != (u8)(wpa_ie_len - 2)) ||
 	    (memcmp(wpa_ie + 2, (void *)WPA_OUI_TYPE, WPA_SELECTOR_LEN)))
-		return _FAIL;
+		return -EINVAL;
 	pos = wpa_ie;
 	pos += 8;
 	left = wpa_ie_len - 8;
@@ -298,7 +298,7 @@ int r8712_parse_wpa_ie(u8 *wpa_ie, int wpa_ie_len, int *group_cipher,
 		pos += WPA_SELECTOR_LEN;
 		left -= WPA_SELECTOR_LEN;
 	} else if (left > 0) {
-		return _FAIL;
+		return -EINVAL;
 	}
 	/*pairwise_cipher*/
 	if (left >= 2) {
@@ -306,16 +306,16 @@ int r8712_parse_wpa_ie(u8 *wpa_ie, int wpa_ie_len, int *group_cipher,
 		pos += 2;
 		left -= 2;
 		if (count == 0 || left < count * WPA_SELECTOR_LEN)
-			return _FAIL;
+			return -EINVAL;
 		for (i = 0; i < count; i++) {
 			*pairwise_cipher |= r8712_get_wpa_cipher_suite(pos);
 			pos += WPA_SELECTOR_LEN;
 			left -= WPA_SELECTOR_LEN;
 		}
 	} else if (left == 1) {
-		return _FAIL;
+		return -EINVAL;
 	}
-	return _SUCCESS;
+	return 0;
 }
 
 int r8712_parse_wpa2_ie(u8 *rsn_ie, int rsn_ie_len, int *group_cipher,
diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
index a224797cd993..615ac5c34a17 100644
--- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
+++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
@@ -478,7 +478,7 @@ static int r871x_set_wpa_ie(struct _adapter *padapter, char *pie,
 			goto exit;
 		}
 		if (r8712_parse_wpa_ie(buf, ielen, &group_cipher,
-		    &pairwise_cipher) == _SUCCESS) {
+		    &pairwise_cipher) == 0) {
 			padapter->securitypriv.AuthAlgrthm = 2;
 			padapter->securitypriv.ndisauthtype =
 				  Ndis802_11AuthModeWPAPSK;
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
