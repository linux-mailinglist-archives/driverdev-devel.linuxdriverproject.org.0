Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 76D6D33C362
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 18:07:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0AB7F83595;
	Mon, 15 Mar 2021 17:07:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4SKmh73roavn; Mon, 15 Mar 2021 17:07:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 20AF4834F5;
	Mon, 15 Mar 2021 17:07:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3AD681BF33C
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 37C5683486
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1PanBTeAwkkp for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 17:06:15 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com
 [IPv6:2a00:1450:4864:20::634])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 517DD83478
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 17:06:15 +0000 (UTC)
Received: by mail-ej1-x634.google.com with SMTP id dx17so67556529ejb.2
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:06:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=TFfWBk68GCTaj5J+tnAjE7KZrK4Pv4TwrkymAIV54tY=;
 b=dYibvGbPEkqpeQzAHacXUmkv5eBYzhnkJfIjTbYYLBT5OnAYDuzhA1NVSLrN/sn0wY
 vIAy+0B/cU9hCh8T7BZC0YTVRZ4IGrUxp9swemfjAs85+heCDthk0iytRgnVy6WLGYA+
 HM1X6eVng8d3AJF6o4YKqENQTxBSDZ+yo9Yjhh59RGBRHk3d/6wwMGqtUFpyhyHM/qH3
 EApRh4hSB/1l3i4lZOqjUYUj6V3Jf3p43raTyKkvu3oX5rQQHVSy+K0uebBu130RlzYQ
 sD/mG39+l+N/oFGpAbI4WvMoSSXu9qSawtjC9dteyCw3nwLP5ZKt5RNdRa7xOTORFAVO
 EwCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TFfWBk68GCTaj5J+tnAjE7KZrK4Pv4TwrkymAIV54tY=;
 b=fz7eZMsR2ABK/AE7ljRdGg3pvBhTTB43mzKNOYbSyvFz/T0UT5/InZnk4xIPj2xb9X
 D+D8BI1RXzs8OnXVbyJ7a45U5DK6IuGQBbIpaYffXk3Mr7OPh4ig+foyUu+XjA3r+zPW
 YAJO7SUOTOtNtcu9yxBTsRbDQI1LskrLkvj+qX911aJdzljNHNBh16DVfa7DEKswmRTS
 kaI8sYX7urRqYIWUNeX/yTvs9HvwS7Vn2qkOweFWz+Gh0LHegZo6Zv7g1hCsyhhtWJKa
 YKwmFXwZbvuWlF6aPsn9ccxSsSDnPAgthe4fzxrTnGmREty8eXF/uRpWY+7tqBNEFDzP
 L7vA==
X-Gm-Message-State: AOAM532q7t+36ZPpQTu3oVT7dMgDdr5aTJ4H3DwJIZ9zTYlXihJKzaeV
 cZO4mWlmpXab1DDhwhw5t9dJFTAsK3o=
X-Google-Smtp-Source: ABdhPJwU4ZPcGtYEmiNjDw76Uj2VjgvrEqisq69Ba2Jhylf4Hwj6wBYCkTwo5e5dVogy/jWnQlw86A==
X-Received: by 2002:a17:906:cd05:: with SMTP id
 oz5mr25250495ejb.345.1615827973598; 
 Mon, 15 Mar 2021 10:06:13 -0700 (PDT)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id gq25sm7879608ejb.85.2021.03.15.10.06.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 10:06:13 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 07/57] Staging: rtl8723bs: fix spaces in HalHWImg8723B_BB.c
Date: Mon, 15 Mar 2021 18:05:28 +0100
Message-Id: <20210315170618.2566-8-marcocesati@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210315170618.2566-1-marcocesati@gmail.com>
References: <20210315170618.2566-1-marcocesati@gmail.com>
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

This commit fixes the following checkpatch.pl errors:

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #12: FILE: ./hal/HalHWImg8723B_BB.c:12:
    +	struct DM_ODM_T * pDM_Odm, const u32 Condition1, const u32 Condition2

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #115: FILE: ./hal/HalHWImg8723B_BB.c:115:
    +	struct DM_ODM_T * pDM_Odm, const u32  Condition1, const u32 Condition2

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #260: FILE: ./hal/HalHWImg8723B_BB.c:260:
    +void ODM_ReadAndConfig_MP_8723B_AGC_TAB(struct DM_ODM_T * pDM_Odm)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #529: FILE: ./hal/HalHWImg8723B_BB.c:529:
    +void ODM_ReadAndConfig_MP_8723B_PHY_REG(struct DM_ODM_T * pDM_Odm)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #609: FILE: ./hal/HalHWImg8723B_BB.c:609:
    +void ODM_ReadAndConfig_MP_8723B_PHY_REG_PG(struct DM_ODM_T * pDM_Odm)

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/hal/HalHWImg8723B_BB.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/HalHWImg8723B_BB.c b/drivers/staging/rtl8723bs/hal/HalHWImg8723B_BB.c
index a31ab66941ac..4faa9038417d 100644
--- a/drivers/staging/rtl8723bs/hal/HalHWImg8723B_BB.c
+++ b/drivers/staging/rtl8723bs/hal/HalHWImg8723B_BB.c
@@ -9,7 +9,7 @@
 #include "odm_precomp.h"
 
 static bool CheckPositive(
-	struct DM_ODM_T * pDM_Odm, const u32 Condition1, const u32 Condition2
+	struct DM_ODM_T *pDM_Odm, const u32 Condition1, const u32 Condition2
 )
 {
 	u8 _BoardType =
@@ -112,7 +112,7 @@ static bool CheckPositive(
 }
 
 static bool CheckNegative(
-	struct DM_ODM_T * pDM_Odm, const u32  Condition1, const u32 Condition2
+	struct DM_ODM_T *pDM_Odm, const u32  Condition1, const u32 Condition2
 )
 {
 	return true;
@@ -257,7 +257,7 @@ static u32 Array_MP_8723B_AGC_TAB[] = {
 
 };
 
-void ODM_ReadAndConfig_MP_8723B_AGC_TAB(struct DM_ODM_T * pDM_Odm)
+void ODM_ReadAndConfig_MP_8723B_AGC_TAB(struct DM_ODM_T *pDM_Odm)
 {
 	u32 i = 0;
 	u32 ArrayLen = ARRAY_SIZE(Array_MP_8723B_AGC_TAB);
@@ -526,7 +526,7 @@ static u32 Array_MP_8723B_PHY_REG[] = {
 
 };
 
-void ODM_ReadAndConfig_MP_8723B_PHY_REG(struct DM_ODM_T * pDM_Odm)
+void ODM_ReadAndConfig_MP_8723B_PHY_REG(struct DM_ODM_T *pDM_Odm)
 {
 	u32 i = 0;
 	u32 ArrayLen = ARRAY_SIZE(Array_MP_8723B_PHY_REG);
@@ -606,7 +606,7 @@ static u32 Array_MP_8723B_PHY_REG_PG[] = {
 	0, 0, 0, 0x00000e14, 0xffffffff, 0x26303436
 };
 
-void ODM_ReadAndConfig_MP_8723B_PHY_REG_PG(struct DM_ODM_T * pDM_Odm)
+void ODM_ReadAndConfig_MP_8723B_PHY_REG_PG(struct DM_ODM_T *pDM_Odm)
 {
 	u32 i = 0;
 	u32 *Array = Array_MP_8723B_PHY_REG_PG;
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
