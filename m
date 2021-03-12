Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 00D9B338751
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Mar 2021 09:29:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8AC9D83B8D;
	Fri, 12 Mar 2021 08:29:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Xfc9QENnWjNh; Fri, 12 Mar 2021 08:29:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D5C3682E80;
	Fri, 12 Mar 2021 08:29:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 048701BF59B
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 08:26:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 009514ED4F
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 08:26:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8UJY_PYAcGCC for <devel@linuxdriverproject.org>;
 Fri, 12 Mar 2021 08:26:56 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com
 [IPv6:2a00:1450:4864:20::432])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0D03C4ED4D
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 08:26:55 +0000 (UTC)
Received: by mail-wr1-x432.google.com with SMTP id d15so4300621wrv.5
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 00:26:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=bz3SJ48n43LZGr+s/U5bt1C2YUz/yeNpiX7jQqRFC1g=;
 b=uAmLy91Ga5VYWTRx/P7x5Z+bFsFbaWFOKvMVTlhxI1OfmKM6CG2EmRdMNv8CCvdIRj
 OmcW7eij+VBgRWTtdKAnsQl2rt5/57vnSuW1m90HottL+BIwjjeVNBCa6OQf9BdYavLz
 x4+JHL/OtOrZAp8YlyLryC4nLPPy5yCl9wOR2zqIGzV1otm2UP5BWcDxh8Tn1uRQOYkw
 40IZaE8QdeNP15GGjkXBwpCj+vdcoMbbNU7IhZMbgWHynTJlehUI6NqPfMTcN/uHkFpM
 eksLOa6g/y1HwN+OiLviYSaFYtHCF0WdDUBN0s+TuiL7fX7nuuIspzWM5HyrcyQMWHFU
 2TLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bz3SJ48n43LZGr+s/U5bt1C2YUz/yeNpiX7jQqRFC1g=;
 b=FFQLJSC+54VPan3ABbaQcVV7T420Pnw4kb14nhPl39hW7d32Ze+RIb9gOBvyguOmfy
 dvDod8sAhZoCQ1EOgcRcdh1dSO23bHIrJ92as5xLWL+M+jOymyGO37M7FxJJu+oRZtiS
 4mMUCHlGAVsdRG4jGQRkEVF8sUkEzm6u6Q2H0td/ja+CQfK2xPNMRwcOIbD9LjPGbbel
 P2DVL4l6kdJ0xGs95z0Upg+Y1n5lGTh6JVHhYuMuCexh2L89khyyBmjcYllkksexRTRq
 3V4u9q++AAi3KByH+C1Tjp/+fcQbgbHCCVDDAV61P/BDz0xcOuwcsbv9Jrcz+Ds7Q+XQ
 8+Aw==
X-Gm-Message-State: AOAM5306a9bSmdeen3WLYkbYzBmE2v4RqjYon2Lz1gTRMdHGZGeaA6ep
 toEoFdWyKJkxOzDie8lfXAU=
X-Google-Smtp-Source: ABdhPJyfhu+Vufq+Eyqzc3vWBqpMRlvCxwQeQxt2Lqt1uKq8n7RUGWM4b5ttLHDrUAV9XNpEWMI9oA==
X-Received: by 2002:a5d:5256:: with SMTP id k22mr13082535wrc.162.1615537614256; 
 Fri, 12 Mar 2021 00:26:54 -0800 (PST)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id i8sm7743979wry.90.2021.03.12.00.26.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Mar 2021 00:26:54 -0800 (PST)
From: Marco Cesati <marcocesati@gmail.com>
X-Google-Original-From: Marco Cesati <marco.cesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 11/33] staging: rtl8723bs: remove typedefs in hal_com.h
Date: Fri, 12 Mar 2021 09:26:16 +0100
Message-Id: <20210312082638.25512-12-marco.cesati@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210312082638.25512-1-marco.cesati@gmail.com>
References: <20210312082638.25512-1-marco.cesati@gmail.com>
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

This commit fixes the following checkpatch.pl warning:

    WARNING: do not add new typedefs
    #168: FILE: include/hal_com.h:168:
    +typedef enum _RT_MEDIA_STATUS {

Signed-off-by: Marco Cesati <marco.cesati@gmail.com>
---
 drivers/staging/rtl8723bs/hal/HalBtcOutSrc.h | 2 +-
 drivers/staging/rtl8723bs/hal/hal_btcoex.c   | 2 +-
 drivers/staging/rtl8723bs/include/hal_com.h  | 4 ++--
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/HalBtcOutSrc.h b/drivers/staging/rtl8723bs/hal/HalBtcOutSrc.h
index 2c4c7b064073..6d60ad11588f 100644
--- a/drivers/staging/rtl8723bs/hal/HalBtcOutSrc.h
+++ b/drivers/staging/rtl8723bs/hal/HalBtcOutSrc.h
@@ -540,7 +540,7 @@ void EXhalbtcoutsrc_LpsNotify(struct BTC_COEXIST * pBtCoexist, u8 type);
 void EXhalbtcoutsrc_ScanNotify(struct BTC_COEXIST * pBtCoexist, u8 type);
 void EXhalbtcoutsrc_ConnectNotify(struct BTC_COEXIST * pBtCoexist, u8 action);
 void EXhalbtcoutsrc_MediaStatusNotify(
-	struct BTC_COEXIST * pBtCoexist, RT_MEDIA_STATUS mediaStatus
+	struct BTC_COEXIST * pBtCoexist, enum RT_MEDIA_STATUS mediaStatus
 );
 void EXhalbtcoutsrc_SpecialPacketNotify(struct BTC_COEXIST * pBtCoexist, u8 pktType);
 void EXhalbtcoutsrc_BtInfoNotify(
diff --git a/drivers/staging/rtl8723bs/hal/hal_btcoex.c b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
index 35d88832de0f..c0dcde0c0f9d 100644
--- a/drivers/staging/rtl8723bs/hal/hal_btcoex.c
+++ b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
@@ -1105,7 +1105,7 @@ void EXhalbtcoutsrc_ConnectNotify(struct BTC_COEXIST * pBtCoexist, u8 action)
 /* 	halbtcoutsrc_NormalLowPower(pBtCoexist); */
 }
 
-void EXhalbtcoutsrc_MediaStatusNotify(struct BTC_COEXIST * pBtCoexist, RT_MEDIA_STATUS mediaStatus)
+void EXhalbtcoutsrc_MediaStatusNotify(struct BTC_COEXIST * pBtCoexist, enum RT_MEDIA_STATUS mediaStatus)
 {
 	u8 mStatus;
 
diff --git a/drivers/staging/rtl8723bs/include/hal_com.h b/drivers/staging/rtl8723bs/include/hal_com.h
index fe7e2efce0e3..5c4268955275 100644
--- a/drivers/staging/rtl8723bs/include/hal_com.h
+++ b/drivers/staging/rtl8723bs/include/hal_com.h
@@ -165,10 +165,10 @@ enum{
 	UP_LINK,
 	DOWN_LINK,
 };
-typedef enum _RT_MEDIA_STATUS {
+enum RT_MEDIA_STATUS {
 	RT_MEDIA_DISCONNECT = 0,
 	RT_MEDIA_CONNECT       = 1
-} RT_MEDIA_STATUS;
+};
 
 #define MAX_DLFW_PAGE_SIZE			4096	/*  @ page : 4k bytes */
 enum FIRMWARE_SOURCE {
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
