Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DFD1C1FB4
	for <lists+driverdev-devel@lfdr.de>; Mon, 30 Sep 2019 13:02:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AC93086246;
	Mon, 30 Sep 2019 11:02:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P+ZScXoC-IKR; Mon, 30 Sep 2019 11:02:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4AD8B861D5;
	Mon, 30 Sep 2019 11:02:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EFACF1BF568
 for <devel@linuxdriverproject.org>; Mon, 30 Sep 2019 11:02:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id ECCA92045D
 for <devel@linuxdriverproject.org>; Mon, 30 Sep 2019 11:02:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iZs1ms5dSzgs for <devel@linuxdriverproject.org>;
 Mon, 30 Sep 2019 11:02:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by silver.osuosl.org (Postfix) with ESMTPS id EFB6D20392
 for <devel@driverdev.osuosl.org>; Mon, 30 Sep 2019 11:02:21 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id p7so12884114wmp.4
 for <devel@driverdev.osuosl.org>; Mon, 30 Sep 2019 04:02:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ms5iPF2H4/EUN9qkeORDrpoKQjqFYv3fNdSR7vI74Ys=;
 b=GDxZg1jp4K+sVWmrOzyKejv68FykkBgTkhK4BE35YNOVCNKjZh4rSU/HUtia+7E0yY
 tEuT0fIdpR/86vTT6vyC1am760H/++ATWNtMzPX0Byk2LHyE3OF1BB0wp6XJQftLwqQY
 s8+2HvVwDp6lSaienvdpEbSTivBNQqLx7dQKndPdIbvC1iXpRNsTAHhz/z84Ip585W6F
 5LUuQQts9BrdiZSz6ZrzUG51Bx7SF9vRSyOYjRV0lTznK6u/ETjXZ0D9vua4KO9umxj7
 KTM1CSx/oNa2EKGN72haQwtzcO6ZTPpNQS5pnstEUxox5uU86mCgPSibSc3WtKBK9kb2
 aJKA==
X-Gm-Message-State: APjAAAXieH1/ajWcFjY01FuXW8rWuB1mhblkL3D2fgbxT5Ogz0yILYtV
 UGnIIfyITK7kytjWHNy3Q3UqDA8y
X-Google-Smtp-Source: APXvYqy6G2bUP18h/dG1Ymznd8phlt997hcwRCX+r1Htrq6oj5itwm6aXYaENnbK/mISBPIjuISu7A==
X-Received: by 2002:a7b:c088:: with SMTP id r8mr17824239wmh.44.1569841340181; 
 Mon, 30 Sep 2019 04:02:20 -0700 (PDT)
Received: from green.intra.ispras.ru (bran.ispras.ru. [83.149.199.196])
 by smtp.googlemail.com with ESMTPSA id j26sm23653452wrd.2.2019.09.30.04.02.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Sep 2019 04:02:19 -0700 (PDT)
From: Denis Efremov <efremov@linux.com>
To: devel@driverdev.osuosl.org
Subject: [PATCH] staging: rtl8723bs: hal: Fix memcpy calls
Date: Mon, 30 Sep 2019 14:01:41 +0300
Message-Id: <20190930110141.29271-1-efremov@linux.com>
X-Mailer: git-send-email 2.21.0
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
Cc: Jes Sorensen <jes.sorensen@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Denis Efremov <efremov@linux.com>, Hans de Goede <hdegoede@redhat.com>,
 stable@vger.kernel.org, Bastien Nocera <hadess@hadess.net>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

memcpy() in phy_ConfigBBWithParaFile() and PHY_ConfigRFWithParaFile() is
called with "src == NULL && len == 0". This is an undefined behavior.
Moreover this if pre-condition "pBufLen && (*pBufLen == 0) && !pBuf"
is constantly false because it is a nested if in the else brach, i.e.,
"if (cond) { ... } else { if (cond) {...} }". This patch alters the
if condition to check "pBufLen && pBuf" pointers are not NULL.

Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Hans de Goede <hdegoede@redhat.com>
Cc: Bastien Nocera <hadess@hadess.net>
Cc: Larry Finger <Larry.Finger@lwfinger.net>
Cc: Jes Sorensen <jes.sorensen@gmail.com>
Cc: stable@vger.kernel.org
Signed-off-by: Denis Efremov <efremov@linux.com>
---
Not tested. I don't have the hardware. The fix is based on my guess.

 drivers/staging/rtl8723bs/hal/hal_com_phycfg.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c b/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c
index 6539bee9b5ba..0902dc3c1825 100644
--- a/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c
+++ b/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c
@@ -2320,7 +2320,7 @@ int phy_ConfigBBWithParaFile(
 			}
 		}
 	} else {
-		if (pBufLen && (*pBufLen == 0) && !pBuf) {
+		if (pBufLen && pBuf) {
 			memcpy(pHalData->para_file_buf, pBuf, *pBufLen);
 			rtStatus = _SUCCESS;
 		} else
@@ -2752,7 +2752,7 @@ int PHY_ConfigRFWithParaFile(
 			}
 		}
 	} else {
-		if (pBufLen && (*pBufLen == 0) && !pBuf) {
+		if (pBufLen && pBuf) {
 			memcpy(pHalData->para_file_buf, pBuf, *pBufLen);
 			rtStatus = _SUCCESS;
 		} else
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
