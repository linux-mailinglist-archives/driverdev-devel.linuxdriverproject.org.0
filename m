Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C32845B66E
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Jul 2019 10:11:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id F205520502;
	Mon,  1 Jul 2019 08:11:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aNvcAQN2YlKH; Mon,  1 Jul 2019 08:11:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9A221204FC;
	Mon,  1 Jul 2019 08:11:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 945181BF5A0
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 06:23:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8C8E385BC2
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 06:23:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TYRL9_MCfcKg for <devel@linuxdriverproject.org>;
 Mon,  1 Jul 2019 06:23:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 069868538A
 for <devel@driverdev.osuosl.org>; Mon,  1 Jul 2019 06:23:32 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id e5so6746490pls.13
 for <devel@driverdev.osuosl.org>; Sun, 30 Jun 2019 23:23:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ADrErWTiwqTfUfQr0besZ5+8o9pmlvcPT840NNgn6oo=;
 b=cEoWnr5M3eioYLq3fIyPYcvYtdR4O/HHMcReiT+/8kHXCAZYAQa438rOmqa28+Dk9s
 YPedotAV5itkJNTPAQM0+58Wyfa6NrGPgjfjqbTD6IRtw3aXFW09kFlJbYPU+52t7SYd
 k2Tb/rggC57xcM+1bVdEimrmncilHIKkxM+n4iJnmYDphBfOE43X+/VIJcnnyokdwwuo
 RSS9WWuwHIwlIaPwJzGomnSLL6+WUUGNiidFMdTgc+Z8CAlwKuS4quOkpWDeczFygCcT
 sJEcRr+nJcmo0QSKrey4AnMRpM/x5gpiZnZi6oLA9Fici+2/MBl6XAP3lXbdA/vaanUa
 CGfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ADrErWTiwqTfUfQr0besZ5+8o9pmlvcPT840NNgn6oo=;
 b=L0/0+SWyR/wy4c8zTUlzHL26S6ZLZtVk7yaNEpClxQPFWpnHiSuHUFIg184CU3xDmd
 0QOP3ovJgEKOZiJcWNy4C0JEgE1eUQQGe74KznTyIkjRhX46ZdrlHcwzopvDoaFhC3J9
 2Mq8Asi+YcngHSALNUZNZEc+T6Ycq9Pjx1AtuNPUweFihBfYc+VMWoqWcmyCBlUP6Y+G
 f/V+07LKp0J7GXhrdixyv/x7HMVeu0ldbNo46ViYU/bXzTN/FF58khqQSLXaJg2kG9vJ
 mYR+EUpm8K61V3Aco1HiBjA7ezLEE0CWwS6BikFwelopzmaOVTTKlXVGUG4Hz1WzuEMn
 lp+A==
X-Gm-Message-State: APjAAAX9HbUsRcKkZfNCUJtfYse1s+6ub3aZvZZqEqpym0bJTEQ0ShB1
 P/+GiI19IhEw2oD+Nqdtzqkl8hZV
X-Google-Smtp-Source: APXvYqzBXeTfb2bjVDMwd2zWhBq3yi8Ib3Tmfdors2Ch/O65KjKJfC0BEUm+LPC92fZ5WmPWdKElhg==
X-Received: by 2002:a17:902:bb85:: with SMTP id
 m5mr27407719pls.280.1561962211768; 
 Sun, 30 Jun 2019 23:23:31 -0700 (PDT)
Received: from localhost.localdomain ([122.163.64.117])
 by smtp.gmail.com with ESMTPSA id f3sm11998191pfg.165.2019.06.30.23.23.29
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 30 Jun 2019 23:23:31 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 08/10] staging: rtl8723bs: Remove rtw_btcoex_SetManualControl()
Date: Mon,  1 Jul 2019 11:53:02 +0530
Message-Id: <20190701062304.2440-8-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190701062304.2440-1-nishkadg.linux@gmail.com>
References: <20190701062304.2440-1-nishkadg.linux@gmail.com>
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove function rtw_btcoex_SetManualControl as all it does is call
hal_btcoex_SetManualControl.
Modify call sites accordingly.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_btcoex.c    | 5 -----
 drivers/staging/rtl8723bs/include/rtw_btcoex.h | 1 -
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 5 +++--
 3 files changed, 3 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_btcoex.c b/drivers/staging/rtl8723bs/core/rtw_btcoex.c
index e94d48927373..dd0aee1fa663 100644
--- a/drivers/staging/rtl8723bs/core/rtw_btcoex.c
+++ b/drivers/staging/rtl8723bs/core/rtw_btcoex.c
@@ -77,11 +77,6 @@ s32 rtw_btcoex_IsBTCoexCtrlAMPDUSize(struct adapter *padapter)
 	return coexctrl;
 }
 
-void rtw_btcoex_SetManualControl(struct adapter *padapter, u8 manual)
-{
-	hal_btcoex_SetManualControl(padapter, manual);
-}
-
 u8 rtw_btcoex_IsBtControlLps(struct adapter *padapter)
 {
 	return hal_btcoex_IsBtControlLps(padapter);
diff --git a/drivers/staging/rtl8723bs/include/rtw_btcoex.h b/drivers/staging/rtl8723bs/include/rtw_btcoex.h
index 7c5c71fa5c9c..179f96897855 100644
--- a/drivers/staging/rtl8723bs/include/rtw_btcoex.h
+++ b/drivers/staging/rtl8723bs/include/rtw_btcoex.h
@@ -24,7 +24,6 @@ void rtw_btcoex_HaltNotify(struct adapter *);
 u8 rtw_btcoex_IsBtDisabled(struct adapter *);
 void rtw_btcoex_Handler(struct adapter *);
 s32 rtw_btcoex_IsBTCoexCtrlAMPDUSize(struct adapter *);
-void rtw_btcoex_SetManualControl(struct adapter *, u8 bmanual);
 u8 rtw_btcoex_IsBtControlLps(struct adapter *);
 u8 rtw_btcoex_IsLpsOn(struct adapter *);
 u8 rtw_btcoex_RpwmVal(struct adapter *);
diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index b6ed647ed3e2..99e6b1028f71 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -10,6 +10,7 @@
 #include <drv_types.h>
 #include <rtw_debug.h>
 #include <rtw_mp.h>
+#include <hal_btcoex.h>
 #include <linux/jiffies.h>
 #include <linux/kernel.h>
 
@@ -4536,10 +4537,10 @@ static int rtw_test(
 	}
 
 	if (strcmp(pch, "bton") == 0)
-		rtw_btcoex_SetManualControl(padapter, false);
+		hal_btcoex_SetManualControl(padapter, false);
 
 	if (strcmp(pch, "btoff") == 0)
-		rtw_btcoex_SetManualControl(padapter, true);
+		hal_btcoex_SetManualControl(padapter, true);
 
 	if (strcmp(pch, "h2c") == 0) {
 		u8 param[8];
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
