Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B59D33876F
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Mar 2021 09:33:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4F8DD84539;
	Fri, 12 Mar 2021 08:33:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CBNTqqwuh_ak; Fri, 12 Mar 2021 08:33:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8563C84521;
	Fri, 12 Mar 2021 08:33:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D68581BF59B
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 08:27:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DFB498450D
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 08:27:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eLqAsy_nVjw2 for <devel@linuxdriverproject.org>;
 Fri, 12 Mar 2021 08:27:12 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com
 [IPv6:2a00:1450:4864:20::331])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 112F684521
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 08:27:11 +0000 (UTC)
Received: by mail-wm1-x331.google.com with SMTP id
 r10-20020a05600c35cab029010c946c95easo14626960wmq.4
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 00:27:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=CyxYyA2rkqtx8M4+Wl6S8BetX7ZKMAxstPiHRGo/rmA=;
 b=Am54LdX4kCKiBW9zutcNsK+rCL1g/cGBSmoL1MGsSGWoFDfQ9VbxhsGf/3NIdz1FSc
 lcYyrjj7XwJsj7m3VfcLZZ8CNwlCfKYq4cnu/8tDKl/LkM3xrTvxBxtMAwkEqXsJEIfd
 isZrjXFdJuNmUCAv7dj7FhffftBTzgLuOj4O1jiu406frn9PlHBxrRGyhrV1Cx2BoHc9
 dMFHvsgamnSt1Wcd3KRRXUvser9Hgt/+bff3bG4mTVWPP7IOB9J8uEHpLOFvApmcZCXZ
 0fhZ871AxSQ/IFGb8noSmUaxk9tozE+n1A0B6bdWKrEjEHPK3nDqEee7jztzMX2JM1KK
 RRGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CyxYyA2rkqtx8M4+Wl6S8BetX7ZKMAxstPiHRGo/rmA=;
 b=HWZKPSTuc6jWmkArs7nyR3JUyFoQO2hh7uNscQsTaD8imzL+A9svfe469BKfnKlPzD
 6WTCuqKd9Oeq8n61a34Qtsh2wmcAqhpM1tDANGdkcFyQS6IM7uVs3F3QHNy/4C+xfpN0
 WOIPD+S+inKRfoi1828ligmXMh5+dO/xFLYaxK0ePjhct41mv7d8mz3tm01xkk5nA1/3
 YuYNQvSQ2s4tkeuEGo71KfIJo6/GGYo8vXyCnwqLEzaPwePJrIrzEPfTfqa5PYzmgcad
 oChxsydGkKXPdatnD4fz5KRORpdBJIrqBpt3CfCU5jZQau7RRvJIIif3XsCuJ+dVRyf8
 uURA==
X-Gm-Message-State: AOAM5306XrgG1/SHeBUrGc1aOYU07GwBjRmTqeyWcVqOileh57vbcaqf
 Wxlmryd5UQADbul4CxP2VSA=
X-Google-Smtp-Source: ABdhPJxt3A4FvAXyGC2Xygw166iuNlghEXNQjcMl+iDY2rj6eEIPJXf541dh1VuaJ46e9ovWoBOO3g==
X-Received: by 2002:a1c:ddc6:: with SMTP id
 u189mr12123176wmg.171.1615537630337; 
 Fri, 12 Mar 2021 00:27:10 -0800 (PST)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id i8sm7743979wry.90.2021.03.12.00.27.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Mar 2021 00:27:10 -0800 (PST)
From: Marco Cesati <marcocesati@gmail.com>
X-Google-Original-From: Marco Cesati <marco.cesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 33/33] staging: rtl8723bs: remove typedefs in
 odm_DynamicBBPowerSaving.h
Date: Fri, 12 Mar 2021 09:26:38 +0100
Message-Id: <20210312082638.25512-34-marco.cesati@gmail.com>
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

This commit fixes the following checkpatch.pl warning:

    WARNING: do not add new typedefs
    #11: FILE: hal/odm_DynamicBBPowerSaving.h:11:
    +typedef struct _Dynamic_Power_Saving_ {

Signed-off-by: Marco Cesati <marco.cesati@gmail.com>
---
 drivers/staging/rtl8723bs/hal/odm.h                      | 2 +-
 drivers/staging/rtl8723bs/hal/odm_DynamicBBPowerSaving.c | 4 ++--
 drivers/staging/rtl8723bs/hal/odm_DynamicBBPowerSaving.h | 4 ++--
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/odm.h b/drivers/staging/rtl8723bs/hal/odm.h
index 2bcb55878b12..8b8fe2c406f5 100644
--- a/drivers/staging/rtl8723bs/hal/odm.h
+++ b/drivers/staging/rtl8723bs/hal/odm.h
@@ -1111,7 +1111,7 @@ struct DM_ODM_T { /* DM_Out_Source_Dynamic_Mechanism_Structure */
 	/*  */
 	struct FAT_T DM_FatTable;
 	struct DIG_T DM_DigTable;
-	PS_T DM_PSTable;
+	struct PS_T DM_PSTable;
 	struct dynamic_primary_CCA DM_PriCCA;
 	struct RXHP_T DM_RXHP_Table;
 	struct RA_T DM_RA_Table;
diff --git a/drivers/staging/rtl8723bs/hal/odm_DynamicBBPowerSaving.c b/drivers/staging/rtl8723bs/hal/odm_DynamicBBPowerSaving.c
index cc0bf4c1c777..2cc9518c4ae8 100644
--- a/drivers/staging/rtl8723bs/hal/odm_DynamicBBPowerSaving.c
+++ b/drivers/staging/rtl8723bs/hal/odm_DynamicBBPowerSaving.c
@@ -10,7 +10,7 @@
 void odm_DynamicBBPowerSavingInit(void *pDM_VOID)
 {
 	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
-	pPS_T pDM_PSTable = &pDM_Odm->DM_PSTable;
+	struct PS_T *pDM_PSTable = &pDM_Odm->DM_PSTable;
 
 	pDM_PSTable->PreCCAState = CCA_MAX;
 	pDM_PSTable->CurCCAState = CCA_MAX;
@@ -23,7 +23,7 @@ void odm_DynamicBBPowerSavingInit(void *pDM_VOID)
 void ODM_RF_Saving(void *pDM_VOID, u8 bForceInNormal)
 {
 	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
-	pPS_T pDM_PSTable = &pDM_Odm->DM_PSTable;
+	struct PS_T *pDM_PSTable = &pDM_Odm->DM_PSTable;
 	u8 Rssi_Up_bound = 30;
 	u8 Rssi_Low_bound = 25;
 
diff --git a/drivers/staging/rtl8723bs/hal/odm_DynamicBBPowerSaving.h b/drivers/staging/rtl8723bs/hal/odm_DynamicBBPowerSaving.h
index dba19271d526..90b9c7659084 100644
--- a/drivers/staging/rtl8723bs/hal/odm_DynamicBBPowerSaving.h
+++ b/drivers/staging/rtl8723bs/hal/odm_DynamicBBPowerSaving.h
@@ -8,7 +8,7 @@
 #ifndef	__ODMDYNAMICBBPOWERSAVING_H__
 #define    __ODMDYNAMICBBPOWERSAVING_H__
 
-typedef struct _Dynamic_Power_Saving_ {
+struct PS_T { /* _Dynamic_Power_Saving_ */
 	u8 PreCCAState;
 	u8 CurCCAState;
 
@@ -20,7 +20,7 @@ typedef struct _Dynamic_Power_Saving_ {
 	u8 initialize;
 	u32 Reg874, RegC70, Reg85C, RegA74;
 
-} PS_T, *pPS_T;
+};
 
 #define dm_RF_Saving ODM_RF_Saving
 
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
