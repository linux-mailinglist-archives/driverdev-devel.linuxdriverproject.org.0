Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DD4A6EBA23
	for <lists+driverdev-devel@lfdr.de>; Fri,  1 Nov 2019 00:03:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 990542340C;
	Thu, 31 Oct 2019 23:03:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XwAP3FlYgGcX; Thu, 31 Oct 2019 23:03:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 380C4233B8;
	Thu, 31 Oct 2019 23:03:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CAA2F1BF27A
 for <devel@linuxdriverproject.org>; Thu, 31 Oct 2019 23:03:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C7ACB88367
 for <devel@linuxdriverproject.org>; Thu, 31 Oct 2019 23:03:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Mpu-Ey5boiYS for <devel@linuxdriverproject.org>;
 Thu, 31 Oct 2019 23:03:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com
 [209.85.160.182])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 334CC88363
 for <devel@driverdev.osuosl.org>; Thu, 31 Oct 2019 23:03:23 +0000 (UTC)
Received: by mail-qt1-f182.google.com with SMTP id o49so10770933qta.7
 for <devel@driverdev.osuosl.org>; Thu, 31 Oct 2019 16:03:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QzRITthHa6LggIeQu+O+FQbDuXS83uUpJUnnNNtWNV8=;
 b=e7uWKCWtFxcM7BHBQtZ+C7zNpjqfWuED1f0/XihIOgQbRJ8a6+hmIt87t7F82xbYMM
 P1x4YKmbiGDtetWjr9tkjVkRAqOgFLFAeoMnCIuqoAd08ztnCzaGmQwPFAMZ+qzdPUg3
 rRHwBZuHaqqZHxiUWRWXm8lPqON3rOVYnCsHOW+0A4vR2K5vUks8DXTg8NSRXUM8TtdH
 up3epXh0ydw5RbxhG4Fj+afpz3AU0P/JBOPLxNgm+Sm55C+5dlnxCJmXqEMr+II/ICrj
 E7/ab0Mlj0NLmUeeTWHEtQeBaeuVQPfhAls/n7EE7fQHp1X7onExFSItS5lU+Waaxt/5
 N8SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QzRITthHa6LggIeQu+O+FQbDuXS83uUpJUnnNNtWNV8=;
 b=M6BuXSjl10y3h02w26ca4CBmt+kAzh4ibTXCXsXZieS9OMgwOLRUvp3DVMtYadG1j3
 u8iOXLliTX8yPoNC2oRWXsMoDUvgbWAnsWVq1saGai7ZCqa4hnsn8buu3kpw2bllcz26
 TS3oyU6O57Pt22kLf1wr8PltTaWLcwiUfwXw7QAbx5Atq0RhUGYWyNqr4UH0m0/OzNVz
 HxtmbsxNje6/j1VaxCNpx6pjk3HZynM1GhaEQMyg67MOF0bcRcXygTE5U6oMkgNLsV0R
 YIVOkWvicgFAPcTxPDllA1FgyE5LQzoRrDV9Dbc+he/JZ2z1xbakvI3f3D01W2L7SYBA
 ukog==
X-Gm-Message-State: APjAAAWsn8KKuPbM9KVwKBnBpg9+qM7wNaOGNL5kvdQjF3tXPpsXl7pv
 pEg0EpUJfV4sp+bLkIjqWLo=
X-Google-Smtp-Source: APXvYqw7e/KCV1PRaZPiUSXtxV7I6Fb3aj7SJbu/VW5Ww+PueTMd05twpvUcp9lcZNRutWT3xs6Dtg==
X-Received: by 2002:ad4:5447:: with SMTP id h7mr7201009qvt.188.1572563002063; 
 Thu, 31 Oct 2019 16:03:22 -0700 (PDT)
Received: from localhost.localdomain ([187.106.44.83])
 by smtp.gmail.com with ESMTPSA id s67sm2633875qkh.70.2019.10.31.16.03.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Oct 2019 16:03:21 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
 kim.jamie.bradley@gmail.com, nishkadg.linux@gmail.com,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 lkcamp@lists.libreplanetbr.org
Subject: [PATCH v4 2/3] staging: rts5208: Eliminate the use of Camel Case in
 files xd.{h, c}
Date: Thu, 31 Oct 2019 20:02:42 -0300
Message-Id: <20191031230243.3462-3-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191031230243.3462-1-gabrielabittencourt00@gmail.com>
References: <20191031230243.3462-1-gabrielabittencourt00@gmail.com>
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
Cc: Julia Lawall <julia.lawall@lip6.fr>,
 Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Cleans up checks of "Avoid CamelCase" in files xd.{h,c}

Acked-by: Julia Lawall <julia.lawall@lip6.fr>
Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
---
 drivers/staging/rts5208/xd.c | 8 ++++----
 drivers/staging/rts5208/xd.h | 6 +++---
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rts5208/xd.c b/drivers/staging/rts5208/xd.c
index f3dc96a4c59d..0f369935fb6c 100644
--- a/drivers/staging/rts5208/xd.c
+++ b/drivers/staging/rts5208/xd.c
@@ -630,13 +630,13 @@ static int reset_xd(struct rtsx_chip *chip)
 			xd_card->zone_cnt = 32;
 			xd_card->capacity = 1024000;
 			break;
-		case xD_1G_X8_512:
+		case XD_1G_X8_512:
 			XD_PAGE_512(xd_card);
 			xd_card->addr_cycle = 4;
 			xd_card->zone_cnt = 64;
 			xd_card->capacity = 2048000;
 			break;
-		case xD_2G_X8_512:
+		case XD_2G_X8_512:
 			XD_PAGE_512(xd_card);
 			xd_card->addr_cycle = 4;
 			xd_card->zone_cnt = 128;
@@ -669,10 +669,10 @@ static int reset_xd(struct rtsx_chip *chip)
 		return STATUS_FAIL;
 	}
 
-	retval = xd_read_id(chip, READ_xD_ID, id_buf, 4);
+	retval = xd_read_id(chip, READ_XD_ID, id_buf, 4);
 	if (retval != STATUS_SUCCESS)
 		return STATUS_FAIL;
-	dev_dbg(rtsx_dev(chip), "READ_xD_ID: 0x%x 0x%x 0x%x 0x%x\n",
+	dev_dbg(rtsx_dev(chip), "READ_XD_ID: 0x%x 0x%x 0x%x 0x%x\n",
 		id_buf[0], id_buf[1], id_buf[2], id_buf[3]);
 	if (id_buf[2] != XD_ID_CODE)
 		return STATUS_FAIL;
diff --git a/drivers/staging/rts5208/xd.h b/drivers/staging/rts5208/xd.h
index 57b94129b26f..98c00f268e56 100644
--- a/drivers/staging/rts5208/xd.h
+++ b/drivers/staging/rts5208/xd.h
@@ -36,7 +36,7 @@
 #define	BLK_ERASE_1			0x60
 #define	BLK_ERASE_2			0xD0
 #define READ_STS			0x70
-#define READ_xD_ID			0x9A
+#define READ_XD_ID			0x9A
 #define	COPY_BACK_512			0x8A
 #define	COPY_BACK_2K			0x85
 #define	READ1_1_2			0x30
@@ -72,8 +72,8 @@
 #define	XD_128M_X16_2048		0xC1
 #define	XD_4M_X8_512_1			0xE3
 #define	XD_4M_X8_512_2			0xE5
-#define	xD_1G_X8_512			0xD3
-#define	xD_2G_X8_512			0xD5
+#define	XD_1G_X8_512			0xD3
+#define	XD_2G_X8_512			0xD5
 
 #define	XD_ID_CODE			0xB5
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
