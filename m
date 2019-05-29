Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 895EE2DE3B
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 May 2019 15:32:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8D53430B24;
	Wed, 29 May 2019 13:32:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e+rLzRCEEUDx; Wed, 29 May 2019 13:32:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 803D830B97;
	Wed, 29 May 2019 13:32:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9001C1BF2F5
 for <devel@linuxdriverproject.org>; Wed, 29 May 2019 13:32:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8A68686BB9
 for <devel@linuxdriverproject.org>; Wed, 29 May 2019 13:32:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5LQ-lweXHO8T for <devel@linuxdriverproject.org>;
 Wed, 29 May 2019 13:32:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 13FB586AE3
 for <devel@driverdev.osuosl.org>; Wed, 29 May 2019 13:32:08 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id go2so1068261plb.9
 for <devel@driverdev.osuosl.org>; Wed, 29 May 2019 06:32:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cjrQ8YCtSkpAgdCS1Bxq9uio+64j2BPS+VlWEqnS1x4=;
 b=FKsyjAaZbhgsZt0VI/1vjpIfNTSoCjtAeNeLOXgQC3wpDG4RUNnX5zPZMPMZsuQaIo
 40NB7Y4wyRFLxptQJJ5yuTrKoqJaLVGi6M4CysGYv5qgkcxITCKEC7qmvme9RQ9e/c+z
 4vhiLjdGlsqKj0oZmtkxSfjR+BJT2RwjP9diFeZB80n+xsvo+oQH3Qcjs+4Na3uppCal
 Dt3F2whceB2r+qmDa4Aq+eSiBUabt7JlMv8xE4Ww5SGMB8yF/CIm5lTC3qHzm4P37qle
 NmDBqSvs+0Q/DYkTk1s1OInMZTP94gSLJOyOQkq6hkzQ3OCiL5h7jUd4CpU6og1UoHs+
 WteQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cjrQ8YCtSkpAgdCS1Bxq9uio+64j2BPS+VlWEqnS1x4=;
 b=lpnUMBkM7maWXMvG3h+wpZ3l78gU7/YlwHFQ5YxmiWB1NmeJGLu0UIgJQro3jrZvwc
 cz2peUmGe3R+1CFQ9jJzd7ngbMU6D51aWI3QuJuRZdz8t80cBxD10dckvlXpzFL8xxma
 15qedoFJXrTfjktJIdwZ9P91MHX5GF/Q96ky+8Uj/WcN7Cr/yiNZYapkIRDlFxC1o0fI
 i2DosLMEZd98jvw0t/N7UFIbSTKOVqI4tgj2VZkZi1ASDMN56NDuxJZI9nqWM1znXPi/
 Q+QX+fiGpUaCDH+JLE/wuGA37ZWzLMahR+PUa/3f2211zACisUIyySsB3U8Q8sx1BJ8P
 2VIQ==
X-Gm-Message-State: APjAAAVOtbK1lFug2O4n4Q5KGOzaAy0a6lMcO6k8Y4HUXIrFpWOCZR4m
 TVAvIwHY8Wa3OIr0xw0ftAo=
X-Google-Smtp-Source: APXvYqxAlISnkMtdxhX9AYkgEjmgN6zPwOOFdovx3E5sQRi3ga6aPxLv0Ylit+uesEHueVvIwACd6Q==
X-Received: by 2002:a17:902:3103:: with SMTP id
 w3mr63855663plb.187.1559136727724; 
 Wed, 29 May 2019 06:32:07 -0700 (PDT)
Received: from localhost.localdomain ([122.163.67.155])
 by smtp.gmail.com with ESMTPSA id j22sm10763595pfh.71.2019.05.29.06.32.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 29 May 2019 06:32:06 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, straube.linux@gmail.com,
 payal.s.kshirsagar.98@gmail.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8712: Remove initialisations
Date: Wed, 29 May 2019 19:01:54 +0530
Message-Id: <20190529133154.6750-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
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

Remove initialisations of multiple variables as these initial values are
never used.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_mp.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_mp.c b/drivers/staging/rtl8712/rtl871x_mp.c
index ba379506da3f..edd3da05fc06 100644
--- a/drivers/staging/rtl8712/rtl871x_mp.c
+++ b/drivers/staging/rtl8712/rtl871x_mp.c
@@ -709,20 +709,18 @@ static u32 GetPhyRxPktCounts(struct _adapter *pAdapter, u32 selbit)
 
 u32 r8712_GetPhyRxPktReceived(struct _adapter *pAdapter)
 {
-	u32 OFDM_cnt = 0, CCK_cnt = 0, HT_cnt = 0;
+	u32 OFDM_cnt = GetPhyRxPktCounts(pAdapter, OFDM_MPDU_OK_BIT);
+	u32 CCK_cnt  = GetPhyRxPktCounts(pAdapter, CCK_MPDU_OK_BIT);
+	u32 HT_cnt   = GetPhyRxPktCounts(pAdapter, HT_MPDU_OK_BIT);
 
-	OFDM_cnt = GetPhyRxPktCounts(pAdapter, OFDM_MPDU_OK_BIT);
-	CCK_cnt = GetPhyRxPktCounts(pAdapter, CCK_MPDU_OK_BIT);
-	HT_cnt = GetPhyRxPktCounts(pAdapter, HT_MPDU_OK_BIT);
 	return OFDM_cnt + CCK_cnt + HT_cnt;
 }
 
 u32 r8712_GetPhyRxPktCRC32Error(struct _adapter *pAdapter)
 {
-	u32 OFDM_cnt = 0, CCK_cnt = 0, HT_cnt = 0;
+	u32 OFDM_cnt = GetPhyRxPktCounts(pAdapter, OFDM_MPDU_FAIL_BIT);
+	u32 CCK_cnt  = GetPhyRxPktCounts(pAdapter, CCK_MPDU_FAIL_BIT);
+	u32 HT_cnt   = GetPhyRxPktCounts(pAdapter, HT_MPDU_FAIL_BIT);
 
-	OFDM_cnt = GetPhyRxPktCounts(pAdapter, OFDM_MPDU_FAIL_BIT);
-	CCK_cnt = GetPhyRxPktCounts(pAdapter, CCK_MPDU_FAIL_BIT);
-	HT_cnt = GetPhyRxPktCounts(pAdapter, HT_MPDU_FAIL_BIT);
 	return OFDM_cnt + CCK_cnt + HT_cnt;
 }
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
