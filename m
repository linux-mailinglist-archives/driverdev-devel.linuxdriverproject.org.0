Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 55C745C9B3
	for <lists+driverdev-devel@lfdr.de>; Tue,  2 Jul 2019 09:01:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id ED3D786AE5;
	Tue,  2 Jul 2019 07:01:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EPjVAAqTOXcY; Tue,  2 Jul 2019 07:01:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0559586AFE;
	Tue,  2 Jul 2019 07:01:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1D1631BF35D
 for <devel@linuxdriverproject.org>; Tue,  2 Jul 2019 07:01:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 19F8285D9B
 for <devel@linuxdriverproject.org>; Tue,  2 Jul 2019 07:01:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aY_c2Jn0Eccz for <devel@linuxdriverproject.org>;
 Tue,  2 Jul 2019 07:01:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7C9478574F
 for <devel@driverdev.osuosl.org>; Tue,  2 Jul 2019 07:01:47 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id i8so4001509pgm.13
 for <devel@driverdev.osuosl.org>; Tue, 02 Jul 2019 00:01:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PGKJR3xotxhjwyArLeqVNtlAwYeG8UYEw5WhojnI+ic=;
 b=ucyqU81JPk0pbAYSvFEF8i14O6ybdJa6JtXto0b/LK4enwrRcBo8P5myIBS8Ukma7z
 BCNAOcgfuoyDiEcWXCcZiceFd+SvpbNQ1qHC3JtLJE9M6aTY/7PMpo3i6NL+tPX0cdzZ
 zi7bCIktgFBCsDH35A8ne0nepXMfxjidxFhr1lwdWlkLtz1/1hNZftUNQ6fwXbyO2yJZ
 bYBomLqcKbD1Bt6suGW7wwZIqQMGjqbJjG4xQYSobh9PeSH9/Zce3QCMBPUTryKZQRUd
 psTyOcvI/OEav15WkOq8ogorht5Nky/go0hiSNdOcE6cKA/Vg9suwuRCJEg3KkzUNDO4
 0LSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PGKJR3xotxhjwyArLeqVNtlAwYeG8UYEw5WhojnI+ic=;
 b=sXWlZEZgyYZLu5QtjiYX8QOJ8Zlhcxa9m+GGSGe19z693lk8qlyq//xb3wmeZ1de2a
 qHcWFJIx21v9WrMtgJef3sBiOPCzRuy7BnnUlQhuT6E4Rd58fvLS90NkNkIlBFiJoLuv
 qzsvMAEn14iphz8W8YLtBIlr5bGmu2LQFIRZUFmIgOzvNSY/DDgQVKWeLqd84rjDCAho
 IUAJqzYkddzTah02rOMXW/3IGZ9zk/zaXvN51mugo+g4AMKFU9PtTjCFUpJL0cBvw5As
 CRIGqLyx+gWKL/XxcvjYvNawNPutUr36kH843Iru4GuyTtjXpwX39NfPGoXCJudnTrn3
 s/Mw==
X-Gm-Message-State: APjAAAVFAq071ngb1ICyXdzpTchq5KMn/iKam9Bw7Eemu6TapAjBth0v
 ncwQXXU7KEVriY2uVixiNNI=
X-Google-Smtp-Source: APXvYqxIGPUHCHalxvvSASWLbfPDIVj5HMNoQAoxMetWpeZzfNmv0hwzpXgHtHerqofSsQ/sn9rdAw==
X-Received: by 2002:a17:90a:cf0d:: with SMTP id
 h13mr3808525pju.63.1562050907120; 
 Tue, 02 Jul 2019 00:01:47 -0700 (PDT)
Received: from localhost.localdomain ([122.163.64.117])
 by smtp.gmail.com with ESMTPSA id t29sm21813902pfq.156.2019.07.02.00.01.44
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 02 Jul 2019 00:01:46 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 1/9] staging: rtl8723bs: Remove rtw_btcoex_SetPGAntNum()
Date: Tue,  2 Jul 2019 12:31:24 +0530
Message-Id: <20190702070132.6997-1-nishkadg.linux@gmail.com>
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

Remove function rtw_btcoex_SetPGAntNum as it does nothing except call
hal_btcoex_SetPgAntNum.
Modify call site accordingly.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_btcoex.c       | 5 -----
 drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c | 2 +-
 drivers/staging/rtl8723bs/include/rtw_btcoex.h    | 1 -
 3 files changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_btcoex.c b/drivers/staging/rtl8723bs/core/rtw_btcoex.c
index 915cd093a759..002d86004166 100644
--- a/drivers/staging/rtl8723bs/core/rtw_btcoex.c
+++ b/drivers/staging/rtl8723bs/core/rtw_btcoex.c
@@ -57,11 +57,6 @@ s32 rtw_btcoex_IsBTCoexCtrlAMPDUSize(struct adapter *padapter)
 	return coexctrl;
 }
 
-void rtw_btcoex_SetPGAntNum(struct adapter *padapter, u8 antNum)
-{
-	hal_btcoex_SetPgAntNum(padapter, antNum);
-}
-
 void rtw_btcoex_SetSingleAntPath(struct adapter *padapter, u8 singleAntPath)
 {
 	hal_btcoex_SetSingleAntPath(padapter, singleAntPath);
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
index 79929f957c60..7d9f0a3d6401 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
@@ -2696,7 +2696,7 @@ void Hal_EfuseParseBTCoexistInfo_8723B(
 
 	hal_btcoex_SetBTCoexist(padapter, pHalData->EEPROMBluetoothCoexist);
 	hal_btcoex_SetChipType(padapter, pHalData->EEPROMBluetoothType);
-	rtw_btcoex_SetPGAntNum(padapter, pHalData->EEPROMBluetoothAntNum == Ant_x2 ? 2 : 1);
+	hal_btcoex_SetPgAntNum(padapter, pHalData->EEPROMBluetoothAntNum == Ant_x2 ? 2 : 1);
 	if (pHalData->EEPROMBluetoothAntNum == Ant_x1)
 		rtw_btcoex_SetSingleAntPath(padapter, pHalData->ant_path);
 
diff --git a/drivers/staging/rtl8723bs/include/rtw_btcoex.h b/drivers/staging/rtl8723bs/include/rtw_btcoex.h
index 9293a6705783..aff2567d8f9d 100644
--- a/drivers/staging/rtl8723bs/include/rtw_btcoex.h
+++ b/drivers/staging/rtl8723bs/include/rtw_btcoex.h
@@ -20,7 +20,6 @@ void rtw_btcoex_MediaStatusNotify(struct adapter *, u8 mediaStatus);
 void rtw_btcoex_BtInfoNotify(struct adapter *, u8 length, u8 *tmpBuf);
 void rtw_btcoex_HaltNotify(struct adapter *);
 s32 rtw_btcoex_IsBTCoexCtrlAMPDUSize(struct adapter *);
-void rtw_btcoex_SetPGAntNum(struct adapter *, u8 antNum);
 void rtw_btcoex_SetSingleAntPath(struct adapter *padapter, u8 singleAntPath);
 void rtw_btcoex_DisplayBtCoexInfo(struct adapter *, u8 *pbuf, u32 bufsize);
 void rtw_btcoex_SetDBG(struct adapter *, u32 *pDbgModule);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
