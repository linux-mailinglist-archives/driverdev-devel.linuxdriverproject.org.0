Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 76EF2344756
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Mar 2021 15:33:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 22CB682F13;
	Mon, 22 Mar 2021 14:33:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Kn-ZiL9wUYC0; Mon, 22 Mar 2021 14:33:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E8BD282EB6;
	Mon, 22 Mar 2021 14:33:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BD0A81BF35E
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 14:32:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B954860659
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 14:32:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ao5-9i5v71DW for <devel@linuxdriverproject.org>;
 Mon, 22 Mar 2021 14:32:32 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com
 [IPv6:2a00:1450:4864:20::634])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DA4B0605C6
 for <devel@driverdev.osuosl.org>; Mon, 22 Mar 2021 14:32:31 +0000 (UTC)
Received: by mail-ej1-x634.google.com with SMTP id w3so21638753ejc.4
 for <devel@driverdev.osuosl.org>; Mon, 22 Mar 2021 07:32:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YLMtNnT3e6GvAIhoidxNIb4VuJXw+DLUdbOqSYM6/t4=;
 b=CdJjWq4UHDY/vooDiXd3hFEy31e3/ROZp3MoFcNi03Eyf5GJ0nWXjqytWJc528i1CM
 p4jtdaiCg/w0yRuoqDhlvjf/nA1Imtxx99FGj2l2lTJXsVbhcxA0wzthMhX5F6jbTyNU
 wz+PQ05nDXfnP3i1nM9eqM6AuLRn3xQwd0giLDq+FGkTEvvJZye12sYHXvfMT8YEtGVe
 8WhKmr6lH0I/8p+88JLoxzEEddHcq32sZbjToHVHcJpfm4gYdK35FTiXBgq/IjlE5HQg
 0kQTla/kYMIa0WkfRKW2kCGekaP/QNXB5Nt9+VZukPH0wYkxZujDLzXDmTwovCqwtBL8
 V60A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YLMtNnT3e6GvAIhoidxNIb4VuJXw+DLUdbOqSYM6/t4=;
 b=HDDeOJU/Q7KcdTnhQGCG46yRQyKZgkNYIYZBl2wJFDG4gF82kAx2R1T34TGKddfh63
 KH4J9QE7fMfRzhF76H9IQAKBWTV/xZ0y5Bmk5Zk+5bwHKasK35LNCzcG4zB8iLOU9hpE
 AkbYAJ0IzLMdzbxOa1lkbSvsDaFhFDw3D815XncT9TrISr6g+wes4KYqDvlLS7/wsXjU
 VYmZYw7i+/IM1nDKaNMzAqlBe8d67xxu2TFNYFLeZfNQq7KZ6NQ7gE+dQuaexjDqWYZe
 P4F7Ya8JNRpQE5Tcwf89yfwYycuubFI83mUhhFn/E5v+5MylsordiGOslSnqKKOGkpo/
 bfvw==
X-Gm-Message-State: AOAM533rM9iRQ6ajm68s7JN9rGoAIIls5mqMXT6RXRrY9l5c43LRFXPe
 rQY7BP1vl5TGYWmeTTD4DLs=
X-Google-Smtp-Source: ABdhPJyG7iox4/GiXK1ZM8ksBlVtJuSVh1flw51HprQRcyqEwjZUN1sZ/2NucObxgHvhX4lMuwb0DQ==
X-Received: by 2002:a17:907:9152:: with SMTP id
 l18mr39979ejs.376.1616423550188; 
 Mon, 22 Mar 2021 07:32:30 -0700 (PDT)
Received: from agape ([151.57.176.11])
 by smtp.gmail.com with ESMTPSA id k12sm11564768edr.60.2021.03.22.07.32.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Mar 2021 07:32:29 -0700 (PDT)
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 08/11] staging: rtl8723bs: move function prototypes out of
 hal/odm.c
Date: Mon, 22 Mar 2021 15:31:46 +0100
Message-Id: <efbd319bc6199fbb06d6c4996ae2d9b81d2f6922.1616422773.git.fabioaiuto83@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1616422773.git.fabioaiuto83@gmail.com>
References: <cover.1616422773.git.fabioaiuto83@gmail.com>
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
Cc: joe@perches.com, apw@canonical.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, Fabio Aiuto <fabioaiuto83@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

fix the following checkpatch issues:

WARNING: externs should be avoided in .c files
285: FILE: drivers/staging/rtl8723bs/hal/odm.c:285:
+void odm_CommonInfoSelfInit(struct dm_odm_t *pDM_Odm);
--
WARNING: externs should be avoided in .c files
287: FILE: drivers/staging/rtl8723bs/hal/odm.c:287:
+void odm_CommonInfoSelfUpdate(struct dm_odm_t *pDM_Odm);
--
WARNING: externs should be avoided in .c files
289: FILE: drivers/staging/rtl8723bs/hal/odm.c:289:
+void odm_CmnInfoInit_Debug(struct dm_odm_t *pDM_Odm);
--
WARNING: externs should be avoided in .c files
291: FILE: drivers/staging/rtl8723bs/hal/odm.c:291:
+void odm_BasicDbgMessage(struct dm_odm_t *pDM_Odm);
--
WARNING: externs should be avoided in .c files
305: FILE: drivers/staging/rtl8723bs/hal/odm.c:305:
+void odm_RefreshRateAdaptiveMaskCE(struct dm_odm_t *pDM_Odm);
--
WARNING: externs should be avoided in .c files
309: FILE: drivers/staging/rtl8723bs/hal/odm.c:309:
+void odm_RSSIMonitorInit(struct dm_odm_t *pDM_Odm);
--
WARNING: externs should be avoided in .c files
311: FILE: drivers/staging/rtl8723bs/hal/odm.c:311:
+void odm_RSSIMonitorCheckCE(struct dm_odm_t *pDM_Odm);
--
WARNING: externs should be avoided in .c files
313: FILE: drivers/staging/rtl8723bs/hal/odm.c:313:
+void odm_RSSIMonitorCheck(struct dm_odm_t *pDM_Odm);
--
WARNING: externs should be avoided in .c files
315: FILE: drivers/staging/rtl8723bs/hal/odm.c:315:
+void odm_SwAntDetectInit(struct dm_odm_t *pDM_Odm);
--
WARNING: externs should be avoided in .c files
317: FILE: drivers/staging/rtl8723bs/hal/odm.c:317:
+void odm_SwAntDivChkAntSwitchCallback(void *FunctionContext);
--
WARNING: externs should be avoided in .c files
321: FILE: drivers/staging/rtl8723bs/hal/odm.c:321:
+void odm_GlobalAdapterCheck(void);
--
WARNING: externs should be avoided in .c files
323: FILE: drivers/staging/rtl8723bs/hal/odm.c:323:
+void odm_RefreshRateAdaptiveMask(struct dm_odm_t *pDM_Odm);
--
WARNING: externs should be avoided in .c files
325: FILE: drivers/staging/rtl8723bs/hal/odm.c:325:
+void ODM_TXPowerTrackingCheck(struct dm_odm_t *pDM_Odm);
--
WARNING: externs should be avoided in .c files
327: FILE: drivers/staging/rtl8723bs/hal/odm.c:327:
+void odm_RateAdaptiveMaskInit(struct dm_odm_t *pDM_Odm);
--
WARNING: externs should be avoided in .c files
330: FILE: drivers/staging/rtl8723bs/hal/odm.c:330:
+void odm_TXPowerTrackingInit(struct dm_odm_t *pDM_Odm);
--
WARNING: externs should be avoided in .c files
338: FILE: drivers/staging/rtl8723bs/hal/odm.c:338:
+void odm_InitHybridAntDiv(struct dm_odm_t *pDM_Odm);
--
WARNING: externs should be avoided in .c files
340: FILE: drivers/staging/rtl8723bs/hal/odm.c:340:
+bool odm_StaDefAntSel(
--
WARNING: externs should be avoided in .c files
349: FILE: drivers/staging/rtl8723bs/hal/odm.c:349:
+void odm_SetRxIdleAnt(struct dm_odm_t *pDM_Odm, u8 Ant, bool bDualPath);
--
WARNING: externs should be avoided in .c files
353: FILE: drivers/staging/rtl8723bs/hal/odm.c:353:
+void odm_HwAntDiv(struct dm_odm_t *pDM_Odm);

moved function prototypes in hal/odm.h

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 drivers/staging/rtl8723bs/hal/odm.c | 68 -----------------------------
 drivers/staging/rtl8723bs/hal/odm.h | 62 ++++++++++++++++++++++++++
 2 files changed, 62 insertions(+), 68 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/odm.c b/drivers/staging/rtl8723bs/hal/odm.c
index 49d552105a65..1ede10f0b9da 100644
--- a/drivers/staging/rtl8723bs/hal/odm.c
+++ b/drivers/staging/rtl8723bs/hal/odm.c
@@ -279,80 +279,12 @@ u32 TxScalingTable_Jaguar[TXSCALE_TABLE_SIZE] = {
 	0x3FE  /*  36, +6.0dB */
 };
 
-/*  Local Function predefine. */
-
-/* START------------COMMON INFO RELATED--------------- */
-void odm_CommonInfoSelfInit(struct dm_odm_t *pDM_Odm);
-
-void odm_CommonInfoSelfUpdate(struct dm_odm_t *pDM_Odm);
-
-void odm_CmnInfoInit_Debug(struct dm_odm_t *pDM_Odm);
-
-void odm_BasicDbgMessage(struct dm_odm_t *pDM_Odm);
-
-/* END------------COMMON INFO RELATED--------------- */
-
-/* START---------------DIG--------------------------- */
-
-/* Remove by Yuchen */
-
-/* END---------------DIG--------------------------- */
-
-/* START-------BB POWER SAVE----------------------- */
-/* Remove BB power Saving by YuChen */
-/* END---------BB POWER SAVE----------------------- */
-
-void odm_RefreshRateAdaptiveMaskCE(struct dm_odm_t *pDM_Odm);
-
-/* Remove by YuChen */
-
-void odm_RSSIMonitorInit(struct dm_odm_t *pDM_Odm);
-
-void odm_RSSIMonitorCheckCE(struct dm_odm_t *pDM_Odm);
-
-void odm_RSSIMonitorCheck(struct dm_odm_t *pDM_Odm);
-
-void odm_SwAntDetectInit(struct dm_odm_t *pDM_Odm);
-
-void odm_SwAntDivChkAntSwitchCallback(void *FunctionContext);
-
-
-
-void odm_GlobalAdapterCheck(void);
-
-void odm_RefreshRateAdaptiveMask(struct dm_odm_t *pDM_Odm);
-
-void ODM_TXPowerTrackingCheck(struct dm_odm_t *pDM_Odm);
-
-void odm_RateAdaptiveMaskInit(struct dm_odm_t *pDM_Odm);
-
-
-void odm_TXPowerTrackingInit(struct dm_odm_t *pDM_Odm);
-
 /* Remove Edca by Yu Chen */
 
 
 #define RxDefaultAnt1		0x65a9
 #define RxDefaultAnt2		0x569a
 
-void odm_InitHybridAntDiv(struct dm_odm_t *pDM_Odm);
-
-bool odm_StaDefAntSel(
-	struct dm_odm_t *pDM_Odm,
-	u32 OFDM_Ant1_Cnt,
-	u32 OFDM_Ant2_Cnt,
-	u32 CCK_Ant1_Cnt,
-	u32 CCK_Ant2_Cnt,
-	u8 *pDefAnt
-);
-
-void odm_SetRxIdleAnt(struct dm_odm_t *pDM_Odm, u8 Ant, bool bDualPath);
-
-
-
-void odm_HwAntDiv(struct dm_odm_t *pDM_Odm);
-
-
 /*  */
 /* 3 Export Interface */
 /*  */
diff --git a/drivers/staging/rtl8723bs/hal/odm.h b/drivers/staging/rtl8723bs/hal/odm.h
index 3c8d76e42c99..42fb01aa15cd 100644
--- a/drivers/staging/rtl8723bs/hal/odm.h
+++ b/drivers/staging/rtl8723bs/hal/odm.h
@@ -1429,4 +1429,66 @@ void ODM_AntselStatistics_88C(
 
 void ODM_DynamicARFBSelect(struct dm_odm_t *pDM_Odm, u8 rate, bool Collision_State);
 
+/*  Local Function predefine. */
+
+/* START------------COMMON INFO RELATED--------------- */
+void odm_CommonInfoSelfInit(struct dm_odm_t *pDM_Odm);
+
+void odm_CommonInfoSelfUpdate(struct dm_odm_t *pDM_Odm);
+
+void odm_CmnInfoInit_Debug(struct dm_odm_t *pDM_Odm);
+
+void odm_BasicDbgMessage(struct dm_odm_t *pDM_Odm);
+
+/* END------------COMMON INFO RELATED--------------- */
+
+/* START---------------DIG--------------------------- */
+
+/* Remove by Yuchen */
+
+/* END---------------DIG--------------------------- */
+
+/* START-------BB POWER SAVE----------------------- */
+/* Remove BB power Saving by YuChen */
+/* END---------BB POWER SAVE----------------------- */
+
+void odm_RefreshRateAdaptiveMaskCE(struct dm_odm_t *pDM_Odm);
+
+/* Remove by YuChen */
+
+void odm_RSSIMonitorInit(struct dm_odm_t *pDM_Odm);
+
+void odm_RSSIMonitorCheckCE(struct dm_odm_t *pDM_Odm);
+
+void odm_RSSIMonitorCheck(struct dm_odm_t *pDM_Odm);
+
+void odm_SwAntDetectInit(struct dm_odm_t *pDM_Odm);
+
+void odm_SwAntDivChkAntSwitchCallback(void *FunctionContext);
+
+void odm_GlobalAdapterCheck(void);
+
+void odm_RefreshRateAdaptiveMask(struct dm_odm_t *pDM_Odm);
+
+void ODM_TXPowerTrackingCheck(struct dm_odm_t *pDM_Odm);
+
+void odm_RateAdaptiveMaskInit(struct dm_odm_t *pDM_Odm);
+
+void odm_TXPowerTrackingInit(struct dm_odm_t *pDM_Odm);
+
+void odm_InitHybridAntDiv(struct dm_odm_t *pDM_Odm);
+
+bool odm_StaDefAntSel(
+	struct dm_odm_t *pDM_Odm,
+	u32 OFDM_Ant1_Cnt,
+	u32 OFDM_Ant2_Cnt,
+	u32 CCK_Ant1_Cnt,
+	u32 CCK_Ant2_Cnt,
+	u8 *pDefAnt
+);
+
+void odm_SetRxIdleAnt(struct dm_odm_t *pDM_Odm, u8 Ant, bool bDualPath);
+
+void odm_HwAntDiv(struct dm_odm_t *pDM_Odm);
+
 #endif
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
