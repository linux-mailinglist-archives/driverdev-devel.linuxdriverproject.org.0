Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60A8BE7E24
	for <lists+driverdev-devel@lfdr.de>; Tue, 29 Oct 2019 02:43:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 096EF8790D;
	Tue, 29 Oct 2019 01:43:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nW7bsEcydKat; Tue, 29 Oct 2019 01:43:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4950E875B9;
	Tue, 29 Oct 2019 01:43:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 259EB1BF3BE
 for <devel@linuxdriverproject.org>; Tue, 29 Oct 2019 01:43:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1796586224
 for <devel@linuxdriverproject.org>; Tue, 29 Oct 2019 01:43:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XIXqmS0J41-8 for <devel@linuxdriverproject.org>;
 Tue, 29 Oct 2019 01:43:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
 [209.85.160.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 981C081F34
 for <devel@driverdev.osuosl.org>; Tue, 29 Oct 2019 01:43:34 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id t26so7736081qtr.5
 for <devel@driverdev.osuosl.org>; Mon, 28 Oct 2019 18:43:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=p2YVxbiyZYmfoNFO+GQXGr1xr8s02Ylhj+EKSio98t0=;
 b=kYAEi8NAw7/+sabPybO+4uDVIy7ER+uGxhi6tPjHvuBNyJsXYBC4QKpdhzJj+xTL/M
 9WH6DSidQ2eVrNog3EuOJhfSA5F2a/vyc54x0wOeAEKY/BV2OEbZoxYw/Gs/GI3EPj1Q
 uT4o3uD4Qi6Q8awdskOsbfiiGH/mrVCb8Pnq9+fx97F2LDgo4/l86iu4TLMX79WZ3jPZ
 xhakislTgvvrytbpj1Z4ADwj8ikZ90NPqpSiUSy6GqiEUkS+CR+prXQ9UPpbflbIZ9Bk
 UGP1R1jm+7nnWVAMa46W1oxpO7ziXrRY3L8wUwHUmXcQCN8vRzsQ3I5NA7GzPKZSaJII
 z1zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=p2YVxbiyZYmfoNFO+GQXGr1xr8s02Ylhj+EKSio98t0=;
 b=A4Z9SMIZ4DXxr9Gs894gXqU2ERct0W/p6QCxjnsOnLazFsxfOWobs+/wUVE0A9Mh5g
 vgqOtRIYj9yxbZzopmq7u9U2UA0Hf/0UjOeD9SozRMt53LjIAnYFze3f+rzz2J8+mlSq
 D1Il+IC1QcpeSvyX5XBMhxZ7516WDGNRKKNzKS1CkESEfx38epQ0rnZ2FK4Q5aCS4Iyi
 uRwQO7tWN3668uA4xwgvGch24US6PMK8sbOxhzAD7wOV8USiW7sc/UUYI2p10mG9km8i
 9dAIm/iXe6uQmogb9GJhqVFjeRxHaa3QQbIJZhrDAAVsIESfIuTmQb2s8xxvKjummN4T
 z03A==
X-Gm-Message-State: APjAAAVJCcfhcZdV4tuREEFFMYaIVnAYvLIgq7aikUNWGkKrRjAw8zl8
 vkKeUAU6GgjQg5s5yAPOTQY=
X-Google-Smtp-Source: APXvYqxhI5BxAe0ESH1+RMCbq1YrtYYAHSuu+uI2kcJXH4yUc6ePuehRRD7uuahw3jYiJgF0Fz2z6w==
X-Received: by 2002:ac8:8a1:: with SMTP id v30mr1779396qth.44.1572313413612;
 Mon, 28 Oct 2019 18:43:33 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:483:ade:87ad:69fb:5b32:cf88])
 by smtp.gmail.com with ESMTPSA id
 197sm6698394qkh.80.2019.10.28.18.43.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2019 18:43:33 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
 kim.jamie.bradley@gmail.com, nishkadg.linux@gmail.com,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 lkcamp@lists.libreplanetbr.org
Subject: [PATCH 3/5] staging: rts5208: Eliminate the use of Camel Case in file
 xd.c
Date: Mon, 28 Oct 2019 22:43:14 -0300
Message-Id: <20191029014316.6452-4-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191029014316.6452-1-gabrielabittencourt00@gmail.com>
References: <20191029014316.6452-1-gabrielabittencourt00@gmail.com>
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
Cc: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Cleans up checks of "Avoid CamelCase" in file xd.c

Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
---
 drivers/staging/rts5208/xd.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

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
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
