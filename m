Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DBA165B7D6
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Jul 2019 11:18:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A4A7D86566;
	Mon,  1 Jul 2019 09:18:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TXIDojmw9gQF; Mon,  1 Jul 2019 09:18:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 23BAE86505;
	Mon,  1 Jul 2019 09:18:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 070B71BF59F
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 09:18:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E80C886505
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 09:18:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7QHxy5dcTsGj for <devel@linuxdriverproject.org>;
 Mon,  1 Jul 2019 09:18:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 41D03864F3
 for <devel@driverdev.osuosl.org>; Mon,  1 Jul 2019 09:18:34 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id m30so6254839pff.8
 for <devel@driverdev.osuosl.org>; Mon, 01 Jul 2019 02:18:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EqZ6Ci2UTtPDaof0NZqFpNnhjk+xwPWVVNMzQH3xYck=;
 b=WoAett1Q3bnzf/U4ADYG/GaDTUscZAE0AszZ4iFN53TACaHC5NrSX84OWSpINT8Bv5
 Ey6WWC+c3knrIQKVBMo4eaXwY0xF66udKRdN5NEliceQ6CajMdQt9KY705y/iW05/uog
 3xnUSesIcbz1ZP2HAHUt5ziUlPyqLu+QZP9mNqfFI1flOeXb21ifVKG0zZ3xsGCSkivf
 HlQLp40YOEwsbzpMqFAtlUwugFzOQ/nDrKa55EydUyvt2ekAWG8S/eC/tSWQH5MFmoR0
 aOjABZ8Xtl5k5Pdz7Bq2Ng3dFUzm7riwJQjAztlLzy3s2/C5VJs7gUMqzpdW2BkVURQy
 riSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EqZ6Ci2UTtPDaof0NZqFpNnhjk+xwPWVVNMzQH3xYck=;
 b=aqpj3y4xKAJo34VafiLEGygKjkJyTXRJUnGa7ByuVn5zCRy7nDJawjsUyFaV+IGqPA
 Nv/s+3bOU7r9XRjQlPY65pSMJu6d2wR25tqhRogoZfcMAQ4jSIrLT+uouBKUPQ9oKS/n
 B7ltN+MQRs6LzBnGNAqPisZPm9WgUeB/lHxH4vte7bwz48eL/VsccONbu+Z3RvfP6mQz
 MwEOsdk9GQOSvE4gvhoO9MqGjddA20JKaOUsE0sKqczarHG7C6XEhvtrFSfhFHPbRXo/
 vGKG0l22sAJ2M6enyBuONT8t3Efk6b5WMJavdcC96CttzoD4WVdcSp/8T8l2OHCt8bmB
 9Bcg==
X-Gm-Message-State: APjAAAV6IgL2U1W1KB2BIu5SzqywE3VmrD8H49cJJolmeYV2f+UOSyfq
 317KFwgTRulmbFxHais+Y4Y=
X-Google-Smtp-Source: APXvYqxnZJVwIMuPWSEHBzOz83g1T8ptv9QKFoHtwMMvgWpuUbjoHOWS+0Zz6UCQXDlQCv9thvcKqg==
X-Received: by 2002:a63:a02:: with SMTP id 2mr24353920pgk.315.1561972713873;
 Mon, 01 Jul 2019 02:18:33 -0700 (PDT)
Received: from localhost.localdomain ([122.163.64.117])
 by smtp.gmail.com with ESMTPSA id 25sm10137911pfp.76.2019.07.01.02.18.31
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 01 Jul 2019 02:18:33 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 03/10] staging: rtl8723bs: Remove rtw_btcoex_LpsVal()
Date: Mon,  1 Jul 2019 14:48:10 +0530
Message-Id: <20190701091817.12759-3-nishkadg.linux@gmail.com>
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

Remove function rtw_btcoex_LpsVal as all it does is call
hal_btcoex_LpsVal.
Modify call sites accordingly.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_btcoex.c    | 7 +------
 drivers/staging/rtl8723bs/core/rtw_pwrctrl.c   | 8 ++++----
 drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c   | 2 +-
 drivers/staging/rtl8723bs/include/rtw_btcoex.h | 1 -
 4 files changed, 6 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_btcoex.c b/drivers/staging/rtl8723bs/core/rtw_btcoex.c
index 4ff3a2742a50..d1da058fb4c9 100644
--- a/drivers/staging/rtl8723bs/core/rtw_btcoex.c
+++ b/drivers/staging/rtl8723bs/core/rtw_btcoex.c
@@ -77,11 +77,6 @@ u8 rtw_btcoex_IsBtControlLps(struct adapter *padapter)
 	return hal_btcoex_IsBtControlLps(padapter);
 }
 
-u8 rtw_btcoex_LpsVal(struct adapter *padapter)
-{
-	return hal_btcoex_LpsVal(padapter);
-}
-
 void rtw_btcoex_SetBTCoexist(struct adapter *padapter, u8 bBtExist)
 {
 	hal_btcoex_SetBTCoexist(padapter, bBtExist);
@@ -151,7 +146,7 @@ void rtw_btcoex_LPS_Enter(struct adapter *padapter)
 	pwrpriv = adapter_to_pwrctl(padapter);
 
 	pwrpriv->bpower_saving = true;
-	lpsVal = rtw_btcoex_LpsVal(padapter);
+	lpsVal = hal_btcoex_LpsVal(padapter);
 	rtw_set_ps_mode(padapter, PS_MODE_MIN, 0, lpsVal, "BTCOEX");
 }
 
diff --git a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
index 01bce255c8ca..09e064f1211b 100644
--- a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
+++ b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
@@ -485,7 +485,7 @@ void rtw_set_ps_mode(struct adapter *padapter, u8 ps_mode, u8 smart_ps, u8 bcn_a
 				&& (rtw_btcoex_IsBtControlLps(padapter) == true)) {
 				u8 val8;
 
-				val8 = rtw_btcoex_LpsVal(padapter);
+				val8 = hal_btcoex_LpsVal(padapter);
 				if (val8 & BIT(4))
 					pslv = PS_STATE_S2;
 			}
@@ -914,7 +914,7 @@ void rtw_unregister_task_alive(struct adapter *padapter, u32 task)
 		&& (rtw_btcoex_IsBtControlLps(padapter) == true)) {
 		u8 val8;
 
-		val8 = rtw_btcoex_LpsVal(padapter);
+		val8 = hal_btcoex_LpsVal(padapter);
 		if (val8 & BIT(4))
 			pslv = PS_STATE_S2;
 	}
@@ -1055,7 +1055,7 @@ void rtw_unregister_tx_alive(struct adapter *padapter)
 		&& (rtw_btcoex_IsBtControlLps(padapter) == true)) {
 		u8 val8;
 
-		val8 = rtw_btcoex_LpsVal(padapter);
+		val8 = hal_btcoex_LpsVal(padapter);
 		if (val8 & BIT(4))
 			pslv = PS_STATE_S2;
 	}
@@ -1097,7 +1097,7 @@ void rtw_unregister_cmd_alive(struct adapter *padapter)
 		&& (rtw_btcoex_IsBtControlLps(padapter) == true)) {
 		u8 val8;
 
-		val8 = rtw_btcoex_LpsVal(padapter);
+		val8 = hal_btcoex_LpsVal(padapter);
 		if (val8 & BIT(4))
 			pslv = PS_STATE_S2;
 	}
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
index 177261c79e94..87e85968d2e1 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
@@ -1046,7 +1046,7 @@ void rtl8723b_set_FwPwrMode_cmd(struct adapter *padapter, u8 psmode)
 	if (psmode > 0) {
 		if (rtw_btcoex_IsBtControlLps(padapter) == true) {
 			PowerState = hal_btcoex_RpwmVal(padapter);
-			byte5 = rtw_btcoex_LpsVal(padapter);
+			byte5 = hal_btcoex_LpsVal(padapter);
 
 			if ((rlbm == 2) && (byte5 & BIT(4))) {
 				/*  Keep awake interval to 1 to prevent from */
diff --git a/drivers/staging/rtl8723bs/include/rtw_btcoex.h b/drivers/staging/rtl8723bs/include/rtw_btcoex.h
index db987a0cf951..903940cc0b16 100644
--- a/drivers/staging/rtl8723bs/include/rtw_btcoex.h
+++ b/drivers/staging/rtl8723bs/include/rtw_btcoex.h
@@ -24,7 +24,6 @@ u8 rtw_btcoex_IsBtDisabled(struct adapter *);
 void rtw_btcoex_Handler(struct adapter *);
 s32 rtw_btcoex_IsBTCoexCtrlAMPDUSize(struct adapter *);
 u8 rtw_btcoex_IsBtControlLps(struct adapter *);
-u8 rtw_btcoex_LpsVal(struct adapter *);
 void rtw_btcoex_SetBTCoexist(struct adapter *, u8 bBtExist);
 void rtw_btcoex_SetChipType(struct adapter *, u8 chipType);
 void rtw_btcoex_SetPGAntNum(struct adapter *, u8 antNum);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
