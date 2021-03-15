Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE8AD33C386
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 18:08:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 73A6643122;
	Mon, 15 Mar 2021 17:08:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BicDInh92FvG; Mon, 15 Mar 2021 17:08:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D99D5430B9;
	Mon, 15 Mar 2021 17:08:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3E8D51BF33C
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3657C834B6
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vBtBO2ZZxz7S for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 17:06:19 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com
 [IPv6:2a00:1450:4864:20::629])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7BA9683486
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 17:06:19 +0000 (UTC)
Received: by mail-ej1-x629.google.com with SMTP id lr13so67560928ejb.8
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:06:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=lRj0IalQ8ZCV/13dhHNpM4PLTMPzmpElvZ32aWXEZLI=;
 b=U0zhUu51+k+9x/8U3AKSQZgcRhRI3DMJJj2J7hxVs+Af+T6rknupfO4oeXvlpoRdYz
 EK9vzild7NLs4+YQOQejdniGDsLg9W/h/bN9Wdm6NBN5bzdGf0Iz0pH8BDJVgA15XOJg
 rDyhV7cxzVySoWtl5Xt7OfgwZvzvV3N9AgTXl02+kxfc4EywROhSAtub30wIGoFg9Gpy
 99oEy7j+4FLzPElWwCPaiFl8u2yhrOwdTGfga03sTeVzxkm5U5HGOkKx5WFM/+HGasol
 0zKQxvHLnTXAVapwaK8RKsO/aNdls2TVju8vG+5c/QzpNhoOKeevWFjL6ZQYHhFfkrle
 s8QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lRj0IalQ8ZCV/13dhHNpM4PLTMPzmpElvZ32aWXEZLI=;
 b=dmVP0IOen2Pqe93oXNNEINROlFKuPaTgiVHxhyVvVxfAJ+Jvp1iBfNmWt1Pz3IEVmU
 1pLlmdkVM1LCR01zq8Bi3Rpt2B16MfZlmF0VtrzLnKS1PXXP6QefOIkaJeJr1CDfosC+
 WjImpNZm4Ky43qYo6i5NFzeDoAUHPfnezWUR1p43S5Wsgw76NQ8ysTtuKffXwGPXdspq
 TU12S7zUSo+aXZgZv5GflqGjq4a+u4LPBQTRKAsyYeomcGZidvtX7MRK3VFaUX/XPP0U
 VKbNxlc7uQBnzJGxfI9HmG+W+jZkyoP5Or67fSCij07nAFNO3mdbbL2PIjAR9UoU8hXK
 QHvg==
X-Gm-Message-State: AOAM533WZJF9CHcoiWctO6HTxnZpZxlj+26KP0tXV9gUNEoLgiDy0G/7
 NoaeqaxvuZKZ7KvuhoF7nExxEa797Nw=
X-Google-Smtp-Source: ABdhPJxL8k8dJpJkkGfi4IRYP/+kMdLp9oyxY7LUSeeZrFmQ8cgV6p9gjAGXBhdWWfHs4kJOpAB//g==
X-Received: by 2002:a17:906:1408:: with SMTP id
 p8mr24473538ejc.89.1615827977766; 
 Mon, 15 Mar 2021 10:06:17 -0700 (PDT)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id gq25sm7879608ejb.85.2021.03.15.10.06.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 10:06:17 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 12/57] Staging: rtl8723bs: fix spaces in HalHWImg8723B_RF.h
Date: Mon, 15 Mar 2021 18:05:33 +0100
Message-Id: <20210315170618.2566-13-marcocesati@gmail.com>
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

    ERROR:POINTER_LOCATION: "foo *  bar" should be "foo *bar"
    #18: FILE: ./hal/HalHWImg8723B_RF.h:18:
    +	struct DM_ODM_T *  pDM_Odm

    ERROR:POINTER_LOCATION: "foo *  bar" should be "foo *bar"
    #27: FILE: ./hal/HalHWImg8723B_RF.h:27:
    +	struct DM_ODM_T *  pDM_Odm

    ERROR:POINTER_LOCATION: "foo *  bar" should be "foo *bar"
    #37: FILE: ./hal/HalHWImg8723B_RF.h:37:
    +	struct DM_ODM_T *  pDM_Odm

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.h b/drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.h
index 9f86f199d4fd..1bb266f34e7d 100644
--- a/drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.h
+++ b/drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.h
@@ -15,7 +15,7 @@
 
 void
 ODM_ReadAndConfig_MP_8723B_RadioA(/*  TC: Test Chip, MP: MP Chip */
-	struct DM_ODM_T *  pDM_Odm
+	struct DM_ODM_T *pDM_Odm
 );
 
 /******************************************************************************
@@ -24,7 +24,7 @@ ODM_ReadAndConfig_MP_8723B_RadioA(/*  TC: Test Chip, MP: MP Chip */
 
 void
 ODM_ReadAndConfig_MP_8723B_TxPowerTrack_SDIO(/*  TC: Test Chip, MP: MP Chip */
-	struct DM_ODM_T *  pDM_Odm
+	struct DM_ODM_T *pDM_Odm
 );
 u32 ODM_GetVersion_MP_8723B_TxPowerTrack_SDIO(void);
 
@@ -34,7 +34,7 @@ u32 ODM_GetVersion_MP_8723B_TxPowerTrack_SDIO(void);
 
 void
 ODM_ReadAndConfig_MP_8723B_TXPWR_LMT(/*  TC: Test Chip, MP: MP Chip */
-	struct DM_ODM_T *  pDM_Odm
+	struct DM_ODM_T *pDM_Odm
 );
 u32 ODM_GetVersion_MP_8723B_TXPWR_LMT(void);
 
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
