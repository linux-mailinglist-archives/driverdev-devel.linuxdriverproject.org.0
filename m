Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3554F33FB27
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Mar 2021 23:29:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B6FEE4327B;
	Wed, 17 Mar 2021 22:29:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6ZQNdY5C_PNv; Wed, 17 Mar 2021 22:29:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E98DB430A8;
	Wed, 17 Mar 2021 22:29:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DEC881BF21A
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DA93D4309B
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vOVE8-tG9DQ6 for <devel@linuxdriverproject.org>;
 Wed, 17 Mar 2021 22:21:52 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com
 [IPv6:2a00:1450:4864:20::636])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2B9FF43061
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 22:21:52 +0000 (UTC)
Received: by mail-ej1-x636.google.com with SMTP id b7so820846ejv.1
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 15:21:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=M6+2B1gDL4oayd+mX8Rn16yKO7QN2ArgVmqiHeFoxX8=;
 b=BBWxxcezm9j1E6+sk+G6/OSlK216qE7rb9lSsDDGbE3aRfKAl7z5x4BrN0W/zclU09
 7QWzRcSjw09AZZjdt27edup1UFl5mOvyTJbGNYCwxZhc7uW8TuXu0PpsYNXHF0PlJwIj
 sozyX0tImgeZD/vsXIpilqASdIyPfvV4WzWtgXB7TQXAgzfkMviufzYcOtmNR/u6P+jT
 lB6rFfUNmwSwAW7oQE3H78jN8GUUeCCCS4BVz2ssZiLK/hZj0QHIIVDxK7g2Va2N2y7S
 yD9KikgvYAiMkUocWDlRdIyYxsDip6DLvIpvNZ3qyoG2fIDoQjE4ur/ScPAt5/dpkQKQ
 Bkjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=M6+2B1gDL4oayd+mX8Rn16yKO7QN2ArgVmqiHeFoxX8=;
 b=Tbd9X6MJW8BV+Rf89AteJeobgn8pR0ZfBZrNvxtUzkfp5i7qmLNSlaCiGZ8V15Eg43
 4zCn5eOu+6jRQeegVWOZ5LIPlMt8myrp7C5mjdl15sAoo3YsmWbG4UqJsh8uRVQGPV1K
 wVnim3zFpHB12besMmv4DKyKX3nf0JOObgm9CQznWSGCgP2hq4ZUzyEnV0Rqkb+FCTX/
 jIWMdCP2LxLXAKi8jdcloSGy5WQ4vK/H+0te35r2AwKPMmosgeI6K/lA/sMBcNZMV9qh
 93ovTy3nlPJC+YMKoHjErR329gvc9tBoQTTigPqn6nwKZw1GGMjb07goG93O/ei6k0sp
 r7DA==
X-Gm-Message-State: AOAM53121MdFR+R3NFlXRno80ZqTAWTGRlpaHRBxXEx8UdJGUDuJwTbe
 GaccomuawEeLmZC7mSb9v/Y=
X-Google-Smtp-Source: ABdhPJxvbOyKanWjTjZVska4+ABzWTjSNdGGtxwpnY2l6gCuJQqMO7G/i+27zk2/Tptc3edzoagOIA==
X-Received: by 2002:a17:906:b297:: with SMTP id
 q23mr38206407ejz.315.1616019710424; 
 Wed, 17 Mar 2021 15:21:50 -0700 (PDT)
Received: from gimli.home (93-48-145-141.ip257.fastwebnet.it. [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id
 cf4sm104304edb.19.2021.03.17.15.21.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Mar 2021 15:21:50 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 43/43] Staging: rtl8723bs: fix names in HalBtc8723b2Ant.h
Date: Wed, 17 Mar 2021 23:21:30 +0100
Message-Id: <20210317222130.29528-44-marcocesati@gmail.com>
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
in hal/HalBtc8723b2Ant.h from ALL_CAPS format to lowercase

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c |  8 ++++----
 drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.h | 10 +++++-----
 2 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c b/drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c
index 0e1aa204c099..6edaefa47af1 100644
--- a/drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c
+++ b/drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c
@@ -15,10 +15,10 @@ do {									      \
 } while (0)
 
 /*  Global variables, these are static variables */
-static struct COEX_DM_8723B_2ANT GLCoexDm8723b2Ant;
-static struct COEX_DM_8723B_2ANT *pCoexDm = &GLCoexDm8723b2Ant;
-static struct COEX_STA_8723B_2ANT GLCoexSta8723b2Ant;
-static struct COEX_STA_8723B_2ANT *pCoexSta = &GLCoexSta8723b2Ant;
+static struct coex_dm_8723b_2ant GLCoexDm8723b2Ant;
+static struct coex_dm_8723b_2ant *pCoexDm = &GLCoexDm8723b2Ant;
+static struct coex_sta_8723b_2ant GLCoexSta8723b2Ant;
+static struct coex_sta_8723b_2ant *pCoexSta = &GLCoexSta8723b2Ant;
 
 static const char *const GLBtInfoSrc8723b2Ant[] = {
 	"BT Info[wifi fw]",
diff --git a/drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.h b/drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.h
index 340444017327..1c220257e2e4 100644
--- a/drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.h
+++ b/drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.h
@@ -16,14 +16,14 @@
 
 #define		BTC_RSSI_COEX_THRESH_TOL_8723B_2ANT		2
 
-enum BT_INFO_SRC_8723B_2ANT {
+enum bt_info_src_8723b_2ant {
 	BT_INFO_SRC_8723B_2ANT_WIFI_FW        = 0x0,
 	BT_INFO_SRC_8723B_2ANT_BT_RSP         = 0x1,
 	BT_INFO_SRC_8723B_2ANT_BT_ACTIVE_SEND = 0x2,
 	BT_INFO_SRC_8723B_2ANT_MAX
 };
 
-enum BT_8723B_2ANT_BT_STATUS {
+enum bt_8723b_2ant_bt_status {
 	BT_8723B_2ANT_BT_STATUS_NON_CONNECTED_IDLE = 0x0,
 	BT_8723B_2ANT_BT_STATUS_CONNECTED_IDLE     = 0x1,
 	BT_8723B_2ANT_BT_STATUS_INQ_PAGE           = 0x2,
@@ -33,7 +33,7 @@ enum BT_8723B_2ANT_BT_STATUS {
 	BT_8723B_2ANT_BT_STATUS_MAX
 };
 
-enum BT_8723B_2ANT_COEX_ALGO {
+enum bt_8723b_2ant_coex_algo {
 	BT_8723B_2ANT_COEX_ALGO_UNDEFINED       = 0x0,
 	BT_8723B_2ANT_COEX_ALGO_SCO             = 0x1,
 	BT_8723B_2ANT_COEX_ALGO_HID             = 0x2,
@@ -48,7 +48,7 @@ enum BT_8723B_2ANT_COEX_ALGO {
 	BT_8723B_2ANT_COEX_ALGO_MAX             = 0xb,
 };
 
-struct COEX_DM_8723B_2ANT {
+struct coex_dm_8723b_2ant {
 	/*  fw mechanism */
 	u8 preBtDecPwrLvl;
 	u8 curBtDecPwrLvl;
@@ -101,7 +101,7 @@ struct COEX_DM_8723B_2ANT {
 	u32 backup0x948;
 };
 
-struct COEX_STA_8723B_2ANT {
+struct coex_sta_8723b_2ant {
 	bool bBtLinkExist;
 	bool bScoExist;
 	bool bA2dpExist;
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
