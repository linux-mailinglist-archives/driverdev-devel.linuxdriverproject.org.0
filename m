Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 64AAB33FAF3
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Mar 2021 23:22:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E106D4EDE5;
	Wed, 17 Mar 2021 22:22:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fr9x5SmLwsUA; Wed, 17 Mar 2021 22:22:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F26AE4EDDA;
	Wed, 17 Mar 2021 22:22:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1BDD01BF21A
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 089D74EDE0
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4pwlYGKhp8yT for <devel@linuxdriverproject.org>;
 Wed, 17 Mar 2021 22:21:23 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com
 [IPv6:2a00:1450:4864:20::535])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 27F654EDD7
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 22:21:23 +0000 (UTC)
Received: by mail-ed1-x535.google.com with SMTP id e7so4186859edu.10
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 15:21:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=AZ5hX6H0KfBxqhIe1qX+BSsySWb7RWojg0p3oTKnSsY=;
 b=MRsfDKGQ58PaA+gd0QDpsngWCRe776Gcqg0JRAHhYd1zkuyc5vR/CHH0vtgKXGgQet
 gFhdzsFm1fcv2g3Bh7nBDDXQGupSxPAUfIbbTaoOXtnUCX0I2uSzJJ5EuIsdqYETSXQq
 PSH8GEP8Hn/qeSkatv3wc0xWFv+SdsmmLvWrRYfcvB2T4RIIvMSurbHtaCJGzshb3joD
 3p4U9FK5ooMOYq/JzbYvMBvf3uFVBAKEOXNbv5d5h+oFEYH+sj6HKBvEsgDZ7eRjrnlk
 i0R/Y02SxTqW3cx+1wEBbWcOJK1Jl16OqGqaW6amCAYJWlg/+DTsGN/BtI4pb8oOHuXa
 3T8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=AZ5hX6H0KfBxqhIe1qX+BSsySWb7RWojg0p3oTKnSsY=;
 b=bUeEE8z5wvHc24Lwe0fZ9B9T35w4QKCHH8PsuK8iV/dsDi0QGG+F284qKAgQEGCxLl
 +CafDuPPjtpZBfqCplth6U5VK5BfNQINYoSdGEcuCykq1vQUJ+kOYf1//wZNPDmId46F
 baDrBnkbQrWjtL2Ya7WJeoxQEkfAnn98F3gbNF3fy7zBMOJ6sY6pUD9UXH2TmuiKHxLu
 HO7bfh8JAxxeu4kKy8tvmuk2o7tT+MRNogoUrEu9hiGkeG8XG+Ypx7Kcp1OTEAIVKRgn
 l258cSlAEqTpfPcVN6WK8/Xq5zn9Z3Wd8El4Y1SwuuxSUGXO4BhEGHR/873uly6Rzn0R
 8lmQ==
X-Gm-Message-State: AOAM531OhmG6nDpgwm4OolgPlfbozjkeqzrDSUgpglMYNrcLCMRH8Pxb
 RcKwbExsEIXkLVIWNg2bU3Y=
X-Google-Smtp-Source: ABdhPJxO27PHnsEQ/8mBpX9D8k4VEVTteFjO4+dFq167R9f+unvp+Hw5sbL8qoRzb9VIdYyZCF627Q==
X-Received: by 2002:aa7:d296:: with SMTP id w22mr46409622edq.150.1616019681435; 
 Wed, 17 Mar 2021 15:21:21 -0700 (PDT)
Received: from gimli.home (93-48-145-141.ip257.fastwebnet.it. [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id
 cf4sm104304edb.19.2021.03.17.15.21.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Mar 2021 15:21:21 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 04/43] Staging: rtl8723bs: fix names in hal_com.h
Date: Wed, 17 Mar 2021 23:20:51 +0100
Message-Id: <20210317222130.29528-5-marcocesati@gmail.com>
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
in include/hal_com.h from ALL_CAPS format to lowercase

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/hal/HalBtcOutSrc.h | 2 +-
 drivers/staging/rtl8723bs/hal/hal_btcoex.c   | 2 +-
 drivers/staging/rtl8723bs/include/hal_com.h  | 4 ++--
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/HalBtcOutSrc.h b/drivers/staging/rtl8723bs/hal/HalBtcOutSrc.h
index c38baf2bc412..866667134cad 100644
--- a/drivers/staging/rtl8723bs/hal/HalBtcOutSrc.h
+++ b/drivers/staging/rtl8723bs/hal/HalBtcOutSrc.h
@@ -540,7 +540,7 @@ void EXhalbtcoutsrc_LpsNotify(struct BTC_COEXIST *pBtCoexist, u8 type);
 void EXhalbtcoutsrc_ScanNotify(struct BTC_COEXIST *pBtCoexist, u8 type);
 void EXhalbtcoutsrc_ConnectNotify(struct BTC_COEXIST *pBtCoexist, u8 action);
 void EXhalbtcoutsrc_MediaStatusNotify(
-	struct BTC_COEXIST *pBtCoexist, enum RT_MEDIA_STATUS mediaStatus
+	struct BTC_COEXIST *pBtCoexist, enum rt_media_status mediaStatus
 );
 void EXhalbtcoutsrc_SpecialPacketNotify(struct BTC_COEXIST *pBtCoexist, u8 pktType);
 void EXhalbtcoutsrc_BtInfoNotify(
diff --git a/drivers/staging/rtl8723bs/hal/hal_btcoex.c b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
index 0b339c155860..e524c775307f 100644
--- a/drivers/staging/rtl8723bs/hal/hal_btcoex.c
+++ b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
@@ -1106,7 +1106,7 @@ void EXhalbtcoutsrc_ConnectNotify(struct BTC_COEXIST *pBtCoexist, u8 action)
 }
 
 void EXhalbtcoutsrc_MediaStatusNotify(struct BTC_COEXIST *pBtCoexist, enum
-	RT_MEDIA_STATUS mediaStatus)
+	rt_media_status mediaStatus)
 {
 	u8 mStatus;
 
diff --git a/drivers/staging/rtl8723bs/include/hal_com.h b/drivers/staging/rtl8723bs/include/hal_com.h
index d71c26cfd54c..81c85ca3b402 100644
--- a/drivers/staging/rtl8723bs/include/hal_com.h
+++ b/drivers/staging/rtl8723bs/include/hal_com.h
@@ -165,13 +165,13 @@ enum{
 	UP_LINK,
 	DOWN_LINK,
 };
-enum RT_MEDIA_STATUS {
+enum rt_media_status {
 	RT_MEDIA_DISCONNECT = 0,
 	RT_MEDIA_CONNECT       = 1
 };
 
 #define MAX_DLFW_PAGE_SIZE			4096	/*  @ page : 4k bytes */
-enum FIRMWARE_SOURCE {
+enum firmware_source {
 	FW_SOURCE_IMG_FILE = 0,
 	FW_SOURCE_HEADER_FILE = 1,		/* from header file */
 };
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
