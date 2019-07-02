Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EC2495C9B4
	for <lists+driverdev-devel@lfdr.de>; Tue,  2 Jul 2019 09:01:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6693086B0B;
	Tue,  2 Jul 2019 07:01:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gJs782OGJNC9; Tue,  2 Jul 2019 07:01:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 81BC586AEE;
	Tue,  2 Jul 2019 07:01:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E7FC91BF35D
 for <devel@linuxdriverproject.org>; Tue,  2 Jul 2019 07:01:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E561220763
 for <devel@linuxdriverproject.org>; Tue,  2 Jul 2019 07:01:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V357O149UXrG for <devel@linuxdriverproject.org>;
 Tue,  2 Jul 2019 07:01:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by silver.osuosl.org (Postfix) with ESMTPS id C495820007
 for <devel@driverdev.osuosl.org>; Tue,  2 Jul 2019 07:01:49 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id i189so7766985pfg.10
 for <devel@driverdev.osuosl.org>; Tue, 02 Jul 2019 00:01:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Y3+aLIcRmfVhvdlXtNAy2+acKyfbF514/sfvjsG2mtU=;
 b=rhvSNW/J34lg2pOb7l2TbNv3eZcfRr0JgQ05GnAn77WS89WIJocQ2FU9GDZhpYjMYb
 h2OLIcjrcFbq4Nwpw6EHZqOmR4Pm4y5arIX8Gkcpds+SZf2zAMZHiEzpUAPdjz6wyW2H
 7rW660pptmk+pnRPjgX2NTI4qslBGARE/Ogi1ghf3fjTeIyx8sjgNASZekxusxRA4c/Y
 /+OpG+GTNLwATOpuHLBHmRfpVPl3aiJgqXEQRHWjjqpRnjfq/M08nZfjpKGOrxxqWSHa
 l5INGZdvMSlOdRgMKyOdIm5PzDCS2X2W8h2KUnxZImKLubCk8rpPNXZ3z2RNfC/Y2VJW
 yjHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Y3+aLIcRmfVhvdlXtNAy2+acKyfbF514/sfvjsG2mtU=;
 b=rsdr5B7XyoImWRMUQ2536VjhQnLsSYOYL8+hwHhQSfzfKKgHcQ1Z8pbGg+8l9mzQoi
 OOvKBde8bxDi043ish0VK/d6LFpCHXPzFdlXDBNptZYARY1Ty3PnXBVjcKneM7QJMde6
 0jDoQlfeeEYmaK9yik83/dw8mQYnvF6J0hxwQIeJBRDygSxkLG2YIdBrQyLBG20OkvJR
 RbFDWYAZns5DPUO2rmtIyFJJxTLsD6m/nyJk99+voipmYN6Fj6ZmeytTIdq8yljkUiiE
 2c0Fh8Iazxn30SOJZYtzxIqUgLrpzgtCLmEJ5r3T82n1wJ/xTDp+if+IfIrWA6881J14
 cMZw==
X-Gm-Message-State: APjAAAUiKpAUc34ARM7Wl3cH4kSYDlJvPEXgZHT9k+FNZwK4nl+d4GQG
 h9AkY4UVIQnLQ3+p4fU1Vv4=
X-Google-Smtp-Source: APXvYqw8XUMwEaKLNpLTSP1cklxaWpZFN1Q4J7M5GAMvS89Ds0+oW9Dq8y/M/lQbuoXfYtocwHVpKw==
X-Received: by 2002:a63:224a:: with SMTP id t10mr28896013pgm.289.1562050909395; 
 Tue, 02 Jul 2019 00:01:49 -0700 (PDT)
Received: from localhost.localdomain ([122.163.64.117])
 by smtp.gmail.com with ESMTPSA id t29sm21813902pfq.156.2019.07.02.00.01.47
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 02 Jul 2019 00:01:48 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 2/9] staging: rtl8723bs: Remove rtw_btcoex_SetSingleAntPath()
Date: Tue,  2 Jul 2019 12:31:25 +0530
Message-Id: <20190702070132.6997-2-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190702070132.6997-1-nishkadg.linux@gmail.com>
References: <20190702070132.6997-1-nishkadg.linux@gmail.com>
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

Remove function rtw_btcoex_SetSingleAntPath as all it does is call
hal_btcoex_SetSingleAntPath.
Modify call site.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_btcoex.c       | 5 -----
 drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c | 2 +-
 drivers/staging/rtl8723bs/include/rtw_btcoex.h    | 1 -
 3 files changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_btcoex.c b/drivers/staging/rtl8723bs/core/rtw_btcoex.c
index 002d86004166..ac199d75ee63 100644
--- a/drivers/staging/rtl8723bs/core/rtw_btcoex.c
+++ b/drivers/staging/rtl8723bs/core/rtw_btcoex.c
@@ -57,11 +57,6 @@ s32 rtw_btcoex_IsBTCoexCtrlAMPDUSize(struct adapter *padapter)
 	return coexctrl;
 }
 
-void rtw_btcoex_SetSingleAntPath(struct adapter *padapter, u8 singleAntPath)
-{
-	hal_btcoex_SetSingleAntPath(padapter, singleAntPath);
-}
-
 void rtw_btcoex_DisplayBtCoexInfo(struct adapter *padapter, u8 *pbuf, u32 bufsize)
 {
 	hal_btcoex_DisplayBtCoexInfo(padapter, pbuf, bufsize);
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
index 7d9f0a3d6401..ce244798198e 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
@@ -2698,7 +2698,7 @@ void Hal_EfuseParseBTCoexistInfo_8723B(
 	hal_btcoex_SetChipType(padapter, pHalData->EEPROMBluetoothType);
 	hal_btcoex_SetPgAntNum(padapter, pHalData->EEPROMBluetoothAntNum == Ant_x2 ? 2 : 1);
 	if (pHalData->EEPROMBluetoothAntNum == Ant_x1)
-		rtw_btcoex_SetSingleAntPath(padapter, pHalData->ant_path);
+		hal_btcoex_SetSingleAntPath(padapter, pHalData->ant_path);
 
 	DBG_8192C(
 		"%s: %s BT-coex, ant_num =%d\n",
diff --git a/drivers/staging/rtl8723bs/include/rtw_btcoex.h b/drivers/staging/rtl8723bs/include/rtw_btcoex.h
index aff2567d8f9d..f294acce149b 100644
--- a/drivers/staging/rtl8723bs/include/rtw_btcoex.h
+++ b/drivers/staging/rtl8723bs/include/rtw_btcoex.h
@@ -20,7 +20,6 @@ void rtw_btcoex_MediaStatusNotify(struct adapter *, u8 mediaStatus);
 void rtw_btcoex_BtInfoNotify(struct adapter *, u8 length, u8 *tmpBuf);
 void rtw_btcoex_HaltNotify(struct adapter *);
 s32 rtw_btcoex_IsBTCoexCtrlAMPDUSize(struct adapter *);
-void rtw_btcoex_SetSingleAntPath(struct adapter *padapter, u8 singleAntPath);
 void rtw_btcoex_DisplayBtCoexInfo(struct adapter *, u8 *pbuf, u32 bufsize);
 void rtw_btcoex_SetDBG(struct adapter *, u32 *pDbgModule);
 u32 rtw_btcoex_GetDBG(struct adapter *, u8 *pStrBuf, u32 bufSize);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
