Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24CB66F474
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Jul 2019 19:58:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7AE5D87935;
	Sun, 21 Jul 2019 17:58:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a+o-1LCIjRrB; Sun, 21 Jul 2019 17:58:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CF750874AB;
	Sun, 21 Jul 2019 17:57:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 000A71BF588
 for <devel@linuxdriverproject.org>; Sun, 21 Jul 2019 17:57:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id F09AA2037E
 for <devel@linuxdriverproject.org>; Sun, 21 Jul 2019 17:57:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mJeNaeCgANs7 for <devel@linuxdriverproject.org>;
 Sun, 21 Jul 2019 17:57:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 8ED9C20111
 for <devel@driverdev.osuosl.org>; Sun, 21 Jul 2019 17:57:55 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id s15so11826469wmj.3
 for <devel@driverdev.osuosl.org>; Sun, 21 Jul 2019 10:57:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Gjz8oNblawby7NklpmeeuAckSeUwNIdtjSj6EpDbQhY=;
 b=qL2O8oB1PXS16WRxxiM9a1vbGYVj6aVczfn279cC+F/TtmeOOFTpLWkE9JlH0ezlIM
 RkelZzcfs+JyJR4bbZ7Fe17oNxySg8ya7JNEM8obrKeIP6UdIC/skiizt7MLBUhUlK7t
 1rZD5hcJ+LmBjGXN1LKnYQjb80X6lMn3lkF0INIajpS6sginzcCYOUeVP9wHW+jhoMmm
 uSf54dVRNI2HNExRd6lkH0lBIG+wLY+aQlIXTTTeaCTnOCFcHqhz8jCH2bVjNni9yp5W
 LGw//SI+/GmthRJVPOqxh/Pxlf7malNEkNmKRE9En9nfmR3KnQM23CAgZS4VxPHhB92a
 TLCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Gjz8oNblawby7NklpmeeuAckSeUwNIdtjSj6EpDbQhY=;
 b=gW1zJ+nOjY80NxbKvqlx1V0Dk/HJ2J+3uOH+TRioLz8wA2f02xXdqbmW3OwA7UkJe4
 PslAKfGiQRtMJk+LHE59fDAO348ywugPTrQEqs7JLBPr5T+JPpA8DFeb1VFJ0y0wcICx
 fXzFBaVcCw7WHa+okdu+UFD5ewWmz8eOztwl0FQMvfXYVzzNaUO4AJG4nqT+4lQyZ9Zm
 nyhxGJMUXLzLJzmRIHAfv4VJpK+3115fwtXtwZ8flwK5CzuILESK5WI5SaKOuJYkavkx
 PL6mI10DNfKObPYacGcwwHkH508pnwMkbfNDvehgtuEYv7bgg5E0nXmjAHMKNaOkQu3z
 mpoA==
X-Gm-Message-State: APjAAAVLVFK+q8O5MLBESGGlkNcdlwW+qc3ozBvLC6igX4+r+lO4uu3P
 4gx6i/5ouv2OKDe/eRrpiPk=
X-Google-Smtp-Source: APXvYqzzJYi6iPUvUrauccDdZBKCmHSGu7o701tN6QkPVBPi4B0GzcHytMDJIqQKv3uuMejz6al+bw==
X-Received: by 2002:a1c:7a02:: with SMTP id v2mr59433539wmc.159.1563731873815; 
 Sun, 21 Jul 2019 10:57:53 -0700 (PDT)
Received: from localhost.localdomain
 ([2a02:8108:96bf:e0ab:2b68:5d76:a12a:e6ba])
 by smtp.gmail.com with ESMTPSA id o4sm28999864wmh.35.2019.07.21.10.57.52
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 21 Jul 2019 10:57:53 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8723bs: remove unused file hal_phy.c
Date: Sun, 21 Jul 2019 19:57:35 +0200
Message-Id: <20190721175735.24173-1-straube.linux@gmail.com>
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
Cc: devel@driverdev.osuosl.org, hdegoede@redhat.com,
 linux-kernel@vger.kernel.org, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove the unused file hal_phy.c. No function from this file is used
in the driver code and it is not listed in the Makefile.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8723bs/hal/hal_phy.c | 157 ------------------------
 1 file changed, 157 deletions(-)
 delete mode 100644 drivers/staging/rtl8723bs/hal/hal_phy.c

diff --git a/drivers/staging/rtl8723bs/hal/hal_phy.c b/drivers/staging/rtl8723bs/hal/hal_phy.c
deleted file mode 100644
index 24a9d8f783f0..000000000000
--- a/drivers/staging/rtl8723bs/hal/hal_phy.c
+++ /dev/null
@@ -1,157 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0
-/******************************************************************************
- *
- * Copyright(c) 2007 - 2011 Realtek Corporation. All rights reserved.
- *
- ******************************************************************************/
-#define _HAL_PHY_C_
-
-#include <drv_types.h>
-
-/*  */
-/*  ==> RF shadow Operation API Code Section!!! */
-/*  */
-/*-----------------------------------------------------------------------------
- * Function:	PHY_RFShadowRead
- *			PHY_RFShadowWrite
- *			PHY_RFShadowCompare
- *			PHY_RFShadowRecorver
- *			PHY_RFShadowCompareAll
- *			PHY_RFShadowRecorverAll
- *			PHY_RFShadowCompareFlagSet
- *			PHY_RFShadowRecorverFlagSet
- *
- * Overview:	When we set RF register, we must write shadow at first.
- *		When we are running, we must compare shadow abd locate error addr.
- *		Decide to recorver or not.
- *
- * Input:       NONE
- *
- * Output:      NONE
- *
- * Return:      NONE
- *
- * Revised History:
- * When			Who		Remark
- * 11/20/2008	MHC		Create Version 0.
- *
- *---------------------------------------------------------------------------*/
-u32 PHY_RFShadowRead(IN PADAPTER Adapter, IN u8 eRFPath, IN u32 Offset)
-{
-	return	RF_Shadow[eRFPath][Offset].Value;
-
-}	/* PHY_RFShadowRead */
-
-
-void PHY_RFShadowWrite(
-	IN PADAPTER Adapter, IN u8 eRFPath, IN u32 Offset, IN u32 Data
-)
-{
-	RF_Shadow[eRFPath][Offset].Value = (Data & bRFRegOffsetMask);
-	RF_Shadow[eRFPath][Offset].Driver_Write = true;
-
-}	/* PHY_RFShadowWrite */
-
-
-bool PHY_RFShadowCompare(IN PADAPTER Adapter, IN u8 eRFPath, IN u32 Offset)
-{
-	u32 reg;
-	/*  Check if we need to check the register */
-	if (RF_Shadow[eRFPath][Offset].Compare == true) {
-		reg = rtw_hal_read_rfreg(Adapter, eRFPath, Offset, bRFRegOffsetMask);
-		/*  Compare shadow and real rf register for 20bits!! */
-		if (RF_Shadow[eRFPath][Offset].Value != reg) {
-			/*  Locate error position. */
-			RF_Shadow[eRFPath][Offset].ErrorOrNot = true;
-			/* RT_TRACE(COMP_INIT, DBG_LOUD, */
-			/* PHY_RFShadowCompare RF-%d Addr%02lx Err = %05lx\n", */
-			/* eRFPath, Offset, reg)); */
-		}
-		return RF_Shadow[eRFPath][Offset].ErrorOrNot;
-	}
-	return false;
-}	/* PHY_RFShadowCompare */
-
-
-void PHY_RFShadowRecorver(IN PADAPTER Adapter, IN u8 eRFPath, IN u32 Offset)
-{
-	/*  Check if the address is error */
-	if (RF_Shadow[eRFPath][Offset].ErrorOrNot == true) {
-		/*  Check if we need to recorver the register. */
-		if (RF_Shadow[eRFPath][Offset].Recorver == true) {
-			rtw_hal_write_rfreg(Adapter, eRFPath, Offset, bRFRegOffsetMask,
-							RF_Shadow[eRFPath][Offset].Value);
-			/* RT_TRACE(COMP_INIT, DBG_LOUD, */
-			/* PHY_RFShadowRecorver RF-%d Addr%02lx=%05lx", */
-			/* eRFPath, Offset, RF_Shadow[eRFPath][Offset].Value)); */
-		}
-	}
-
-}	/* PHY_RFShadowRecorver */
-
-
-void PHY_RFShadowCompareAll(IN PADAPTER Adapter)
-{
-	u8 eRFPath = 0;
-	u32 Offset = 0, maxReg = GET_RF6052_REAL_MAX_REG(Adapter);
-
-	for (eRFPath = 0; eRFPath < RF6052_MAX_PATH; eRFPath++) {
-		for (Offset = 0; Offset < maxReg; Offset++) {
-			PHY_RFShadowCompare(Adapter, eRFPath, Offset);
-		}
-	}
-
-}	/* PHY_RFShadowCompareAll */
-
-
-void PHY_RFShadowRecorverAll(IN PADAPTER Adapter)
-{
-	u8 eRFPath = 0;
-	u32 Offset = 0, maxReg = GET_RF6052_REAL_MAX_REG(Adapter);
-
-	for (eRFPath = 0; eRFPath < RF6052_MAX_PATH; eRFPath++) {
-		for (Offset = 0; Offset < maxReg; Offset++) {
-			PHY_RFShadowRecorver(Adapter, eRFPath, Offset);
-		}
-	}
-
-}	/* PHY_RFShadowRecorverAll */
-
-
-void
-PHY_RFShadowCompareFlagSet(
-	IN PADAPTER Adapter, IN u8 eRFPath, IN u32 Offset, IN u8 Type
-)
-{
-	/*  Set True or False!!! */
-	RF_Shadow[eRFPath][Offset].Compare = Type;
-
-}	/* PHY_RFShadowCompareFlagSet */
-
-
-void PHY_RFShadowRecorverFlagSet(
-	IN PADAPTER Adapter, IN u8 eRFPath, IN u32 Offset, IN u8 Type
-)
-{
-	/*  Set True or False!!! */
-	RF_Shadow[eRFPath][Offset].Recorver = Type;
-
-}	/* PHY_RFShadowRecorverFlagSet */
-
-
-void PHY_RFShadowCompareFlagSetAll(IN PADAPTER Adapter)
-{
-	u8 eRFPath = 0;
-	u32 Offset = 0, maxReg = GET_RF6052_REAL_MAX_REG(Adapter);
-
-	for (eRFPath = 0; eRFPath < RF6052_MAX_PATH; eRFPath++) {
-		for (Offset = 0; Offset < maxReg; Offset++) {
-			/*  2008/11/20 MH For S3S4 test, we only check reg 26/27 now!!!! */
-			if (Offset != 0x26 && Offset != 0x27)
-				PHY_RFShadowCompareFlagSet(Adapter, eRFPath, Offset, false);
-			else
-				PHY_RFShadowCompareFlagSet(Adapter, eRFPath, Offset, true);
-		}
-	}
-
-}	/* PHY_RFShadowCompareFlagSetAll */
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
