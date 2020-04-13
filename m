Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 02F4D1A61A9
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Apr 2020 05:01:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id ADBA985CE0;
	Mon, 13 Apr 2020 03:01:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L403MDQl4Ap4; Mon, 13 Apr 2020 03:01:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4469D85C7D;
	Mon, 13 Apr 2020 03:01:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0F2E81BF2B8
 for <devel@linuxdriverproject.org>; Mon, 13 Apr 2020 03:01:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 09D1384AC5
 for <devel@linuxdriverproject.org>; Mon, 13 Apr 2020 03:01:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VQIouBek3-OY for <devel@linuxdriverproject.org>;
 Mon, 13 Apr 2020 03:01:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qv1-f68.google.com (mail-qv1-f68.google.com
 [209.85.219.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1E609849A3
 for <devel@driverdev.osuosl.org>; Mon, 13 Apr 2020 03:01:35 +0000 (UTC)
Received: by mail-qv1-f68.google.com with SMTP id o15so3811680qvl.3
 for <devel@driverdev.osuosl.org>; Sun, 12 Apr 2020 20:01:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=iBamg6b+a8xdsXs8Iaan2CedZk8W62JWzS+doU1fNjA=;
 b=kSycNdF5dc1ojI+1otX03hnu3Kr1uHBZTSwUPC6GcLWDJedYRNgEV6CnMHk8kzkjpp
 zV9nE9uqJoU+5/7nEtJAf3rq/SlhPDHpGWI6UzNqzvuM20C7deThGBzBJ6ZHmBIBhLVA
 W8aOQ08IyXJVcf1+XDY+v4cyjq9f2uJncDmdP5GXqeYBssLLleqIxN9EYvw93wOCb3M/
 smcwu6+MzNYS7ftckYDsoTN+JXvcwzMo/dbYV9euHdA53EmNFRvVGA7JZ9rrXP8b9HLL
 CFv5xDzqO/mahGDkgwLxCI2piNsr69dTkCimmkzB7jebycPIp2ggPO4ZQi1XydPNayvQ
 V6Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iBamg6b+a8xdsXs8Iaan2CedZk8W62JWzS+doU1fNjA=;
 b=RBMfaRqhGBZHwengsHQ1KUsH2Hhc6v2y4N3ZkPX05AbCQCiKvKGV8i126RHcc8wnSU
 r0DFqHO4GYk1zLRIYKWmzxVz3NuRkmpXEdHFib6os9tPnoR6jZvEv1yATAGaWwNc5dlU
 h60yE7SbzNJzxttZZiwy2b97WWfmDJwo5riRdbmz29qIYJ1MjmX/jFxmygM+pvrfswKk
 IWpcK4CuHRVVNDlCd+M2PvORq4gwkIdvOG415/r3KhslbNKIMJbKW/yuWFTBTbKy0/kp
 vjmbiR20msmeVBcqjP6QHQrEr8B1u7zehfSfuSn5P9Tz8al7E/3Tor1JwzUeq/dG/W6I
 dX+w==
X-Gm-Message-State: AGi0PuZHeiede5++AtvFEfVrmbjupMH36YEedXIbmmj1EdWsbkuRY9wf
 CooHz9p7T7ZqPZCopMY5WY8=
X-Google-Smtp-Source: APiQypKyKsPE1udzaBgRtq8WySzkjFESxDLp4oQm6bTnXYTS0SwxGjyCLpqbAl18kaFeFN0CD/oiPA==
X-Received: by 2002:a05:6214:183:: with SMTP id
 q3mr15807286qvr.234.1586746894071; 
 Sun, 12 Apr 2020 20:01:34 -0700 (PDT)
Received: from localhost.localdomain ([189.78.178.135])
 by smtp.gmail.com with ESMTPSA id i20sm7208754qkl.135.2020.04.12.20.01.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 12 Apr 2020 20:01:33 -0700 (PDT)
From: Camylla Goncalves Cantanheide <c.cantanheide@gmail.com>
To: gregkh@linuxfoundation.org, navid.emamdoost@gmail.com,
 sylphrenadin@gmail.com, nishkadg.linux@gmail.com, stephen@brennan.io,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 lkcamp@lists.libreplanetbr.org
Subject: [PATCH 2/2] staging: rtl8192u: Renames variables in setKey function
Date: Mon, 13 Apr 2020 03:01:29 +0000
Message-Id: <20200413030129.861-2-c.cantanheide@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200413030129.861-1-c.cantanheide@gmail.com>
References: <20200413030129.861-1-c.cantanheide@gmail.com>
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

Renames the local variables of the setKey
function, making them explicit.

Signed-off-by: Camylla Goncalves Cantanheide <c.cantanheide@gmail.com>
---
 drivers/staging/rtl8192u/r8192U_core.c | 48 +++++++++++++-------------
 1 file changed, 24 insertions(+), 24 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index 87c02aee3854..cc02c3b1eb91 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -4877,48 +4877,48 @@ void EnableHWSecurityConfig8192(struct net_device *dev)
 	write_nic_byte(dev, SECR,  SECR_value);
 }
 
-void setKey(struct net_device *dev, u8 entryno, u8 keyindex, u16 keytype,
-	    u8 *macaddr, u8 defaultkey, u32 *keycontent)
+void setKey(struct net_device *dev, u8 entry_no, u8 key_idx, u16 key_type,
+	    u8 *mac_addr, u8 default_key, u32 *key_content)
 {
-	u32 target_command = CAM_CONTENT_COUNT * entryno |  BIT(31) | BIT(16);
-	u32 target_content = 0;
-	u16 us_config = 0;
+	u32 cmd = CAM_CONTENT_COUNT * entry_no |  BIT(31) | BIT(16);
+	u32 content = 0;
+	u16 config = 0;
 	u8 i;
 
-	if (entryno >= TOTAL_CAM_ENTRY)
+	if (entry_no >= TOTAL_CAM_ENTRY)
 		RT_TRACE(COMP_ERR, "cam entry exceeds in %s\n", __func__);
 
 	RT_TRACE(COMP_SEC,
 		 "====>to %s, dev:%p, EntryNo:%d, KeyIndex:%d, KeyType:%d, MacAddr%pM\n",
-		 __func__, dev, entryno, keyindex, keytype, macaddr);
+		 __func__, dev, entry_no, key_idx, key_type, mac_addr);
 
-	if (defaultkey)
-		us_config |= BIT(15) | (keytype << 2);
+	if (default_key)
+		config |= BIT(15) | (key_type << 2);
 	else
-		us_config |= BIT(15) | (keytype << 2) | keyindex;
+		config |= BIT(15) | (key_type << 2) | key_idx;
 
-	target_content = macaddr[0] << 16 |
-			 macaddr[0] << 24 |
-			(u32)us_config;
+	content = mac_addr[0] << 16 |
+		  mac_addr[0] << 24 |
+		 (u32)config;
 
-	write_nic_dword(dev, WCAMI, target_content);
-	write_nic_dword(dev, RWCAM, target_command++);
+	write_nic_dword(dev, WCAMI, content);
+	write_nic_dword(dev, RWCAM, cmd++);
 
 	/* MAC */
-	target_content = macaddr[2]	  |
-			 macaddr[3] <<  8 |
-			 macaddr[4] << 16 |
-			 macaddr[5] << 24;
-	write_nic_dword(dev, WCAMI, target_content);
-	write_nic_dword(dev, RWCAM, target_command++);
+	content = mac_addr[2]	    |
+		  mac_addr[3] <<  8 |
+		  mac_addr[4] << 16 |
+		  mac_addr[5] << 24;
+	write_nic_dword(dev, WCAMI, content);
+	write_nic_dword(dev, RWCAM, cmd++);
 
 	/* Key Material */
-	if (!keycontent)
+	if (!key_content)
 		return;
 
 	for (i = 2; i < CAM_CONTENT_COUNT; i++) {
-		write_nic_dword(dev, WCAMI, *keycontent++);
-		write_nic_dword(dev, RWCAM, target_command++);
+		write_nic_dword(dev, WCAMI, *key_content++);
+		write_nic_dword(dev, RWCAM, cmd++);
 	}
 }
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
