Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 203A333FB1C
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Mar 2021 23:27:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B7E9B84168;
	Wed, 17 Mar 2021 22:27:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tpvuSOMCwZWD; Wed, 17 Mar 2021 22:27:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DB8BC84119;
	Wed, 17 Mar 2021 22:27:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4AB2C1BF21A
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3AADD4EDE8
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b0d8f9gGSRRf for <devel@linuxdriverproject.org>;
 Wed, 17 Mar 2021 22:21:45 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com
 [IPv6:2a00:1450:4864:20::52f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4180F4EDEC
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 22:21:45 +0000 (UTC)
Received: by mail-ed1-x52f.google.com with SMTP id y6so4224037eds.1
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 15:21:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=4fl5kGixa82rJGf8Aa9qIsw+yYyF2h4yQwsW29XtWrs=;
 b=FJb1+wLHuwmPnJVUgrTE1588n8tjcH/n8J6OaQJCEZ5ZL/wp5AQtqeBggXnyCY16B1
 FP49Fw9EPt5tGJJ4FzYZoGaVVmWOKujrOtWPfmmRHB7jyIy74/XebUEfQxZ58+faVZil
 8BxIR8/YvUBkK6pjqnQcRmowx54RQvix0kTig5+OfKS320U1IK0bRZVuMwXvSBOdEdlm
 zAPv+KRFPXzqlj4qiHnuEmfked95nbezIT1Bh1Vresrs8mgzhJO7v31JREmj0wxPdncv
 uqEjONyjp2zRCB8YjK8jnJ/TUsoJPQjlMPTBxAG17c/J+zO3MqHv1maGtYCU/zB8GlXf
 2oXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4fl5kGixa82rJGf8Aa9qIsw+yYyF2h4yQwsW29XtWrs=;
 b=lgbNslSKyxIX0x6XF1TsxBgx3OYPBprEU7ySRd/2ftoz3ULuBCmPxe35IRpz6hNpyi
 puScvZ7oCj31zk8EP8kRPme+Meh6lboXCSvvqWEjOM3xgS8kheLtXRz3HJgiN2hoP7J+
 gG8Koq20lja+NbU9xRg2KydXvEF5uhKhD+0euL3ntvx0/RPwVmYJTbH2TUHcQtZkRm42
 znkSZy0TYcZRWL3QqQVwjEdbTuiE3bzFCeia5hdgDNdQuuJfyX/yZYchez4Zc/4pGkWt
 W+J3ivYKYwakWcAb+iAHCZfCmPqa4c3OlPWHyqGhLvu2cDJLK7vjsDxz3TCPIvHC8YsR
 5pYQ==
X-Gm-Message-State: AOAM530H5CYCoi+tVjFYpt2HO7ca+8v2HPuKDbG5hwaS7YvVa2PCB9lF
 BeYMSYy0dSHHrKwF37vVTqE=
X-Google-Smtp-Source: ABdhPJyC3pKk4zKrO8CHDUzl8K1KYG+jTILwJMmsnKPyyHd8srSOiw52jwStKVT5mXui0wQfdENc4w==
X-Received: by 2002:a05:6402:17d6:: with SMTP id
 s22mr44336141edy.232.1616019703483; 
 Wed, 17 Mar 2021 15:21:43 -0700 (PDT)
Received: from gimli.home (93-48-145-141.ip257.fastwebnet.it. [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id
 cf4sm104304edb.19.2021.03.17.15.21.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Mar 2021 15:21:43 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 34/43] Staging: rtl8723bs: fix names in HalBtc8723b1Ant.h
Date: Wed, 17 Mar 2021 23:21:21 +0100
Message-Id: <20210317222130.29528-35-marcocesati@gmail.com>
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
in hal/HalBtc8723b1Ant.h from ALL_CAPS format to lowercase

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c |  8 ++++----
 drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.h | 12 ++++++------
 2 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c b/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c
index 55d6a97d61dc..621f8181f46d 100644
--- a/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c
+++ b/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c
@@ -8,10 +8,10 @@
 #include "Mp_Precomp.h"
 
 /*  Global variables, these are static variables */
-static struct COEX_DM_8723B_1ANT GLCoexDm8723b1Ant;
-static struct COEX_DM_8723B_1ANT *pCoexDm = &GLCoexDm8723b1Ant;
-static struct COEX_STA_8723B_1ANT GLCoexSta8723b1Ant;
-static struct COEX_STA_8723B_1ANT *pCoexSta = &GLCoexSta8723b1Ant;
+static struct coex_dm_8723b_1ant GLCoexDm8723b1Ant;
+static struct coex_dm_8723b_1ant *pCoexDm = &GLCoexDm8723b1Ant;
+static struct coex_sta_8723b_1ant GLCoexSta8723b1Ant;
+static struct coex_sta_8723b_1ant *pCoexSta = &GLCoexSta8723b1Ant;
 
 static const char *const GLBtInfoSrc8723b1Ant[] = {
 	"BT Info[wifi fw]",
diff --git a/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.h b/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.h
index 46d964d3cb06..ed569e77e518 100644
--- a/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.h
+++ b/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.h
@@ -21,14 +21,14 @@
 
 #define  BT_8723B_1ANT_WIFI_NOISY_THRESH 30   /* max: 255 */
 
-enum BT_INFO_SRC_8723B_1ANT {
+enum bt_info_src_8723b_1ant {
 	BT_INFO_SRC_8723B_1ANT_WIFI_FW			= 0x0,
 	BT_INFO_SRC_8723B_1ANT_BT_RSP				= 0x1,
 	BT_INFO_SRC_8723B_1ANT_BT_ACTIVE_SEND		= 0x2,
 	BT_INFO_SRC_8723B_1ANT_MAX
 };
 
-enum BT_8723B_1ANT_BT_STATUS {
+enum bt_8723b_1ant_bt_status {
 	BT_8723B_1ANT_BT_STATUS_NON_CONNECTED_IDLE	= 0x0,
 	BT_8723B_1ANT_BT_STATUS_CONNECTED_IDLE		= 0x1,
 	BT_8723B_1ANT_BT_STATUS_INQ_PAGE				= 0x2,
@@ -38,7 +38,7 @@ enum BT_8723B_1ANT_BT_STATUS {
 	BT_8723B_1ANT_BT_STATUS_MAX
 };
 
-enum BT_8723B_1ANT_WIFI_STATUS {
+enum bt_8723b_1ant_wifi_status {
 	BT_8723B_1ANT_WIFI_STATUS_NON_CONNECTED_IDLE           = 0x0,
 	BT_8723B_1ANT_WIFI_STATUS_NON_CONNECTED_ASSO_AUTH_SCAN = 0x1,
 	BT_8723B_1ANT_WIFI_STATUS_CONNECTED_SCAN               = 0x2,
@@ -48,7 +48,7 @@ enum BT_8723B_1ANT_WIFI_STATUS {
 	BT_8723B_1ANT_WIFI_STATUS_MAX
 };
 
-enum BT_8723B_1ANT_COEX_ALGO {
+enum bt_8723b_1ant_coex_algo {
 	BT_8723B_1ANT_COEX_ALGO_UNDEFINED		= 0x0,
 	BT_8723B_1ANT_COEX_ALGO_SCO				= 0x1,
 	BT_8723B_1ANT_COEX_ALGO_HID				= 0x2,
@@ -63,7 +63,7 @@ enum BT_8723B_1ANT_COEX_ALGO {
 	BT_8723B_1ANT_COEX_ALGO_MAX				= 0xb,
 };
 
-struct COEX_DM_8723B_1ANT {
+struct coex_dm_8723b_1ant {
 	/*  fw mechanism */
 	bool bCurIgnoreWlanAct;
 	bool bPreIgnoreWlanAct;
@@ -118,7 +118,7 @@ struct COEX_DM_8723B_1ANT {
 	u8 errorCondition;
 };
 
-struct COEX_STA_8723B_1ANT {
+struct coex_sta_8723b_1ant {
 	bool bBtLinkExist;
 	bool bScoExist;
 	bool bA2dpExist;
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
