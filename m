Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 833ECB2D15
	for <lists+driverdev-devel@lfdr.de>; Sat, 14 Sep 2019 23:06:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 14CE4868FF;
	Sat, 14 Sep 2019 21:06:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Duplicate header field: "References"
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 857xBIoZyUS3; Sat, 14 Sep 2019 21:06:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EF6DA864B8;
	Sat, 14 Sep 2019 21:06:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0F31C1BF300
 for <devel@linuxdriverproject.org>; Sat, 14 Sep 2019 21:06:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0C82087C70
 for <devel@linuxdriverproject.org>; Sat, 14 Sep 2019 21:06:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Duplicate header field: "References"
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qPJ+oqZSovvW for <devel@linuxdriverproject.org>;
 Sat, 14 Sep 2019 21:06:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DFD7D87C89
 for <devel@driverdev.osuosl.org>; Sat, 14 Sep 2019 21:06:28 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id d3so14819154plr.1
 for <devel@driverdev.osuosl.org>; Sat, 14 Sep 2019 14:06:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=cpkWTtgvsMgGFxwLXx7dTtk9tynt14yIShb7rKXrntc=;
 b=tzYnbYI93ze6iUZI9C7TzFhAngzJo7LebIaCecq71UPGMtK3Y3FZ4gjRq2YJBbvbz2
 NKZX3FV9biixac0tD0gds1ukDsWEJj1wwF1HIKVp0cVVHOzy6nRFnX5MLIbgQJ6HtiEI
 o8yimoCeBHJqNsLu+UyNlOqYEQ37+jteDbKpaLT0bLWMBwgMp9wTOBynvuI6I0w4o2cG
 olQ0PMxSyxYwyeSZt0UAaWJFwf1EM93Oaz5TYB7gLY+MHlyCEY9/if/Bn6UNdHtDdHEi
 oi2ZUqY78iGN+xWDBIqXAjmoS5DI+mqy4CGrgnffN58GB3B+AexqPZPqFIELrbFc4jeo
 Z+4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=cpkWTtgvsMgGFxwLXx7dTtk9tynt14yIShb7rKXrntc=;
 b=H/uirLrPnvpLJiVX2lATpGjOgYchpvFKT25tjJLlD3GnchB03omU5U3Acvt2T4CPqx
 u9cKk1UXcuMUPnul93U4Ovz9UCtWZpUD/jlSbbD2L4XAwx2PcZ8/VG9j+ESdPr+O4wCd
 g+2jO3Hy1hzQENdEQZ3gvE2MGgfnw2TaM408uqu31xYuXAyuET0E0bMR2FtmCWO/wtV1
 UEwtFub24tmbR9ij1ibaUSWXsJuvg1CqKTn7zv+FfO+of7pNFCrUonf06rqmVOR2U82v
 qRAxQaxpcw5U8aOVXH6xdMkWUanGnFmJzvqqWcP8lpDaykTPErq9hGReUUFsV8t4aTnf
 KfBA==
X-Gm-Message-State: APjAAAUvqZeX5CO6HbcryvcP9wJHZMgVz4j9Hnbr/tw3RhQJy8wctFQr
 hnb1kVZwDBCG3dZ1g7IVBrI=
X-Google-Smtp-Source: APXvYqzlX2BIeQ/7rlo8IBCAWAyx1NJnpamnFXEPFOjsCkBDLnAtqlzLTjscZlcgiXqybaRNQUhLuA==
X-Received: by 2002:a17:902:23:: with SMTP id
 32mr57117935pla.214.1568495188538; 
 Sat, 14 Sep 2019 14:06:28 -0700 (PDT)
Received: from localhost.localdomain ([117.248.166.236])
 by smtp.gmail.com with ESMTPSA id 62sm30895275pfg.164.2019.09.14.14.06.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 14 Sep 2019 14:06:28 -0700 (PDT)
From: Sumera Priyadarsini <sylphrenadin@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/3] staging: rtl8192u: Fix alignment to match open parenthesis
Date: Sun, 15 Sep 2019 02:35:48 +0530
Message-Id: <07a4311b70ed22833a01a9067418639905041cb7.1568494288.git.sylphrenadin@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1568494288.git.sylphrenadin@gmail.com>
References: <cover.1568494288.git.sylphrenadin@gmail.com>
In-Reply-To: <cover.1568494288.git.sylphrenadin@gmail.com>
References: <cover.1568494288.git.sylphrenadin@gmail.com>
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
Cc: devel@driverdev.osuosl.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes the file r8192U_core.c to avoid the checkpatch.pl
warning:
	CHECK: Alignment should match open parenthesis

Signed-off-by: Sumera Priyadarsini <sylphrenadin@gmail.com>
---
 drivers/staging/rtl8192u/r8192U_core.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index ecdd4b1e95c5..f361cae78106 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -614,13 +614,13 @@ static void rtl8192_proc_init_one(struct net_device *dev)
 		return;
 
 	proc_create_single("stats-rx", S_IFREG | S_IRUGO, dir,
-			proc_get_stats_rx);
+			   proc_get_stats_rx);
 	proc_create_single("stats-tx", S_IFREG | S_IRUGO, dir,
-			proc_get_stats_tx);
+			   proc_get_stats_tx);
 	proc_create_single("stats-ap", S_IFREG | S_IRUGO, dir,
-			proc_get_stats_ap);
+			   proc_get_stats_ap);
 	proc_create_single("registers", S_IFREG | S_IRUGO, dir,
-			proc_get_registers);
+			   proc_get_registers);
 }
 
 static void rtl8192_proc_remove_one(struct net_device *dev)
@@ -4508,7 +4508,7 @@ static void query_rxdesc_status(struct sk_buff *skb,
 		/* Rx A-MPDU */
 		if (driver_info->FirstAGGR == 1 || driver_info->PartAggr == 1)
 			RT_TRACE(COMP_RXDESC,
-				"driver_info->FirstAGGR = %d, driver_info->PartAggr = %d\n",
+				 "driver_info->FirstAGGR = %d, driver_info->PartAggr = %d\n",
 				 driver_info->FirstAGGR, driver_info->PartAggr);
 	}
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
