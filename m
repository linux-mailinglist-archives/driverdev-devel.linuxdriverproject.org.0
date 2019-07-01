Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CBB455B664
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Jul 2019 10:11:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 38D94203FC;
	Mon,  1 Jul 2019 08:11:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x0g+2VKaLjLv; Mon,  1 Jul 2019 08:11:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 774F0204EC;
	Mon,  1 Jul 2019 08:11:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 49E171BF5A0
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 06:23:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4744885A1D
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 06:23:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HVBTAg1QxJGE for <devel@linuxdriverproject.org>;
 Mon,  1 Jul 2019 06:23:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6BC8A856ED
 for <devel@driverdev.osuosl.org>; Mon,  1 Jul 2019 06:23:19 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id m30so6010219pff.8
 for <devel@driverdev.osuosl.org>; Sun, 30 Jun 2019 23:23:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rX6X3y6NONtzxYAb4ivDk+aYJjwCMx7Tqj/jvC+WNIY=;
 b=mkuJ1uncyFGX8Ey22g0bXW6rmOf3FO/7YAWCOFCcQkaEZKW9OtWpUCTuD0VxSoIb5Y
 KhFj+9+6WQX0u8nGqDDYdZPdizrfeJ/0obSMKjRbLSVcENbWWmp0VvAf0zdHZy1bmMFa
 VxIllC6dOPgYH+RKAPtq8TWAylMc+iP1gei1TyXoZinOvTGK9MHJCPRlXwaFlUzK9P+o
 vmI8/I5I4DrlwIfk5B8fT7Kba9DVLIH5wMSt5bkSPNTnMZudKeQ3sW0E9DvkkY61xyzt
 0ARUuxbLrqkGjkeNuD10HUsDie6RIfY1S53Iv+t6fyVLt1y4cztYbPvW3RdKSm+217fs
 B/Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rX6X3y6NONtzxYAb4ivDk+aYJjwCMx7Tqj/jvC+WNIY=;
 b=XYWw4C27xw/qAmOA9JEf5sen4ObFrGqah+j1GAgNpsL7KS8wXQBidGL4lE3cdN69zH
 j8e4jXr/AcuYohdFauPA4yYi8p1y/jecRhfeEBXH/cna01zUmwafoivd6I/UdeG8kPb/
 XaX/92nWYNzuWlrwpU+G3/yUiEbtBtalvUJ/sOMmIFwvCTEArceMbR1zADBmF7/j6O/x
 pSS6vCbpeUnx/At4YhTOUTWUPBw5cC82tVmKfH4imKj7lk7Ts/n3cLGuoi5s05y58zUd
 1h3ESxTTnN/2DzPmYZlKj46SmKwg9Xsfx8SLM9E55W7YZ8ZdAIT4Ir8w+KXKE3nuf1z5
 HdMA==
X-Gm-Message-State: APjAAAVW6Ym5/pM1BdZ7tT29rDPx84W1sDKyjarRefaBSDgDp55DS9R0
 RML36IkA45IPDqxbegC0g04=
X-Google-Smtp-Source: APXvYqwJlxJx6JDryd8Qt7i4uOBe3Fg8f8a2WbXkKOWH2U/R8fl40qPcPMCexth3DBEZsRCCjZ6pTQ==
X-Received: by 2002:a17:90a:cd04:: with SMTP id
 d4mr29871537pju.128.1561962199112; 
 Sun, 30 Jun 2019 23:23:19 -0700 (PDT)
Received: from localhost.localdomain ([122.163.64.117])
 by smtp.gmail.com with ESMTPSA id f3sm11998191pfg.165.2019.06.30.23.23.17
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 30 Jun 2019 23:23:18 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 02/10] staging: rtl8723bs: Remove rtw_btcoex_PowerOnSetting()
Date: Mon,  1 Jul 2019 11:52:56 +0530
Message-Id: <20190701062304.2440-2-nishkadg.linux@gmail.com>
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

Remove function rtw_btcoex_PowerOnSetting as all it does is call
hal_btcoex_PowerOnSetting.
Modify call sites accordingly.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_btcoex.c    | 5 -----
 drivers/staging/rtl8723bs/hal/sdio_halinit.c   | 2 +-
 drivers/staging/rtl8723bs/include/rtw_btcoex.h | 1 -
 3 files changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_btcoex.c b/drivers/staging/rtl8723bs/core/rtw_btcoex.c
index 1f3f8cbb3d66..b9b032816866 100644
--- a/drivers/staging/rtl8723bs/core/rtw_btcoex.c
+++ b/drivers/staging/rtl8723bs/core/rtw_btcoex.c
@@ -9,11 +9,6 @@
 #include <rtw_btcoex.h>
 #include <hal_btcoex.h>
 
-void rtw_btcoex_PowerOnSetting(struct adapter *padapter)
-{
-	hal_btcoex_PowerOnSetting(padapter);
-}
-
 void rtw_btcoex_HAL_Initialize(struct adapter *padapter, u8 bWifiOnly)
 {
 	hal_btcoex_InitHwConfig(padapter, bWifiOnly);
diff --git a/drivers/staging/rtl8723bs/hal/sdio_halinit.c b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
index 4d06ab7f291b..c6260a71a533 100644
--- a/drivers/staging/rtl8723bs/hal/sdio_halinit.c
+++ b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
@@ -168,7 +168,7 @@ u8 _InitPowerOn_8723BS(struct adapter *padapter)
 	);
 	rtw_write16(padapter, REG_CR, value16);
 
-	rtw_btcoex_PowerOnSetting(padapter);
+	hal_btcoex_PowerOnSetting(padapter);
 
 	/*  external switch to S1 */
 	/*  0x38[11] = 0x1 */
diff --git a/drivers/staging/rtl8723bs/include/rtw_btcoex.h b/drivers/staging/rtl8723bs/include/rtw_btcoex.h
index 03877d854c03..0877a6863f50 100644
--- a/drivers/staging/rtl8723bs/include/rtw_btcoex.h
+++ b/drivers/staging/rtl8723bs/include/rtw_btcoex.h
@@ -15,7 +15,6 @@
 #define	PACKET_ARP				2
 #define	PACKET_EAPOL			3
 
-void rtw_btcoex_PowerOnSetting(struct adapter *padapter);
 void rtw_btcoex_HAL_Initialize(struct adapter *padapter, u8 bWifiOnly);
 void rtw_btcoex_IpsNotify(struct adapter *, u8 type);
 void rtw_btcoex_LpsNotify(struct adapter *, u8 type);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
