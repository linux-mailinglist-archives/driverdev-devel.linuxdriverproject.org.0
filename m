Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BA135B665
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Jul 2019 10:11:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 96A1B85CF2;
	Mon,  1 Jul 2019 08:11:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ml_JGcJe40oV; Mon,  1 Jul 2019 08:11:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 10F6085D45;
	Mon,  1 Jul 2019 08:11:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 401691BF5A0
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 06:23:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3DBD3875D8
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 06:23:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XM9HSQzHrDKP for <devel@linuxdriverproject.org>;
 Mon,  1 Jul 2019 06:23:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C2478875BE
 for <devel@driverdev.osuosl.org>; Mon,  1 Jul 2019 06:23:23 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id r7so6029818pfl.3
 for <devel@driverdev.osuosl.org>; Sun, 30 Jun 2019 23:23:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VsIo3UKFBMIx+3qrMEypCjFCE9TT0tTGwp+fToxwOD4=;
 b=oyQ0F6+1aw2gPll59rGtXngwAYr8aGSAg+ELqZk8QlEgb1waWYyhcYJ1LSIXfMZ2wi
 VOgoqcMuTPlXHeSZFRQwG/WqRay3usGtgDB3i13Tkucuu0khjOgGQzkQpmdGRB4KtHXe
 nM6wwjhIqV08h8AjTitONMJ6M97rufAsTfTuEvEJ0SzhkRI6v9xeiBrnYMewqHkj8O89
 DkqwBflQ9w8jQ4h/Mlb8ZOmO0VZqcDi5PjKJr6uuHKbBm+9chOXc8rL5wv890aSyWvdr
 vwKMsdf1fwDPqtOkuNs7+I5W6WyQuy7fyl/L2uNpmzalUWZNs5Eqm2gohR6ljwjO+6/D
 uGwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VsIo3UKFBMIx+3qrMEypCjFCE9TT0tTGwp+fToxwOD4=;
 b=qXTv3DJnpoJgz7eLvTf0/SzBJEN0Cfihc7mDpe6X8sQkbf/eKMAbw7jfcddl5SLT0T
 RWg+6VYDHmR+L+2c870QGmrATeAAX4oYrvqof2jOlAiXcqRtrZtvBJ+CRHW4YFUMU72+
 RZKsZt5lbTWw0SA3Zq73vCEvCzyD0ASdIgBdcNXE1Gv9yALZ6URgRirllznT7pQJOsc9
 Xh4Tnyjb3TVlYiwd6Uht9AdIt4Y2gsS9PKygUwtq3ZyqFyZOo2b+IiPEqowDX50GoHKu
 KRQoin8iwlCyLQE5JKQjgaaoQIB6oPgD37F6mslCbFxJTKWqY/SS/8lJ0KnE5Qh7ee43
 HPUA==
X-Gm-Message-State: APjAAAVfT+F2plIb/JliNKUHv03nkqmRO8BYXPvDxC/JKOalDiVk+M8g
 baqM3JpLWcMTo8RcI5kPqHpAK62e
X-Google-Smtp-Source: APXvYqxIx1r9fzeLzicW0rSJcPQWDeo5FkOz1fRT6VIOlgVv0zKUn8r7tsMC3ncUK7ZU+e/sIqZH4Q==
X-Received: by 2002:a17:90a:cb81:: with SMTP id
 a1mr28362902pju.81.1561962203460; 
 Sun, 30 Jun 2019 23:23:23 -0700 (PDT)
Received: from localhost.localdomain ([122.163.64.117])
 by smtp.gmail.com with ESMTPSA id f3sm11998191pfg.165.2019.06.30.23.23.21
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 30 Jun 2019 23:23:23 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 04/10] staging: rtl8723bs: Remove rtw_btcoex_IQKNotify()
Date: Mon,  1 Jul 2019 11:52:58 +0530
Message-Id: <20190701062304.2440-4-nishkadg.linux@gmail.com>
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

Remove function rtw_btcoex_IQKNotify as all it does is call
hal_btcoex_IQKNotify.
Modify call sites accordingly.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_btcoex.c    | 5 -----
 drivers/staging/rtl8723bs/hal/sdio_halinit.c   | 4 ++--
 drivers/staging/rtl8723bs/include/rtw_btcoex.h | 1 -
 3 files changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_btcoex.c b/drivers/staging/rtl8723bs/core/rtw_btcoex.c
index ae342014f157..dc4e2c806ec0 100644
--- a/drivers/staging/rtl8723bs/core/rtw_btcoex.c
+++ b/drivers/staging/rtl8723bs/core/rtw_btcoex.c
@@ -44,11 +44,6 @@ void rtw_btcoex_SpecialPacketNotify(struct adapter *padapter, u8 pktType)
 	hal_btcoex_SpecialPacketNotify(padapter, pktType);
 }
 
-void rtw_btcoex_IQKNotify(struct adapter *padapter, u8 state)
-{
-	hal_btcoex_IQKNotify(padapter, state);
-}
-
 void rtw_btcoex_BtInfoNotify(struct adapter *padapter, u8 length, u8 *tmpBuf)
 {
 	hal_btcoex_BtInfoNotify(padapter, length, tmpBuf);
diff --git a/drivers/staging/rtl8723bs/hal/sdio_halinit.c b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
index 364c1ced82ef..245fc13186df 100644
--- a/drivers/staging/rtl8723bs/hal/sdio_halinit.c
+++ b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
@@ -993,14 +993,14 @@ static u32 rtl8723bs_hal_init(struct adapter *padapter)
 				msleep(50);
 			} while (jiffies_to_msecs(jiffies - start_time) <= 400);
 
-			rtw_btcoex_IQKNotify(padapter, true);
+			hal_btcoex_IQKNotify(padapter, true);
 
 			restore_iqk_rst = pwrpriv->bips_processing;
 			b2Ant = pHalData->EEPROMBluetoothAntNum == Ant_x2;
 			PHY_IQCalibrate_8723B(padapter, false, restore_iqk_rst, b2Ant, pHalData->ant_path);
 			pHalData->odmpriv.RFCalibrateInfo.bIQKInitialized = true;
 
-			rtw_btcoex_IQKNotify(padapter, false);
+			hal_btcoex_IQKNotify(padapter, false);
 
 			/* Inform WiFi FW that it is the finish of IQK */
 			h2cCmdBuf = 0;
diff --git a/drivers/staging/rtl8723bs/include/rtw_btcoex.h b/drivers/staging/rtl8723bs/include/rtw_btcoex.h
index 1f4fc851effb..d3b6851131d6 100644
--- a/drivers/staging/rtl8723bs/include/rtw_btcoex.h
+++ b/drivers/staging/rtl8723bs/include/rtw_btcoex.h
@@ -21,7 +21,6 @@ void rtw_btcoex_ScanNotify(struct adapter *, u8 type);
 void rtw_btcoex_ConnectNotify(struct adapter *, u8 action);
 void rtw_btcoex_MediaStatusNotify(struct adapter *, u8 mediaStatus);
 void rtw_btcoex_SpecialPacketNotify(struct adapter *, u8 pktType);
-void rtw_btcoex_IQKNotify(struct adapter *padapter, u8 state);
 void rtw_btcoex_BtInfoNotify(struct adapter *, u8 length, u8 *tmpBuf);
 void rtw_btcoex_SuspendNotify(struct adapter *, u8 state);
 void rtw_btcoex_HaltNotify(struct adapter *);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
