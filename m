Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6279BB6548
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 Sep 2019 16:00:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A090D85F5C;
	Wed, 18 Sep 2019 14:00:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Duplicate header field: "References"
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2c63o5xofEVu; Wed, 18 Sep 2019 14:00:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 743C185EC2;
	Wed, 18 Sep 2019 14:00:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EFBAE1BF30D
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 14:00:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id EC6C685F15
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 14:00:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Duplicate header field: "References"
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kn7qNFTE0S8l for <devel@linuxdriverproject.org>;
 Wed, 18 Sep 2019 14:00:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1A3A485EC2
 for <devel@driverdev.osuosl.org>; Wed, 18 Sep 2019 14:00:03 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id d3so1583plr.1
 for <devel@driverdev.osuosl.org>; Wed, 18 Sep 2019 07:00:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=cpkWTtgvsMgGFxwLXx7dTtk9tynt14yIShb7rKXrntc=;
 b=SUSIPxEURT5KXkhPz0AQvQHAkkHQCC7++0yarmplBcMzdQt2glMAE/iBxMIPxo61L6
 kHCPecAi+xKD7ZxbLAYT1iEkWA2FKMP7qEjYaqd0Fj3A9nSDolgKaNFdLJrJjtmwTbV7
 RzpcwyBNMPZWvjaxiIB0MPtbbkyObLL5K+R1uQ4ovxrm08jwrlYsxjax7Wid2QmdPrFI
 iNLn690D2TYtuOTxP/JpnmpffQAvYGtKCxU7d8anlo3IZsJeK82JMiwaKNxQcjSns/OW
 boVBGEA5jGcK8fWkC5nHRJjLkzuiHimBErS9TVj/Xcl+baCtzo+vvcsSkGWrb0N0yd9s
 nWAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=cpkWTtgvsMgGFxwLXx7dTtk9tynt14yIShb7rKXrntc=;
 b=peiKY7v+mPMy0aJNxcxgOFbtIW9pLlU7Tl46GMq/0Vc/csq/S8MJySITLFezfIkGwG
 bGjauDswUwHHEy5L5pll+LurLZjJuj6ggbZiuAbstgca4sqKsJL0zdlY8tFrZZsC22Fm
 EeV4+tAGffdlUaXuJhegdGMZwd6lYu2CjKF5yXp1oTo+YhG9BgUM0YxjkqLVrqGiP1bk
 g2cGdH4W8gjWsUuBDgkHoK4+k3pVFZ5//rSvEMEztJeqxmVr0KDPZrsRQZH/EEA44IRO
 0ttxG95zm7ffgWQdC3l4t4PI8PwqQPUK5w8d1U3ow+S4gjTpVjZI+MTf4xIRsUkxqWna
 ntog==
X-Gm-Message-State: APjAAAVp9t0Y1uEKndT9WJyzNM5jfpSrNkYwAaeoFg9o7/AZ/ai6hxY8
 x5jp+SDGNTFzZ0AV2LNkbgz6pX1ilYb1Aw==
X-Google-Smtp-Source: APXvYqwlryEybx0RmX4xQz5O44eyeAhODwgZ3f5ktb+csi2icNqEjCPGA2rIA8/S+7USZcJZPJoFhA==
X-Received: by 2002:a17:902:a586:: with SMTP id
 az6mr4464699plb.12.1568815202687; 
 Wed, 18 Sep 2019 07:00:02 -0700 (PDT)
Received: from localhost.localdomain ([2409:4062:87:7bed:5d92:5243:ac2d:ef16])
 by smtp.gmail.com with ESMTPSA id
 c125sm6594769pfa.107.2019.09.18.06.59.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Sep 2019 07:00:02 -0700 (PDT)
From: Sumera Priyadarsini <sylphrenadin@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/3] staging: rtl8192u: Fix alignment to match open parenthesis
Date: Wed, 18 Sep 2019 19:27:43 +0530
Message-Id: <07a4311b70ed22833a01a9067418639905041cb7.1568814125.git.sylphrenadin@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1568814125.git.sylphrenadin@gmail.com>
References: <cover.1568814125.git.sylphrenadin@gmail.com>
In-Reply-To: <cover.1568814125.git.sylphrenadin@gmail.com>
References: <cover.1568814125.git.sylphrenadin@gmail.com>
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
