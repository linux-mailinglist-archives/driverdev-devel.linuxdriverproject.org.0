Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DD3AC33FB10
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Mar 2021 23:25:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BC51C4EDE3;
	Wed, 17 Mar 2021 22:25:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qI2weBUQdq1X; Wed, 17 Mar 2021 22:25:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A68984EDA0;
	Wed, 17 Mar 2021 22:25:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 267A11BF21A
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 162D443277
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B1ataDd2cxfE for <devel@linuxdriverproject.org>;
 Wed, 17 Mar 2021 22:21:37 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com
 [IPv6:2a00:1450:4864:20::534])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 589E243096
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 22:21:37 +0000 (UTC)
Received: by mail-ed1-x534.google.com with SMTP id b16so4206892eds.7
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 15:21:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=XFVY0jdeRe4zcnFjHAQrkoHAz8J2C8smGqyUEHm89dc=;
 b=C/AExyMB5JXgBJInCvxh65NhttZ/w153nOOfGx8CURpRcmK8NxegZ3B8+FX+GWOMH9
 a8+4d+b/Ulh3cE0egh5LfSGAyy0QmKWrXNLewWlPvgKBKqMG0PxHRY9ODzCK9CEdW514
 zq4Y/+vvkQ775Ab6UVfvunHr5WZyq2FaK65AipWfUaR2VFRODkto9F7/NET5euvfQncd
 Bv79KOieMdhwFYGwHR5EtHDtbNCKv0F4sNL27NZz5l+GXp9Yp4Rg0UfZPRs87fgjun48
 28/40hka1g3CbUxoPNV+yJz0YC0pf89ebGy6O+pa0Hsxb6yjYA/bTMObTREwJFZk4yyG
 5O6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XFVY0jdeRe4zcnFjHAQrkoHAz8J2C8smGqyUEHm89dc=;
 b=HeLLACLsYwlqyfQisc3x3Bsy4wIrMANy7R4nTXCUM1wtCzWD7Bz2rNN05jFDEYHRHy
 x+eLoE7Xb8u5LwYvx7myHNd/8c1jgNqu4Mvd2+aKBgNIGVhKzG9FdiAc4aBm79QmzLpi
 UmzUrY+DuAf8tA63NIIjM0PWM5rCa+fHvo4W3ltUQH2OoCwv+j3CQLBzd8/JMX/C39RB
 QacQKe5SH/+ayHIXYm81JZWpmhmWxGGxHchawDFhNrj5JOywgW9gmPY7KBv7KYYohNhv
 62gQcBoDOpLUVgQS6xC8op9zCDAMnm6ZNLVBXagGVgYwIfFE0C+C4YPmxPDlhLLnxW4b
 9rNA==
X-Gm-Message-State: AOAM5306Vu9RLBrH+p/HXTgu1MYdJbL0zSNcQLz0cWyv6Bj0NSbOofH5
 p/mAOlHNBYLJKLCvli5G50g=
X-Google-Smtp-Source: ABdhPJx0K96MKtRAW9ansUrPQQqmCI8WgQ/s6Ai7H78EfjboKEqPigVrxTbVrzFvo0nNC0J96az5gw==
X-Received: by 2002:aa7:db01:: with SMTP id t1mr44944592eds.77.1616019695703; 
 Wed, 17 Mar 2021 15:21:35 -0700 (PDT)
Received: from gimli.home (93-48-145-141.ip257.fastwebnet.it. [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id
 cf4sm104304edb.19.2021.03.17.15.21.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Mar 2021 15:21:35 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 24/43] Staging: rtl8723bs: fix names in hal_com_phycfg.h
Date: Wed, 17 Mar 2021 23:21:11 +0100
Message-Id: <20210317222130.29528-25-marcocesati@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210317222130.29528-1-marcocesati@gmail.com>
References: <20210317222130.29528-1-marcocesati@gmail.com>
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

This commit converts names of structs / enums
in include/hal_com_phycfg.h from ALL_CAPS format to lowercase

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/hal/hal_com_phycfg.c     | 4 ++--
 drivers/staging/rtl8723bs/include/hal_com_phycfg.h | 8 ++++----
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c b/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c
index 586e3ded447f..67db3c60b518 100644
--- a/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c
+++ b/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c
@@ -12,7 +12,7 @@
 #include <linux/kernel.h>
 
 u8 PHY_GetTxPowerByRateBase(struct adapter *Adapter, u8 Band, u8 RfPath,
-			    u8 TxNum, enum RATE_SECTION RateSection)
+			    u8 TxNum, enum rate_section RateSection)
 {
 	struct hal_com_data	*pHalData = GET_HAL_DATA(Adapter);
 	u8	value = 0;
@@ -104,7 +104,7 @@ phy_SetTxPowerByRateBase(
 	struct adapter *Adapter,
 	u8 Band,
 	u8 RfPath,
-	enum RATE_SECTION	RateSection,
+	enum rate_section	RateSection,
 	u8 TxNum,
 	u8 Value
 )
diff --git a/drivers/staging/rtl8723bs/include/hal_com_phycfg.h b/drivers/staging/rtl8723bs/include/hal_com_phycfg.h
index 979b621f4baa..51eef4d5c861 100644
--- a/drivers/staging/rtl8723bs/include/hal_com_phycfg.h
+++ b/drivers/staging/rtl8723bs/include/hal_com_phycfg.h
@@ -12,7 +12,7 @@
 #define		PathC		0x2
 #define		PathD		0x3
 
-enum RATE_SECTION {
+enum rate_section {
 	CCK = 0,
 	OFDM,
 	HT_MCS0_MCS7,
@@ -25,7 +25,7 @@ enum RATE_SECTION {
 	VHT_4SSMCS0_4SSMCS9,
 };
 
-enum RF_TX_NUM {
+enum rf_tx_num {
 	RF_1TX = 0,
 	RF_2TX,
 	RF_3TX,
@@ -36,7 +36,7 @@ enum RF_TX_NUM {
 
 #define MAX_POWER_INDEX			0x3F
 
-enum _REGULATION_TXPWR_LMT {
+enum _regulation_txpwr_lmt {
 	TXPWR_LMT_FCC = 0,
 	TXPWR_LMT_MKK,
 	TXPWR_LMT_ETSI,
@@ -76,7 +76,7 @@ struct adapter *Adapter,
 u8 		Band,
 u8 		RfPath,
 u8 		TxNum,
-enum RATE_SECTION	RateSection
+enum rate_section	RateSection
 	);
 
 u8
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
