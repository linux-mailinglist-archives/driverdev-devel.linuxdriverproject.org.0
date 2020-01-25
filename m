Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 608C214957C
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 Jan 2020 13:20:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1CA4786B85;
	Sat, 25 Jan 2020 12:20:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8WGKkyPKwUbP; Sat, 25 Jan 2020 12:20:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5E54386C69;
	Sat, 25 Jan 2020 12:20:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DFE4F1BF370
 for <devel@linuxdriverproject.org>; Sat, 25 Jan 2020 12:19:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D8CF2203A9
 for <devel@linuxdriverproject.org>; Sat, 25 Jan 2020 12:19:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9jMx-9nvYKT4 for <devel@linuxdriverproject.org>;
 Sat, 25 Jan 2020 12:19:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 9228620116
 for <devel@driverdev.osuosl.org>; Sat, 25 Jan 2020 12:19:56 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id w2so2505612pfd.3
 for <devel@driverdev.osuosl.org>; Sat, 25 Jan 2020 04:19:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:subject:from:to:cc:date:mime-version
 :content-transfer-encoding;
 bh=hwWu6okC0N3Gkmn79bDcMM/cFq8TnEPpdReD6l6SEB4=;
 b=RphLi8tbHG2VFnqieMTN0YIh2fG9bB+o+OtfHPSzs8UvKUSi2CfOt+Rh0YR0vvs5/V
 Ytx8BXoacrWfRfHjXIWAh6Vmc6RV9s9JKH7pgwr86HqaRVjiai1MHsLWNDruUs/eQ1Fy
 t/sxoVnx5JxvbyM6OhzFJdnBJ0TrP77Tg8uza0Kb79YZnNXLQGl8weJ3Pau6cudfkZT+
 qbUFCSXM3KBQXpYXDdtBZnJYXZdjO/q2HURtrms4UBveHz3D25+MEJ0rIgsm4WtsG9BY
 LTiLl4BGDCCiW5JCcGSHLqPyTUVkFymm41WdJ1hlKpfPEiJuQg0//gYAuEhtKtlOTdWD
 hc3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:mime-version
 :content-transfer-encoding;
 bh=hwWu6okC0N3Gkmn79bDcMM/cFq8TnEPpdReD6l6SEB4=;
 b=JS52UqgK3kgtvYLrRpbAuKh6mbs1zaoKj0bzp7HT7TQxY20BEJSUfUJ0K4HnM5Qh3O
 KrYreIEQbTgdbF+DilQI9USgrO6v9jvHTa7PGZlcPTuohEpxwL5vmzDyboRCu2lcHusH
 Ub+8At90kecIxirUaWOtaWGTbZMFQxAXaVNinEJx1YoBG5R7fWs00WPQHea6mCYqPICR
 MafOYEu80hA+nsrZjEmcnFR3bniXG3WwGwyutqXkM8R8wEl5X4O0Fqd8fdWr23xWhK2v
 FGxgySBKBJNFnLGI2PApK96lf0VVmZmoOyYampDHUWIMUeq463wDrUUher6x8ezgiBIP
 BxyA==
X-Gm-Message-State: APjAAAWry1yjfnUDwniF84+h2OhAGsSJrSmIk6vZSw+3zjIpDmNyckjS
 7UTVyKx7RCJ1H5nVa0/XF0U=
X-Google-Smtp-Source: APXvYqwcktisFvFa0xypdItbOhMgBziNO9uldLnq5sZ1nAwnACzvWeNxS8w25Old5jPphLqNWJUm6Q==
X-Received: by 2002:a05:6a00:8a:: with SMTP id
 c10mr7426938pfj.191.1579954796169; 
 Sat, 25 Jan 2020 04:19:56 -0800 (PST)
Received: from pragat-GL553VD ([2405:204:810d:f9d8:3956:8df2:aee5:9cf6])
 by smtp.googlemail.com with ESMTPSA id h7sm10186982pfq.36.2020.01.25.04.19.51
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 25 Jan 2020 04:19:55 -0800 (PST)
Message-ID: <7278a1cb979cd574bccbbbccaf1a9c90acd514b5.camel@gmail.com>
Subject: [RESEND PATCH] staging: exfat: Fix alignment warnings
From: Pragat Pandya <pragat.pandya@gmail.com>
To: "valdis.kletnieks@vt.edu" <valdis.kletnieks@vt.edu>, 
 "gregkh@linuxfoundation.org"
 <gregkh@linuxfoundation.org>, ppandya2103@gmail.com
Date: Sat, 25 Jan 2020 17:49:48 +0530
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
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
Cc: "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
 "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 linux-kernel-mentees@lists.linuxfoundation.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
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

diff --git a/drivers/staging/exfat/exfat_blkdev.c
b/drivers/staging/exfat/exfat_blkdev.c
index 7bcd98b13109..3068bfda39e4 100644
--- a/drivers/staging/exfat/exfat_blkdev.c
+++ b/drivers/staging/exfat/exfat_blkdev.c
@@ -31,7 +31,7 @@ void exfat_bdev_close(struct super_block *sb)
 }
 
 int exfat_bdev_read(struct super_block *sb, sector_t secno, struct
buffer_head **bh,
-             u32 num_secs, bool read)
+                   u32 num_secs, bool read)
 {
        struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
        struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
@@ -66,7 +66,7 @@ int exfat_bdev_read(struct super_block *sb, sector_t
secno, struct buffer_head *
 }
 
 int exfat_bdev_write(struct super_block *sb, sector_t secno, struct
buffer_head *bh,
-              u32 num_secs, bool sync)
+                    u32 num_secs, bool sync)
 {
        s32 count;
        struct buffer_head *bh2;
diff --git a/drivers/staging/exfat/exfat_core.c
b/drivers/staging/exfat/exfat_core.c
index 794000e7bc6f..754407c738b7 100644
--- a/drivers/staging/exfat/exfat_core.c
+++ b/drivers/staging/exfat/exfat_core.c
@@ -250,7 +250,7 @@ static u32 test_alloc_bitmap(struct super_block
*sb, u32 clu)
 }
 
 static s32 exfat_alloc_cluster(struct super_block *sb, s32 num_alloc,
-                       struct chain_t *p_chain)
+                              struct chain_t *p_chain)
 {
        s32 num_clusters = 0;
        u32 hint_clu, new_clu, last_clu = CLUSTER_32(~0);
@@ -329,7 +329,7 @@ static s32 exfat_alloc_cluster(struct super_block
*sb, s32 num_alloc,
 }
 
 static void exfat_free_cluster(struct super_block *sb, struct chain_t
*p_chain,
-                       s32 do_relse)
+                              s32 do_relse)
 {
        s32 num_clusters = 0;
        u32 clu;
@@ -920,7 +920,7 @@ static void exfat_set_entry_size(struct dentry_t
*p_entry, u64 size)
 }
 
 static void exfat_get_entry_time(struct dentry_t *p_entry, struct
timestamp_t *tp,
-                         u8 mode)
+                                u8 mode)
 {
        u16 t = 0x00, d = 0x21;
        struct file_dentry_t *ep = (struct file_dentry_t *)p_entry;
@@ -949,7 +949,7 @@ static void exfat_get_entry_time(struct dentry_t
*p_entry, struct timestamp_t *t
 }
 
 static void exfat_set_entry_time(struct dentry_t *p_entry, struct
timestamp_t *tp,
-                         u8 mode)
+                                u8 mode)
 {
        u16 t, d;
        struct file_dentry_t *ep = (struct file_dentry_t *)p_entry;
@@ -1013,7 +1013,7 @@ static void init_name_entry(struct name_dentry_t
*ep, u16 *uniname)
 }
 
 static s32 exfat_init_dir_entry(struct super_block *sb, struct chain_t
*p_dir,
-                        s32 entry, u32 type, u32 start_clu, u64 size)
+                               s32 entry, u32 type, u32 start_clu, u64
size)
 {
        sector_t sector;
        u8 flags;
@@ -1089,7 +1089,7 @@ static s32 exfat_init_ext_entry(struct
super_block *sb, struct chain_t *p_dir,
 }
 
 static void exfat_delete_dir_entry(struct super_block *sb, struct
chain_t *p_dir,
-                           s32 entry, s32 order, s32 num_entries)
+                                  s32 entry, s32 order, s32
num_entries)
 {
        int i;
        sector_t sector;
@@ -1256,7 +1256,7 @@ static s32 _walk_fat_chain(struct super_block
*sb, struct chain_t *p_dir,
 }
 
 static s32 find_location(struct super_block *sb, struct chain_t
*p_dir, s32 entry,
-                 sector_t *sector, s32 *offset)
+                        sector_t *sector, s32 *offset)
 {
        s32 off, ret;
        u32 clu = 0;
@@ -1492,7 +1492,8 @@ void release_entry_set(struct entry_set_cache_t
*es)
 
 /* search EMPTY CONTINUOUS "num_entries" entries */
 static s32 search_deleted_or_unused_entry(struct super_block *sb,
-                                  struct chain_t *p_dir, s32
num_entries)
+                                         struct chain_t *p_dir,
+                                         s32 num_entries)
 {
        int i, dentry, num_empty = 0;
        s32 dentries_per_clu;
@@ -1668,7 +1669,7 @@ static s32 find_empty_entry(struct inode *inode,
struct chain_t *p_dir, s32 num_
 }
 
 static s32 extract_uni_name_from_name_entry(struct name_dentry_t *ep,
u16 *uniname,
-                                    s32 order)
+                                           s32 order)
 {
        int i, len = 0;
 
@@ -1690,8 +1691,8 @@ static s32
extract_uni_name_from_name_entry(struct name_dentry_t *ep, u16 *unina
  * -2 : entry with the name does not exist
  */
 static s32 exfat_find_dir_entry(struct super_block *sb, struct chain_t
*p_dir,
-                        struct uni_name_t *p_uniname, s32 num_entries,
-                        struct dos_name_t *p_dosname, u32 type)
+                               struct uni_name_t *p_uniname, s32
num_entries,
+                               struct dos_name_t *p_dosname, u32 type)
 {
        int i = 0, dentry = 0, num_ext_entries = 0, len, step;
        s32 order = 0;
@@ -1833,7 +1834,7 @@ static s32 exfat_find_dir_entry(struct
super_block *sb, struct chain_t *p_dir,
 }
 
 static s32 exfat_count_ext_entries(struct super_block *sb, struct
chain_t *p_dir,
-                           s32 entry, struct dentry_t *p_entry)
+                                  s32 entry, struct dentry_t *p_entry)
 {
        int i, count = 0;
        u32 type;
@@ -1996,8 +1997,8 @@ s32 get_num_entries_and_dos_name(struct
super_block *sb, struct chain_t *p_dir,
 }
 
 static void exfat_get_uni_name_from_ext_entry(struct super_block *sb,
-                                      struct chain_t *p_dir, s32
entry,
-                                      u16 *uniname)
+                                             struct chain_t *p_dir,
s32 entry,
+                                             u16 *uniname)
 {
        int i;
        struct dentry_t *ep;
diff --git a/drivers/staging/exfat/exfat_super.c
b/drivers/staging/exfat/exfat_super.c
index 9f91853b189b..75bb36071722 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -365,7 +365,7 @@ static int ffsMountVol(struct super_block *sb)
 
        if (p_bd->sector_size < sb->s_blocksize) {
                printk(KERN_INFO "EXFAT: mount failed - sector size %d
less than blocksize %ld\n",
-                       p_bd->sector_size,  sb->s_blocksize);
+                      p_bd->sector_size,  sb->s_blocksize);
                ret = -EINVAL;
                goto out;
        }
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
