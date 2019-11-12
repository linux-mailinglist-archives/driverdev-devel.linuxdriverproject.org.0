Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 37CB6F9BB0
	for <lists+driverdev-devel@lfdr.de>; Tue, 12 Nov 2019 22:13:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DC8AC2041A;
	Tue, 12 Nov 2019 21:13:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZUFgf1S0rSVi; Tue, 12 Nov 2019 21:13:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A4AF6203DF;
	Tue, 12 Nov 2019 21:13:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CA69F1BF404
 for <devel@linuxdriverproject.org>; Tue, 12 Nov 2019 21:13:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A6D2485775
 for <devel@linuxdriverproject.org>; Tue, 12 Nov 2019 21:13:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VYukjmlymz-0 for <devel@linuxdriverproject.org>;
 Tue, 12 Nov 2019 21:13:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr1.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E591E8545B
 for <devel@driverdev.osuosl.org>; Tue, 12 Nov 2019 21:13:50 +0000 (UTC)
Received: from mr3.cc.vt.edu (mr3.cc.vt.edu
 [IPv6:2607:b400:92:8500:0:7f:b804:6b0a])
 by omr1.cc.vt.edu (8.14.4/8.14.4) with ESMTP id xACLDnLr012824
 for <devel@driverdev.osuosl.org>; Tue, 12 Nov 2019 16:13:49 -0500
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70])
 by mr3.cc.vt.edu (8.14.7/8.14.7) with ESMTP id xACLDiml007396
 for <devel@driverdev.osuosl.org>; Tue, 12 Nov 2019 16:13:49 -0500
Received: by mail-qv1-f70.google.com with SMTP id n15so9517470qvm.18
 for <devel@driverdev.osuosl.org>; Tue, 12 Nov 2019 13:13:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=nBMeWmqtacDeZwaLfnQQdHa+4rImWGWUbj1hgwCuPP8=;
 b=NVOJ81++pCp8RDwIqKavz8GiAZ5aZBMQoPUIU1GkXtV3bB/3TMahAPFgyHafGhMGVD
 vlVO9k71QYqD7Vk5w35+zQvFhmffElsXV1IBHTM4Yj/CCAQE1sx/S4dX0esLlbp7scwQ
 zOuCu/FTSKFRZ+7AssR+jiRoTth+8jr7VCG1sNjRWLp9A+FY/GXv+nsH9yoIGstXVY9A
 3h587VB8T4+b+BlgiWL5dWlIYqRXCGy9SUeu+rplJfOfLhZjKD2YXl+DD0uKM8nn5iPG
 A8rqZnxOYKcTsQ2mUiwDjVpTuo5izOYMFwp7/KAJRmGdpS3w8r2mDsjKKHZZb7msHxom
 UCng==
X-Gm-Message-State: APjAAAWYm/WT12JSpV14EK+hCq9M/pQjYrms9lsl5G2XH0B919ogekxg
 UV616n+pVtYhuNIvEwMIzNAJv29eklfNlnZOkcLUebsFd+U4oZPHhVfffG9uoGpP2bjqp7ByF0R
 1jA44bpq7y5hSYGI6qO9w9GFQzobPFL1L
X-Received: by 2002:a0c:e9c4:: with SMTP id q4mr31520021qvo.61.1573593224231; 
 Tue, 12 Nov 2019 13:13:44 -0800 (PST)
X-Google-Smtp-Source: APXvYqzsHoM6Thzt3ejRwUJZu/EOWTzFZnTDcsUK7gX5UJ5IG1AxuhHiUG63JG6ykXzeHz/LqwQ+jg==
X-Received: by 2002:a0c:e9c4:: with SMTP id q4mr31519995qvo.61.1573593223916; 
 Tue, 12 Nov 2019 13:13:43 -0800 (PST)
Received: from turing-police.lan ([2601:5c0:c001:c9e1::359])
 by smtp.gmail.com with ESMTPSA id 130sm9674214qkd.33.2019.11.12.13.13.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Nov 2019 13:13:42 -0800 (PST)
From: Valdis Kletnieks <valdis.kletnieks@vt.edu>
X-Google-Original-From: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
To: 
Subject: [PATCH 08/12] staging: exfat: Clean up the namespace pollution part 4
Date: Tue, 12 Nov 2019 16:12:34 -0500
Message-Id: <20191112211238.156490-9-Valdis.Kletnieks@vt.edu>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191112211238.156490-1-Valdis.Kletnieks@vt.edu>
References: <20191112211238.156490-1-Valdis.Kletnieks@vt.edu>
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
Cc: linux-fsdevel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 Valdis Kletnieks <valdis.kletnieks@vt.edu>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Relocating these functions to before first use lets us make them static

Signed-off-by: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
---
 drivers/staging/exfat/exfat.h      |  4 --
 drivers/staging/exfat/exfat_core.c | 78 +++++++++++++++---------------
 2 files changed, 39 insertions(+), 43 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index 407dbb017c5f..48267dd11e9d 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -775,10 +775,6 @@ void free_upcase_table(struct super_block *sb);
 
 /* dir entry management functions */
 struct timestamp_t *tm_current(struct timestamp_t *tm);
-void init_file_entry(struct file_dentry_t *ep, u32 type);
-void init_strm_entry(struct strm_dentry_t *ep, u8 flags, u32 start_clu,
-		     u64 size);
-void init_name_entry(struct name_dentry_t *ep, u16 *uniname);
 
 struct dentry_t *get_entry_in_dir(struct super_block *sb, struct chain_t *p_dir,
 				  s32 entry, sector_t *sector);
diff --git a/drivers/staging/exfat/exfat_core.c b/drivers/staging/exfat/exfat_core.c
index 3ea51d12c38d..24700b251acb 100644
--- a/drivers/staging/exfat/exfat_core.c
+++ b/drivers/staging/exfat/exfat_core.c
@@ -971,6 +971,45 @@ static void exfat_set_entry_time(struct dentry_t *p_entry, struct timestamp_t *t
 	}
 }
 
+static void init_file_entry(struct file_dentry_t *ep, u32 type)
+{
+	struct timestamp_t tm, *tp;
+
+	exfat_set_entry_type((struct dentry_t *)ep, type);
+
+	tp = tm_current(&tm);
+	exfat_set_entry_time((struct dentry_t *)ep, tp, TM_CREATE);
+	exfat_set_entry_time((struct dentry_t *)ep, tp, TM_MODIFY);
+	exfat_set_entry_time((struct dentry_t *)ep, tp, TM_ACCESS);
+	ep->create_time_ms = 0;
+	ep->modify_time_ms = 0;
+	ep->access_time_ms = 0;
+}
+
+static void init_strm_entry(struct strm_dentry_t *ep, u8 flags, u32 start_clu, u64 size)
+{
+	exfat_set_entry_type((struct dentry_t *)ep, TYPE_STREAM);
+	ep->flags = flags;
+	SET32_A(ep->start_clu, start_clu);
+	SET64_A(ep->valid_size, size);
+	SET64_A(ep->size, size);
+}
+
+static void init_name_entry(struct name_dentry_t *ep, u16 *uniname)
+{
+	int i;
+
+	exfat_set_entry_type((struct dentry_t *)ep, TYPE_EXTEND);
+	ep->flags = 0x0;
+
+	for (i = 0; i < 30; i++, i++) {
+		SET16_A(ep->unicode_0_14 + i, *uniname);
+		if (*uniname == 0x0)
+			break;
+		uniname++;
+	}
+}
+
 static s32 exfat_init_dir_entry(struct super_block *sb, struct chain_t *p_dir,
 			 s32 entry, u32 type, u32 start_clu, u64 size)
 {
@@ -1047,45 +1086,6 @@ static s32 exfat_init_ext_entry(struct super_block *sb, struct chain_t *p_dir,
 	return 0;
 }
 
-void init_file_entry(struct file_dentry_t *ep, u32 type)
-{
-	struct timestamp_t tm, *tp;
-
-	exfat_set_entry_type((struct dentry_t *)ep, type);
-
-	tp = tm_current(&tm);
-	exfat_set_entry_time((struct dentry_t *)ep, tp, TM_CREATE);
-	exfat_set_entry_time((struct dentry_t *)ep, tp, TM_MODIFY);
-	exfat_set_entry_time((struct dentry_t *)ep, tp, TM_ACCESS);
-	ep->create_time_ms = 0;
-	ep->modify_time_ms = 0;
-	ep->access_time_ms = 0;
-}
-
-void init_strm_entry(struct strm_dentry_t *ep, u8 flags, u32 start_clu, u64 size)
-{
-	exfat_set_entry_type((struct dentry_t *)ep, TYPE_STREAM);
-	ep->flags = flags;
-	SET32_A(ep->start_clu, start_clu);
-	SET64_A(ep->valid_size, size);
-	SET64_A(ep->size, size);
-}
-
-void init_name_entry(struct name_dentry_t *ep, u16 *uniname)
-{
-	int i;
-
-	exfat_set_entry_type((struct dentry_t *)ep, TYPE_EXTEND);
-	ep->flags = 0x0;
-
-	for (i = 0; i < 30; i++, i++) {
-		SET16_A(ep->unicode_0_14 + i, *uniname);
-		if (*uniname == 0x0)
-			break;
-		uniname++;
-	}
-}
-
 static void exfat_delete_dir_entry(struct super_block *sb, struct chain_t *p_dir,
 			    s32 entry, s32 order, s32 num_entries)
 {
-- 
2.24.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
