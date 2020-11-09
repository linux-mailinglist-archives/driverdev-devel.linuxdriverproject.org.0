Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E8262AC5E6
	for <lists+driverdev-devel@lfdr.de>; Mon,  9 Nov 2020 21:22:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2584C860F0;
	Mon,  9 Nov 2020 20:22:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qZgTtUGp-4BC; Mon,  9 Nov 2020 20:22:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 752E285D54;
	Mon,  9 Nov 2020 20:22:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A2D581BF2E5
 for <devel@linuxdriverproject.org>; Mon,  9 Nov 2020 20:22:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9945C866B0
 for <devel@linuxdriverproject.org>; Mon,  9 Nov 2020 20:22:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lmOTT2-xgi3F for <devel@linuxdriverproject.org>;
 Mon,  9 Nov 2020 20:22:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f65.google.com (mail-ej1-f65.google.com
 [209.85.218.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D603B866A1
 for <devel@driverdev.osuosl.org>; Mon,  9 Nov 2020 20:22:16 +0000 (UTC)
Received: by mail-ej1-f65.google.com with SMTP id o9so14204386ejg.1
 for <devel@driverdev.osuosl.org>; Mon, 09 Nov 2020 12:22:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LCMgJ7dbbZt1+HrR8oLWGeAravAmNrbCj4m+3YIlKbA=;
 b=OVd0gMwifdU3MsAuI3RT3IVO9V4PDqu1M0mAjCzVGoW12ft8hRyFYCePJhCZgG7tYd
 /P/umBD8yiK57aR6HlCylFs3J2NtIIitsnEVIjLr5H8rAK93UYFFG8eCLXxB57ilxYY7
 ENodMENAG5OsinGjSOBTOuZfrdXK4fg/rO7DYY7XRNFK/Sptaxg9UMs2UD2e7TyYBmVu
 bgim+1SylsrpHi2MMloi5Lqy5OugH2UViVWeGq4QkIlQHTIJrH1E9It27gFf0n+IJKdW
 fkHtCmpEkaxUk/k1lAtbPlP/nVQwUgQVUyZguhEnaGAE8rYRRgF+GAr2QpkweIRBh9jh
 ziIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LCMgJ7dbbZt1+HrR8oLWGeAravAmNrbCj4m+3YIlKbA=;
 b=TW8vWtIwUquviRZ/jpCthd+H3W3p8lR4h3TfYhZiJa6y9zNzKkZ8vGbXxU3C4nKwqE
 ojgRSUAhsNhOgkjUrscdvIS8/0FX0V+SwU4lWZEq76+5/5XLgtOlKGD114ET9J3j/XUI
 bizzfYxUAmc7h0r+1RR+XvOxMxy0/XKyAPFtQ3mkUZfaUWQgZVSp5Afw5WXgtKOqA1qG
 2poSDkS4tAPZkFSNzPjLjvmeHAgvuZXz+bUe9WjZwsL5kNaH8NqMW5tBc8c3bIgkoeRK
 keyfjvHZUdXTnAUjHOy4IHp0t/28eys8KFmVp8faqDX3c2HtYUpAIrc0Bv+CoFI5LFUt
 PfsA==
X-Gm-Message-State: AOAM5338/tp52kgxFhveJNt8BrcsOwLJxQ6WWQQKxxeEnXXBXp+NAcUL
 B7kOPMP+ttOo3Rj81J+bWn8=
X-Google-Smtp-Source: ABdhPJzm321fE545DRgKC/dFiA7rRHiqKZVk0qkVLNYGRUixRINE3FxNHffMBoyPdsgyg0N5FIVZqg==
X-Received: by 2002:a17:906:860b:: with SMTP id
 o11mr4928310ejx.252.1604953335339; 
 Mon, 09 Nov 2020 12:22:15 -0800 (PST)
Received: from localhost.localdomain ([86.121.208.33])
 by smtp.gmail.com with ESMTPSA id cn8sm9304308edb.18.2020.11.09.12.22.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Nov 2020 12:22:14 -0800 (PST)
From: Eduard Vintila <eduard.vintila47@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8192e: Braces should be used on all arms of
 statement
Date: Mon,  9 Nov 2020 22:20:16 +0200
Message-Id: <20201109202016.79329-1-eduard.vintila47@gmail.com>
X-Mailer: git-send-email 2.29.2
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
Cc: devel@driverdev.osuosl.org, john.oldman@polehill.co.uk, robsonde@gmail.com,
 eduard.vintila47@gmail.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixed a coding style issue by adding braces on all arms of an "if"
statement.

Signed-off-by: Eduard Vintila <eduard.vintila47@gmail.com>
---
 drivers/staging/rtl8192e/rtl819x_HTProc.c | 27 ++++++++++++-----------
 1 file changed, 14 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_HTProc.c b/drivers/staging/rtl8192e/rtl819x_HTProc.c
index 8abc921ecb3e..9377e48c3f32 100644
--- a/drivers/staging/rtl8192e/rtl819x_HTProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_HTProc.c
@@ -177,33 +177,34 @@ static void HTIOTPeerDetermine(struct rtllib_device *ieee)
 			pHTInfo->IOTPeer = HT_IOT_PEER_REALTEK_92SE;
 		if (net->bssht.RT2RT_HT_Mode & RT_HT_CAP_USE_SOFTAP)
 			pHTInfo->IOTPeer = HT_IOT_PEER_92U_SOFTAP;
-	} else if (net->broadcom_cap_exist)
+	} else if (net->broadcom_cap_exist) {
 		pHTInfo->IOTPeer = HT_IOT_PEER_BROADCOM;
-	else if (!memcmp(net->bssid, UNKNOWN_BORADCOM, 3) ||
+	} else if (!memcmp(net->bssid, UNKNOWN_BORADCOM, 3) ||
 		 !memcmp(net->bssid, LINKSYSWRT330_LINKSYSWRT300_BROADCOM, 3) ||
-		 !memcmp(net->bssid, LINKSYSWRT350_LINKSYSWRT150_BROADCOM, 3))
+		 !memcmp(net->bssid, LINKSYSWRT350_LINKSYSWRT150_BROADCOM, 3)) {
 		pHTInfo->IOTPeer = HT_IOT_PEER_BROADCOM;
-	else if ((memcmp(net->bssid, BELKINF5D8233V1_RALINK, 3) == 0) ||
+	} else if ((memcmp(net->bssid, BELKINF5D8233V1_RALINK, 3) == 0) ||
 		 (memcmp(net->bssid, BELKINF5D82334V3_RALINK, 3) == 0) ||
 		 (memcmp(net->bssid, PCI_RALINK, 3) == 0) ||
 		 (memcmp(net->bssid, EDIMAX_RALINK, 3) == 0) ||
 		 (memcmp(net->bssid, AIRLINK_RALINK, 3) == 0) ||
-		  net->ralink_cap_exist)
+		  net->ralink_cap_exist) {
 		pHTInfo->IOTPeer = HT_IOT_PEER_RALINK;
-	else if ((net->atheros_cap_exist) ||
+	} else if ((net->atheros_cap_exist) ||
 		(memcmp(net->bssid, DLINK_ATHEROS_1, 3) == 0) ||
-		(memcmp(net->bssid, DLINK_ATHEROS_2, 3) == 0))
+		(memcmp(net->bssid, DLINK_ATHEROS_2, 3) == 0)) {
 		pHTInfo->IOTPeer = HT_IOT_PEER_ATHEROS;
-	else if ((memcmp(net->bssid, CISCO_BROADCOM, 3) == 0) ||
-		  net->cisco_cap_exist)
+	} else if ((memcmp(net->bssid, CISCO_BROADCOM, 3) == 0) ||
+		  net->cisco_cap_exist) {
 		pHTInfo->IOTPeer = HT_IOT_PEER_CISCO;
-	else if ((memcmp(net->bssid, LINKSYS_MARVELL_4400N, 3) == 0) ||
-		  net->marvell_cap_exist)
+	} else if ((memcmp(net->bssid, LINKSYS_MARVELL_4400N, 3) == 0) ||
+		  net->marvell_cap_exist) {
 		pHTInfo->IOTPeer = HT_IOT_PEER_MARVELL;
-	else if (net->airgo_cap_exist)
+	} else if (net->airgo_cap_exist) {
 		pHTInfo->IOTPeer = HT_IOT_PEER_AIRGO;
-	else
+	} else {
 		pHTInfo->IOTPeer = HT_IOT_PEER_UNKNOWN;
+	}
 
 	netdev_dbg(ieee->dev, "IOTPEER: %x\n", pHTInfo->IOTPeer);
 }
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
