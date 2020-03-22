Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EACE518E7CD
	for <lists+driverdev-devel@lfdr.de>; Sun, 22 Mar 2020 10:23:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 68D9088A87;
	Sun, 22 Mar 2020 09:23:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I32Ci+fiYs7B; Sun, 22 Mar 2020 09:23:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BACB387B62;
	Sun, 22 Mar 2020 09:23:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9F2251BF593
 for <devel@linuxdriverproject.org>; Sun, 22 Mar 2020 09:23:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 962E620400
 for <devel@linuxdriverproject.org>; Sun, 22 Mar 2020 09:23:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y5cYpSDwmMTq for <devel@linuxdriverproject.org>;
 Sun, 22 Mar 2020 09:23:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
 [209.85.167.196])
 by silver.osuosl.org (Postfix) with ESMTPS id D4D8920346
 for <devel@driverdev.osuosl.org>; Sun, 22 Mar 2020 09:23:14 +0000 (UTC)
Received: by mail-oi1-f196.google.com with SMTP id y71so11526629oia.7
 for <devel@driverdev.osuosl.org>; Sun, 22 Mar 2020 02:23:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Y2Cpzw4E1MH/apRZiYWRudyXyqXaavHR/FmSYKlPnKY=;
 b=Ibuy+ubVA2CVcrbPJvsQrC1fRR62x2DqzOpX0d2eshUp/quaABfC1TH/hgxFFG6Wx7
 QdaEazKdUdGwDSYnZ3rBIHMTyVfagmHXs2oyeq07akmRK+cNsI/1WJA8w8eKXVLCpQqm
 p+gxA5mWusTwmt/3IeG7QRB7Fn8m+RaWdfqqoEyQkCph5ZmnCLsXqaGMwLEmxPhi36Ap
 CkJWjmNGHipOBxYYRaCJRKffXEOoMwg+2ycrub/LbFNP2Ia/1J8KMwyxyT0BSCJzWglg
 O8sYQplfT02vYidaK8oYvZl9geWd18FnNYYgjyj+Uwks/9zEEb5/6iRtu4z6ZihMneyX
 BY/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Y2Cpzw4E1MH/apRZiYWRudyXyqXaavHR/FmSYKlPnKY=;
 b=kLx9/y/kgEXLkfYNIonsegOXl9iI7Xsg+cRgYHgBU163nFqlFC9MyzFhMxcbpFchCb
 zH1aXoHdSWeYUS3+j8lLvWerUQPEBN/TIb2X8D44lDpZX2SAI1L94/eOYOhsSjyewvCR
 Irk2pazWA+pUsGbAXKDkNpTHnTeKmhCjmEmrCY/GGOvsxAUaXl3RQa3W47FlR6D5NIxk
 4HHGvrIAw9R/pw0yUAdeAuhDKxBxUb02uOup2ByUFbatB7mCINYg7a9PLQ8Frp1SM8hi
 pQrvZasVkupvDT3dSDBL6W7lGeQOYBPDMYKs8Z69BheloiS6xW8Bgav0JJJfN11X7dpk
 46Kg==
X-Gm-Message-State: ANhLgQ3dzdlSV8YXFL2OYxl3Tr4LsD45605bxPupqNhJngKrBF74/Qhx
 griQ6+GeSRcY65EdSZJfWgI=
X-Google-Smtp-Source: ADFU+vspPS7so6VE8j9qZXzQ0KcQtEgbBXoFaaBDSVq2xbd9/uULvPgCs2C7uBn34CChyWzmhsbjAA==
X-Received: by 2002:aca:4bc5:: with SMTP id y188mr13419644oia.9.1584868994030; 
 Sun, 22 Mar 2020 02:23:14 -0700 (PDT)
Received: from ManjaroKDE.fios-router.home ([47.144.161.84])
 by smtp.gmail.com with ESMTPSA id a33sm3836804otb.70.2020.03.22.02.23.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 22 Mar 2020 02:23:13 -0700 (PDT)
From: "John B. Wyatt IV" <jbwyatt4@gmail.com>
To: outreachy-kernel@googlegroups.com, Julia Lawall <julia.lawall@inria.fr>,
 Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Quentin Deslandes <quentin.deslandes@itdev.co.uk>,
 Colin Ian King <colin.king@canonical.com>,
 Malcolm Priestley <tvboxspy@gmail.com>,
 Oscar Carter <oscar.carter@gmx.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: vt6656: remove unneeded variable: ret
Date: Sun, 22 Mar 2020 02:23:03 -0700
Message-Id: <20200322092303.2518033-1-jbwyatt4@gmail.com>
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

Remove unneeded variable ret; replace with 0 for the return value.

Update function documentation (comment) on the return status as
suggested by Julia Lawall <julia.lawall@inria.fr>.

Issue reported by coccinelle (coccicheck).

Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
---
 drivers/staging/vt6656/card.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/vt6656/card.c b/drivers/staging/vt6656/card.c
index dc3ab10eb630..05b57a2489a0 100644
--- a/drivers/staging/vt6656/card.c
+++ b/drivers/staging/vt6656/card.c
@@ -716,13 +716,11 @@ int vnt_radio_power_off(struct vnt_private *priv)
  *  Out:
  *      none
  *
- * Return Value: true if success; otherwise false
+ * Return Value: 0
  *
  */
 int vnt_radio_power_on(struct vnt_private *priv)
 {
-	int ret = 0;
-
 	vnt_exit_deep_sleep(priv);
 
 	vnt_mac_reg_bits_on(priv, MAC_REG_HOSTCR, HOSTCR_RXON);
@@ -741,7 +739,7 @@ int vnt_radio_power_on(struct vnt_private *priv)
 
 	vnt_mac_reg_bits_off(priv, MAC_REG_GPIOCTL1, GPIO3_INTMD);
 
-	return ret;
+	return 0;
 }
 
 void vnt_set_bss_mode(struct vnt_private *priv)
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
