Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AAB815B7E1
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Jul 2019 11:18:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 58A5D8651C;
	Mon,  1 Jul 2019 09:18:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q814Fyj7Jxyn; Mon,  1 Jul 2019 09:18:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0B82F86581;
	Mon,  1 Jul 2019 09:18:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EA1BF1BF59F
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 09:18:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DF5EB879DA
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 09:18:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ANwcBDAwWcZF for <devel@linuxdriverproject.org>;
 Mon,  1 Jul 2019 09:18:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9EFEF879A6
 for <devel@driverdev.osuosl.org>; Mon,  1 Jul 2019 09:18:50 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id p184so6260341pfp.7
 for <devel@driverdev.osuosl.org>; Mon, 01 Jul 2019 02:18:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=P2zqDNx81xjwkuL9y+bIrcF2swVIAhX3OCR1yldySqU=;
 b=aqA/U6twMg0Oihh9505JcUcWVpVV2E/fw22ta9inVhgZkOx5eTnHKX/ukDC63rWQOX
 1wrPaAAKltdlOEoNnBKHXNAv7pU3/ekti86/QumCpO+boWBKQt/HwDv55X/FiET5m6pg
 ySpYv8keoMi9vToTdFKx3vNJIk9s8/jNXtKtGs4xLIV+2H2s81PoOg6bbWmy6MHcayKC
 3Nq202TVZ28djFhdEEywo1oWp9/0v+I15GqWbADlfRwXfar3KywmwTtgVUCgfx/hNIZE
 HfYfLYxbdNq7ygRCIlEhRBeausKxVZRiJ8J2YI88i+sVWZOFJe7RAqNBnBgj+whifI9e
 OZfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=P2zqDNx81xjwkuL9y+bIrcF2swVIAhX3OCR1yldySqU=;
 b=Bf9FCayVoTYiVob2SsuxP0dXQNSUzi09yPozMgF2PJpu5TfmGbBAIqjONE7kU0vQLE
 44htyCjJLv0poQqq9QosOxaqAc6FHPoX1qojqgAyW6ko5O9s5Bw4GbagB9qGCzctTr+R
 4z+mqa9OOfroCNGJhbPpN4ZLPHGD8C+V4otwQNZbroGEpbpjPa4FDBkDnjzeVEijBOdz
 f59vgEBrHnafMyY8v5+2jCBo0xCxE39IrXqaZ5z0dJ2Jda8yO5WiVd7LDWrCTgd0QFX6
 OYtLf5ggEBfCt14xYLo1Kp2YVnHsJNyA+rFh8wOF/lA1zZi1nPKbaSVvHzPn9cj1qsQI
 KHjw==
X-Gm-Message-State: APjAAAVMeVRdE/HKW6Tq1VjQN+nPQ9lqL8t1KnYPI4vbOGLxii/QOFQk
 HzxTWj0NEH5xVyLzEj+QnyA=
X-Google-Smtp-Source: APXvYqzj9lKOqDKrn6l5mtkAuofqaWyMdueC4tu+raAwMaKnv90w861WKr1b6AEjyX23ARYQ31NMwQ==
X-Received: by 2002:a63:490a:: with SMTP id w10mr23360264pga.6.1561972730319; 
 Mon, 01 Jul 2019 02:18:50 -0700 (PDT)
Received: from localhost.localdomain ([122.163.64.117])
 by smtp.gmail.com with ESMTPSA id 25sm10137911pfp.76.2019.07.01.02.18.48
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 01 Jul 2019 02:18:50 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 10/10] staging: rtl8723bs: Remove rtw_btcoex_GetRaMask()
Date: Mon,  1 Jul 2019 14:48:17 +0530
Message-Id: <20190701091817.12759-10-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190701091817.12759-1-nishkadg.linux@gmail.com>
References: <20190701091817.12759-1-nishkadg.linux@gmail.com>
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

Remove function rtw_btcoex_GetRaMask as all it does is call
hal_btcoex_GetRaMask.
Modify call site accordingly.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_btcoex.c       | 5 -----
 drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c | 2 +-
 drivers/staging/rtl8723bs/include/rtw_btcoex.h    | 1 -
 3 files changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_btcoex.c b/drivers/staging/rtl8723bs/core/rtw_btcoex.c
index 0d4367a0961a..915cd093a759 100644
--- a/drivers/staging/rtl8723bs/core/rtw_btcoex.c
+++ b/drivers/staging/rtl8723bs/core/rtw_btcoex.c
@@ -67,11 +67,6 @@ void rtw_btcoex_SetSingleAntPath(struct adapter *padapter, u8 singleAntPath)
 	hal_btcoex_SetSingleAntPath(padapter, singleAntPath);
 }
 
-u32 rtw_btcoex_GetRaMask(struct adapter *padapter)
-{
-	return hal_btcoex_GetRaMask(padapter);
-}
-
 void rtw_btcoex_DisplayBtCoexInfo(struct adapter *padapter, u8 *pbuf, u32 bufsize)
 {
 	hal_btcoex_DisplayBtCoexInfo(padapter, pbuf, bufsize);
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
index 92e39ebf2dc6..79929f957c60 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
@@ -2153,7 +2153,7 @@ static void UpdateHalRAMask8723B(struct adapter *padapter, u32 mac_id, u8 rssi_l
 
 	mask &= rate_bitmap;
 
-	rate_bitmap = rtw_btcoex_GetRaMask(padapter);
+	rate_bitmap = hal_btcoex_GetRaMask(padapter);
 	mask &= ~rate_bitmap;
 
 #ifdef CONFIG_CMCC_TEST
diff --git a/drivers/staging/rtl8723bs/include/rtw_btcoex.h b/drivers/staging/rtl8723bs/include/rtw_btcoex.h
index 93aa4bc90c9e..9293a6705783 100644
--- a/drivers/staging/rtl8723bs/include/rtw_btcoex.h
+++ b/drivers/staging/rtl8723bs/include/rtw_btcoex.h
@@ -22,7 +22,6 @@ void rtw_btcoex_HaltNotify(struct adapter *);
 s32 rtw_btcoex_IsBTCoexCtrlAMPDUSize(struct adapter *);
 void rtw_btcoex_SetPGAntNum(struct adapter *, u8 antNum);
 void rtw_btcoex_SetSingleAntPath(struct adapter *padapter, u8 singleAntPath);
-u32 rtw_btcoex_GetRaMask(struct adapter *);
 void rtw_btcoex_DisplayBtCoexInfo(struct adapter *, u8 *pbuf, u32 bufsize);
 void rtw_btcoex_SetDBG(struct adapter *, u32 *pDbgModule);
 u32 rtw_btcoex_GetDBG(struct adapter *, u8 *pStrBuf, u32 bufSize);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
