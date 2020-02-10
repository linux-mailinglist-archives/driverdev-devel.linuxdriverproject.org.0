Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CD24115718B
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Feb 2020 10:21:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 55152203E3;
	Mon, 10 Feb 2020 09:21:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xAMOpjiNMqkM; Mon, 10 Feb 2020 09:21:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3DA172001A;
	Mon, 10 Feb 2020 09:21:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 63EA31BF3DE
 for <devel@linuxdriverproject.org>; Mon, 10 Feb 2020 09:21:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0A3EB2001A
 for <devel@linuxdriverproject.org>; Mon, 10 Feb 2020 09:21:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eE9pW4vGglHR for <devel@linuxdriverproject.org>;
 Mon, 10 Feb 2020 09:21:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f65.google.com (mail-pj1-f65.google.com
 [209.85.216.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 829D320014
 for <devel@driverdev.osuosl.org>; Mon, 10 Feb 2020 09:21:19 +0000 (UTC)
Received: by mail-pj1-f65.google.com with SMTP id ep11so3942619pjb.2
 for <devel@driverdev.osuosl.org>; Mon, 10 Feb 2020 01:21:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=f3PX1moHFrKZPID9Zj4amuiBq7DdkwwK6egdyOalClc=;
 b=QnQ2Pu8lpasBZ+G1l3xLi1yIiPkVl8JZ6P1tPi2uxADrRo9sQmvr7+7LS7wc8M5Ush
 6cC4R7F6WLRJJIuMmXTmFiTMVjpgmZpPm/QjcAnzjCO45pgBWyNh/74xP/FpU8OxJl+R
 Ilnbe+YnghHTV7Z/t3OmWwPzwo3k2WblyNNxIYNLV6oZXPiZpLQP5chQ7iBK5AH1Hp1Y
 rwelX51HaM0xPz/AURYfADQ9M5gFoJr6dfD23xDB3DQOQjXUiFUH3XhRgt/quJNUmATB
 2edvO2kdOLVLNWGGELtHyxbPuw2DFFWG+4hvz1lK3wsqM/nrvNDvZvbFnxhmTxWAZguD
 wuiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=f3PX1moHFrKZPID9Zj4amuiBq7DdkwwK6egdyOalClc=;
 b=B9yiOhwAe+gwQkNVRKeubCMUotmhbV7w6PllWL22OOTeiAPGq46SaSm7qYoGDtb/WU
 3Xm4EFLlGcRmMDoNQLovN5/7TKDedGwWe2ETUYqhf1jX/UIj2i6BPO/p+ou3KTWf6VjS
 jpNS0D3XGtXMDvUc9YvIc+NNX9/UEweoIfFY5LM2uIUonfWClEBUBHKLzBd7ohPUlr2i
 C8CsT77bKBo6WN2cqtHqlChHNVSL4TZdt3egVQs09fxzrXNdCYlJzsDn5ZWqyup2RZDh
 7v1PyQkLpkqGp+vP6mocUuaS32MlpVLSneg5M/lF8U996ThaDHrB9YQLj/z3tICde73k
 63bg==
X-Gm-Message-State: APjAAAX2v6MvM4ltVrzBh1E/qfnkJBrD1RyxL4plQbCP6ZktW3VwKlAy
 V1f/2vRRWYJhKDsOdlath8U=
X-Google-Smtp-Source: APXvYqx3OfZsnRTon5ZuFohlPcKROhm+lKXTEEwlOSP1DbEPiowcEjdZvVM7ZXraZN1ETABz3DTebw==
X-Received: by 2002:a17:90a:8806:: with SMTP id
 s6mr596897pjn.141.1581326479064; 
 Mon, 10 Feb 2020 01:21:19 -0800 (PST)
Received: from localhost.localdomain ([116.126.226.81])
 by smtp.googlemail.com with ESMTPSA id
 x143sm12331079pgx.54.2020.02.10.01.21.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2020 01:21:18 -0800 (PST)
From: JieunKim <jieun.kim4758@gmail.com>
To: valdis.kletnieks@vt.edu
Subject: [PATCH] staging: exfat: Replace printk with pr_info
Date: Mon, 10 Feb 2020 18:14:20 +0900
Message-Id: <20200210091421.12335-1-jieun.kim4758@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, JieunKim <jieun.kim4758@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

pr_info is preferred to use than printk.
pr_info calls printk with KERN_INFO macros by itself.

Signed-off-by: JieunKim <jieun.kim4758@gmail.com>
---
 drivers/staging/exfat/exfat_super.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index b81d2a87b82e..3806036c0ef6 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -364,7 +364,7 @@ static int ffsMountVol(struct super_block *sb)
 	exfat_bdev_open(sb);
 
 	if (p_bd->sector_size < sb->s_blocksize) {
-		printk(KERN_INFO "EXFAT: mount failed - sector size %d less than blocksize %ld\n",
+		pr_info("EXFAT: mount failed - sector size %d less than blocksize %ld\n",
 		       p_bd->sector_size,  sb->s_blocksize);
 		ret = -EINVAL;
 		goto out;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
