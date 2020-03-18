Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 58AE018A6C9
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 Mar 2020 22:12:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CF90F87799;
	Wed, 18 Mar 2020 21:12:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TIhIhbzETGik; Wed, 18 Mar 2020 21:12:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 80B66874CD;
	Wed, 18 Mar 2020 21:12:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9BF4E1BF2E3
 for <devel@linuxdriverproject.org>; Wed, 18 Mar 2020 21:12:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 98F5326C7E
 for <devel@linuxdriverproject.org>; Wed, 18 Mar 2020 21:12:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rOqXZ74XcAa8 for <devel@linuxdriverproject.org>;
 Wed, 18 Mar 2020 21:12:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com
 [209.85.222.193])
 by silver.osuosl.org (Postfix) with ESMTPS id B994D26EF8
 for <devel@driverdev.osuosl.org>; Wed, 18 Mar 2020 21:12:14 +0000 (UTC)
Received: by mail-qk1-f193.google.com with SMTP id z25so36536472qkj.4
 for <devel@driverdev.osuosl.org>; Wed, 18 Mar 2020 14:12:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cgdLXJV9Sew53vIF33iiBl+FIn8SK13ILaQIFn0dtRs=;
 b=A7yCOddTAxvmu3ZfcKABXAyalCetbzNFo1PbYvf5Vtok/l619b+6aE4phQmb6ehGD1
 ZtIKODXEJeJciqA82Ej7MDWt90U5ideGjywnFmDKJpP/BYrT19DMp/WL3FgwidHr3Ane
 oLqqwxTcUPg9NNber5HLvEu62Pco2vtYgaDWhssgl5Wp7Zee1rHtgRNRKpjf8uA7MhD5
 ycFY06PNxhOKFxc+KnCrYHQzsJBg2BL52yIzzLsmyZIfQkSYPIXG24oCL0JqMD6oEDMK
 aPDiwRGh1T+N8d5Sqyq7I7xa9xf+DuBBmWb8FbvLPfHOaRMDF+O7P3Mvb2KPt1Fdx1Zr
 KYCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cgdLXJV9Sew53vIF33iiBl+FIn8SK13ILaQIFn0dtRs=;
 b=i4Cd8EZwWs6pPi9n2ESi//df8AuQVCWQWcaKvj2Rc23cGYs/Wrqy4ZWCBIT85avptK
 dmew9RFfeGWOnSjwzrIaQ58ZFfup1qWxGwWJOT26XavPRUxi5O529gqDixfueEd2DSWQ
 Ma8PnGp3jdUdZLOYCwC+KJ/sSkFCvO87Izc29f+veT0jNP5Yaa6m75g2HmO0Y9Fb56AB
 9jof5FxWWOR6NmCFIeRhm0b4SY8WY92pDbuc6srHtsWBkuqaUkvyqjZ9d5ML1ZNxeS+o
 ysQ0F2xq6ZqaN790F3KRSDoIFYwOIahuC7Rs9DLRerKUxBB+nhE6D7TOgj/oZanGlLCA
 EOAw==
X-Gm-Message-State: ANhLgQ0K75o2PHden3hPXrwV0c1CKGvdcWuY4EI8ytj1eASNLkRmkx2/
 3lLEr1G8LD4nuhOukxcjpng=
X-Google-Smtp-Source: ADFU+vu1iw2ZSFt5GSelwBEMi5Omquzp5UhqGTINJpM8WwES6bFo3XFbBKyvQ9hZDg1Za30NhXHynA==
X-Received: by 2002:a05:620a:12d5:: with SMTP id
 e21mr6134610qkl.226.1584565933729; 
 Wed, 18 Mar 2020 14:12:13 -0700 (PDT)
Received: from fd42afb33d44.ufabc.int.br ([177.104.48.2])
 by smtp.gmail.com with ESMTPSA id x188sm128304qka.53.2020.03.18.14.12.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Mar 2020 14:12:13 -0700 (PDT)
From: Camylla Goncalves Cantanheide <c.cantanheide@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, lkcamp@lists.libreplanetbr.org
Subject: [PATCH v2] staging: rtl8192u: Corrects 'Avoid CamelCase' for variables
Date: Wed, 18 Mar 2020 21:12:05 +0000
Message-Id: <20200318211205.188-1-c.cantanheide@gmail.com>
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

The variables of function setKey triggered a 'Avoid CamelCase'
warning from checkpatch.pl. This patch renames these
variables to correct this warning.

Signed-off-by: Camylla Goncalves Cantanheide <c.cantanheide@gmail.com>
---
 drivers/staging/rtl8192u/r8192U_core.c | 52 +++++++++++++-------------
 1 file changed, 26 insertions(+), 26 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index 93a15d57e..3aa87296d 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -4877,50 +4877,50 @@ void EnableHWSecurityConfig8192(struct net_device *dev)
 	write_nic_byte(dev, SECR,  SECR_value);
 }
 
-void setKey(struct net_device *dev, u8 EntryNo, u8 KeyIndex, u16 KeyType,
-	    u8 *MacAddr, u8 DefaultKey, u32 *KeyContent)
+void setKey(struct net_device *dev, u8 entry_no, u8 key_idx, u16 key_type,
+	    u8 *mac_addr, u8 default_key, u32 *key_content)
 {
-	u32 TargetCommand = 0;
-	u32 TargetContent = 0;
-	u16 usConfig = 0;
+	u32 target_cmd = 0;
+	u32 content = 0;
+	u16 config = 0;
 	u8 i;
 
-	if (EntryNo >= TOTAL_CAM_ENTRY)
+	if (entry_no >= TOTAL_CAM_ENTRY)
 		RT_TRACE(COMP_ERR, "cam entry exceeds in %s\n", __func__);
 
 	RT_TRACE(COMP_SEC,
 		 "====>to %s, dev:%p, EntryNo:%d, KeyIndex:%d, KeyType:%d, MacAddr%pM\n",
-		 __func__, dev, EntryNo, KeyIndex, KeyType, MacAddr);
+		 __func__, dev, entry_no, key_idx, key_type, mac_addr);
 
-	if (DefaultKey)
-		usConfig |= BIT(15) | (KeyType << 2);
+	if (default_key)
+		config |= BIT(15) | (key_type << 2);
 	else
-		usConfig |= BIT(15) | (KeyType << 2) | KeyIndex;
+		config |= BIT(15) | (key_type << 2) | key_idx;
 
 	for (i = 0; i < CAM_CONTENT_COUNT; i++) {
-		TargetCommand  = i + CAM_CONTENT_COUNT * EntryNo;
-		TargetCommand |= BIT(31) | BIT(16);
+		target_cmd  = i + CAM_CONTENT_COUNT * entry_no;
+		target_cmd |= BIT(31) | BIT(16);
 
 		if (i == 0) { /* MAC|Config */
-			TargetContent = (u32)(*(MacAddr + 0)) << 16 |
-					(u32)(*(MacAddr + 1)) << 24 |
-					(u32)usConfig;
+			content = (u32)(*(mac_addr + 0)) << 16 |
+					(u32)(*(mac_addr + 1)) << 24 |
+					(u32)config;
 
-			write_nic_dword(dev, WCAMI, TargetContent);
-			write_nic_dword(dev, RWCAM, TargetCommand);
+			write_nic_dword(dev, WCAMI, content);
+			write_nic_dword(dev, RWCAM, target_cmd);
 		} else if (i == 1) { /* MAC */
-			TargetContent = (u32)(*(MacAddr + 2))	 |
-					(u32)(*(MacAddr + 3)) <<  8 |
-					(u32)(*(MacAddr + 4)) << 16 |
-					(u32)(*(MacAddr + 5)) << 24;
-			write_nic_dword(dev, WCAMI, TargetContent);
-			write_nic_dword(dev, RWCAM, TargetCommand);
+			content = (u32)(*(mac_addr + 2))	 |
+					(u32)(*(mac_addr + 3)) <<  8 |
+					(u32)(*(mac_addr + 4)) << 16 |
+					(u32)(*(mac_addr + 5)) << 24;
+			write_nic_dword(dev, WCAMI, content);
+			write_nic_dword(dev, RWCAM, target_cmd);
 		} else {
 			/* Key Material */
-			if (KeyContent) {
+			if (key_content) {
 				write_nic_dword(dev, WCAMI,
-						*(KeyContent + i - 2));
-				write_nic_dword(dev, RWCAM, TargetCommand);
+						*(key_content + i - 2));
+				write_nic_dword(dev, RWCAM, target_cmd);
 			}
 		}
 	}
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
