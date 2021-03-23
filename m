Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3037345EB6
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Mar 2021 13:58:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 39751402E0;
	Tue, 23 Mar 2021 12:58:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Zdvv5uhipccG; Tue, 23 Mar 2021 12:58:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7DDBC402D1;
	Tue, 23 Mar 2021 12:58:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 80DD21BF371
 for <devel@linuxdriverproject.org>; Tue, 23 Mar 2021 12:58:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7031B6082F
 for <devel@linuxdriverproject.org>; Tue, 23 Mar 2021 12:58:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N7QghI3DHtee for <devel@linuxdriverproject.org>;
 Tue, 23 Mar 2021 12:58:17 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com
 [IPv6:2a00:1450:4864:20::62c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C486160828
 for <devel@driverdev.osuosl.org>; Tue, 23 Mar 2021 12:58:16 +0000 (UTC)
Received: by mail-ej1-x62c.google.com with SMTP id e14so8713863ejz.11
 for <devel@driverdev.osuosl.org>; Tue, 23 Mar 2021 05:58:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Bk7L2JiHDOx/IGuh0r9SJpyYVpnH5cwXAynzQTVb+fA=;
 b=evIvxGk8F6FMbM/wbZcq3iLealOF/+nq4mwaFSYfQulJ2VV14TR4njINb5qdTmmo5I
 jIq1dc/uoser/WZsbEzzsAGbSX9+nxrHGt9s8Z4OUhWgt334Rvxa2wP7OM9EnAyULlMH
 CPjFfUK/ZiNIJmzVWDBeq8lTKIpGsVZVEp5n9OS8uTPFxXuN0nXNP5k4trK+6Xm/ychC
 1VcfrImW7RzmPdyeVimMnS+URBQjZdaXKioHRm5up/naEfm23+IyJW2Vh+NMY6ULlQw+
 6jUbndCo82mFGNtZtTBHik+wRKIaYz302sWKCDbgX1tlvXmDwnLqzyOjYpBB8GTGnam7
 PucA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Bk7L2JiHDOx/IGuh0r9SJpyYVpnH5cwXAynzQTVb+fA=;
 b=RrBIlziT+d7OyeCe2kxvAZQPXMUoib48rn8Y8jgwUuS9oqwxMAtcsq7M5Yv3PhaYWl
 tXVnDoLiKnwlOOhMeW2nbrom3wIUVxaBfKoOn3jkzAEGSly9lTy93URFCDwEmEXi3yDm
 bCziUVQbX4TRhr3/Pw5gA+HlpsXFyszaesbkA1fkVYFb5ia52HJXcCmTqAVyaeCoyQgO
 SPoa/oPyTie4JaWxskeWkeT1WLs5KDNPmdU0vWpth2L8kwfL5Xv163J5oTMGP42T59zg
 nBcixcCD0sBd427N4GuR0kMT/Q5aLCPZL6oS78ehNN3+FfbvVn7agI6GwlmwinWxJ32k
 ohrQ==
X-Gm-Message-State: AOAM532pczY4NplRRfYUkOMvhhDAo2gIzij/Tq5HvFgf5pR7euOLRrlK
 P8ZQ9/Vw4yD0tlFcmz43O08=
X-Google-Smtp-Source: ABdhPJzvBMpe69lE5RczGwx1OEqElK5/Saz9R1hrYXUna8Yi62WFIySfbS54PrBZmhTWCZlkLgH/AQ==
X-Received: by 2002:a17:906:110d:: with SMTP id
 h13mr4841823eja.357.1616504295130; 
 Tue, 23 Mar 2021 05:58:15 -0700 (PDT)
Received: from agape ([151.57.211.10])
 by smtp.gmail.com with ESMTPSA id q16sm11051013ejd.15.2021.03.23.05.58.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Mar 2021 05:58:14 -0700 (PDT)
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 1/9] staging: rtl8723bs: removed function prototypes in
 core/rtw_efuse.c
Date: Tue, 23 Mar 2021 13:56:28 +0100
Message-Id: <e9137945e66eccae8f2ae3eabe720ea648262eca.1616503354.git.fabioaiuto83@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1616503354.git.fabioaiuto83@gmail.com>
References: <cover.1616503354.git.fabioaiuto83@gmail.com>
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

removed two function prototypes in core/rtw_efuse.c and
made definition static

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_efuse.c | 14 ++------------
 1 file changed, 2 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_efuse.c b/drivers/staging/rtl8723bs/core/rtw_efuse.c
index 32ca10f01413..3701336e7ff6 100644
--- a/drivers/staging/rtl8723bs/core/rtw_efuse.c
+++ b/drivers/staging/rtl8723bs/core/rtw_efuse.c
@@ -32,12 +32,7 @@ u8 fakeBTEfuseModifiedMap[EFUSE_BT_MAX_MAP_LEN] = {0};
 #define REG_EFUSE_CTRL		0x0030
 #define EFUSE_CTRL			REG_EFUSE_CTRL		/*  E-Fuse Control. */
 
-bool
-Efuse_Read1ByteFromFakeContent(
-	struct adapter *padapter,
-	u16 	Offset,
-	u8 *Value);
-bool
+static bool
 Efuse_Read1ByteFromFakeContent(
 	struct adapter *padapter,
 	u16 	Offset,
@@ -53,12 +48,7 @@ Efuse_Read1ByteFromFakeContent(
 	return true;
 }
 
-bool
-Efuse_Write1ByteToFakeContent(
-	struct adapter *padapter,
-	u16 	Offset,
-	u8 Value);
-bool
+static bool
 Efuse_Write1ByteToFakeContent(
 	struct adapter *padapter,
 	u16 	Offset,
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
