Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DBFD1418C6
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 Jan 2020 18:34:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D3E1A85259;
	Sat, 18 Jan 2020 17:34:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fkZ-p1R1zQ5T; Sat, 18 Jan 2020 17:34:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 34A5384C19;
	Sat, 18 Jan 2020 17:34:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2E4901BF5F8
 for <devel@linuxdriverproject.org>; Sat, 18 Jan 2020 17:34:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2A1FA87E39
 for <devel@linuxdriverproject.org>; Sat, 18 Jan 2020 17:34:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yjkHjlrs04Mt for <devel@linuxdriverproject.org>;
 Sat, 18 Jan 2020 17:34:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 81B7487B39
 for <devel@driverdev.osuosl.org>; Sat, 18 Jan 2020 17:34:27 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id u2so10645687wmc.3
 for <devel@driverdev.osuosl.org>; Sat, 18 Jan 2020 09:34:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=I237oRzQZW6pSxKw4uz6Ghsrv3dWFefWLoL7gL1txsQ=;
 b=I0HnlschLb5ZG+4STXswQSIroh9sv+wLrWGhsHnCrAGXM1GOdxH18g+8yfwGo64bir
 F+eT01YcZ4qwQjoXAHcYgmloDO8ixl5vz9JqRUn15/g9Xy/OyclPuwLUN250ghmL8ssW
 a/MM7Lsn7pK8STcyBvqkY8CN4DFlLWsnuUHfp3+C6QhcPy07fpm4s+gzgl34lITD3U3G
 wPLTjDRfWzF8JUTX+/UrTvdqQ5bAvKXyNgnDESrIvp5z/7hcza8BOohV0plRQcwS8FKS
 EV+Xbf1E4shNlsbrZTZACEe95wtMovQIqEf3iuvkA+JXJcE656vVjIkBaYE4Pm0dWJ3V
 uWpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=I237oRzQZW6pSxKw4uz6Ghsrv3dWFefWLoL7gL1txsQ=;
 b=brSsaVA+u6CGmO9DZF2E/HamudhMlI3W68lCBfNbtj7fvgvxrgjdpE7lLm4NrURY+T
 lG7Ol1rP3sLNVcN5X3+gXbiD2JcbmhWFv18obdQjjnjGgpZqfhTwmnUj8NhvkDV3wQBg
 PcJSiRNFR25VO5u3jKCYpYIGzfuVjPv8dAGeSzEVyL9HUDzEPM9s+9jwOSEWsAQqTsXg
 GyfU2mU4JfaM/kOwWVbfToDUN2BAhh5rblSmFvTOu4TU1us/95tsswgtSI9DIEizFWiN
 pyaHLwGD4P33/TbCAlkLrWgOZU8kj8T6FVJBazxsTM/zdUSpehGKWrBtR5Qx2VGyAC4z
 8BSA==
X-Gm-Message-State: APjAAAVhs4wqvGIHH5lrVpcRflkWPaNVtI2JCFW9zUuzPQO9x/tk6tr1
 89g8KS8SmT9lx/wz7aVGWNc=
X-Google-Smtp-Source: APXvYqxr9wPzL93uiKfWaJTkPYys0Gazc9dYcJ6Zi5NDH6u0cFGamevl7idtd59ZjB24Xpik3fRT0g==
X-Received: by 2002:a05:600c:2c01:: with SMTP id
 q1mr10508095wmg.179.1579368866070; 
 Sat, 18 Jan 2020 09:34:26 -0800 (PST)
Received: from localhost.localdomain
 (dslb-002-204-143-199.002.204.pools.vodafone-ip.de. [2.204.143.199])
 by smtp.gmail.com with ESMTPSA id q11sm39884347wrp.24.2020.01.18.09.34.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Jan 2020 09:34:25 -0800 (PST)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 3/3] staging: rtl8188eu: remove unused enum and defines
Date: Sat, 18 Jan 2020 18:33:43 +0100
Message-Id: <20200118173343.32405-3-straube.linux@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200118173343.32405-1-straube.linux@gmail.com>
References: <20200118173343.32405-1-straube.linux@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

IQK_BB_REG_NUM_MAX, RTL8711_RF_MAX_SENS, RTL8711_RF_DEF_SENS,
NUM_REGULATORYS and enum _RTL8712_RF_MIMO_CONFIG_ are not used
in the driver code, remove them.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/include/odm.h    |  1 -
 drivers/staging/rtl8188eu/include/rtw_rf.h | 16 ----------------
 2 files changed, 17 deletions(-)

diff --git a/drivers/staging/rtl8188eu/include/odm.h b/drivers/staging/rtl8188eu/include/odm.h
index 8245cea2feef..9d39fe13626a 100644
--- a/drivers/staging/rtl8188eu/include/odm.h
+++ b/drivers/staging/rtl8188eu/include/odm.h
@@ -239,7 +239,6 @@ struct odm_rate_adapt {
 
 #define IQK_MAC_REG_NUM		4
 #define IQK_ADDA_REG_NUM	16
-#define IQK_BB_REG_NUM_MAX	10
 #define IQK_BB_REG_NUM		9
 #define HP_THERMAL_NUM		8
 
diff --git a/drivers/staging/rtl8188eu/include/rtw_rf.h b/drivers/staging/rtl8188eu/include/rtw_rf.h
index b5dfb226f32a..c3847cf16ec1 100644
--- a/drivers/staging/rtl8188eu/include/rtw_rf.h
+++ b/drivers/staging/rtl8188eu/include/rtw_rf.h
@@ -19,9 +19,6 @@
 #define SHORT_SLOT_TIME			9
 #define NON_SHORT_SLOT_TIME		20
 
-#define RTL8711_RF_MAX_SENS		6
-#define RTL8711_RF_DEF_SENS		4
-
 /*  We now define the following channels as the max channels in each
  * channel plan.
  */
@@ -30,8 +27,6 @@
 #define	MAX_CHANNEL_NUM_2G		14
 #define	MAX_CHANNEL_NUM			14	/* 2.4 GHz only */
 
-#define NUM_REGULATORYS	1
-
 /* Country codes */
 #define USA				0x555320
 #define EUROPE				0x1 /* temp, should be provided later */
@@ -74,17 +69,6 @@ enum	_REG_PREAMBLE_MODE {
 	PREAMBLE_SHORT	= 3,
 };
 
-enum _RTL8712_RF_MIMO_CONFIG_ {
-	RTL8712_RFCONFIG_1T = 0x10,
-	RTL8712_RFCONFIG_2T = 0x20,
-	RTL8712_RFCONFIG_1R = 0x01,
-	RTL8712_RFCONFIG_2R = 0x02,
-	RTL8712_RFCONFIG_1T1R = 0x11,
-	RTL8712_RFCONFIG_1T2R = 0x12,
-	RTL8712_RFCONFIG_TURBO = 0x92,
-	RTL8712_RFCONFIG_2T2R = 0x22
-};
-
 enum rf90_radio_path {
 	RF90_PATH_A = 0,		/* Radio Path A */
 	RF90_PATH_B = 1,		/* Radio Path B */
-- 
2.24.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
