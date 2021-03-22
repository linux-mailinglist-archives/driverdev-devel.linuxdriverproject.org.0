Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0413F34473B
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Mar 2021 15:32:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 200154028C;
	Mon, 22 Mar 2021 14:32:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 19eP2D9LYKb0; Mon, 22 Mar 2021 14:32:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4690B4025E;
	Mon, 22 Mar 2021 14:32:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9188D1BF35E
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 14:32:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8E9ED82EE1
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 14:32:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hm0sqy_q3lu3 for <devel@linuxdriverproject.org>;
 Mon, 22 Mar 2021 14:32:15 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com
 [IPv6:2a00:1450:4864:20::532])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D8E4C82EB6
 for <devel@driverdev.osuosl.org>; Mon, 22 Mar 2021 14:32:14 +0000 (UTC)
Received: by mail-ed1-x532.google.com with SMTP id h10so19583393edt.13
 for <devel@driverdev.osuosl.org>; Mon, 22 Mar 2021 07:32:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QNlBaswYmXMpAAiZg+aRMz4wD658eKTTonTGdQHvXsE=;
 b=Iu7wb/6nSqLYp0FXpE03/bHsMwOXXIeky8JncDE2nv7gkm+RHDDR7fHyBVzS2EMbFQ
 yzUr0yhI7g2gvnfvQjd9IkblYrgiztUD8fuF0Sjw2wussLT7orB6Yj7oZHLg6W64I+YP
 v6KaOG84uf9bigd/+c/sAwBrel83NPtq2pWNUF4OctPwR+GWyq2c4vh11yao6Q0QcpID
 VCq1vmn90LG7HeLNzGqi/sgJUd/U69CfQ8aVOiJUd4DhlwZQEgtzQPqJjgss34Psy7vV
 aF0VNW05l3xAcXd4JJRYScpyDyTOGjR3EwiR0q7ZuMpoFP8CYigg4lYZddFzD5aNTr4T
 T1uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QNlBaswYmXMpAAiZg+aRMz4wD658eKTTonTGdQHvXsE=;
 b=rNxw9lDGQ5JmZFvUJLen97uO80QeqRPLc4qB03bEzo4dEJ9rxTWFzkggcKS1KE3lAj
 GuAPxEPz6hlmC1V4GDh7nD2iduphu1CMoEXNNEQdGppAYpdPzvcExZnQD5+wEHNcdMGP
 Uuro0KFSjS7pGGOQ1RNCz0yiWf4UeSl34nHrBBOPtMZW10Z0nXJZPtw1081RR3PD8+kl
 ZUEUAw3Mf9cCSB3EdKN06ASym03qMM03L8ExtU2i0OezhHNZpG4YHU6383/Uw+F4UMFI
 8Io7a9G1eH0olJGRZCr5CjAWFvtqFrgw65a5Lieh/PVhV8L0i6qqMIGAu8rsnW+2cQrg
 qODg==
X-Gm-Message-State: AOAM530YgtCXped+/NmjYdrX32xNPbL1ddOKpzKfoG3mZUS1SbQ1yuxh
 iPuD48D726D1Gcb92Gc/vuw=
X-Google-Smtp-Source: ABdhPJzDMtJxzOm9XpBGXYDs2Pzl5R0A+pTiDth4KOu/096lEjGSAlOL0ifaWdfnxlfa+h3SBKacQA==
X-Received: by 2002:a05:6402:1d19:: with SMTP id
 dg25mr26163918edb.218.1616423533158; 
 Mon, 22 Mar 2021 07:32:13 -0700 (PDT)
Received: from agape ([151.57.176.11])
 by smtp.gmail.com with ESMTPSA id u59sm11994141edc.73.2021.03.22.07.32.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Mar 2021 07:32:12 -0700 (PDT)
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 02/11] staging: rtl8723bs: moved function prototypes out of
 core/rtw_efuse.c
Date: Mon, 22 Mar 2021 15:31:40 +0100
Message-Id: <c46e7d7a686988bb6aaea9bc24b15188136e0aed.1616422773.git.fabioaiuto83@gmail.com>
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
35: FILE: drivers/staging/rtl8723bs/core/rtw_efuse.c:35:
+bool

moved two function prototypes in include/rtw_efuse.h

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_efuse.c    | 10 ----------
 drivers/staging/rtl8723bs/include/rtw_efuse.h |  3 +++
 2 files changed, 3 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_efuse.c b/drivers/staging/rtl8723bs/core/rtw_efuse.c
index 32ca10f01413..0772397738d4 100644
--- a/drivers/staging/rtl8723bs/core/rtw_efuse.c
+++ b/drivers/staging/rtl8723bs/core/rtw_efuse.c
@@ -32,11 +32,6 @@ u8 fakeBTEfuseModifiedMap[EFUSE_BT_MAX_MAP_LEN] = {0};
 #define REG_EFUSE_CTRL		0x0030
 #define EFUSE_CTRL			REG_EFUSE_CTRL		/*  E-Fuse Control. */
 
-bool
-Efuse_Read1ByteFromFakeContent(
-	struct adapter *padapter,
-	u16 	Offset,
-	u8 *Value);
 bool
 Efuse_Read1ByteFromFakeContent(
 	struct adapter *padapter,
@@ -53,11 +48,6 @@ Efuse_Read1ByteFromFakeContent(
 	return true;
 }
 
-bool
-Efuse_Write1ByteToFakeContent(
-	struct adapter *padapter,
-	u16 	Offset,
-	u8 Value);
 bool
 Efuse_Write1ByteToFakeContent(
 	struct adapter *padapter,
diff --git a/drivers/staging/rtl8723bs/include/rtw_efuse.h b/drivers/staging/rtl8723bs/include/rtw_efuse.h
index 5bae46ecd9de..1f304df8c421 100644
--- a/drivers/staging/rtl8723bs/include/rtw_efuse.h
+++ b/drivers/staging/rtl8723bs/include/rtw_efuse.h
@@ -103,6 +103,9 @@ extern u8 fakeBTEfuseInitMap[];
 extern u8 fakeBTEfuseModifiedMap[];
 /*------------------------Export global variable----------------------------*/
 
+bool Efuse_Read1ByteFromFakeContent(struct adapter *padapter, u16 Offset, u8 *Value);
+bool Efuse_Write1ByteToFakeContent(struct adapter *padapter, u16 Offset, u8 Value);
+
 u16 Efuse_GetCurrentSize(struct adapter *padapter, u8 efuseType, bool bPseudoTest);
 u8 Efuse_CalculateWordCnts(u8 word_en);
 void EFUSE_GetEfuseDefinition(struct adapter *padapter, u8 efuseType, u8 type, void *pOut, bool bPseudoTest);
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
