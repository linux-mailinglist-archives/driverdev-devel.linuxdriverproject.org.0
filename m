Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 547FB4CE9B
	for <lists+driverdev-devel@lfdr.de>; Thu, 20 Jun 2019 15:25:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 511D586C18;
	Thu, 20 Jun 2019 13:25:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VljSQ3vrpAp5; Thu, 20 Jun 2019 13:25:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B8E8B86BDC;
	Thu, 20 Jun 2019 13:25:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C177E1BF29F
 for <devel@linuxdriverproject.org>; Thu, 20 Jun 2019 13:25:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BE8A487E55
 for <devel@linuxdriverproject.org>; Thu, 20 Jun 2019 13:25:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k34PZC6b6IgG for <devel@linuxdriverproject.org>;
 Thu, 20 Jun 2019 13:25:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4EA2F82074
 for <devel@driverdev.osuosl.org>; Thu, 20 Jun 2019 13:25:40 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id f21so1604960pgi.3
 for <devel@driverdev.osuosl.org>; Thu, 20 Jun 2019 06:25:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=woz7KIgyrektGRLmDpBabmQFvIAKzHNUwNnkZv38P5Q=;
 b=TJz89FpAlIOpuOwl1mgNHtZASVsObsCGSTobbyYgpwvtqS1JU9EHy+S03wtBnDCen5
 95fUTDhJPQfFBAgrXaU4nr72p/nYnlxgrfR7mlsFb0nvgD39K3B4fRrEgUMsDeH1Xzhu
 /zkSCAU6tGuHCKraSOP8AFRcTGWDpDSdSxATsfOqRy85RL5gat+YuLGVTYd/ZwbsBOPU
 02YB19bNhgQpSeP5Df3UvEBikVGJwa6SVAvVLYUIzSBosOJ0oPvalCJjMWjfAPg77gZs
 dlYWli2OYP+D4i3DF61bGFwjz+HGgUfXU18usixdNYf6+yDaFjd4lv/edrjvrL0oE9Xp
 FkHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=woz7KIgyrektGRLmDpBabmQFvIAKzHNUwNnkZv38P5Q=;
 b=tjMmEgeZUPgpnsLFFOKOrM+F8y5qpL65FYQpiFFLYv0XTbi+qdaIWrsdr7k61+ITaY
 t9Lu+0wVDDVaJ21lFfgPi3n0zisvCz11CNWeUju50Cr7g6ab9ywCgnYmThbMk1WfXHuQ
 PShPZPMj2CVUX9usHkQFEPvz4uvoHmZ7QuE1d8Oek2BCJ5YT57KFV/yfOXaPFtM/Oscf
 InjoPmTtY1G0i+ZuXw7WGeIXS1Rmz8mKpwDl3ie0CX3ApYHP4ctEXa/DrxP1lgwy/LbV
 WE7hOHbKbGj6wpDBORucB+2zwYhl7qFvjSki0RNG/xrqbs4E9CPwXfUBTKu2vYtQDlXU
 qejA==
X-Gm-Message-State: APjAAAWy/yiK7odde7UOsiX6OBVkaKmXsF2rkdlnS8wNGrItjSSfN9p0
 Ver663P0xM1+RsrAlR0NOZ4=
X-Google-Smtp-Source: APXvYqzocpoB1kwrr88Ki7z7I0OdfKJMKKuYWAeU5f9aKR4d5CG4C0PoEvIqaTa1P1SteVLMurrBQQ==
X-Received: by 2002:a62:8c81:: with SMTP id
 m123mr15146467pfd.240.1561037139975; 
 Thu, 20 Jun 2019 06:25:39 -0700 (PDT)
Received: from localhost.localdomain ([122.163.71.137])
 by smtp.gmail.com with ESMTPSA id j11sm23532178pfa.2.2019.06.20.06.25.38
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 20 Jun 2019 06:25:39 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH] staging: rtl8723bs: Delete file odm_AntDiv.c
Date: Thu, 20 Jun 2019 18:55:27 +0530
Message-Id: <20190620132527.18100-1-nishkadg.linux@gmail.com>
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

Delete file odm_AntDiv.c and corresponding header file odm_AntDiv.h as
its functions and definitions are not used anywhere.
Remove reference to odm_AntDiv.h.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/hal/odm_AntDiv.c  | 62 ---------------------
 drivers/staging/rtl8723bs/hal/odm_AntDiv.h  | 30 ----------
 drivers/staging/rtl8723bs/hal/odm_precomp.h |  1 -
 3 files changed, 93 deletions(-)
 delete mode 100644 drivers/staging/rtl8723bs/hal/odm_AntDiv.c
 delete mode 100644 drivers/staging/rtl8723bs/hal/odm_AntDiv.h

diff --git a/drivers/staging/rtl8723bs/hal/odm_AntDiv.c b/drivers/staging/rtl8723bs/hal/odm_AntDiv.c
deleted file mode 100644
index d5415eecdd7f..000000000000
--- a/drivers/staging/rtl8723bs/hal/odm_AntDiv.c
+++ /dev/null
@@ -1,62 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0
-/******************************************************************************
- *
- * Copyright(c) 2007 - 2011 Realtek Corporation. All rights reserved.
- *
- ******************************************************************************/
-
-//============================================================
-// include files
-//============================================================
-
-#include "odm_precomp.h"
-
-//======================================================
-// when antenna test utility is on or some testing
-// need to disable antenna diversity
-// call this function to disable all ODM related mechanisms
-// which will switch antenna.
-//======================================================
-void ODM_StopAntennaSwitchDm(PDM_ODM_T pDM_Odm)
-{
-	// disable ODM antenna diversity
-	pDM_Odm->SupportAbility &= ~ODM_BB_ANT_DIV;
-	ODM_RT_TRACE(
-		pDM_Odm,
-		ODM_COMP_ANT_DIV,
-		ODM_DBG_LOUD,
-		("STOP Antenna Diversity\n")
-	);
-}
-
-void ODM_SetAntConfig(PDM_ODM_T pDM_Odm, u8 antSetting)// 0=A, 1=B, 2=C, ....
-{
-	if (antSetting == 0) // ant A
-		PHY_SetBBReg(pDM_Odm->Adapter, 0x948, bMaskDWord, 0x00000000);
-	else if (antSetting == 1)
-		PHY_SetBBReg(pDM_Odm->Adapter, 0x948, bMaskDWord, 0x00000280);
-}
-
-//======================================================
-
-
-void ODM_SwAntDivRestAfterLink(PDM_ODM_T pDM_Odm)
-{
-	pSWAT_T pDM_SWAT_Table = &pDM_Odm->DM_SWAT_Table;
-	pFAT_T pDM_FatTable = &pDM_Odm->DM_FatTable;
-	u32 i;
-
-	pDM_Odm->RSSI_test = false;
-	pDM_SWAT_Table->try_flag = 0xff;
-	pDM_SWAT_Table->RSSI_Trying = 0;
-	pDM_SWAT_Table->Double_chk_flag = 0;
-
-	pDM_FatTable->RxIdleAnt = MAIN_ANT;
-
-	for (i = 0; i < ODM_ASSOCIATE_ENTRY_NUM; i++) {
-		pDM_FatTable->MainAnt_Sum[i] = 0;
-		pDM_FatTable->AuxAnt_Sum[i] = 0;
-		pDM_FatTable->MainAnt_Cnt[i] = 0;
-		pDM_FatTable->AuxAnt_Cnt[i] = 0;
-	}
-}
diff --git a/drivers/staging/rtl8723bs/hal/odm_AntDiv.h b/drivers/staging/rtl8723bs/hal/odm_AntDiv.h
deleted file mode 100644
index c9496d561c91..000000000000
--- a/drivers/staging/rtl8723bs/hal/odm_AntDiv.h
+++ /dev/null
@@ -1,30 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-/******************************************************************************
- *
- * Copyright(c) 2007 - 2011 Realtek Corporation. All rights reserved.
- *
- ******************************************************************************/
-
-#ifndef	__ODMANTDIV_H__
-#define    __ODMANTDIV_H__
-
-
-
-#define ANT1_2G 0 /*  = ANT2_5G */
-#define ANT2_2G 1 /*  = ANT1_5G */
-
-/* Antenna Diversty Control Type */
-#define	ODM_AUTO_ANT	0
-#define	ODM_FIX_MAIN_ANT	1
-#define	ODM_FIX_AUX_ANT	2
-
-#define	TX_BY_REG	0
-
-#define ANTDIV_ON 1
-#define ANTDIV_OFF 0
-
-#define INIT_ANTDIV_TIMMER 0
-#define CANCEL_ANTDIV_TIMMER 1
-#define RELEASE_ANTDIV_TIMMER 2
-
-#endif /* ifndef	__ODMANTDIV_H__ */
diff --git a/drivers/staging/rtl8723bs/hal/odm_precomp.h b/drivers/staging/rtl8723bs/hal/odm_precomp.h
index b5b0c0ed02fc..d48d681472d5 100644
--- a/drivers/staging/rtl8723bs/hal/odm_precomp.h
+++ b/drivers/staging/rtl8723bs/hal/odm_precomp.h
@@ -29,7 +29,6 @@
 #include "odm_HWConfig.h"
 #include "odm_debug.h"
 #include "odm_RegDefine11N.h"
-#include "odm_AntDiv.h"
 #include "odm_EdcaTurboCheck.h"
 #include "odm_DIG.h"
 #include "odm_PathDiv.h"
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
