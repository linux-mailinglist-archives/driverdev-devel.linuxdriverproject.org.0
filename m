Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A72975526
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Jul 2019 19:10:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1E06287196;
	Thu, 25 Jul 2019 17:10:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3+bmV+YoB5Aq; Thu, 25 Jul 2019 17:10:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 553E9871E0;
	Thu, 25 Jul 2019 17:10:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3B7561BF312
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 17:09:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 011F88407F
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 17:09:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xM-RB1cSQmwO for <devel@linuxdriverproject.org>;
 Thu, 25 Jul 2019 17:09:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8BA8B83754
 for <devel@driverdev.osuosl.org>; Thu, 25 Jul 2019 17:09:39 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id 31so51625124wrm.1
 for <devel@driverdev.osuosl.org>; Thu, 25 Jul 2019 10:09:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ec8xBLIRJMB96z4CmSL5OwNWKBAlshAdxvW0h7AzbUM=;
 b=S3y7KyeYp3mLwmfxuf2K68/8o8WfH4ywasVTEy02uE1pjhWHzzu7V7t7YmGASUon1u
 EAsFFpV3kqnMrmSqmBGt9tMWCS0JC04sBVsH3JWDhIfpAk4UK3QCbfI5pKLaUWn9dn7S
 mqJyEEkPeRBAKtSyOTz+QAB31IZXoATamOBLvDAS3233Noms5NkRD7l5qIr38oFG29B6
 91IXIE6ULkI8LvABripYwAQURI+Qp+DPvk/BFfBHZkgd7F/cnhfX+ZZI9ahEv/tGcEHs
 hhIUpLi+MTBAUIVjyJDjL+Wxrv2GBiyP86/+YV9ORwZ3eaATIRv6SpSdjP/Pi4/I82tg
 m5TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ec8xBLIRJMB96z4CmSL5OwNWKBAlshAdxvW0h7AzbUM=;
 b=bj8KfzIsoESyQOEpg06RJ+w53PhTpZLB9p1NQmYK3nUXbxLcL3iynFj8nTYJ2rK8Kw
 5OPSZ6RBoQCh+l5UqXy1oDkfDpdY+oQvCADCnQZReGfxyLUVY3e1zJ0MIRI0fXTUqle/
 X8ZWyS68iy8utq0Vf2+R1W9OzqundSG6BkNqXKrRST1xfeZ/uIE97lLkaKmXY2EqgJ/f
 y4wGTV/mCS3kNGch8PIDcVCEuG/rPNExdrb0bX04Wch4+8Q92RoeyXirYzSBNGzvomIQ
 1a5bQK/8S70cJGx+chsuD+Jzr4EbWIp2maqrSrYfLeZ4yk88PXXEVwZBzqweJDAlY12f
 UDyA==
X-Gm-Message-State: APjAAAXI3lyeqx1HaepOUW1h2PedSewuaR7MNZGyQSx1Uu/aNWtlRk8L
 SZBSRiPLuErGTUd5lJMeaV8=
X-Google-Smtp-Source: APXvYqywFsQEc1QbUaQQXS0GyR+xSbYgUggabL+ep/LI0JjoGPt5AHn+YExhm9rCT3TsL1LnXwppRw==
X-Received: by 2002:a5d:618d:: with SMTP id j13mr94779237wru.195.1564074577933; 
 Thu, 25 Jul 2019 10:09:37 -0700 (PDT)
Received: from localhost.localdomain
 ([2a02:8108:96bf:e0ab:2b68:5d76:a12a:e6ba])
 by smtp.gmail.com with ESMTPSA id u6sm51798911wml.9.2019.07.25.10.09.37
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 25 Jul 2019 10:09:37 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8188eu: replace hal_EfusePgCheckAvailableAddr()
Date: Thu, 25 Jul 2019 19:09:22 +0200
Message-Id: <20190725170922.16465-1-straube.linux@gmail.com>
X-Mailer: git-send-email 2.22.0
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Function hal_EfusePgCheckAvailableAddr() contains just a single if
test. Remove the function and replace the call to it with the if test.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_efuse.c | 13 +------------
 1 file changed, 1 insertion(+), 12 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_efuse.c b/drivers/staging/rtl8188eu/core/rtw_efuse.c
index 51c3dd6d7ffb..533ca1ddffb0 100644
--- a/drivers/staging/rtl8188eu/core/rtw_efuse.c
+++ b/drivers/staging/rtl8188eu/core/rtw_efuse.c
@@ -763,17 +763,6 @@ static bool hal_EfusePartialWriteCheck(struct adapter *pAdapter, u8 efuseType, u
 	return ret;
 }
 
-static bool
-hal_EfusePgCheckAvailableAddr(
-		struct adapter *pAdapter,
-		u8 efuseType
-	)
-{
-	if (Efuse_GetCurrentSize(pAdapter) >= EFUSE_MAP_LEN_88E)
-		return false;
-	return true;
-}
-
 static void hal_EfuseConstructPGPkt(u8 offset, u8 word_en, u8 *pData, struct pgpkt *pTargetPkt)
 {
 	memset((void *)pTargetPkt->data, 0xFF, sizeof(u8)*8);
@@ -789,7 +778,7 @@ bool Efuse_PgPacketWrite(struct adapter *pAdapter, u8 offset, u8 word_en, u8 *pD
 	u16			startAddr = 0;
 	u8 efuseType = EFUSE_WIFI;
 
-	if (!hal_EfusePgCheckAvailableAddr(pAdapter, efuseType))
+	if (Efuse_GetCurrentSize(pAdapter) >= EFUSE_MAP_LEN_88E)
 		return false;
 
 	hal_EfuseConstructPGPkt(offset, word_en, pData, &targetPkt);
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
