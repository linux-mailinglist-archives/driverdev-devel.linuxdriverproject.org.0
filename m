Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66E4933C3B3
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 18:12:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id ECA674310D;
	Mon, 15 Mar 2021 17:12:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y7zpy6BrhPrt; Mon, 15 Mar 2021 17:12:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 24EFE40196;
	Mon, 15 Mar 2021 17:12:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 38CBD1BF33C
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2840183486
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 73n0Gs_PuVdJ for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 17:06:35 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com
 [IPv6:2a00:1450:4864:20::534])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5783683478
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 17:06:35 +0000 (UTC)
Received: by mail-ed1-x534.google.com with SMTP id dm8so18224057edb.2
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:06:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=c3u51ePf/plkBWbIsxHBkOs//F8cFig0K8veHEMZlsE=;
 b=Dss5IbHUobKfNNmfM1V3U1TeXD/hWbit8wGPPaJR/MdX7dpcY/K3S+FtIMWwZmXtYd
 HOQvHkWYNzuQo8PmsTq40avmT68RYVvNbT3avGOqHWkpjf+xp6emxaJemN34qDaHCfFH
 XplTappdFRiwhPdK/AZ0Z7s1KLJ2ZuqsdHXRSJg3jz0svHBs/adgZWm2s7LV2e07HFk/
 d4Z6YxaYGlJVuUJS/Po1S6MuwNxHiKLc8R+gAXAkGulCjslWQua0TdPihgsZWxiZgBEV
 OThBVql326lEpg/epgVegkHDxr3aBevsAz3mD8sIGZvAEm8ikMjZU6Lb5lK9c+Jh/11y
 ibSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=c3u51ePf/plkBWbIsxHBkOs//F8cFig0K8veHEMZlsE=;
 b=aP1JkxZa2BbL8RsM8g16+1mK2zRpEYlOr1rUO6isW4zMu2rM7LV0T41goUxJQsk6vg
 6b/ndKAvm5N3eCScXIQGjXbmSxWAC9GD6MfWJe442seKjsGhVAwsQ90cF335LI6sPvX3
 4qsZE8+W86/gzrAlodlqP8s2DrDXY0rWneRLI/q4OQmW6P2UM7kt3/dP8IXJOsFvNvWu
 F3eFNhucsh3Vpd0QEZZpj+PEHdW24ug4/kAC5ZAquwXMr7OBv+aV7cJw8VKwJZJFPcl1
 BvwnLu3YBRY2mWtjBLcJk+SMeJorT4EUG5YQaCcek2Erg8XFHKU80eyLQRLKTwNUJ0c6
 fprA==
X-Gm-Message-State: AOAM531Vem0sBBdiGc61zUgTzBB5ppOtcFWVl7PpOEtrFDbVs/aVJeyn
 KRFJH/OY/XhKKMlTWUhBwdQ=
X-Google-Smtp-Source: ABdhPJzHU1wYDU3P/XYF4eM+MbQWKZ8nwfttFXzqDpBy+VivXxQDuzasj5tKP1sD5nk/P87HpAFUSQ==
X-Received: by 2002:a05:6402:b48:: with SMTP id
 bx8mr32216980edb.162.1615827993622; 
 Mon, 15 Mar 2021 10:06:33 -0700 (PDT)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id gq25sm7879608ejb.85.2021.03.15.10.06.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 10:06:33 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 31/57] Staging: rtl8723bs: fix spaces in odm_RegConfig8723B.c
Date: Mon, 15 Mar 2021 18:05:52 +0100
Message-Id: <20210315170618.2566-32-marcocesati@gmail.com>
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
    #11: FILE: ./hal/odm_RegConfig8723B.c:11:
    +	struct DM_ODM_T * pDM_Odm,

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #109: FILE: ./hal/odm_RegConfig8723B.c:109:
    +void odm_ConfigRF_RadioA_8723B(struct DM_ODM_T * pDM_Odm, u32 Addr, u32 Data)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #134: FILE: ./hal/odm_RegConfig8723B.c:134:
    +void odm_ConfigMAC_8723B(struct DM_ODM_T * pDM_Odm, u32 Addr, u8 Data)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #150: FILE: ./hal/odm_RegConfig8723B.c:150:
    +	struct DM_ODM_T * pDM_Odm,

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #173: FILE: ./hal/odm_RegConfig8723B.c:173:
    +	struct DM_ODM_T * pDM_Odm,

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #201: FILE: ./hal/odm_RegConfig8723B.c:201:
    +	struct DM_ODM_T * pDM_Odm,

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #229: FILE: ./hal/odm_RegConfig8723B.c:229:
    +	struct DM_ODM_T * pDM_Odm,

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/hal/odm_RegConfig8723B.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/odm_RegConfig8723B.c b/drivers/staging/rtl8723bs/hal/odm_RegConfig8723B.c
index 84b77a5c2a44..0fc5abe6ae23 100644
--- a/drivers/staging/rtl8723bs/hal/odm_RegConfig8723B.c
+++ b/drivers/staging/rtl8723bs/hal/odm_RegConfig8723B.c
@@ -8,7 +8,7 @@
 #include "odm_precomp.h"
 
 void odm_ConfigRFReg_8723B(
-	struct DM_ODM_T * pDM_Odm,
+	struct DM_ODM_T *pDM_Odm,
 	u32 Addr,
 	u32 Data,
 	enum ODM_RF_RADIO_PATH_E RF_PATH,
@@ -106,7 +106,7 @@ void odm_ConfigRFReg_8723B(
 }
 
 
-void odm_ConfigRF_RadioA_8723B(struct DM_ODM_T * pDM_Odm, u32 Addr, u32 Data)
+void odm_ConfigRF_RadioA_8723B(struct DM_ODM_T *pDM_Odm, u32 Addr, u32 Data)
 {
 	u32  content = 0x1000; /*  RF_Content: radioa_txt */
 	u32 maskforPhySet = (u32)(content&0xE000);
@@ -131,7 +131,7 @@ void odm_ConfigRF_RadioA_8723B(struct DM_ODM_T * pDM_Odm, u32 Addr, u32 Data)
 	);
 }
 
-void odm_ConfigMAC_8723B(struct DM_ODM_T * pDM_Odm, u32 Addr, u8 Data)
+void odm_ConfigMAC_8723B(struct DM_ODM_T *pDM_Odm, u32 Addr, u8 Data)
 {
 	rtw_write8(pDM_Odm->Adapter, Addr, Data);
 	ODM_RT_TRACE(
@@ -147,7 +147,7 @@ void odm_ConfigMAC_8723B(struct DM_ODM_T * pDM_Odm, u32 Addr, u8 Data)
 }
 
 void odm_ConfigBB_AGC_8723B(
-	struct DM_ODM_T * pDM_Odm,
+	struct DM_ODM_T *pDM_Odm,
 	u32 Addr,
 	u32 Bitmask,
 	u32 Data
@@ -170,7 +170,7 @@ void odm_ConfigBB_AGC_8723B(
 }
 
 void odm_ConfigBB_PHY_REG_PG_8723B(
-	struct DM_ODM_T * pDM_Odm,
+	struct DM_ODM_T *pDM_Odm,
 	u32 Band,
 	u32 RfPath,
 	u32 TxNum,
@@ -198,7 +198,7 @@ void odm_ConfigBB_PHY_REG_PG_8723B(
 }
 
 void odm_ConfigBB_PHY_8723B(
-	struct DM_ODM_T * pDM_Odm,
+	struct DM_ODM_T *pDM_Odm,
 	u32 Addr,
 	u32 Bitmask,
 	u32 Data
@@ -226,7 +226,7 @@ void odm_ConfigBB_PHY_8723B(
 }
 
 void odm_ConfigBB_TXPWR_LMT_8723B(
-	struct DM_ODM_T * pDM_Odm,
+	struct DM_ODM_T *pDM_Odm,
 	u8 *Regulation,
 	u8 *Band,
 	u8 *Bandwidth,
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
