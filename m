Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4428B187B90
	for <lists+driverdev-devel@lfdr.de>; Tue, 17 Mar 2020 09:51:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EA8AE88C01;
	Tue, 17 Mar 2020 08:51:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yDsoRsP1wuC1; Tue, 17 Mar 2020 08:51:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1ADD088BA8;
	Tue, 17 Mar 2020 08:51:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 655971BF293
 for <devel@linuxdriverproject.org>; Tue, 17 Mar 2020 08:51:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 60EDF8839F
 for <devel@linuxdriverproject.org>; Tue, 17 Mar 2020 08:51:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YKAG2D++6F-v for <devel@linuxdriverproject.org>;
 Tue, 17 Mar 2020 08:51:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qv1-f65.google.com (mail-qv1-f65.google.com
 [209.85.219.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 84843882F6
 for <devel@driverdev.osuosl.org>; Tue, 17 Mar 2020 08:51:43 +0000 (UTC)
Received: by mail-qv1-f65.google.com with SMTP id v38so6384522qvf.6
 for <devel@driverdev.osuosl.org>; Tue, 17 Mar 2020 01:51:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=INqhK7Tn9oxQPBAc7BD8ij5pQ/ONv1O3XGwD9BE+Z9w=;
 b=YBB4BI63VmgXBGwknUi+l/UnuhFHAmxziyw5LWEGE+I+r2mfw4Q1hMXXTS0Z/eMes1
 9/67uhRS7+tgxeAonxh+FJ9zVhokwRmmBqrLVgR6Wx+jJrDl9OMVX90Tpy2sVyQUwb3H
 fLY1ui5Voy9IQwPYdToPVAernh6dcDYc9+hF0FQwQhJB1LM3jDgB6sG3bPW2ZmSV4msp
 5PH+qntCQ9AghfFU0veJXJOHxVMiD6/6HWPi7b6D5WOz9dMDRMumwjM+9BO1YrvEtcUK
 R0mGzuLBO5rVH17y4yeekdQBgqNrQSi0pU3dM1e40qpvFJd3MfZdxmXwvzU8YwZq1nXX
 xpUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=INqhK7Tn9oxQPBAc7BD8ij5pQ/ONv1O3XGwD9BE+Z9w=;
 b=h/tuRL+A0dGHXX/T75BexLuYI21+cn69ur1H1Pue185PAftANndr+9H1D61cnGo2sv
 JxWd/0Wpc3cpZKy6cBLOHzdKjE0ZqgCVNqqBT3Z0LqzJnRq3q+Dpq0+O9oLOSsmVqJY7
 ocA+RAoFO7xiFanGxR9xWhQTqv9jyJ6hsUAMnP6ys7bZQg1hLOtPLc7la022W+yykWHD
 1ZFZsK3qEfD5B6CFJSLhZCwy2C0bYyf0V5Y54mBGwBjxkpNfQasbD3LVscAvdHo8G8Us
 GAshoCLLQrWSDb77B/ZkPBEQQVwKGhKtli1RHKxLDnuRu1VCRTtz+EC9SDBleytZFcvb
 6WoA==
X-Gm-Message-State: ANhLgQ3kW8fuTMkMjNzBiuTe3nhNV08r/GbKU8laV0v+7BsevszRbFgV
 oQ9egSWdnjQ/uS8QRBnAqKk=
X-Google-Smtp-Source: ADFU+vtx16r3AcVpqLf2rctzR7/WHQ2N5K0LRyGWfhAEQo+pLWj5aDNdNqlOk2On1kNVCS3K5a3J8w==
X-Received: by 2002:a0c:f601:: with SMTP id r1mr3744281qvm.91.1584435102383;
 Tue, 17 Mar 2020 01:51:42 -0700 (PDT)
Received: from localhost.localdomain (179.186.61.135.dynamic.adsl.gvt.net.br.
 [179.186.61.135])
 by smtp.gmail.com with ESMTPSA id s4sm1884404qte.36.2020.03.17.01.51.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Mar 2020 01:51:42 -0700 (PDT)
From: Camylla Goncalves Cantanheide <c.cantanheide@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, lkcamp@lists.libreplanetbr.org
Subject: [PATCH 2/2] staging: rtl8192u: Corrects 'Avoid CamelCase' for
 variables
Date: Tue, 17 Mar 2020 08:51:30 +0000
Message-Id: <20200317085130.21213-2-c.cantanheide@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200317085130.21213-1-c.cantanheide@gmail.com>
References: <20200317085130.21213-1-c.cantanheide@gmail.com>
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
index 93a15d57e..fcfb9024a 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -4877,50 +4877,50 @@ void EnableHWSecurityConfig8192(struct net_device *dev)
 	write_nic_byte(dev, SECR,  SECR_value);
 }
 
-void setKey(struct net_device *dev, u8 EntryNo, u8 KeyIndex, u16 KeyType,
-	    u8 *MacAddr, u8 DefaultKey, u32 *KeyContent)
+void setKey(struct net_device *dev, u8 entryno, u8 keyindex, u16 keytype,
+	    u8 *macaddr, u8 defaultkey, u32 *keycontent)
 {
-	u32 TargetCommand = 0;
-	u32 TargetContent = 0;
-	u16 usConfig = 0;
+	u32 target_command = 0;
+	u32 target_content = 0;
+	u16 us_config = 0;
 	u8 i;
 
-	if (EntryNo >= TOTAL_CAM_ENTRY)
+	if (entryno >= TOTAL_CAM_ENTRY)
 		RT_TRACE(COMP_ERR, "cam entry exceeds in %s\n", __func__);
 
 	RT_TRACE(COMP_SEC,
 		 "====>to %s, dev:%p, EntryNo:%d, KeyIndex:%d, KeyType:%d, MacAddr%pM\n",
-		 __func__, dev, EntryNo, KeyIndex, KeyType, MacAddr);
+		 __func__, dev, entryno, keyindex, keytype, macaddr);
 
-	if (DefaultKey)
-		usConfig |= BIT(15) | (KeyType << 2);
+	if (defaultkey)
+		us_config |= BIT(15) | (keytype << 2);
 	else
-		usConfig |= BIT(15) | (KeyType << 2) | KeyIndex;
+		us_config |= BIT(15) | (keytype << 2) | keyindex;
 
 	for (i = 0; i < CAM_CONTENT_COUNT; i++) {
-		TargetCommand  = i + CAM_CONTENT_COUNT * EntryNo;
-		TargetCommand |= BIT(31) | BIT(16);
+		target_command  = i + CAM_CONTENT_COUNT * entryno;
+		target_command |= BIT(31) | BIT(16);
 
 		if (i == 0) { /* MAC|Config */
-			TargetContent = (u32)(*(MacAddr + 0)) << 16 |
-					(u32)(*(MacAddr + 1)) << 24 |
-					(u32)usConfig;
+			target_content = (u32)(*(macaddr + 0)) << 16 |
+					(u32)(*(macaddr + 1)) << 24 |
+					(u32)us_config;
 
-			write_nic_dword(dev, WCAMI, TargetContent);
-			write_nic_dword(dev, RWCAM, TargetCommand);
+			write_nic_dword(dev, WCAMI, target_content);
+			write_nic_dword(dev, RWCAM, target_command);
 		} else if (i == 1) { /* MAC */
-			TargetContent = (u32)(*(MacAddr + 2))	 |
-					(u32)(*(MacAddr + 3)) <<  8 |
-					(u32)(*(MacAddr + 4)) << 16 |
-					(u32)(*(MacAddr + 5)) << 24;
-			write_nic_dword(dev, WCAMI, TargetContent);
-			write_nic_dword(dev, RWCAM, TargetCommand);
+			target_content = (u32)(*(macaddr + 2))	 |
+					(u32)(*(macaddr + 3)) <<  8 |
+					(u32)(*(macaddr + 4)) << 16 |
+					(u32)(*(macaddr + 5)) << 24;
+			write_nic_dword(dev, WCAMI, target_content);
+			write_nic_dword(dev, RWCAM, target_command);
 		} else {
 			/* Key Material */
-			if (KeyContent) {
+			if (keycontent) {
 				write_nic_dword(dev, WCAMI,
-						*(KeyContent + i - 2));
-				write_nic_dword(dev, RWCAM, TargetCommand);
+						*(keycontent + i - 2));
+				write_nic_dword(dev, RWCAM, target_command);
 			}
 		}
 	}
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
