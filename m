Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C94B744E3
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Jul 2019 07:27:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4278E88056;
	Thu, 25 Jul 2019 05:27:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n+1+6forFUxp; Thu, 25 Jul 2019 05:27:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9C22088007;
	Thu, 25 Jul 2019 05:27:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A66521BF2B7
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 05:27:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9E45F2201C
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 05:27:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XPMxwQgdfDpi for <devel@linuxdriverproject.org>;
 Thu, 25 Jul 2019 05:27:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by silver.osuosl.org (Postfix) with ESMTPS id CBF4320477
 for <devel@driverdev.osuosl.org>; Thu, 25 Jul 2019 05:27:13 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id x15so12050055pgg.8
 for <devel@driverdev.osuosl.org>; Wed, 24 Jul 2019 22:27:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RMVn+7q3f2yGO25Hz2nQInibJexnbhfbwOblVuu2bSg=;
 b=ZihLNslrdHuDMc8z5uRWvDP6e1QrIZuwjODsF4/WM0VHSYFymTF09lm4lDDHP3FQel
 F422IUcY4M/IWBQZ91d2bRhGdbv6fJ6xp/9qPB2mKymVsPfqS4OVXaeUgiN6ntyPc6/Y
 /+YCiPPDJ7t+JVUkFm0OjkNzgvvDXRMiT3xU2NEHAnivFIWJWzu0/+DNxmxKpkLOo3F6
 zCroZaPi+JTZ0nK53MXN6awyKwYmCCjV9pQwowCxScLE4k3PlTlqkU/fH41mdQv1XnJD
 1Jno4Pyj5H0a2MnIzZzQcKf04QAuoiS848EPtJCGG4CNe2Maug4U6yhYJwwGANoO3sE+
 PAAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RMVn+7q3f2yGO25Hz2nQInibJexnbhfbwOblVuu2bSg=;
 b=UMfZS/2e2wgyHL5iePAaHg/I9dUTK3yS1yqF+m914p559QUmbjeCsdo+pwxMBCxv7a
 jzX2dJVCCx5cbejq9t9PE0J6AZg5M7yLcyoXS0OTPWPEbl7c24FzZgHYcAW9l5u48Xi1
 sRAwpcM1woi/9o1kbRS0ieMCw4S0RqT8iHSUmDvFSgPHNNnqbgliARY206ebadvoekym
 QPTyZhQIJtlN7mV+Rmu5eAaPIQ3olRcnJoQ1524EB/PVAbeXFPICXWhYXZGciWKsIn0R
 z/DEuuoTbjB4lznkMKrxuNTMdJSSQss+RXAKd8/lf86fE/d1O0jschYAC/C86NWN2UlG
 mQ3g==
X-Gm-Message-State: APjAAAWCuK6xGtsizT4R1RrKhfhvMVHwma+bykYG3n9dGpXDJbWUeArI
 U4cYiz4Yr6M4ZxSd75dEnjY=
X-Google-Smtp-Source: APXvYqzVdfGjX2rGjpG95DbJnYF4/DtBNIn7u+nXnAQMIvLzkElXM3RdeIyYBkpsZPgodvIgFjdWrg==
X-Received: by 2002:a63:2264:: with SMTP id t36mr78973538pgm.87.1564032433486; 
 Wed, 24 Jul 2019 22:27:13 -0700 (PDT)
Received: from localhost.localdomain ([110.227.69.93])
 by smtp.gmail.com with ESMTPSA id w22sm51615877pfi.175.2019.07.24.22.27.11
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 24 Jul 2019 22:27:12 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 7/9] staging: rtl8723bs: Replace function
 odm_TXPowerTrackingInit()
Date: Thu, 25 Jul 2019 10:56:43 +0530
Message-Id: <20190725052645.2372-7-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190725052645.2372-1-nishkadg.linux@gmail.com>
References: <20190725052645.2372-1-nishkadg.linux@gmail.com>
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

Remove function odm_TXPowerTrackingInit as all it does is call
odm_TXPowerTrackingThermalMeterInit.
Rename odm_TXPowerTrackingThermalMeterInit to
odm_TXPowerTrackingInit to maintain compatibility with call sites.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/hal/odm.c | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/odm.c b/drivers/staging/rtl8723bs/hal/odm.c
index e3f4307f3d20..01f732853689 100644
--- a/drivers/staging/rtl8723bs/hal/odm.c
+++ b/drivers/staging/rtl8723bs/hal/odm.c
@@ -339,8 +339,6 @@ void ODM_TXPowerTrackingCheck(PDM_ODM_T pDM_Odm);
 
 void odm_RateAdaptiveMaskInit(PDM_ODM_T pDM_Odm);
 
-void odm_TXPowerTrackingThermalMeterInit(PDM_ODM_T pDM_Odm);
-
 
 void odm_TXPowerTrackingInit(PDM_ODM_T pDM_Odm);
 
@@ -1324,11 +1322,6 @@ void odm_RSSIMonitorCheckCE(PDM_ODM_T pDM_Odm)
 /* 3 Tx Power Tracking */
 /* 3 ============================================================ */
 
-void odm_TXPowerTrackingInit(PDM_ODM_T pDM_Odm)
-{
-	odm_TXPowerTrackingThermalMeterInit(pDM_Odm);
-}
-
 static u8 getSwingIndex(PDM_ODM_T pDM_Odm)
 {
 	struct adapter *Adapter = pDM_Odm->Adapter;
@@ -1353,7 +1346,7 @@ static u8 getSwingIndex(PDM_ODM_T pDM_Odm)
 	return i;
 }
 
-void odm_TXPowerTrackingThermalMeterInit(PDM_ODM_T pDM_Odm)
+void odm_TXPowerTrackingInit(PDM_ODM_T pDM_Odm)
 {
 	u8 defaultSwingIndex = getSwingIndex(pDM_Odm);
 	u8 p = 0;
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
