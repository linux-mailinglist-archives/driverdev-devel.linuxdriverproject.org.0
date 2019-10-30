Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FC5DE9468
	for <lists+driverdev-devel@lfdr.de>; Wed, 30 Oct 2019 02:05:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 25E64220C5;
	Wed, 30 Oct 2019 01:05:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hxfLpoj9RQrd; Wed, 30 Oct 2019 01:05:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EF21A22053;
	Wed, 30 Oct 2019 01:05:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 576B71BF9C6
 for <devel@linuxdriverproject.org>; Wed, 30 Oct 2019 01:05:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4C27C87AF4
 for <devel@linuxdriverproject.org>; Wed, 30 Oct 2019 01:05:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id onUSRWOkeHkU for <devel@linuxdriverproject.org>;
 Wed, 30 Oct 2019 01:05:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 98D0D87BD4
 for <devel@driverdev.osuosl.org>; Wed, 30 Oct 2019 01:05:10 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id s1so436050wro.0
 for <devel@driverdev.osuosl.org>; Tue, 29 Oct 2019 18:05:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YdPunCo8P9dDqlKpWYJvgG38WQaPvb66w7p+wQZiDZ0=;
 b=HKtWSJu/j3RiRaKQXF3g2ZwH8oXWiftHra1acJiyKrBG2tdY6nlZYspWLKwCfGGWRs
 ys6h6/UJPfKR/fbhQK4VN7NJg1y1nTsXDv8ol6p9mGkum7DW2t9CVmTp2J0twVeRiFBl
 L4xgulrpaQ7OWz0WsdIusG3J2PZYba/ipiayoK2OLoAPM6BFXRAkGXT4fP+KzQ6zjMQr
 Y/TybfNzZKcflG3fc3WGe5IqxISrteE+7nbPx0VUB3LGlrtpA9Q/aenZEwCGRvXDdbGr
 /pU9YzOfdw7RVnkf6Kzu5Qy8zcTYMq7c1U3rvH5EPHQEKB9q+WWSg0aLzp8f2oKztHcn
 I3tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YdPunCo8P9dDqlKpWYJvgG38WQaPvb66w7p+wQZiDZ0=;
 b=OAz6CpDkpW4lOoWqMC08NXu19NP7ItpdvJCbVBdpq3tqDdV4kix3UT6sGHprxBSCnd
 wJILBFfNrirwAotjf3XFCrmZZtBBQ3xrVpUCULLewDbvKiXQ40K4GgBV8k6p0dclrh7b
 3255keCASTnBKCaOtpUFq2XFccwvrM8PGEUQ4Gt/6XO35EAzrDv3qcxT9eNZYma7C1/q
 oC0qrv+HY49PyppyP1rIttg0SuANfdZbVld6p5r5tdhiaClFrozSaAmIA/tzu0arpk3e
 MiBH3d+jslxE8vlM7NFl3r2Qr+C/1s7xYEAvF8fqIHLR2p/pF1zy4oGbgq+leKh9Uyih
 X0AA==
X-Gm-Message-State: APjAAAU0TfgCE7AcBW/S1jU60XRXeOadVOTc2032/fmf+PA3EcIv8xK5
 x7/aUcQGFl/GIOXqdQu+bD4=
X-Google-Smtp-Source: APXvYqwXH9iLdXlKcxfC+BGKA2PPO5PjKM2WO6xN57cDBgsfAsyhGoA7yQG1vELdL3sKPasMJADUHQ==
X-Received: by 2002:adf:a497:: with SMTP id g23mr21376484wrb.135.1572397509103; 
 Tue, 29 Oct 2019 18:05:09 -0700 (PDT)
Received: from localhost ([92.177.95.83])
 by smtp.gmail.com with ESMTPSA id f20sm372699wmb.6.2019.10.29.18.05.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 18:05:08 -0700 (PDT)
From: Roi Martin <jroi.martin@gmail.com>
To: valdis.kletnieks@vt.edu
Subject: [PATCH 6/6] staging: exfat: replace kmalloc with kmalloc_array
Date: Wed, 30 Oct 2019 02:03:28 +0100
Message-Id: <20191030010328.10203-7-jroi.martin@gmail.com>
X-Mailer: git-send-email 2.24.0.rc1
In-Reply-To: <20191030010328.10203-1-jroi.martin@gmail.com>
References: <20191030010328.10203-1-jroi.martin@gmail.com>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, Roi Martin <jroi.martin@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Replace expressions of the form:
	kmalloc(count * size, GFP_KERNEL);
With:
	kmalloc_array(count, size, GFP_KERNEL);

Signed-off-by: Roi Martin <jroi.martin@gmail.com>
---
 drivers/staging/exfat/exfat_core.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/exfat/exfat_core.c b/drivers/staging/exfat/exfat_core.c
index f446e6e6c4ee..a9391f0b8141 100644
--- a/drivers/staging/exfat/exfat_core.c
+++ b/drivers/staging/exfat/exfat_core.c
@@ -713,8 +713,8 @@ static s32 __load_upcase_table(struct super_block *sb, sector_t sector,
 
 	u32 checksum = 0;
 
-	upcase_table = p_fs->vol_utbl = kmalloc(UTBL_COL_COUNT * sizeof(u16 *),
-						GFP_KERNEL);
+	upcase_table = kmalloc_array(UTBL_COL_COUNT, sizeof(u16 *), GFP_KERNEL);
+	p_fs->vol_utbl = upcase_table;
 	if (!upcase_table)
 		return FFS_MEMORYERR;
 	memset(upcase_table, 0, UTBL_COL_COUNT * sizeof(u16 *));
@@ -793,8 +793,8 @@ static s32 __load_default_upcase_table(struct super_block *sb)
 	u16	uni = 0;
 	u16 **upcase_table;
 
-	upcase_table = p_fs->vol_utbl = kmalloc(UTBL_COL_COUNT * sizeof(u16 *),
-						GFP_KERNEL);
+	upcase_table = kmalloc_array(UTBL_COL_COUNT, sizeof(u16 *), GFP_KERNEL);
+	p_fs->vol_utbl = upcase_table;
 	if (!upcase_table)
 		return FFS_MEMORYERR;
 	memset(upcase_table, 0, UTBL_COL_COUNT * sizeof(u16 *));
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
