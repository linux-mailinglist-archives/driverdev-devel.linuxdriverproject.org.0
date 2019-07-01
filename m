Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 985CE5B7DF
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Jul 2019 11:18:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5202E879EF;
	Mon,  1 Jul 2019 09:18:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gvvMCIjucwaL; Mon,  1 Jul 2019 09:18:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C6092879CC;
	Mon,  1 Jul 2019 09:18:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8E04D1BF59F
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 09:18:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 833F0879A7
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 09:18:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ullqIA2fW0Cq for <devel@linuxdriverproject.org>;
 Mon,  1 Jul 2019 09:18:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 95AB0879A6
 for <devel@driverdev.osuosl.org>; Mon,  1 Jul 2019 09:18:48 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id s27so5747294pgl.2
 for <devel@driverdev.osuosl.org>; Mon, 01 Jul 2019 02:18:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qzUe+7gJanQR+iRzZDPa0AT8Q6wSLKFrUr8/xYTIBLw=;
 b=WuWyX6nCXAg1W9vfSuEdVZn6Yun4JsmBcyMUfxUNAzxIvfCZbzOebYi20jyMgpLAyU
 yfvKlVw2ypcWqYpjOWOSDGKy+p/GSthJHAJxwhUFqkFWE4uTKZoAV2a7SJH5JOZ3vRzJ
 9afNTHwKDxAl5A5ss29PAxcA4hSOSVIzvN/CTLu5U+J9o4th/h/Sw3tAYRike2/CJ9l3
 mM0KAM9voH0GeruzM+WkbQHGhjBjGBPMYulsV2BVm8VnoOLTMRCaWEQDJsw0klwF4NMU
 RHHW0SUV5NSHmQylxST7aLYhEFJIjj72WyFIULQNruizyu4C9ESjb0npcvxkILxLKqIG
 XF5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qzUe+7gJanQR+iRzZDPa0AT8Q6wSLKFrUr8/xYTIBLw=;
 b=jPHV5YJ8mI+KVN5gEqtrWWCijdRHHf2PB7ZThGnLiJndKsuMDvzwvjoSzSDQaC1gpD
 T/easmq6ViEydOoxwE+08oA3Su3+cVEDPYd7M4nJmMYj8jLPYY/Dq/ic4Xrvkbh7G81N
 Gkfhcca1QXOTbcTaHwzzh/zuf0mxNR+BU6wUCSe5Tv2I6vMzEKzXTm6CRBogDt5D+P1W
 7Xy3dxvWvUK3uhi9X3mUvbS0DKbEZjamouPOW7NcO/gshLuwLIAyM+zsgU2f9WsPhjX0
 S+CNpHieX/o/Y9gtpwsYPjnzvJnH5Kh+wGtJqB5cFBqk0RL/54veQtAb/QI5AUQXKkws
 sXIg==
X-Gm-Message-State: APjAAAXMH6wNzSbE20yUaPwwadTB4duINTvX70Yk6fa5TNI/6pAkuCSo
 KR9fHMlA1hk9uYPOxFE6sGE=
X-Google-Smtp-Source: APXvYqwGxW+UTlGKu1j+/OqkVa79KYwxVvwTlkKF7yzjpyFp4GcJYQY266wqoVcTf+dTuMPnYjno5g==
X-Received: by 2002:a63:506:: with SMTP id 6mr11548658pgf.434.1561972728276;
 Mon, 01 Jul 2019 02:18:48 -0700 (PDT)
Received: from localhost.localdomain ([122.163.64.117])
 by smtp.gmail.com with ESMTPSA id 25sm10137911pfp.76.2019.07.01.02.18.46
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 01 Jul 2019 02:18:47 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 09/10] staging: rtl8723bs: Remove rtw_btcoex_SetChipType()
Date: Mon,  1 Jul 2019 14:48:16 +0530
Message-Id: <20190701091817.12759-9-nishkadg.linux@gmail.com>
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

Remove function rtw_btcoex_SetChipType as it does nothing but call
hal_btcoex_SetChipType.
Modify call site accordingly.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_btcoex.c       | 5 -----
 drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c | 2 +-
 drivers/staging/rtl8723bs/include/rtw_btcoex.h    | 1 -
 3 files changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_btcoex.c b/drivers/staging/rtl8723bs/core/rtw_btcoex.c
index 276aaab2781b..0d4367a0961a 100644
--- a/drivers/staging/rtl8723bs/core/rtw_btcoex.c
+++ b/drivers/staging/rtl8723bs/core/rtw_btcoex.c
@@ -57,11 +57,6 @@ s32 rtw_btcoex_IsBTCoexCtrlAMPDUSize(struct adapter *padapter)
 	return coexctrl;
 }
 
-void rtw_btcoex_SetChipType(struct adapter *padapter, u8 chipType)
-{
-	hal_btcoex_SetChipType(padapter, chipType);
-}
-
 void rtw_btcoex_SetPGAntNum(struct adapter *padapter, u8 antNum)
 {
 	hal_btcoex_SetPgAntNum(padapter, antNum);
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
index 934245493c88..92e39ebf2dc6 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
@@ -2695,7 +2695,7 @@ void Hal_EfuseParseBTCoexistInfo_8723B(
 	}
 
 	hal_btcoex_SetBTCoexist(padapter, pHalData->EEPROMBluetoothCoexist);
-	rtw_btcoex_SetChipType(padapter, pHalData->EEPROMBluetoothType);
+	hal_btcoex_SetChipType(padapter, pHalData->EEPROMBluetoothType);
 	rtw_btcoex_SetPGAntNum(padapter, pHalData->EEPROMBluetoothAntNum == Ant_x2 ? 2 : 1);
 	if (pHalData->EEPROMBluetoothAntNum == Ant_x1)
 		rtw_btcoex_SetSingleAntPath(padapter, pHalData->ant_path);
diff --git a/drivers/staging/rtl8723bs/include/rtw_btcoex.h b/drivers/staging/rtl8723bs/include/rtw_btcoex.h
index 5b15e0129cc9..93aa4bc90c9e 100644
--- a/drivers/staging/rtl8723bs/include/rtw_btcoex.h
+++ b/drivers/staging/rtl8723bs/include/rtw_btcoex.h
@@ -20,7 +20,6 @@ void rtw_btcoex_MediaStatusNotify(struct adapter *, u8 mediaStatus);
 void rtw_btcoex_BtInfoNotify(struct adapter *, u8 length, u8 *tmpBuf);
 void rtw_btcoex_HaltNotify(struct adapter *);
 s32 rtw_btcoex_IsBTCoexCtrlAMPDUSize(struct adapter *);
-void rtw_btcoex_SetChipType(struct adapter *, u8 chipType);
 void rtw_btcoex_SetPGAntNum(struct adapter *, u8 antNum);
 void rtw_btcoex_SetSingleAntPath(struct adapter *padapter, u8 singleAntPath);
 u32 rtw_btcoex_GetRaMask(struct adapter *);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
