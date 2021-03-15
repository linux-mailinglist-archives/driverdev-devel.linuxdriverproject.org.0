Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 04E4133C371
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 18:08:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 86FB86F580;
	Mon, 15 Mar 2021 17:08:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ORhlv_APgbuO; Mon, 15 Mar 2021 17:08:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D4A6E6F504;
	Mon, 15 Mar 2021 17:08:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B3D961BF33C
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B0D6641503
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ur6iEnvR5uMP for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 17:06:17 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com
 [IPv6:2a00:1450:4864:20::634])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0842D40170
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 17:06:16 +0000 (UTC)
Received: by mail-ej1-x634.google.com with SMTP id mm21so67438281ejb.12
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:06:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=r1e4mu4CzpABSjkhBH48KbiCcb5MAIH3y9ho60nOVHY=;
 b=j7XVatMyOyJ6a1vyiPf8FvzcBVwyu7Qx7TR6hG9NjdRcYRYcfDy2yPVeE4SA2r5kOz
 +kgCMBu1Mt7bLLi1H5zwwZZJDEhiEeYNpPofxWVc28HZlkYCL4cJ4aAbgkSSixOZ+K0N
 dhACIMI5mc/h1nktRRncqnr5suxdmMuATMeqqykOZiUI3cKHnGVglti0nvRpqXGf8khq
 MFGmIjnLU5zoNWfpMDkYxTAleuJQTUwh5yapdAYQNTOcUiVnlUwTs/3sm1I43ynmfwsj
 6iuVlFz4NKIgG0JN+n4MxlTBY7wLbwLQWxkP6GPi7MOKS1SQPlgtHhsi3YxuzWItVwb1
 vS1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=r1e4mu4CzpABSjkhBH48KbiCcb5MAIH3y9ho60nOVHY=;
 b=EezBvOaeM9v0Z61LR+1wHW6rmQiaPDvdYt2SkSKUEOt683Rx9qf6ojmLt8shuhXauO
 tQI1lSXmyUOsQhgZr8Ww6PRwZ86PUzUpSlc26HAL4ohXcg89jJWbIt+9fGj8NAMQhLQT
 TsemsqFTDSmn51rb+sRSLZdtUAm/yATwWafzIl/Sg66grV1asYP6qXAtPT0u1d78jtot
 IDtwOnb6W8XNvnYnPR6c/vjy8mU2s5stc6DtPbJlANZIy1l57McJSK1WPlVra9bvO55c
 Er2P2ww5keuzHvzEp8fUUfk/NFPiLZ5ouR/cJ2cB0tk5hn+Kz9fwqVG4dJmiiw3Y21WT
 Gq+w==
X-Gm-Message-State: AOAM530IrQocSCRVF7LSNQJko3GhbvOppf4BpqwDNcrD3ulbwINsylNl
 v/FXCbBhVl9Sg39S0/2ud8A=
X-Google-Smtp-Source: ABdhPJxSvVLhJ6tzvwEPLpZx03JpJuNeUoU2cT52wpJZC/Uz6TWHZRHO9ccx1HKgzw67AOhY+1TL6g==
X-Received: by 2002:a17:906:2816:: with SMTP id
 r22mr24443683ejc.2.1615827975299; 
 Mon, 15 Mar 2021 10:06:15 -0700 (PDT)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id gq25sm7879608ejb.85.2021.03.15.10.06.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 10:06:15 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 09/57] Staging: rtl8723bs: fix spaces in HalHWImg8723B_MAC.c
Date: Mon, 15 Mar 2021 18:05:30 +0100
Message-Id: <20210315170618.2566-10-marcocesati@gmail.com>
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
    #12: FILE: ./hal/HalHWImg8723B_MAC.c:12:
    +	struct DM_ODM_T * pDM_Odm, const u32 Condition1, const u32 Condition2

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #114: FILE: ./hal/HalHWImg8723B_MAC.c:114:
    +	struct DM_ODM_T * pDM_Odm, const u32 Condition1, const u32 Condition2

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #231: FILE: ./hal/HalHWImg8723B_MAC.c:231:
    +void ODM_ReadAndConfig_MP_8723B_MAC_REG(struct DM_ODM_T * pDM_Odm)

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/hal/HalHWImg8723B_MAC.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/HalHWImg8723B_MAC.c b/drivers/staging/rtl8723bs/hal/HalHWImg8723B_MAC.c
index 3408dee976a1..51d7bf3e6d83 100644
--- a/drivers/staging/rtl8723bs/hal/HalHWImg8723B_MAC.c
+++ b/drivers/staging/rtl8723bs/hal/HalHWImg8723B_MAC.c
@@ -9,7 +9,7 @@
 #include "odm_precomp.h"
 
 static bool CheckPositive(
-	struct DM_ODM_T * pDM_Odm, const u32 Condition1, const u32 Condition2
+	struct DM_ODM_T *pDM_Odm, const u32 Condition1, const u32 Condition2
 )
 {
 	u8 _BoardType =
@@ -111,7 +111,7 @@ static bool CheckPositive(
 }
 
 static bool CheckNegative(
-	struct DM_ODM_T * pDM_Odm, const u32 Condition1, const u32 Condition2
+	struct DM_ODM_T *pDM_Odm, const u32 Condition1, const u32 Condition2
 )
 {
 	return true;
@@ -228,7 +228,7 @@ static u32 Array_MP_8723B_MAC_REG[] = {
 
 };
 
-void ODM_ReadAndConfig_MP_8723B_MAC_REG(struct DM_ODM_T * pDM_Odm)
+void ODM_ReadAndConfig_MP_8723B_MAC_REG(struct DM_ODM_T *pDM_Odm)
 {
 	u32 i = 0;
 	u32 ArrayLen = ARRAY_SIZE(Array_MP_8723B_MAC_REG);
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
