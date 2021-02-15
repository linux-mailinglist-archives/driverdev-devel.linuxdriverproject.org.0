Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D23D31C29D
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Feb 2021 20:45:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EB30485B25;
	Mon, 15 Feb 2021 19:45:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nuKyqAn2Tl-V; Mon, 15 Feb 2021 19:45:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E102F85B3D;
	Mon, 15 Feb 2021 19:45:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BA4921BF399
 for <devel@linuxdriverproject.org>; Mon, 15 Feb 2021 19:45:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B41F486BB8
 for <devel@linuxdriverproject.org>; Mon, 15 Feb 2021 19:45:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tOCjc2nqyFdY for <devel@linuxdriverproject.org>;
 Mon, 15 Feb 2021 19:45:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com
 [209.85.222.182])
 by whitealder.osuosl.org (Postfix) with ESMTPS id F39B886BB6
 for <devel@driverdev.osuosl.org>; Mon, 15 Feb 2021 19:45:16 +0000 (UTC)
Received: by mail-qk1-f182.google.com with SMTP id c3so6788334qkj.11
 for <devel@driverdev.osuosl.org>; Mon, 15 Feb 2021 11:45:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5dqyGvIHoacEP1moj9V+kZ65LXd0117/1bf4nofJZRQ=;
 b=QHU5M6dRg5rLgbKNrrCWFRjK0HJ6G8FvXG4kwExlCx4hvYNVbp/uSChWtM1zpmW6BG
 gnCjuTsuLx8BSktmal6LXg3vpU09kSI5M+2dVzskjs9D4tu3R4aVlTljTzY8bMaZSkjq
 BFvcFXgSwlte84eHffGxw76fddbmR0iJnNy40Wajchw7Kjyw55mZbtmyakwBSyb3Es/Q
 TtU5dK8TWRQtgQctqTPbstOptpVCq87H08ChHSzh8KOO3/7xcB4cg6hcYAApUbIoQVfZ
 bMPs6NLyFixZ1LJ6+8uKpet3moQeEbEd7DVuyITHbxJ1dioejxikmdFHITNIylYk1rXg
 xfrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5dqyGvIHoacEP1moj9V+kZ65LXd0117/1bf4nofJZRQ=;
 b=e9hYXTcyjdItGsTZgz5FlriiuMDHAQwGKpC7jA2wOtxQuLrrij4ZRT43wLOVHdGPqj
 Iwuf7M425irQrBVwS0ZI3JdygfIC39/ouBgH+Acyk2H+grhGcGXzUrkKdluI0TyH41E2
 HzA1HaVbBaP2UXCw9FrCazfJ52lYcHRKM8Z6yLL0HUMwpJQIOU6JlgTVfVGMT92TMWYJ
 uRhIhF6azSOSA+0UdriFd24SdKa77i2zj3nUrxeQ4F5Qnb/3b2TUyCJsKtpRIKhCZgvb
 VjN70CTEu15WQJz9sYF6UddY4ZbL8JROuZlfgFpmb9iEFV6sumZpa83pXZBerIHo5/tz
 BuHw==
X-Gm-Message-State: AOAM5325U10Hay97A1J/DonBLOiHhWoI1RAQ18WjsZ7Tq3A3AXLuRgcC
 PLn8Eb5GORya2IklW6UuWFg=
X-Google-Smtp-Source: ABdhPJyb3H3IAWNHJz7yNmekzuS9Zs7saDQRdVsI+JfhcbGZ73I7H47M/NeIkT/KtJ0vYZV7XdaSww==
X-Received: by 2002:a05:620a:4016:: with SMTP id
 h22mr16530732qko.491.1613418316059; 
 Mon, 15 Feb 2021 11:45:16 -0800 (PST)
Received: from darkstar.example.net ([2804:d45:9905:9600:c57:100:d8b8:6ad3])
 by smtp.gmail.com with ESMTPSA id q12sm5795179qki.91.2021.02.15.11.45.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Feb 2021 11:45:15 -0800 (PST)
From: Davidson Francis <davidsondfgl@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8192e: Fix comparisons to NULL
Date: Mon, 15 Feb 2021 16:44:41 -0300
Message-Id: <20210215194441.11430-1-davidsondfgl@gmail.com>
X-Mailer: git-send-email 2.29.1
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
Cc: Davidson Francis <davidsondfgl@gmail.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Checkpatch prefers the shorter version (x / !x) over
(!= NULL / == NULL), respectively.

Signed-off-by: Davidson Francis <davidsondfgl@gmail.com>
---
 drivers/staging/rtl8192e/rtllib_wx.c | 28 ++++++++++++++--------------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtllib_wx.c b/drivers/staging/rtl8192e/rtllib_wx.c
index 2e486ccb6432..ecd472baee16 100644
--- a/drivers/staging/rtl8192e/rtllib_wx.c
+++ b/drivers/staging/rtl8192e/rtllib_wx.c
@@ -324,7 +324,7 @@ int rtllib_wx_set_encode(struct rtllib_device *ieee,
 		 * and if no key index was provided, de-init them all
 		 */
 		for (i = 0; i < NUM_WEP_KEYS; i++) {
-			if (ieee->crypt_info.crypt[i] != NULL) {
+			if (ieee->crypt_info.crypt[i]) {
 				if (key_provided)
 					break;
 				lib80211_crypt_delayed_deinit(&ieee->crypt_info,
@@ -344,7 +344,7 @@ int rtllib_wx_set_encode(struct rtllib_device *ieee,
 	sec.enabled = 1;
 	sec.flags |= SEC_ENABLED;
 
-	if (*crypt != NULL && (*crypt)->ops != NULL &&
+	if (*crypt && (*crypt)->ops &&
 	    strcmp((*crypt)->ops->name, "R-WEP") != 0) {
 		/* changing to use WEP; deinit previously used algorithm
 		 * on this key
@@ -352,12 +352,12 @@ int rtllib_wx_set_encode(struct rtllib_device *ieee,
 		lib80211_crypt_delayed_deinit(&ieee->crypt_info, crypt);
 	}
 
-	if (*crypt == NULL) {
+	if (!*crypt) {
 		struct lib80211_crypt_data *new_crypt;
 
 		/* take WEP into use */
 		new_crypt = kzalloc(sizeof(*new_crypt), GFP_KERNEL);
-		if (new_crypt == NULL)
+		if (!new_crypt)
 			return -ENOMEM;
 		new_crypt->ops = lib80211_get_crypto_ops("R-WEP");
 		if (!new_crypt->ops) {
@@ -484,7 +484,7 @@ int rtllib_wx_get_encode(struct rtllib_device *ieee,
 
 	erq->flags = key + 1;
 
-	if (crypt == NULL || crypt->ops == NULL) {
+	if (!crypt || !crypt->ops) {
 		erq->length = 0;
 		erq->flags |= IW_ENCODE_DISABLED;
 		return 0;
@@ -549,7 +549,7 @@ int rtllib_wx_set_encode_ext(struct rtllib_device *ieee,
 			lib80211_crypt_delayed_deinit(&ieee->crypt_info, crypt);
 
 		for (i = 0; i < NUM_WEP_KEYS; i++) {
-			if (ieee->crypt_info.crypt[i] != NULL)
+			if (ieee->crypt_info.crypt[i])
 				break;
 		}
 		if (i == NUM_WEP_KEYS) {
@@ -582,7 +582,7 @@ int rtllib_wx_set_encode_ext(struct rtllib_device *ieee,
 	netdev_dbg(dev, "alg name:%s\n", alg);
 
 	ops = lib80211_get_crypto_ops(alg);
-	if (ops == NULL) {
+	if (!ops) {
 		char tempbuf[100];
 
 		memset(tempbuf, 0x00, 100);
@@ -590,19 +590,19 @@ int rtllib_wx_set_encode_ext(struct rtllib_device *ieee,
 		request_module("%s", tempbuf);
 		ops = lib80211_get_crypto_ops(alg);
 	}
-	if (ops == NULL) {
+	if (!ops) {
 		netdev_info(dev, "========>unknown crypto alg %d\n", ext->alg);
 		ret = -EINVAL;
 		goto done;
 	}
 
-	if (*crypt == NULL || (*crypt)->ops != ops) {
+	if (!*crypt || (*crypt)->ops != ops) {
 		struct lib80211_crypt_data *new_crypt;
 
 		lib80211_crypt_delayed_deinit(&ieee->crypt_info, crypt);
 
 		new_crypt = kzalloc(sizeof(*new_crypt), GFP_KERNEL);
-		if (new_crypt == NULL) {
+		if (!new_crypt) {
 			ret = -ENOMEM;
 			goto done;
 		}
@@ -610,7 +610,7 @@ int rtllib_wx_set_encode_ext(struct rtllib_device *ieee,
 		if (new_crypt->ops && try_module_get(new_crypt->ops->owner))
 			new_crypt->priv = new_crypt->ops->init(idx);
 
-		if (new_crypt->priv == NULL) {
+		if (!new_crypt->priv) {
 			kfree(new_crypt);
 			ret = -EINVAL;
 			goto done;
@@ -766,7 +766,7 @@ int rtllib_wx_set_gen_ie(struct rtllib_device *ieee, u8 *ie, size_t len)
 	u8 *buf;
 	u8 eid, wps_oui[4] = {0x0, 0x50, 0xf2, 0x04};
 
-	if (len > MAX_WPA_IE_LEN || (len && ie == NULL))
+	if (len > MAX_WPA_IE_LEN || (len && !ie))
 		return -EINVAL;
 
 	if (len) {
@@ -776,7 +776,7 @@ int rtllib_wx_set_gen_ie(struct rtllib_device *ieee, u8 *ie, size_t len)
 
 			ieee->wps_ie_len = min_t(size_t, len, MAX_WZC_IE_LEN);
 			buf = kmemdup(ie, ieee->wps_ie_len, GFP_KERNEL);
-			if (buf == NULL)
+			if (!buf)
 				return -ENOMEM;
 			ieee->wps_ie = buf;
 			return 0;
@@ -789,7 +789,7 @@ int rtllib_wx_set_gen_ie(struct rtllib_device *ieee, u8 *ie, size_t len)
 		if (len != ie[1]+2)
 			return -EINVAL;
 		buf = kmemdup(ie, len, GFP_KERNEL);
-		if (buf == NULL)
+		if (!buf)
 			return -ENOMEM;
 		kfree(ieee->wpa_ie);
 		ieee->wpa_ie = buf;
-- 
2.29.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
