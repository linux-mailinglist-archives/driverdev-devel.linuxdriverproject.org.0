Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id ED6EA1F9CB
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 May 2019 20:17:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 569AA2156C;
	Wed, 15 May 2019 18:17:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QYY1qVTO-Vw5; Wed, 15 May 2019 18:17:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 35D95227DB;
	Wed, 15 May 2019 18:17:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3D3801BF40B
 for <devel@linuxdriverproject.org>; Wed, 15 May 2019 18:17:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3350187082
 for <devel@linuxdriverproject.org>; Wed, 15 May 2019 18:17:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2P8-27mqVYdQ for <devel@linuxdriverproject.org>;
 Wed, 15 May 2019 18:17:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8BD0486D78
 for <devel@driverdev.osuosl.org>; Wed, 15 May 2019 18:17:36 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id w7so275075plz.1
 for <devel@driverdev.osuosl.org>; Wed, 15 May 2019 11:17:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CyqUG2MSdZEdVRmD07svsNTLqMwCdhqAgVGPF/Mo4dU=;
 b=PnH8PV3PhgYK5QUYKZVB6R+Lu0f2EwvN0mAt+SWMvY4GIte8uv0yOK2MAswyiAoruL
 ZzQDloOAlwfqx/XFVazociD/uVQY2AsWPNMXY1xT7IMBebDHd7GkPJFh1eomvJtIf6wZ
 Ymcvtqkp4d5c8z/d3pyNwWVITG738FH59/b6PFjV34AtgAmNAs1KSQLQHHLqVFmfQRg6
 zfBGTxDfOAu0GmyKUqPbN/tVIuY+Y2JfZxLKZeeQ8jJ5mUkd5FvPqKUzw3IYxDnU3gs3
 WSF7aEJf5V1awv9hWLlnI9dbjMvf5qmD/hz0GndKGL7qnVytqPcmhZ3D7mWoiAsc4K1+
 9X4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CyqUG2MSdZEdVRmD07svsNTLqMwCdhqAgVGPF/Mo4dU=;
 b=sFxZ+EgELNGoN5Q7ND+0FfQcV/CREhOWharngWDOBM//IuWmcun1axhhaAJff6Mwdw
 Luf84bxXCi+UrasvOM/Pgs4nVcyCS11Eq2u9RcAGYNVWL0n0XG2tsO4pF+rNtg6LmUfl
 jc+E4HtYVwhq574GXrrvWcjR6DHrkCA3BS/7BLoUFKqKeMa7B9YSii2USdZWqn5ggbb8
 N3aVxJCs1zw6tO1r7GmdhfZ2sCb6FJ+UgSHH/+KgplNQrV8I6fEZkfIWG1Iy6EskK4Ob
 HpA0TVrCKI2VoNU+ELd/ttLKv5vnhgS7Fe5gVfL2ZaRVLj1AvMaJwGnVg3APf3SEKnP0
 NGkw==
X-Gm-Message-State: APjAAAWSLv50s9yBWYfQV4skPlFZkhvVbt7BoIVst7hML8plWhw4BZnv
 Fzyf5cDuMoeq2Lua6EzVk5g=
X-Google-Smtp-Source: APXvYqzIP7nBNImllgZQoqzhQedeburQVsNM/zkJnkzHHv7A5EBtNFAHMHtJ0VVLbE6UfkT+nj9YRA==
X-Received: by 2002:a17:902:a585:: with SMTP id
 az5mr1512315plb.261.1557944255992; 
 Wed, 15 May 2019 11:17:35 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:71cf:c592:16fc:ceef:f8b3:1624])
 by smtp.googlemail.com with ESMTPSA id n12sm1449129pgq.54.2019.05.15.11.17.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 May 2019 11:17:35 -0700 (PDT)
From: Puranjay Mohan <puranjay12@gmail.com>
To: greg@kroah.com
Subject: [PATCH] Staging: rtl8192u: ieee80211: Fix coding style issues related
 to if else
Date: Wed, 15 May 2019 23:47:04 +0530
Message-Id: <20190515181704.27090-1-puranjay12@gmail.com>
X-Mailer: git-send-email 2.21.0
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
Cc: devel@driverdev.osuosl.org, Puranjay Mohan <puranjay12@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix positions of braces for if-else statements.

Signed-off-by: Puranjay Mohan <puranjay12@gmail.com>
---
 .../staging/rtl8192u/ieee80211/ieee80211_wx.c  | 18 ++++++------------
 1 file changed, 6 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c
index dead134f6de0..204c3c0443a6 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c
@@ -243,8 +243,7 @@ int ieee80211_wx_get_scan(struct ieee80211_device *ieee,
 
 	list_for_each_entry(network, &ieee->network_list, list) {
 		i++;
-		if((stop-ev)<200)
-		{
+		if((stop-ev)<200) {
 			err = -E2BIG;
 			break;
 		}
@@ -761,8 +760,7 @@ int ieee80211_wx_set_auth(struct ieee80211_device *ieee,
 		} else if (data->value & IW_AUTH_ALG_LEAP) {
 			ieee->open_wep = 1;
 			ieee->auth_mode = 2;
-		}
-		else
+		} else
 			return -EINVAL;
 		break;
 
@@ -787,17 +785,14 @@ int ieee80211_wx_set_gen_ie(struct ieee80211_device *ieee, u8 *ie, size_t len)
 {
 	u8 *buf;
 
-	if (len>MAX_WPA_IE_LEN || (len && ie == NULL))
-	{
+	if (len>MAX_WPA_IE_LEN || (len && ie == NULL)) {
 	//	printk("return error out, len:%d\n", len);
 	return -EINVAL;
 	}
 
 
-	if (len)
-	{
-		if (len != ie[1]+2)
-		{
+	if (len) {
+		if (len != ie[1]+2) {
 			printk("len:%zu, ie:%d\n", len, ie[1]);
 			return -EINVAL;
 		}
@@ -807,8 +802,7 @@ int ieee80211_wx_set_gen_ie(struct ieee80211_device *ieee, u8 *ie, size_t len)
 		kfree(ieee->wpa_ie);
 		ieee->wpa_ie = buf;
 		ieee->wpa_ie_len = len;
-	}
-	else{
+	} else {
 		kfree(ieee->wpa_ie);
 		ieee->wpa_ie = NULL;
 		ieee->wpa_ie_len = 0;
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
