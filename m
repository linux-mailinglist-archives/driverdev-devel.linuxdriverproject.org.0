Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A5CB0598EA
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Jun 2019 12:59:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4A6302273B;
	Fri, 28 Jun 2019 10:59:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sQVwxIWHWJQV; Fri, 28 Jun 2019 10:59:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A5A1C2277A;
	Fri, 28 Jun 2019 10:59:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D97661BF20B
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 10:59:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D6B2588183
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 10:59:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xVGgJ7lve8gg for <devel@linuxdriverproject.org>;
 Fri, 28 Jun 2019 10:59:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7AE4E87D3D
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 10:59:10 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id bi6so3043054plb.12
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 03:59:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=44u9ZpeLBz+fPYThmolg8Ob2jZo5dtx48q419A/f7gM=;
 b=gmpnDvfiCOId3snYNDy5r8Zfj2+1CGtX1ROODyJiTuTNWrcYrXZENmQazpP9c9VBaw
 D5zTRXna/HeoU4STi5TmjyU+I00MvGOjQDNDFkMNtS+iiXv++wTEZgLJ5C19JzpKobIt
 5kOUjS1L23TNv8QuQqFZjjGSw3M1+WTVRK+Zr3WwBcvmTeES6dbsL2cmKeole4BOO4Xr
 zVknC7sYLGmnGYk0rmiMXKy+KxCm98Wi4M91t1VQTL40GwSUSe1Cf+cA5omnRU3t707C
 9t5+PgXdMmzGqpJ4Rq44jru5YNDMSO0ow0ABK9wGlQx2DAYTX7ogBo17a7wQ4h480/tH
 RqfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=44u9ZpeLBz+fPYThmolg8Ob2jZo5dtx48q419A/f7gM=;
 b=VRELNM+wheVQidCwHq7xqwu4fgchdSRCvqXv95TUbQ/oAIeey1EQGDCL9FlbQRo6f8
 42oxZWQAuiQb4jpt5iZ58KXkX42/aC8SqJsQaNUXx5N5CNjMG2lAr7BiwDT2NwMQy9vs
 ndPoHEQzgpmxTGIPSN31pqfb98kGzmD10UeRs5hA0W3I/rDAC7SYTleJhYnOpTayXJJh
 iVlfjxgVteOPr73wTThLAoDAxVBk01RW6k0RFhm4l5TEdwKtL9HQydUEHHAuBUeNmQSm
 44y+CBIIV3YZNnMIVOd2v/jXDMCjZbL/O6Goe03GC6H/AfVtcmwwFgYi0PiPWg7ChsAi
 TRGQ==
X-Gm-Message-State: APjAAAU/zFzSvRQNru8kemIg94N8YyDUL45JR2zm2BSFqN2GQwv8+GTO
 jGb1tVrSAvZ9qraPyaK446c=
X-Google-Smtp-Source: APXvYqwzIDpjlJY2Je3hbsYWEVUdeNC2gC/vjYWfFiUYtWXksA69jem7f3+Hmroip7UKCO3d8qZ27g==
X-Received: by 2002:a17:902:9a95:: with SMTP id
 w21mr10720223plp.126.1561719550229; 
 Fri, 28 Jun 2019 03:59:10 -0700 (PDT)
Received: from localhost.localdomain ([110.227.94.173])
 by smtp.gmail.com with ESMTPSA id j14sm1908043pfe.10.2019.06.28.03.59.08
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 28 Jun 2019 03:59:09 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 10/10] staging: rtl8723bs: Replace function
 odm_SignalScaleMapping()
Date: Fri, 28 Jun 2019 16:28:35 +0530
Message-Id: <20190628105835.6931-10-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190628105835.6931-1-nishkadg.linux@gmail.com>
References: <20190628105835.6931-1-nishkadg.linux@gmail.com>
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

Remove function odm_SignalScaleMapping as all it does is call
odm_SignalScaleMapping_92CSeries.
Rename odm_SignalScaleMapping_92CSeries to odm_SignalScaleMapping and
change its type from static to non-static to maintain compatibility with
call sites of odm_SignalScaleMapping.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/hal/odm_HWConfig.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/odm_HWConfig.c b/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
index 22f741066a89..49fa814068b8 100644
--- a/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
+++ b/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
@@ -23,7 +23,7 @@ static u8 odm_QueryRxPwrPercentage(s8 AntPower)
 
 }
 
-static s32 odm_SignalScaleMapping_92CSeries(PDM_ODM_T pDM_Odm, s32 CurrSig)
+s32 odm_SignalScaleMapping(PDM_ODM_T pDM_Odm, s32 CurrSig)
 {
 	s32 RetSig = 0;
 
@@ -49,11 +49,6 @@ static s32 odm_SignalScaleMapping_92CSeries(PDM_ODM_T pDM_Odm, s32 CurrSig)
 	return RetSig;
 }
 
-s32 odm_SignalScaleMapping(PDM_ODM_T pDM_Odm, s32 CurrSig)
-{
-	return odm_SignalScaleMapping_92CSeries(pDM_Odm, CurrSig);
-}
-
 static u8 odm_EVMdbToPercentage(s8 Value)
 {
 	/*  */
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
