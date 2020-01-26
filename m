Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F718149A50
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 Jan 2020 12:03:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D827786813;
	Sun, 26 Jan 2020 11:03:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J1ytVthZMHjf; Sun, 26 Jan 2020 11:03:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EE5028631C;
	Sun, 26 Jan 2020 11:03:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 40EB01BF31C
 for <devel@linuxdriverproject.org>; Sun, 26 Jan 2020 11:03:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3C16485FED
 for <devel@linuxdriverproject.org>; Sun, 26 Jan 2020 11:03:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PXVIjdIQBKoG for <devel@linuxdriverproject.org>;
 Sun, 26 Jan 2020 11:03:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 70D6D85D26
 for <devel@driverdev.osuosl.org>; Sun, 26 Jan 2020 11:03:35 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id u131so3656039pgc.10
 for <devel@driverdev.osuosl.org>; Sun, 26 Jan 2020 03:03:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=2iTiMPPhL4l8d9hwcj+LZ9egCs5iR9+1Z4raQoL0t4s=;
 b=hoYwI9qS+qfFMdOUCETJd9QY7aejs9wo8KWiTrCGTs9mKbBP4iSmZ+JYg2/ZK8ndFf
 jg+KgOgL6ioD+qDtB6wmUytKoTpS6jDG5YYDE6gKxSsS1Cs57RcF2IRKY/VUNx+an40g
 7RDlLzWcaxUK3dHJTV3EWiONiOJLQtEmAblDJzlIaAXboI5yRSQh7U1E+8SuH8kMOKiY
 RSL65WzODJPAY0LNqIhiTuBb2OQ03ne4d0af5qIoPyxXHUOfgXB6wfGD0E1ZUcajzMAG
 GCYwo5CAqaZyf2i6UYonuBVrKqp6Wo8QU+1n8iHLwiCfEGAR8XXoxuuJnDXJFC0nKRwq
 pk0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=2iTiMPPhL4l8d9hwcj+LZ9egCs5iR9+1Z4raQoL0t4s=;
 b=dIJp1Z1zWOtilE6swrrGVET7fxNoWWqqgDlTwcx1fN2YgZJGxXvaavo3TiRs74HUE9
 xSCwu40VX7wuHRVfpsvJeczfoUFst83ezXMkDwW/NrtRNQjGg4AFOJFTrORf5zPrxp0z
 nuhORPUTzW2yBkvPasDJ0VqB8r6Jt2fLSrhTkMT7GsWE2qeidx/OwYVyCiYPGCvBeobA
 72/7qiCRqi5/m7MxYp/RJFXJ9vfGbY+aT9wk0vzPCJXrr4DFIiQETUgbB6mlPWSRNJ7e
 MsHhaRnPX27jBND/4XAoYv2ETZdRt+dqywgikmPxXnW2AXKZZVdu2tyOh/7K6iRMDnNm
 CrOQ==
X-Gm-Message-State: APjAAAX4uIbXU1AFG1D2h7rgnuSeH6nySyGEG3cRDUg2CYk/Ro14YfdE
 NeGe1BYquK66lF+A9fiWthuyFsFicWE=
X-Google-Smtp-Source: APXvYqyv8lAp6JxinY7pHqR9wY4WBatQbf4YEBbHeSBe6tSKCcyB2gXTpzk07e++AlOtNWfBLH7llw==
X-Received: by 2002:a63:106:: with SMTP id 6mr14005698pgb.190.1580036614966;
 Sun, 26 Jan 2020 03:03:34 -0800 (PST)
Received: from localhost.localdomain ([2405:204:808c:b30e:3956:8df2:aee5:9cf6])
 by smtp.gmail.com with ESMTPSA id b26sm12150028pgn.1.2020.01.26.03.03.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 26 Jan 2020 03:03:34 -0800 (PST)
From: Pragat Pandya <pragat.pandya@gmail.com>
To: valdis.kletnieks@vt.edu,
	gregkh@linuxfoundation.org
Subject: [RESEND PATCH] staging: exfat: Fix alignment warnings
Date: Sun, 26 Jan 2020 16:32:55 +0530
Message-Id: <20200126110255.20506-1-pragat.pandya@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200125133814.GA3518118@kroah.com>
References: <20200125133814.GA3518118@kroah.com>
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
Cc: linux-fsdevel@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel-mentees@lists.linuxfoundation.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix checkpatch warning "Alignment should match open parenthesis".

Signed-off-by: Pragat Pandya <pragat.pandya@gmail.com>
---
 drivers/staging/exfat/exfat_blkdev.c |  4 ++--
 drivers/staging/exfat/exfat_core.c   | 29 ++++++++++++++--------------
 drivers/staging/exfat/exfat_super.c  |  2 +-
 3 files changed, 18 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/exfat/exfat_blkdev.c b/drivers/staging/exfat/exfat_blkdev.c
index 7bcd98b13109..3068bfda39e4 100644
--- a/drivers/staging/exfat/exfat_blkdev.c
+++ b/drivers/staging/exfat/exfat_blkdev.c
@@ -31,7 +31,7 @@ void exfat_bdev_close(struct super_block *sb)
 }
 
 int exfat_bdev_read(struct super_block *sb, sector_t secno, struct buffer_head **bh,
-	      u32 num_secs, bool read)
+		    u32 num_secs, bool read)
 {
 	struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
 	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
@@ -66,7 +66,7 @@ int exfat_bdev_read(struct super_block *sb, sector_t secno, struct buffer_head *
 }
 
 int exfat_bdev_write(struct super_block *sb, sector_t secno, struct buffer_head *bh,
-	       u32 num_secs, bool sync)
+		     u32 num_secs, bool sync)
 {
 	s32 count;
 	struct buffer_head *bh2;
diff --git a/drivers/staging/exfat/exfat_core.c b/drivers/staging/exfat/exfat_core.c
index 794000e7bc6f..754407c738b7 100644
--- a/drivers/staging/exfat/exfat_core.c
+++ b/drivers/staging/exfat/exfat_core.c
@@ -250,7 +250,7 @@ static u32 test_alloc_bitmap(struct super_block *sb, u32 clu)
 }
 
 static s32 exfat_alloc_cluster(struct super_block *sb, s32 num_alloc,
-			struct chain_t *p_chain)
+			       struct chain_t *p_chain)
 {
 	s32 num_clusters = 0;
 	u32 hint_clu, new_clu, last_clu = CLUSTER_32(~0);
@@ -329,7 +329,7 @@ static s32 exfat_alloc_cluster(struct super_block *sb, s32 num_alloc,
 }
 
 static void exfat_free_cluster(struct super_block *sb, struct chain_t *p_chain,
-			s32 do_relse)
+			       s32 do_relse)
 {
 	s32 num_clusters = 0;
 	u32 clu;
@@ -920,7 +920,7 @@ static void exfat_set_entry_size(struct dentry_t *p_entry, u64 size)
 }
 
 static void exfat_get_entry_time(struct dentry_t *p_entry, struct timestamp_t *tp,
-			  u8 mode)
+				 u8 mode)
 {
 	u16 t = 0x00, d = 0x21;
 	struct file_dentry_t *ep = (struct file_dentry_t *)p_entry;
@@ -949,7 +949,7 @@ static void exfat_get_entry_time(struct dentry_t *p_entry, struct timestamp_t *t
 }
 
 static void exfat_set_entry_time(struct dentry_t *p_entry, struct timestamp_t *tp,
-			  u8 mode)
+				 u8 mode)
 {
 	u16 t, d;
 	struct file_dentry_t *ep = (struct file_dentry_t *)p_entry;
@@ -1013,7 +1013,7 @@ static void init_name_entry(struct name_dentry_t *ep, u16 *uniname)
 }
 
 static s32 exfat_init_dir_entry(struct super_block *sb, struct chain_t *p_dir,
-			 s32 entry, u32 type, u32 start_clu, u64 size)
+				s32 entry, u32 type, u32 start_clu, u64 size)
 {
 	sector_t sector;
 	u8 flags;
@@ -1089,7 +1089,7 @@ static s32 exfat_init_ext_entry(struct super_block *sb, struct chain_t *p_dir,
 }
 
 static void exfat_delete_dir_entry(struct super_block *sb, struct chain_t *p_dir,
-			    s32 entry, s32 order, s32 num_entries)
+				   s32 entry, s32 order, s32 num_entries)
 {
 	int i;
 	sector_t sector;
@@ -1256,7 +1256,7 @@ static s32 _walk_fat_chain(struct super_block *sb, struct chain_t *p_dir,
 }
 
 static s32 find_location(struct super_block *sb, struct chain_t *p_dir, s32 entry,
-		  sector_t *sector, s32 *offset)
+			 sector_t *sector, s32 *offset)
 {
 	s32 off, ret;
 	u32 clu = 0;
@@ -1492,7 +1492,8 @@ void release_entry_set(struct entry_set_cache_t *es)
 
 /* search EMPTY CONTINUOUS "num_entries" entries */
 static s32 search_deleted_or_unused_entry(struct super_block *sb,
-				   struct chain_t *p_dir, s32 num_entries)
+					  struct chain_t *p_dir,
+					  s32 num_entries)
 {
 	int i, dentry, num_empty = 0;
 	s32 dentries_per_clu;
@@ -1668,7 +1669,7 @@ static s32 find_empty_entry(struct inode *inode, struct chain_t *p_dir, s32 num_
 }
 
 static s32 extract_uni_name_from_name_entry(struct name_dentry_t *ep, u16 *uniname,
-				     s32 order)
+					    s32 order)
 {
 	int i, len = 0;
 
@@ -1690,8 +1691,8 @@ static s32 extract_uni_name_from_name_entry(struct name_dentry_t *ep, u16 *unina
  * -2 : entry with the name does not exist
  */
 static s32 exfat_find_dir_entry(struct super_block *sb, struct chain_t *p_dir,
-			 struct uni_name_t *p_uniname, s32 num_entries,
-			 struct dos_name_t *p_dosname, u32 type)
+				struct uni_name_t *p_uniname, s32 num_entries,
+				struct dos_name_t *p_dosname, u32 type)
 {
 	int i = 0, dentry = 0, num_ext_entries = 0, len, step;
 	s32 order = 0;
@@ -1833,7 +1834,7 @@ static s32 exfat_find_dir_entry(struct super_block *sb, struct chain_t *p_dir,
 }
 
 static s32 exfat_count_ext_entries(struct super_block *sb, struct chain_t *p_dir,
-			    s32 entry, struct dentry_t *p_entry)
+				   s32 entry, struct dentry_t *p_entry)
 {
 	int i, count = 0;
 	u32 type;
@@ -1996,8 +1997,8 @@ s32 get_num_entries_and_dos_name(struct super_block *sb, struct chain_t *p_dir,
 }
 
 static void exfat_get_uni_name_from_ext_entry(struct super_block *sb,
-				       struct chain_t *p_dir, s32 entry,
-				       u16 *uniname)
+					      struct chain_t *p_dir, s32 entry,
+					      u16 *uniname)
 {
 	int i;
 	struct dentry_t *ep;
diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index 9f91853b189b..75bb36071722 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -365,7 +365,7 @@ static int ffsMountVol(struct super_block *sb)
 
 	if (p_bd->sector_size < sb->s_blocksize) {
 		printk(KERN_INFO "EXFAT: mount failed - sector size %d less than blocksize %ld\n",
-			p_bd->sector_size,  sb->s_blocksize);
+		       p_bd->sector_size,  sb->s_blocksize);
 		ret = -EINVAL;
 		goto out;
 	}
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
