Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FBB3338763
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Mar 2021 09:31:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E13C74ED68;
	Fri, 12 Mar 2021 08:31:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 57MvqSbgk2mO; Fri, 12 Mar 2021 08:31:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3AC864ED58;
	Fri, 12 Mar 2021 08:31:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B24851BF59B
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 08:27:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AD5446F963
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 08:27:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yjmXmFr6jJGb for <devel@linuxdriverproject.org>;
 Fri, 12 Mar 2021 08:27:05 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com
 [IPv6:2a00:1450:4864:20::430])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A42C060607
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 08:27:05 +0000 (UTC)
Received: by mail-wr1-x430.google.com with SMTP id 7so4314874wrz.0
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 00:27:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=CqtSnkd4othkYJI/mM3CyOC8dktOEE0clYqXlG5ZNuM=;
 b=G6dZBDs87B1MDljH14YAVtRU1ymqPRpLo5/VcaSYu5jvON7PjKY6MB+0fNsktcX3r5
 7crEuAr+TW5bkUn5yJuYmYK3fL7MlkIBafD8u3VFY0BIJqrlo61YTRavLxsfbqjLxDsf
 JJkIXRBcP66BItYvvlE4z9H9/eJ8gXa68jQZmKsi2gEGsUjWeXgpR1R2Ip2s4h6gmdOL
 j70OymPUPDFrbfIRfhdn+qPhFqcSbtrryTRGCuImMiBP9+3IvdLrCv85RPPOzL25SGLL
 odyieYF/w3tnPcGrFgFWhOdg8qA7Xzi+qPcS9Zka10/RuvUsuD1AAYpKuv91Kaav1iuh
 HjEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CqtSnkd4othkYJI/mM3CyOC8dktOEE0clYqXlG5ZNuM=;
 b=QlrBjfCp9+lZhJIZ0znOFjJITKy+nkrVDM9XOlVofgP9yzFvKgWeWoADjhqj2T5qzO
 Shfl78JexnqmRumQwQvEzHc1nXba5t299WeXbANVT08GnDa2KDEEyEsIbOp1rkPhAsAx
 dit3OgJpF1AnCnm183+LaK9i8DdHixFdz9XDrKLuIG2zUh6npOeaTmfHQdBX9ltGHTm5
 M+zK+Z9dCBVGpEmh0StbQchXpk//zeoFlpaGkqM7xkeNcu1OLqKzFavoLBTLGuZaWY8S
 qOhusU7eSqFhjEXTyTJqhJrEao0yBGMphm67qvT8PD+gY4lbxWSXeQFuWbe6HJ3Xs3Bx
 aAgA==
X-Gm-Message-State: AOAM533QVg9wrvvd2Jhhz+p2YPw6jZ3sMcbxRPS+u4TP123TnFj9qIB+
 J4Yf8YiqxlypIHiY+tNmeugUuPyjRQA=
X-Google-Smtp-Source: ABdhPJwKS9eJ/cMfAM7kSKqRNXxpe1RtMP+t6Y3VUCQoJEoFYdiVuLac7rHyEt5S6Ldb6SLjh6TVDA==
X-Received: by 2002:adf:b1de:: with SMTP id r30mr12876079wra.125.1615537623921; 
 Fri, 12 Mar 2021 00:27:03 -0800 (PST)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id i8sm7743979wry.90.2021.03.12.00.27.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Mar 2021 00:27:03 -0800 (PST)
From: Marco Cesati <marcocesati@gmail.com>
X-Google-Original-From: Marco Cesati <marco.cesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 24/33] staging: rtl8723bs: remove typedefs in HalPwrSeqCmd.h
Date: Fri, 12 Mar 2021 09:26:29 +0100
Message-Id: <20210312082638.25512-25-marco.cesati@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210312082638.25512-1-marco.cesati@gmail.com>
References: <20210312082638.25512-1-marco.cesati@gmail.com>
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

This commit fixes the following checkpatch.pl warnings:

    WARNING: do not add new typedefs
    #85: FILE: include/HalPwrSeqCmd.h:85:
    +typedef enum _PWRSEQ_CMD_DELAY_UNIT_ {

    WARNING: do not add new typedefs
    #90: FILE: include/HalPwrSeqCmd.h:90:
    +typedef struct _WL_PWR_CFG_ {

Signed-off-by: Marco Cesati <marco.cesati@gmail.com>
---
 drivers/staging/rtl8723bs/hal/HalPwrSeqCmd.c  |  4 ++--
 drivers/staging/rtl8723bs/hal/hal_pwr_seq.c   | 22 +++++++++----------
 .../staging/rtl8723bs/include/HalPwrSeqCmd.h  | 10 ++++-----
 .../staging/rtl8723bs/include/hal_pwr_seq.h   | 22 +++++++++----------
 4 files changed, 29 insertions(+), 29 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/HalPwrSeqCmd.c b/drivers/staging/rtl8723bs/hal/HalPwrSeqCmd.c
index 3b34a516075f..c1c9914d9b49 100644
--- a/drivers/staging/rtl8723bs/hal/HalPwrSeqCmd.c
+++ b/drivers/staging/rtl8723bs/hal/HalPwrSeqCmd.c
@@ -39,10 +39,10 @@ u8 HalPwrSeqCmdParsing(
 	u8 CutVersion,
 	u8 FabVersion,
 	u8 InterfaceType,
-	WLAN_PWR_CFG PwrSeqCmd[]
+	struct WLAN_PWR_CFG PwrSeqCmd[]
 )
 {
-	WLAN_PWR_CFG PwrCfgCmd;
+	struct WLAN_PWR_CFG PwrCfgCmd;
 	u8 bPollingBit = false;
 	u32 AryIdx = 0;
 	u8 value = 0;
diff --git a/drivers/staging/rtl8723bs/hal/hal_pwr_seq.c b/drivers/staging/rtl8723bs/hal/hal_pwr_seq.c
index 589e7aae7bbd..2a80da26f572 100644
--- a/drivers/staging/rtl8723bs/hal/hal_pwr_seq.c
+++ b/drivers/staging/rtl8723bs/hal/hal_pwr_seq.c
@@ -21,7 +21,7 @@ Major Change History:
 
 /* drivers should parse below arrays and do the corresponding actions */
 /* 3 Power on  Array */
-WLAN_PWR_CFG rtl8723B_power_on_flow[
+struct WLAN_PWR_CFG rtl8723B_power_on_flow[
 	RTL8723B_TRANS_CARDEMU_TO_ACT_STEPS+
 	RTL8723B_TRANS_END_STEPS
 ] = {
@@ -30,7 +30,7 @@ WLAN_PWR_CFG rtl8723B_power_on_flow[
 };
 
 /* 3Radio off GPIO Array */
-WLAN_PWR_CFG rtl8723B_radio_off_flow[
+struct WLAN_PWR_CFG rtl8723B_radio_off_flow[
 	RTL8723B_TRANS_ACT_TO_CARDEMU_STEPS+
 	RTL8723B_TRANS_END_STEPS
 ] = {
@@ -39,7 +39,7 @@ WLAN_PWR_CFG rtl8723B_radio_off_flow[
 };
 
 /* 3Card Disable Array */
-WLAN_PWR_CFG rtl8723B_card_disable_flow[
+struct WLAN_PWR_CFG rtl8723B_card_disable_flow[
 	RTL8723B_TRANS_ACT_TO_CARDEMU_STEPS+
 	RTL8723B_TRANS_CARDEMU_TO_PDN_STEPS+
 	RTL8723B_TRANS_END_STEPS
@@ -50,7 +50,7 @@ WLAN_PWR_CFG rtl8723B_card_disable_flow[
 };
 
 /* 3 Card Enable Array */
-WLAN_PWR_CFG rtl8723B_card_enable_flow[
+struct WLAN_PWR_CFG rtl8723B_card_enable_flow[
 	RTL8723B_TRANS_ACT_TO_CARDEMU_STEPS+
 	RTL8723B_TRANS_CARDEMU_TO_PDN_STEPS+
 	RTL8723B_TRANS_END_STEPS
@@ -61,7 +61,7 @@ WLAN_PWR_CFG rtl8723B_card_enable_flow[
 };
 
 /* 3Suspend Array */
-WLAN_PWR_CFG rtl8723B_suspend_flow[
+struct WLAN_PWR_CFG rtl8723B_suspend_flow[
 	RTL8723B_TRANS_ACT_TO_CARDEMU_STEPS+
 	RTL8723B_TRANS_CARDEMU_TO_SUS_STEPS+
 	RTL8723B_TRANS_END_STEPS
@@ -72,7 +72,7 @@ WLAN_PWR_CFG rtl8723B_suspend_flow[
 };
 
 /* 3 Resume Array */
-WLAN_PWR_CFG rtl8723B_resume_flow[
+struct WLAN_PWR_CFG rtl8723B_resume_flow[
 	RTL8723B_TRANS_ACT_TO_CARDEMU_STEPS+
 	RTL8723B_TRANS_CARDEMU_TO_SUS_STEPS+
 	RTL8723B_TRANS_END_STEPS
@@ -83,7 +83,7 @@ WLAN_PWR_CFG rtl8723B_resume_flow[
 };
 
 /* 3HWPDN Array */
-WLAN_PWR_CFG rtl8723B_hwpdn_flow[
+struct WLAN_PWR_CFG rtl8723B_hwpdn_flow[
 	RTL8723B_TRANS_ACT_TO_CARDEMU_STEPS+
 	RTL8723B_TRANS_CARDEMU_TO_PDN_STEPS+
 	RTL8723B_TRANS_END_STEPS
@@ -94,7 +94,7 @@ WLAN_PWR_CFG rtl8723B_hwpdn_flow[
 };
 
 /* 3 Enter LPS */
-WLAN_PWR_CFG rtl8723B_enter_lps_flow[
+struct WLAN_PWR_CFG rtl8723B_enter_lps_flow[
 	RTL8723B_TRANS_ACT_TO_LPS_STEPS+RTL8723B_TRANS_END_STEPS
 ] = {
 	/* FW behavior */
@@ -103,7 +103,7 @@ WLAN_PWR_CFG rtl8723B_enter_lps_flow[
 };
 
 /* 3 Leave LPS */
-WLAN_PWR_CFG rtl8723B_leave_lps_flow[
+struct WLAN_PWR_CFG rtl8723B_leave_lps_flow[
 	RTL8723B_TRANS_LPS_TO_ACT_STEPS+RTL8723B_TRANS_END_STEPS
 ] = {
 	/* FW behavior */
@@ -112,7 +112,7 @@ WLAN_PWR_CFG rtl8723B_leave_lps_flow[
 };
 
 /* 3 Enter SW LPS */
-WLAN_PWR_CFG rtl8723B_enter_swlps_flow[
+struct WLAN_PWR_CFG rtl8723B_enter_swlps_flow[
 	RTL8723B_TRANS_ACT_TO_SWLPS_STEPS+RTL8723B_TRANS_END_STEPS
 ] = {
 	/* SW behavior */
@@ -121,7 +121,7 @@ WLAN_PWR_CFG rtl8723B_enter_swlps_flow[
 };
 
 /* 3 Leave SW LPS */
-WLAN_PWR_CFG rtl8723B_leave_swlps_flow[
+struct WLAN_PWR_CFG rtl8723B_leave_swlps_flow[
 	RTL8723B_TRANS_SWLPS_TO_ACT_STEPS+RTL8723B_TRANS_END_STEPS
 ] = {
 	/* SW behavior */
diff --git a/drivers/staging/rtl8723bs/include/HalPwrSeqCmd.h b/drivers/staging/rtl8723bs/include/HalPwrSeqCmd.h
index 459f2f9d4bbb..56c87ed17e48 100644
--- a/drivers/staging/rtl8723bs/include/HalPwrSeqCmd.h
+++ b/drivers/staging/rtl8723bs/include/HalPwrSeqCmd.h
@@ -82,12 +82,12 @@
 #define	PWR_CUT_ALL_MSK			0xFF
 
 
-typedef enum _PWRSEQ_CMD_DELAY_UNIT_ {
+enum PWRSEQ_CMD_DELAY_UNIT {
 	PWRSEQ_DELAY_US,
 	PWRSEQ_DELAY_MS,
-} PWRSEQ_DELAY_UNIT;
+};
 
-typedef struct _WL_PWR_CFG_ {
+struct WLAN_PWR_CFG {
 	u16 offset;
 	u8 cut_msk;
 	u8 fab_msk:4;
@@ -96,7 +96,7 @@ typedef struct _WL_PWR_CFG_ {
 	u8 cmd:4;
 	u8 msk;
 	u8 value;
-} WLAN_PWR_CFG, *PWLAN_PWR_CFG;
+};
 
 
 #define GET_PWR_CFG_OFFSET(__PWR_CMD)		__PWR_CMD.offset
@@ -117,6 +117,6 @@ u8 HalPwrSeqCmdParsing(
 	u8 		CutVersion,
 	u8 		FabVersion,
 	u8 		InterfaceType,
-	WLAN_PWR_CFG	PwrCfgCmd[]);
+	struct WLAN_PWR_CFG	PwrCfgCmd[]);
 
 #endif
diff --git a/drivers/staging/rtl8723bs/include/hal_pwr_seq.h b/drivers/staging/rtl8723bs/include/hal_pwr_seq.h
index 28aca047dce6..7c5fbf0b9736 100644
--- a/drivers/staging/rtl8723bs/include/hal_pwr_seq.h
+++ b/drivers/staging/rtl8723bs/include/hal_pwr_seq.h
@@ -219,15 +219,15 @@
 	{0xFFFF, PWR_CUT_ALL_MSK, PWR_FAB_ALL_MSK, PWR_INTF_ALL_MSK, 0, PWR_CMD_END, 0, 0}, 
 
 
-extern WLAN_PWR_CFG rtl8723B_power_on_flow[RTL8723B_TRANS_CARDEMU_TO_ACT_STEPS+RTL8723B_TRANS_END_STEPS];
-extern WLAN_PWR_CFG rtl8723B_radio_off_flow[RTL8723B_TRANS_ACT_TO_CARDEMU_STEPS+RTL8723B_TRANS_END_STEPS];
-extern WLAN_PWR_CFG rtl8723B_card_disable_flow[RTL8723B_TRANS_ACT_TO_CARDEMU_STEPS+RTL8723B_TRANS_CARDEMU_TO_PDN_STEPS+RTL8723B_TRANS_END_STEPS];
-extern WLAN_PWR_CFG rtl8723B_card_enable_flow[RTL8723B_TRANS_ACT_TO_CARDEMU_STEPS+RTL8723B_TRANS_CARDEMU_TO_PDN_STEPS+RTL8723B_TRANS_END_STEPS];
-extern WLAN_PWR_CFG rtl8723B_suspend_flow[RTL8723B_TRANS_ACT_TO_CARDEMU_STEPS+RTL8723B_TRANS_CARDEMU_TO_SUS_STEPS+RTL8723B_TRANS_END_STEPS];
-extern WLAN_PWR_CFG rtl8723B_resume_flow[RTL8723B_TRANS_ACT_TO_CARDEMU_STEPS+RTL8723B_TRANS_CARDEMU_TO_SUS_STEPS+RTL8723B_TRANS_END_STEPS];
-extern WLAN_PWR_CFG rtl8723B_hwpdn_flow[RTL8723B_TRANS_ACT_TO_CARDEMU_STEPS+RTL8723B_TRANS_CARDEMU_TO_PDN_STEPS+RTL8723B_TRANS_END_STEPS];
-extern WLAN_PWR_CFG rtl8723B_enter_lps_flow[RTL8723B_TRANS_ACT_TO_LPS_STEPS+RTL8723B_TRANS_END_STEPS];
-extern WLAN_PWR_CFG rtl8723B_leave_lps_flow[RTL8723B_TRANS_LPS_TO_ACT_STEPS+RTL8723B_TRANS_END_STEPS];
-extern WLAN_PWR_CFG rtl8723B_enter_swlps_flow[RTL8723B_TRANS_ACT_TO_SWLPS_STEPS+RTL8723B_TRANS_END_STEPS];
-extern WLAN_PWR_CFG rtl8723B_leave_swlps_flow[RTL8723B_TRANS_SWLPS_TO_ACT_STEPS+RTL8723B_TRANS_END_STEPS];
+extern struct WLAN_PWR_CFG rtl8723B_power_on_flow[RTL8723B_TRANS_CARDEMU_TO_ACT_STEPS+RTL8723B_TRANS_END_STEPS];
+extern struct WLAN_PWR_CFG rtl8723B_radio_off_flow[RTL8723B_TRANS_ACT_TO_CARDEMU_STEPS+RTL8723B_TRANS_END_STEPS];
+extern struct WLAN_PWR_CFG rtl8723B_card_disable_flow[RTL8723B_TRANS_ACT_TO_CARDEMU_STEPS+RTL8723B_TRANS_CARDEMU_TO_PDN_STEPS+RTL8723B_TRANS_END_STEPS];
+extern struct WLAN_PWR_CFG rtl8723B_card_enable_flow[RTL8723B_TRANS_ACT_TO_CARDEMU_STEPS+RTL8723B_TRANS_CARDEMU_TO_PDN_STEPS+RTL8723B_TRANS_END_STEPS];
+extern struct WLAN_PWR_CFG rtl8723B_suspend_flow[RTL8723B_TRANS_ACT_TO_CARDEMU_STEPS+RTL8723B_TRANS_CARDEMU_TO_SUS_STEPS+RTL8723B_TRANS_END_STEPS];
+extern struct WLAN_PWR_CFG rtl8723B_resume_flow[RTL8723B_TRANS_ACT_TO_CARDEMU_STEPS+RTL8723B_TRANS_CARDEMU_TO_SUS_STEPS+RTL8723B_TRANS_END_STEPS];
+extern struct WLAN_PWR_CFG rtl8723B_hwpdn_flow[RTL8723B_TRANS_ACT_TO_CARDEMU_STEPS+RTL8723B_TRANS_CARDEMU_TO_PDN_STEPS+RTL8723B_TRANS_END_STEPS];
+extern struct WLAN_PWR_CFG rtl8723B_enter_lps_flow[RTL8723B_TRANS_ACT_TO_LPS_STEPS+RTL8723B_TRANS_END_STEPS];
+extern struct WLAN_PWR_CFG rtl8723B_leave_lps_flow[RTL8723B_TRANS_LPS_TO_ACT_STEPS+RTL8723B_TRANS_END_STEPS];
+extern struct WLAN_PWR_CFG rtl8723B_enter_swlps_flow[RTL8723B_TRANS_ACT_TO_SWLPS_STEPS+RTL8723B_TRANS_END_STEPS];
+extern struct WLAN_PWR_CFG rtl8723B_leave_swlps_flow[RTL8723B_TRANS_SWLPS_TO_ACT_STEPS+RTL8723B_TRANS_END_STEPS];
 #endif
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
