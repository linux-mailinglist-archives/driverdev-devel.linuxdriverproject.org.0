Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A5FA2384DF
	for <lists+driverdev-devel@lfdr.de>; Fri,  7 Jun 2019 09:21:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BD98120513;
	Fri,  7 Jun 2019 07:20:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MANmbaoeaWuI; Fri,  7 Jun 2019 07:20:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B2F15204A4;
	Fri,  7 Jun 2019 07:20:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3510A1BF333
 for <devel@linuxdriverproject.org>; Fri,  7 Jun 2019 07:20:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1922A204A4
 for <devel@linuxdriverproject.org>; Fri,  7 Jun 2019 07:20:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eknnC7Pxcjm8 for <devel@linuxdriverproject.org>;
 Fri,  7 Jun 2019 07:20:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 6EA7F2037A
 for <devel@driverdev.osuosl.org>; Fri,  7 Jun 2019 07:20:55 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id k187so192981pga.0
 for <devel@driverdev.osuosl.org>; Fri, 07 Jun 2019 00:20:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3s2Am2EXinIk1Cx3geFx3zyzkfhWkzc/aAXsSIIwy/4=;
 b=Nnwr/JXeTJIWPKjDDIY3rYwgxaUZr+W6/fvuDCn6Tpqm+ukyw2q216RHi9d4qF4UpQ
 fWu+QbfXKuo3xSPuUof/XqDURKl4WO97/XWFRwqPh6bGTbXXxr6v6RD2kdqrI0Rpmx3k
 ZkrasFu1neX7DISxTjaKQS9I+tuiaCWNlAXyL5mss6mLaNOlLGKFjtuWUmkuouF3hc3B
 gF75blTIvbgRB/LF33pbbXxl8ytOaLD/5HvTl2L7jf38jhwib226nN83t6sTPrncQXAl
 XywcMmtrqmN4EzupIK3zqk9UG2Qh2QBBTqTprQU0o2dZjnk1Y0cvZzNycSAaNrYoPvHE
 GCNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3s2Am2EXinIk1Cx3geFx3zyzkfhWkzc/aAXsSIIwy/4=;
 b=WilgmAbNapbe7FI1Lfl/FgEA1EcRgi6x4lvEfE4sU+kfditi0oFFEHPpNSEiVfmeZe
 c6htS1SeTy5hxpxH9KyfaPMdD/pam22q5iqHoPWyFzoRHdv0ltDQVLG0H0lbLe/ia0V+
 jQ5TEBKKbsP3KIBGBhqh1mszf1CqiaAJuA9nuPzydOXNW3uKQlRjSmq6fdIlp+PAdumr
 eQiHT7hyMiqZ4xZlm+OXnAOHcbwSassE9tRI/f4Zh3mf6/9AhvKtABDXcw7E1/beHqP6
 zP0j+hz1Ve4tKmTnRClhf+2QftVUGk49kD/X8ZBpGo+dgYZYpSSju9Rkle0AMAAIwFjG
 ryXQ==
X-Gm-Message-State: APjAAAW4kg8Dxq2UpfmgglwgKAe5zaO9r4vL7XN0ojQPbtR5eeQ1jETM
 UXfsPz2YwVKilzSlMjK81v8=
X-Google-Smtp-Source: APXvYqz4GA56O/vf+BShmfyDWKA++Cn5Rbi7jwTdvBjuCIhbipdUaQDpIT2JfB4Fiulm3lnYiGKjew==
X-Received: by 2002:a17:90a:21ac:: with SMTP id
 q41mr4029805pjc.31.1559892055103; 
 Fri, 07 Jun 2019 00:20:55 -0700 (PDT)
Received: from localhost.localdomain ([110.227.95.145])
 by smtp.gmail.com with ESMTPSA id t24sm1178302pfh.113.2019.06.07.00.20.52
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 07 Jun 2019 00:20:54 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, hardiksingh.k@gmail.com
Subject: [PATCH] staging: rtl8723bs: hal: hal_btcoex.c: Remove variable
Date: Fri,  7 Jun 2019 12:50:44 +0530
Message-Id: <20190607072044.28481-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
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

Remove variable and use the values directly.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/hal/hal_btcoex.c | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/hal_btcoex.c b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
index 6caddd7834a1..aebe8b8977ad 100644
--- a/drivers/staging/rtl8723bs/hal/hal_btcoex.c
+++ b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
@@ -362,15 +362,9 @@ static u32 halbtcoutsrc_GetBtPatchVer(PBTC_COEXIST pBtCoexist)
 
 static s32 halbtcoutsrc_GetWifiRssi(struct adapter *padapter)
 {
-	struct hal_com_data *pHalData;
-	s32 UndecoratedSmoothedPWDB = 0;
-
-
-	pHalData = GET_HAL_DATA(padapter);
-
-	UndecoratedSmoothedPWDB = pHalData->dmpriv.EntryMinUndecoratedSmoothedPWDB;
+	struct hal_com_data *pHalData = GET_HAL_DATA(padapter);
 
-	return UndecoratedSmoothedPWDB;
+	return pHalData->dmpriv.EntryMinUndecoratedSmoothedPWDB;
 }
 
 static u8 halbtcoutsrc_GetWifiScanAPNum(struct adapter *padapter)
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
