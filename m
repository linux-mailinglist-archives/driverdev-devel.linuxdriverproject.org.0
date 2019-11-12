Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C236F9BBE
	for <lists+driverdev-devel@lfdr.de>; Tue, 12 Nov 2019 22:14:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D6DE485CC7;
	Tue, 12 Nov 2019 21:14:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bXzpK9kqy9gJ; Tue, 12 Nov 2019 21:14:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2F845860B5;
	Tue, 12 Nov 2019 21:13:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id ED1081BF404
 for <devel@linuxdriverproject.org>; Tue, 12 Nov 2019 21:13:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E9280203DF
 for <devel@linuxdriverproject.org>; Tue, 12 Nov 2019 21:13:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sEVH5Jopgv+1 for <devel@linuxdriverproject.org>;
 Tue, 12 Nov 2019 21:13:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr1.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by silver.osuosl.org (Postfix) with ESMTPS id C529120368
 for <devel@driverdev.osuosl.org>; Tue, 12 Nov 2019 21:13:45 +0000 (UTC)
Received: from mr6.cc.vt.edu (mr6.cc.vt.edu
 [IPv6:2607:b400:92:8500:0:af:2d00:4488])
 by omr1.cc.vt.edu (8.14.4/8.14.4) with ESMTP id xACLDiSm012792
 for <devel@driverdev.osuosl.org>; Tue, 12 Nov 2019 16:13:44 -0500
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200])
 by mr6.cc.vt.edu (8.14.7/8.14.7) with ESMTP id xACLDdwW015363
 for <devel@driverdev.osuosl.org>; Tue, 12 Nov 2019 16:13:44 -0500
Received: by mail-qk1-f200.google.com with SMTP id h80so34825qke.15
 for <devel@driverdev.osuosl.org>; Tue, 12 Nov 2019 13:13:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=kG7Ptaq+86UuiddtLF3z6ZZhHPb5HLJn9YbpAAIlC6g=;
 b=EWDWFs2HYnHNef5yINPpjDS6UdmhZ3wPtcayFythlKq6Y4fTMLbao8r16lchXTYD01
 VlSypturn7epBDBu+W0ACrkzuezViO1BWiMGMK2cGa1jeKA5dM7s3tgAt862GJQ4uLW/
 +QMHZWSs1rVfsQj7CUlwdTYpd8Rvbq0jC7C9q63s33YxT1FEA2nQUBwKsrQdGcyNR0Po
 Mx6o6Qu+sUK9Td4W+q9/E7hZIwopPyd3Q6VV4TpkJmzbAb9AyYkz7c/ehYj9yGTNh5KO
 gXblszp8tUaoRIvxTtMkJDFFYMr7fyp+T/rCwS4GqZ+imcI57U3MfMXybdpAgBHh9J6h
 T/Ew==
X-Gm-Message-State: APjAAAX6MyJJR9oYLHXAVW7nkO78Bt/Z9XliT8wJ1j2HHNTXpDE2gXSs
 RvEXZZcJ6rNV2nfzqN4r2HX2oEorpHewdPPmpHdH4wVKd3RPIUBMp6Ju5jVcItF2/3LfoVtldMZ
 Z5g8GuKf/KcTQ6VuZYg0QPWYja5qYWLmN
X-Received: by 2002:ac8:1c03:: with SMTP id a3mr33362157qtk.31.1573593218503; 
 Tue, 12 Nov 2019 13:13:38 -0800 (PST)
X-Google-Smtp-Source: APXvYqyVIlNCsK9Ac0q93isCUr3PgF+MgibBGZqIuHluMITzT2edSbTc9sATSaQOnX7hr6yi/9BQvQ==
X-Received: by 2002:ac8:1c03:: with SMTP id a3mr33362137qtk.31.1573593218178; 
 Tue, 12 Nov 2019 13:13:38 -0800 (PST)
Received: from turing-police.lan ([2601:5c0:c001:c9e1::359])
 by smtp.gmail.com with ESMTPSA id 130sm9674214qkd.33.2019.11.12.13.13.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Nov 2019 13:13:37 -0800 (PST)
From: Valdis Kletnieks <valdis.kletnieks@vt.edu>
X-Google-Original-From: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
To: 
Subject: [PATCH 06/12] staging: exfat: Clean up the namespace pollution part 2
Date: Tue, 12 Nov 2019 16:12:32 -0500
Message-Id: <20191112211238.156490-7-Valdis.Kletnieks@vt.edu>
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

Rename all the bdev_* to exfat_bdev_*

Signed-off-by: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
---
 drivers/staging/exfat/exfat.h        | 10 +++++-----
 drivers/staging/exfat/exfat_blkdev.c | 10 +++++-----
 drivers/staging/exfat/exfat_core.c   |  8 ++++----
 drivers/staging/exfat/exfat_super.c  | 16 ++++++++--------
 4 files changed, 22 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index 5efba3d4259b..5044523ccb97 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -842,13 +842,13 @@ int multi_sector_read(struct super_block *sb, sector_t sec,
 int multi_sector_write(struct super_block *sb, sector_t sec,
 		       struct buffer_head *bh, s32 num_secs, bool sync);
 
-void bdev_open(struct super_block *sb);
-void bdev_close(struct super_block *sb);
-int bdev_read(struct super_block *sb, sector_t secno,
+void exfat_bdev_open(struct super_block *sb);
+void exfat_bdev_close(struct super_block *sb);
+int exfat_bdev_read(struct super_block *sb, sector_t secno,
 	      struct buffer_head **bh, u32 num_secs, bool read);
-int bdev_write(struct super_block *sb, sector_t secno,
+int exfat_bdev_write(struct super_block *sb, sector_t secno,
 	       struct buffer_head *bh, u32 num_secs, bool sync);
-int bdev_sync(struct super_block *sb);
+int exfat_bdev_sync(struct super_block *sb);
 
 extern const u8 uni_upcase[];
 #endif /* _EXFAT_H */
diff --git a/drivers/staging/exfat/exfat_blkdev.c b/drivers/staging/exfat/exfat_blkdev.c
index 0abae041f632..7bcd98b13109 100644
--- a/drivers/staging/exfat/exfat_blkdev.c
+++ b/drivers/staging/exfat/exfat_blkdev.c
@@ -8,7 +8,7 @@
 #include <linux/fs.h>
 #include "exfat.h"
 
-void bdev_open(struct super_block *sb)
+void exfat_bdev_open(struct super_block *sb)
 {
 	struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
 
@@ -23,14 +23,14 @@ void bdev_open(struct super_block *sb)
 	p_bd->opened = true;
 }
 
-void bdev_close(struct super_block *sb)
+void exfat_bdev_close(struct super_block *sb)
 {
 	struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
 
 	p_bd->opened = false;
 }
 
-int bdev_read(struct super_block *sb, sector_t secno, struct buffer_head **bh,
+int exfat_bdev_read(struct super_block *sb, sector_t secno, struct buffer_head **bh,
 	      u32 num_secs, bool read)
 {
 	struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
@@ -65,7 +65,7 @@ int bdev_read(struct super_block *sb, sector_t secno, struct buffer_head **bh,
 	return -EIO;
 }
 
-int bdev_write(struct super_block *sb, sector_t secno, struct buffer_head *bh,
+int exfat_bdev_write(struct super_block *sb, sector_t secno, struct buffer_head *bh,
 	       u32 num_secs, bool sync)
 {
 	s32 count;
@@ -118,7 +118,7 @@ int bdev_write(struct super_block *sb, sector_t secno, struct buffer_head *bh,
 	return -EIO;
 }
 
-int bdev_sync(struct super_block *sb)
+int exfat_bdev_sync(struct super_block *sb)
 {
 	struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
 #ifdef CONFIG_EXFAT_KERNEL_DEBUG
diff --git a/drivers/staging/exfat/exfat_core.c b/drivers/staging/exfat/exfat_core.c
index 2dc07e81bad0..5a01fc25f31d 100644
--- a/drivers/staging/exfat/exfat_core.c
+++ b/drivers/staging/exfat/exfat_core.c
@@ -2569,7 +2569,7 @@ int sector_read(struct super_block *sb, sector_t sec, struct buffer_head **bh,
 	}
 
 	if (!p_fs->dev_ejected) {
-		ret = bdev_read(sb, sec, bh, 1, read);
+		ret = exfat_bdev_read(sb, sec, bh, 1, read);
 		if (ret != 0)
 			p_fs->dev_ejected = 1;
 	}
@@ -2598,7 +2598,7 @@ int sector_write(struct super_block *sb, sector_t sec, struct buffer_head *bh,
 	}
 
 	if (!p_fs->dev_ejected) {
-		ret = bdev_write(sb, sec, bh, 1, sync);
+		ret = exfat_bdev_write(sb, sec, bh, 1, sync);
 		if (ret != 0)
 			p_fs->dev_ejected = 1;
 	}
@@ -2621,7 +2621,7 @@ int multi_sector_read(struct super_block *sb, sector_t sec,
 	}
 
 	if (!p_fs->dev_ejected) {
-		ret = bdev_read(sb, sec, bh, num_secs, read);
+		ret = exfat_bdev_read(sb, sec, bh, num_secs, read);
 		if (ret != 0)
 			p_fs->dev_ejected = 1;
 	}
@@ -2649,7 +2649,7 @@ int multi_sector_write(struct super_block *sb, sector_t sec,
 	}
 
 	if (!p_fs->dev_ejected) {
-		ret = bdev_write(sb, sec, bh, num_secs, sync);
+		ret = exfat_bdev_write(sb, sec, bh, num_secs, sync);
 		if (ret != 0)
 			p_fs->dev_ejected = 1;
 	}
diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index cf094458b5d2..7309053105d8 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -289,7 +289,7 @@ static DEFINE_MUTEX(z_mutex);
 static inline void fs_sync(struct super_block *sb, bool do_sync)
 {
 	if (do_sync)
-		bdev_sync(sb);
+		exfat_bdev_sync(sb);
 }
 
 /*
@@ -361,7 +361,7 @@ static int ffsMountVol(struct super_block *sb)
 	p_fs->dev_ejected = 0;
 
 	/* open the block device */
-	bdev_open(sb);
+	exfat_bdev_open(sb);
 
 	if (p_bd->sector_size < sb->s_blocksize) {
 		printk(KERN_INFO "EXFAT: maont failed - sector size %d less than blocksize %ld\n",
@@ -385,7 +385,7 @@ static int ffsMountVol(struct super_block *sb)
 	/* check the validity of PBR */
 	if (GET16_A(p_pbr->signature) != PBR_SIGNATURE) {
 		brelse(tmp_bh);
-		bdev_close(sb);
+		exfat_bdev_close(sb);
 		ret = -EFSCORRUPTED;
 		goto out;
 	}
@@ -407,26 +407,26 @@ static int ffsMountVol(struct super_block *sb)
 	brelse(tmp_bh);
 
 	if (ret) {
-		bdev_close(sb);
+		exfat_bdev_close(sb);
 		goto out;
 	}
 
 	ret = load_alloc_bitmap(sb);
 	if (ret) {
-		bdev_close(sb);
+		exfat_bdev_close(sb);
 		goto out;
 	}
 	ret = load_upcase_table(sb);
 	if (ret) {
 		free_alloc_bitmap(sb);
-		bdev_close(sb);
+		exfat_bdev_close(sb);
 		goto out;
 	}
 
 	if (p_fs->dev_ejected) {
 		free_upcase_table(sb);
 		free_alloc_bitmap(sb);
-		bdev_close(sb);
+		exfat_bdev_close(sb);
 		ret = -EIO;
 		goto out;
 	}
@@ -461,7 +461,7 @@ static int ffsUmountVol(struct super_block *sb)
 	buf_release_all(sb);
 
 	/* close the block device */
-	bdev_close(sb);
+	exfat_bdev_close(sb);
 
 	if (p_fs->dev_ejected) {
 		pr_info("[EXFAT] unmounted with media errors. Device is already ejected.\n");
-- 
2.24.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
