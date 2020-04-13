Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D07B11A61AA
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Apr 2020 05:01:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A53262045F;
	Mon, 13 Apr 2020 03:01:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0aqBOFCB86Jp; Mon, 13 Apr 2020 03:01:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6528C203E9;
	Mon, 13 Apr 2020 03:01:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BD8291BF2B8
 for <devel@linuxdriverproject.org>; Mon, 13 Apr 2020 03:01:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B6E6485B8A
 for <devel@linuxdriverproject.org>; Mon, 13 Apr 2020 03:01:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LgEBBbX10JDp for <devel@linuxdriverproject.org>;
 Mon, 13 Apr 2020 03:01:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com
 [209.85.222.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1708C85B68
 for <devel@driverdev.osuosl.org>; Mon, 13 Apr 2020 03:01:33 +0000 (UTC)
Received: by mail-qk1-f194.google.com with SMTP id c63so8268402qke.2
 for <devel@driverdev.osuosl.org>; Sun, 12 Apr 2020 20:01:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9mQX+KyXjCVkEwrSR2o41b1Ot5pYdAT4bZiqTAuIYN0=;
 b=aJaWdMZkG1cE5j/Wm8VZt8qgiOX8psJyOjp/o9CICZev/QYcRMFKDimRoNo5hH/Qu1
 Y3jGDooRVtdbrsIBFLqBpqbsXFa85w5osXid8My4Dw8C0CbQzez1XWzW2S19AW2NqqB1
 NlbnPlc9kqy1J5+sgGlAf24hUhfrqY7WRoq3qUHVVPzBAuBNQaCgra39URVcSZRtt0z3
 nXLOWaDQQohYJjJZFgaDLSAg2O7r5Hsaw56MrUh501zlYBna/YdLHxz+1e8zZFEHHlvr
 72obBKgvXHrvsYRPjFP0hHTq+EGeTFMQ2AvAwJRJazasdALpPX3XKONIb1IlKN04tn18
 TyYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9mQX+KyXjCVkEwrSR2o41b1Ot5pYdAT4bZiqTAuIYN0=;
 b=pZv+yp8d7eNV9c3v7M3U6ln/ixJNyLJ0c4Ik64dynrcWmo1bBZnyKU81KINITve/hK
 s97e1p49urKYedkXK1jHmHCNAiqNVhyftxsMv4gtdY3DpUUv3myLie8BfO6kTbLwR75r
 0yMFiAiv3s8pLe1rC2Z3Ij4R1+PuwPjVCDkasHxVC3tCqNk7T2sMymdw1TosfZRvLuoc
 XPGWvkkh1niGmTGpEclEIXnT0ybcY9MWRvXD0phbBD55Dcs1owGWMQszbmnwmza7SuOu
 7oOgjE7o3igNf+HDVP+rwFWS5fCG3ehraMQHYuHQimcC7xNmer3zezBK1rJiPD+aGO4a
 W4fw==
X-Gm-Message-State: AGi0PuYUOusdz1X0HA19yPmKbgWcDHh8NvlZeiEgdFJ+CD+kuNKGU81t
 nWrNyDSf8swFmex77sgpUwA=
X-Google-Smtp-Source: APiQypJZp9gK8i5BNduuh+7QfE4lAzdYgPYn7wCiXiZdGKkngk+UH8/k/2jGb1lsTCCHQFbF3an3BQ==
X-Received: by 2002:a37:e10c:: with SMTP id c12mr5385520qkm.483.1586746891631; 
 Sun, 12 Apr 2020 20:01:31 -0700 (PDT)
Received: from localhost.localdomain ([189.78.178.135])
 by smtp.gmail.com with ESMTPSA id i20sm7208754qkl.135.2020.04.12.20.01.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 12 Apr 2020 20:01:30 -0700 (PDT)
From: Camylla Goncalves Cantanheide <c.cantanheide@gmail.com>
To: gregkh@linuxfoundation.org, navid.emamdoost@gmail.com,
 sylphrenadin@gmail.com, nishkadg.linux@gmail.com, stephen@brennan.io,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 lkcamp@lists.libreplanetbr.org
Subject: [PATCH 1/2] staging: rtl8192u: Refactoring setKey function
Date: Mon, 13 Apr 2020 03:01:28 +0000
Message-Id: <20200413030129.861-1-c.cantanheide@gmail.com>
X-Mailer: git-send-email 2.20.1
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Changes of the local variable value and
modification in the seletive repetition structure.

Signed-off-by: Camylla Goncalves Cantanheide <c.cantanheide@gmail.com>
---
 drivers/staging/rtl8192u/r8192U_core.c | 52 ++++++++++++--------------
 1 file changed, 24 insertions(+), 28 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index 9b8d85a4855d..87c02aee3854 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -4880,7 +4880,7 @@ void EnableHWSecurityConfig8192(struct net_device *dev)
 void setKey(struct net_device *dev, u8 entryno, u8 keyindex, u16 keytype,
 	    u8 *macaddr, u8 defaultkey, u32 *keycontent)
 {
-	u32 target_command = 0;
+	u32 target_command = CAM_CONTENT_COUNT * entryno |  BIT(31) | BIT(16);
 	u32 target_content = 0;
 	u16 us_config = 0;
 	u8 i;
@@ -4890,39 +4890,35 @@ void setKey(struct net_device *dev, u8 entryno, u8 keyindex, u16 keytype,
 
 	RT_TRACE(COMP_SEC,
 		 "====>to %s, dev:%p, EntryNo:%d, KeyIndex:%d, KeyType:%d, MacAddr%pM\n",
-        	 __func__, dev, entryno, keyindex, keytype, macaddr);
+		 __func__, dev, entryno, keyindex, keytype, macaddr);
 
 	if (defaultkey)
 		us_config |= BIT(15) | (keytype << 2);
 	else
 		us_config |= BIT(15) | (keytype << 2) | keyindex;
 
-	for (i = 0; i < CAM_CONTENT_COUNT; i++) {
-		target_command  = i + CAM_CONTENT_COUNT * entryno;
-		target_command |= BIT(31) | BIT(16);
-
-		if (i == 0) { /* MAC|Config */
-			target_content = (u32)(*(macaddr + 0)) << 16 |
-					(u32)(*(macaddr + 1)) << 24 |
-					(u32)us_config;
-
-			write_nic_dword(dev, WCAMI, target_content);
-			write_nic_dword(dev, RWCAM, target_command);
-		} else if (i == 1) { /* MAC */
-			target_content = (u32)(*(macaddr + 2))	 |
-					(u32)(*(macaddr + 3)) <<  8 |
-					(u32)(*(macaddr + 4)) << 16 |
-					(u32)(*(macaddr + 5)) << 24;
-			write_nic_dword(dev, WCAMI, target_content);
-			write_nic_dword(dev, RWCAM, target_command);
-		} else {
-			/* Key Material */
-			if (keycontent) {
-				write_nic_dword(dev, WCAMI,
-						*(keycontent + i - 2));
-				write_nic_dword(dev, RWCAM, target_command);
-                	}
-		}
+	target_content = macaddr[0] << 16 |
+			 macaddr[0] << 24 |
+			(u32)us_config;
+
+	write_nic_dword(dev, WCAMI, target_content);
+	write_nic_dword(dev, RWCAM, target_command++);
+
+	/* MAC */
+	target_content = macaddr[2]	  |
+			 macaddr[3] <<  8 |
+			 macaddr[4] << 16 |
+			 macaddr[5] << 24;
+	write_nic_dword(dev, WCAMI, target_content);
+	write_nic_dword(dev, RWCAM, target_command++);
+
+	/* Key Material */
+	if (!keycontent)
+		return;
+
+	for (i = 2; i < CAM_CONTENT_COUNT; i++) {
+		write_nic_dword(dev, WCAMI, *keycontent++);
+		write_nic_dword(dev, RWCAM, target_command++);
 	}
 }
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
