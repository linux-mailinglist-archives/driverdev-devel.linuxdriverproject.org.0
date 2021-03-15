Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E24933C3B6
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 18:12:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B5C474312F;
	Mon, 15 Mar 2021 17:12:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0VuRo-jVZio5; Mon, 15 Mar 2021 17:12:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CE0BD430FB;
	Mon, 15 Mar 2021 17:12:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1ED431BF33C
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0E72F47A73
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id saM4AdrjGfoe for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 17:06:36 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com
 [IPv6:2a00:1450:4864:20::634])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 245A347489
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 17:06:36 +0000 (UTC)
Received: by mail-ej1-x634.google.com with SMTP id p8so67494743ejb.10
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:06:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=nI8E3hPoGo/Mw429ultFanU6c0zWReU6b6QQXqG6XxA=;
 b=t0EXcb0InD7akNzi7W93IEGlo3qGXJSNgG0QkoxHuiARL/PzLLxgOPP06Sp3VnNpNx
 UeBtBv5WpGzIpCUDD2s4NLd4n2ZwUuOZY3e3Snf2qmRkSzGpnJiZ2QzffBu2fDd2j//t
 Uxb6QVwowshL5NvEktSFyy5f+kVSMk6FHP4EH0hE4jE/Bjm6AG3EL1VI/vqLdvY3c5A1
 fMJxFhFLADBPwYEIV6vaRT/wrzRk9sCiTJtWsEWS+5i40R3HApey+3BtPCb1fv4+MopU
 Pt/CvM0UzUiOX/wEYz5RNffjO4k+QtDSMsXz3OZ7b1c1t+/PUXcocG7hA9Tuix83GaDe
 ojGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nI8E3hPoGo/Mw429ultFanU6c0zWReU6b6QQXqG6XxA=;
 b=U3PwtvkV/B6j87wHGgcq0EFbWi2C+iMOSIFqYLF/6yT/doPSlOS1IOzkEHXPblOjdL
 qXtBPQhTKnGP0H4mgdFFuORrxkEsYxnzsiL1nkgeyUPDn+aKHIuy13RfNUoiPhHNF8dI
 t1KhMHNxYcQfbjqZulNf57TIaD4AJo4+wAJWP6j8BeB6Sktc9BKCjuPYlH7/RAIdC8Gc
 hdCR/4sBIjTZmSkRGpicY0Uukjjnsj835poh+XfHdrCWGs3u+mjM7huJspYn/yRokM5A
 Tzj0gKUlZ6hn5ZVtRuy7poqgAlmriOMaeif2+eFA9ec+qOjYT0WCJCfFxAlGt9nVzPyO
 kDoQ==
X-Gm-Message-State: AOAM530p8kM1Bupr5rcFZmfir65xHs383A/3ENqY389ZXz7Y6eoAnwc9
 yyKNaQm7TGF3nvfGBOllGcg=
X-Google-Smtp-Source: ABdhPJy4N839/+rzaWlVaXYUBriwBrjlJgGsExvsZEqpSpUyCPte+YIFjbHwIrZl7VgkLlwUz08U/Q==
X-Received: by 2002:a17:906:f296:: with SMTP id
 gu22mr24400044ejb.20.1615827994440; 
 Mon, 15 Mar 2021 10:06:34 -0700 (PDT)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id gq25sm7879608ejb.85.2021.03.15.10.06.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 10:06:34 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 32/57] Staging: rtl8723bs: fix spaces in odm_RegConfig8723B.h
Date: Mon, 15 Mar 2021 18:05:53 +0100
Message-Id: <20210315170618.2566-33-marcocesati@gmail.com>
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
    #10: FILE: ./hal/odm_RegConfig8723B.h:10:
    +void odm_ConfigRFReg_8723B(struct DM_ODM_T * pDM_Odm,

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #17: FILE: ./hal/odm_RegConfig8723B.h:17:
    +void odm_ConfigRF_RadioA_8723B(struct DM_ODM_T * pDM_Odm, u32 Addr, u32 Data);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #19: FILE: ./hal/odm_RegConfig8723B.h:19:
    +void odm_ConfigMAC_8723B(struct DM_ODM_T * pDM_Odm, u32 Addr, u8 Data);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #21: FILE: ./hal/odm_RegConfig8723B.h:21:
    +void odm_ConfigBB_AGC_8723B(struct DM_ODM_T * pDM_Odm,

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #27: FILE: ./hal/odm_RegConfig8723B.h:27:
    +void odm_ConfigBB_PHY_REG_PG_8723B(struct DM_ODM_T * pDM_Odm,

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #36: FILE: ./hal/odm_RegConfig8723B.h:36:
    +void odm_ConfigBB_PHY_8723B(struct DM_ODM_T * pDM_Odm,

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #42: FILE: ./hal/odm_RegConfig8723B.h:42:
    +void odm_ConfigBB_TXPWR_LMT_8723B(struct DM_ODM_T * pDM_Odm,

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/hal/odm_RegConfig8723B.h | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/odm_RegConfig8723B.h b/drivers/staging/rtl8723bs/hal/odm_RegConfig8723B.h
index d7747100a917..e863f0c6d27a 100644
--- a/drivers/staging/rtl8723bs/hal/odm_RegConfig8723B.h
+++ b/drivers/staging/rtl8723bs/hal/odm_RegConfig8723B.h
@@ -7,24 +7,24 @@
 #ifndef __INC_ODM_REGCONFIG_H_8723B
 #define __INC_ODM_REGCONFIG_H_8723B
 
-void odm_ConfigRFReg_8723B(struct DM_ODM_T * pDM_Odm,
+void odm_ConfigRFReg_8723B(struct DM_ODM_T *pDM_Odm,
 			   u32 Addr,
 			   u32 Data,
 			   enum ODM_RF_RADIO_PATH_E RF_PATH,
 			   u32 RegAddr
 );
 
-void odm_ConfigRF_RadioA_8723B(struct DM_ODM_T * pDM_Odm, u32 Addr, u32 Data);
+void odm_ConfigRF_RadioA_8723B(struct DM_ODM_T *pDM_Odm, u32 Addr, u32 Data);
 
-void odm_ConfigMAC_8723B(struct DM_ODM_T * pDM_Odm, u32 Addr, u8 Data);
+void odm_ConfigMAC_8723B(struct DM_ODM_T *pDM_Odm, u32 Addr, u8 Data);
 
-void odm_ConfigBB_AGC_8723B(struct DM_ODM_T * pDM_Odm,
+void odm_ConfigBB_AGC_8723B(struct DM_ODM_T *pDM_Odm,
 			    u32 Addr,
 			    u32 Bitmask,
 			    u32 Data
 );
 
-void odm_ConfigBB_PHY_REG_PG_8723B(struct DM_ODM_T * pDM_Odm,
+void odm_ConfigBB_PHY_REG_PG_8723B(struct DM_ODM_T *pDM_Odm,
 				   u32 Band,
 				   u32 RfPath,
 				   u32 TxNum,
@@ -33,13 +33,13 @@ void odm_ConfigBB_PHY_REG_PG_8723B(struct DM_ODM_T * pDM_Odm,
 				   u32 Data
 );
 
-void odm_ConfigBB_PHY_8723B(struct DM_ODM_T * pDM_Odm,
+void odm_ConfigBB_PHY_8723B(struct DM_ODM_T *pDM_Odm,
 			    u32 Addr,
 			    u32 Bitmask,
 			    u32 Data
 );
 
-void odm_ConfigBB_TXPWR_LMT_8723B(struct DM_ODM_T * pDM_Odm,
+void odm_ConfigBB_TXPWR_LMT_8723B(struct DM_ODM_T *pDM_Odm,
 				  u8 *Regulation,
 				  u8 *Band,
 				  u8 *Bandwidth,
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
