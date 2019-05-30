Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 79CFC30371
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 May 2019 22:45:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DB2B486A22;
	Thu, 30 May 2019 20:45:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jl2hKIuM8STW; Thu, 30 May 2019 20:45:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9626686A02;
	Thu, 30 May 2019 20:44:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3A0241BF365
 for <devel@linuxdriverproject.org>; Thu, 30 May 2019 20:44:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 372FF203CC
 for <devel@linuxdriverproject.org>; Thu, 30 May 2019 20:44:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 56ySqgAvkKlX for <devel@linuxdriverproject.org>;
 Thu, 30 May 2019 20:44:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by silver.osuosl.org (Postfix) with ESMTPS id C663E203B4
 for <devel@driverdev.osuosl.org>; Thu, 30 May 2019 20:44:55 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id c6so4687292pfa.10
 for <devel@driverdev.osuosl.org>; Thu, 30 May 2019 13:44:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/hPlUeB7QRpyN6BSt70ooadjF9ShdcJ+0NksjNsmhh0=;
 b=uKKRLTmncKTjtxKELbCXFl5nzpsLeSsv0/mFeIa1Kwzu6/0IluuiQYREF0JV52ti87
 24ftLE7f10ZtXt2t58I2xh0TS7VRACLjvVhLKd9ac1fM/62Zff5mXSP5sgXHRKNNJzNR
 RbDwJl8LTRnqRonNgCwMcv81iLVYdI2cTnTGE+oh5XREr5lhHXHbbymzjLz5UdEn/YdZ
 3s61awU9uHL4DmNc9kefNJg1d5e+sbMbUIoMLk0syQ2Vu/YJADT/YqpZTvod+dDpwYDR
 65he84OO8Vw+2wiXAVyk1EG+xVRS9SqhEXwouE9ksqxVU6QpwYZk0JwRHled32uLz220
 WUBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/hPlUeB7QRpyN6BSt70ooadjF9ShdcJ+0NksjNsmhh0=;
 b=NSwaTBu6QjoIFMj3UvGXuKPIW8PJJIkmZ/BFc/2MU1zypu1GOe3rrWb2s/FTeOchgq
 nhP7OEE6Z/LYlkNi4io/JDyKrwIvVadcpyvTznsvn8XvJMX8tRaiQljI+rSGS9npzOFS
 JrwWKFsY1f1iAGtf491d+zT7GOSVvzZJf5frYRTNnoBbKpjgj9XnlHMzcStWz6oted4l
 O4yJHvOGPAGYIadUlFNjrNboaTcmVRPbeGyn3uDDlMaiW+v9Hy2T9ajHpEDgJhoXjkP7
 QSiKoYKZwj12PPyn3o1yUDrxs1ZuNZ1F2YAyy/GcHgooby3JTpjclSerXo+2Ix6Gp+1i
 hlsw==
X-Gm-Message-State: APjAAAVCxKNPNOVM2Q+TMxkKBifox7gmOhPEu1Tf/MLQO6xhcbHNatt5
 3MYK9Nr/6loxwwewAayTlmWnhuV3
X-Google-Smtp-Source: APXvYqw+Yo4R3R765xOoY+EQq7QfZBlrNtGwrfx7gj15NKiG+YxtY1cTchBUX7FPnyS7Iu2Yfa8GkQ==
X-Received: by 2002:aa7:9a1d:: with SMTP id w29mr5577340pfj.81.1559249095511; 
 Thu, 30 May 2019 13:44:55 -0700 (PDT)
Received: from localhost.localdomain ([47.15.209.13])
 by smtp.gmail.com with ESMTPSA id z9sm3235029pgc.82.2019.05.30.13.44.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 30 May 2019 13:44:55 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: digetx@gmail.com, mchehab@kernel.org, gregkh@linuxfoundation.org,
 thierry.reding@gmail.com, jonathan@nvidia.com, linux-media@vger.kernel.org,
 linux-tegra@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: media: tegra-vde: Remove variable
Date: Fri, 31 May 2019 02:14:39 +0530
Message-Id: <20190530204439.29830-1-nishkadg.linux@gmail.com>
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

Remove unnecessary variable iram_tables and use its value directly.
Issue found using Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/media/tegra-vde/tegra-vde.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/tegra-vde/tegra-vde.c b/drivers/staging/media/tegra-vde/tegra-vde.c
index a5020dbf6eef..3205973218e4 100644
--- a/drivers/staging/media/tegra-vde/tegra-vde.c
+++ b/drivers/staging/media/tegra-vde/tegra-vde.c
@@ -273,12 +273,10 @@ static void tegra_vde_setup_iram_entry(struct tegra_vde *vde,
 				       unsigned int row,
 				       u32 value1, u32 value2)
 {
-	u32 *iram_tables = vde->iram;
-
 	trace_vde_setup_iram_entry(table, row, value1, value2);
 
-	iram_tables[0x20 * table + row * 2] = value1;
-	iram_tables[0x20 * table + row * 2 + 1] = value2;
+	vde->iram[0x20 * table + row * 2] = value1;
+	vde->iram[0x20 * table + row * 2 + 1] = value2;
 }
 
 static void tegra_vde_setup_iram_tables(struct tegra_vde *vde,
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
