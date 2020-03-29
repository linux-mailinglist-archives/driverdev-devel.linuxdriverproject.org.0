Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B24A196BE6
	for <lists+driverdev-devel@lfdr.de>; Sun, 29 Mar 2020 10:38:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9469A88304;
	Sun, 29 Mar 2020 08:38:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QwKFGOxD0amJ; Sun, 29 Mar 2020 08:38:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 855A287E9C;
	Sun, 29 Mar 2020 08:38:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0D35A1BF286
 for <devel@linuxdriverproject.org>; Sun, 29 Mar 2020 08:38:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 005B8203E0
 for <devel@linuxdriverproject.org>; Sun, 29 Mar 2020 08:38:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XYqCk8+hS8St for <devel@linuxdriverproject.org>;
 Sun, 29 Mar 2020 08:38:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 594752010F
 for <devel@driverdev.osuosl.org>; Sun, 29 Mar 2020 08:38:40 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id x1so5410308plm.4
 for <devel@driverdev.osuosl.org>; Sun, 29 Mar 2020 01:38:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8IbFQBYANCkF12Hrlo9wNyHkWayXw9MSU6eCf6YHmKw=;
 b=feGw5WyZuV9ajZvRK9bfLB9F9YycMWXf/o/b6Bw89cGi0v1Ixl7KFkr3UQfF25pdj8
 f2oolo8vlDP0EVxxQmMqH+tUsBGgks7P9GiaNS74sfxP+lvhgdl8dzHDMg67pBtoB3t9
 3DUfCftSZ0cV2oS/j7R23RLhccRa4SaED5bzizMTGOZYCLlG+/FJcH8eldmSDwSLSSe1
 vYJGYp2pgtzF0ETGIdgSmqdAb/bhw+//jpearh6CPbMeVwxQfxRFLQW2tZ0MClw9jZJ/
 sDFrZkwc/7Af7izojKVeK1f1RnqowGSlr0UsrohaodKAqtjQO0dEkYgLzMtndg79ts0x
 BuiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8IbFQBYANCkF12Hrlo9wNyHkWayXw9MSU6eCf6YHmKw=;
 b=liNIwzBMDx24cO6iYfTUlDPpFZ2RgwoEuVHZxF4OTNZw+4pjtI8cjIT+g8Ah1rG6RM
 mxsh2RE3qQlkZLYDpn8A45zEEg3L9UGM7yTfrYofYlHxehEO8jCeIv3Al1+jiLxm6BUT
 uHNLauMLP8tFbLxkcsj8rdLwHjTLez7mw26+FTcVMw04w9SAXBDqTfg4stpDzxSB9BIZ
 pCKGZHkvkyvAkKAW1mo325j4HilfGpUVElvgZCC4sv+P/RA7FRn6UN804Wc8v77Ht5uO
 ND1TYfTkk1grrWho8BuUNPAEqltuPNCQ3T/cCuGyQQOqqyOp3EsbzxoyNeQR2uodTD8A
 G3nw==
X-Gm-Message-State: ANhLgQ0qA1bh5Wccr6jxFnSHJhy1hC6F5RqovXk8f1pOvg+3kZ8/Kn2t
 mWQL0fAu7zxv0rNylChJ4BU=
X-Google-Smtp-Source: ADFU+vtV+6vWr188vCD3wNLrf9ol5lsQ6suYkZM2G7x+xuaJT+RWmpMskUFDVJONBugp/F2rlzzgIw==
X-Received: by 2002:a17:90b:1a8b:: with SMTP id
 ng11mr9550535pjb.109.1585471119827; 
 Sun, 29 Mar 2020 01:38:39 -0700 (PDT)
Received: from OptiPlexFedora.fios-router.home ([47.144.161.84])
 by smtp.gmail.com with ESMTPSA id k189sm7256529pgc.24.2020.03.29.01.38.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 29 Mar 2020 01:38:39 -0700 (PDT)
From: "John B. Wyatt IV" <jbwyatt4@gmail.com>
To: outreachy-kernel@googlegroups.com, Julia Lawall <julia.lawall@inria.fr>,
 Stefano Brivio <sbrivio@redhat.com>,
 Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Quentin Deslandes <quentin.deslandes@itdev.co.uk>,
 Colin Ian King <colin.king@canonical.com>,
 Malcolm Priestley <tvboxspy@gmail.com>,
 Oscar Carter <oscar.carter@gmx.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2] staging: vt6656: add error code handling to unused variable
Date: Sun, 29 Mar 2020 01:38:29 -0700
Message-Id: <20200329083829.619127-1-jbwyatt4@gmail.com>
X-Mailer: git-send-email 2.25.1
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
Cc: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Add error code handling to unused 'ret' variable that was never used.
Return an error code from functions called within vnt_radio_power_on.

Issue reported by coccinelle (coccicheck).

Suggested-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
Suggested-by: Stefano Brivio <sbrivio@redhat.com>
Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
---
v2: Replace goto statements with return.
    Remove last if check because it was unneeded.
    Suggested-by: Julia Lawall <julia.lawall@inria.fr>

 drivers/staging/vt6656/card.c | 19 ++++++++++++++-----
 1 file changed, 14 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/vt6656/card.c b/drivers/staging/vt6656/card.c
index dc3ab10eb630..9d23c3ec1e60 100644
--- a/drivers/staging/vt6656/card.c
+++ b/drivers/staging/vt6656/card.c
@@ -723,9 +723,13 @@ int vnt_radio_power_on(struct vnt_private *priv)
 {
 	int ret = 0;
 
-	vnt_exit_deep_sleep(priv);
+	ret = vnt_exit_deep_sleep(priv);
+	if (ret)
+		goto end;
 
-	vnt_mac_reg_bits_on(priv, MAC_REG_HOSTCR, HOSTCR_RXON);
+	ret = vnt_mac_reg_bits_on(priv, MAC_REG_HOSTCR, HOSTCR_RXON);
+	if (ret)
+		goto end;
 
 	switch (priv->rf_type) {
 	case RF_AL2230:
@@ -734,13 +738,18 @@ int vnt_radio_power_on(struct vnt_private *priv)
 	case RF_VT3226:
 	case RF_VT3226D0:
 	case RF_VT3342A0:
-		vnt_mac_reg_bits_on(priv, MAC_REG_SOFTPWRCTL,
-				    (SOFTPWRCTL_SWPE2 | SOFTPWRCTL_SWPE3));
+		ret = vnt_mac_reg_bits_on(priv, MAC_REG_SOFTPWRCTL,
+					 (SOFTPWRCTL_SWPE2 | SOFTPWRCTL_SWPE3));
 		break;
 	}
+	if (ret)
+		goto end;
 
-	vnt_mac_reg_bits_off(priv, MAC_REG_GPIOCTL1, GPIO3_INTMD);
+	ret = vnt_mac_reg_bits_off(priv, MAC_REG_GPIOCTL1, GPIO3_INTMD);
+	if (ret)
+		goto end;
 
+end:
 	return ret;
 }
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
