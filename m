Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A0E8F9BC7
	for <lists+driverdev-devel@lfdr.de>; Tue, 12 Nov 2019 22:14:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2316B85B48;
	Tue, 12 Nov 2019 21:14:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fmn+-M9-f96H; Tue, 12 Nov 2019 21:14:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B5A0C8609F;
	Tue, 12 Nov 2019 21:14:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2F5A11BF404
 for <devel@linuxdriverproject.org>; Tue, 12 Nov 2019 21:14:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2828485F96
 for <devel@linuxdriverproject.org>; Tue, 12 Nov 2019 21:14:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kJbDXPsbanej for <devel@linuxdriverproject.org>;
 Tue, 12 Nov 2019 21:14:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr1.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B2DDA860A8
 for <devel@driverdev.osuosl.org>; Tue, 12 Nov 2019 21:14:01 +0000 (UTC)
Received: from mr5.cc.vt.edu (mr5.cc.ipv6.vt.edu
 [IPv6:2607:b400:92:8400:0:72:232:758b])
 by omr1.cc.vt.edu (8.14.4/8.14.4) with ESMTP id xACLE0Oq012883
 for <devel@driverdev.osuosl.org>; Tue, 12 Nov 2019 16:14:00 -0500
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199])
 by mr5.cc.vt.edu (8.14.7/8.14.7) with ESMTP id xACLDt3Y026641
 for <devel@driverdev.osuosl.org>; Tue, 12 Nov 2019 16:14:00 -0500
Received: by mail-qt1-f199.google.com with SMTP id k9so21310167qtg.2
 for <devel@driverdev.osuosl.org>; Tue, 12 Nov 2019 13:14:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=3Lm+Yx9htGx1GvJOlv2pYID4T87BpDTqs+Z9Nnu9HQA=;
 b=X9ceezghXz+sKGq09cp3e3EkoS22jAS5ej/7mbVeQfH/eNA5QmiW9ScX8KSkuF9yi3
 gLtOKERN5ym5IxvTrnTl+QBVlXkaX1+EY8khcomDyBXeuY0dDWLO5lHmlo1jJ3iSR8B4
 NsgQYfIY8WPv4Lpr1kCjZY/8F3RKpS/JG2y2bEqLoC5NZImEkxA5sPAg/MlFuQmMDelu
 bApqUJdvaQu9w/1w56S0mlE+qW8Jbo4LCbYhEPIA8y/LeT3bMxVXisrY56azskzYFWWM
 qzfVCJdzRhUVhPYoIW2B4NqD7cq6/FABkV2vup3/jByRW3x4oHlgoupXEaI8vupKrsGY
 FaAw==
X-Gm-Message-State: APjAAAUmwxwtgORNxC3oqZNaFQSyQ2kdCbJkuMWPGZ2bhc832/2uMlN6
 0cIcL3iNR104fyTGgLrHHrE8TJ1T6/Y+EJTKGzex/dMxnxqX3QGIxPfUias22hmj/doOonZDM5i
 X3h+5IXSq0YL5O3xLusorPf7unjTx1gd/
X-Received: by 2002:aed:34c2:: with SMTP id x60mr34313396qtd.381.1573593234508; 
 Tue, 12 Nov 2019 13:13:54 -0800 (PST)
X-Google-Smtp-Source: APXvYqyFz02hE223Ggh1pH+kWkjdld65tpoHrfUeNbcaWNdLSah2e4CurIV2w51D/I6NKh7Pud7KJQ==
X-Received: by 2002:aed:34c2:: with SMTP id x60mr34313346qtd.381.1573593233931; 
 Tue, 12 Nov 2019 13:13:53 -0800 (PST)
Received: from turing-police.lan ([2601:5c0:c001:c9e1::359])
 by smtp.gmail.com with ESMTPSA id 130sm9674214qkd.33.2019.11.12.13.13.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Nov 2019 13:13:52 -0800 (PST)
From: Valdis Kletnieks <valdis.kletnieks@vt.edu>
X-Google-Original-From: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
To: 
Subject: [PATCH 11/12] staging: exfat: Clean up the namespace pollution part 7
Date: Tue, 12 Nov 2019 16:12:37 -0500
Message-Id: <20191112211238.156490-12-Valdis.Kletnieks@vt.edu>
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

Global functions called 'buf*' are a linkage editor disaster waiting to
happen.  Rename our buf_* functions to exfat_buf_*

Signed-off-by: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
---
 drivers/staging/exfat/exfat.h       | 18 +++---
 drivers/staging/exfat/exfat_cache.c | 22 +++----
 drivers/staging/exfat/exfat_core.c  | 96 ++++++++++++++---------------
 drivers/staging/exfat/exfat_super.c | 12 ++--
 4 files changed, 74 insertions(+), 74 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index 188ea1bd7162..6a9cb6c68d28 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -737,21 +737,21 @@ void nls_cstring_to_uniname(struct super_block *sb,
 			    bool *p_lossy);
 
 /* buffer cache management */
-void buf_init(struct super_block *sb);
-void buf_shutdown(struct super_block *sb);
+void exfat_buf_init(struct super_block *sb);
+void exfat_buf_shutdown(struct super_block *sb);
 int FAT_read(struct super_block *sb, u32 loc, u32 *content);
 s32 FAT_write(struct super_block *sb, u32 loc, u32 content);
 u8 *FAT_getblk(struct super_block *sb, sector_t sec);
 void FAT_modify(struct super_block *sb, sector_t sec);
 void FAT_release_all(struct super_block *sb);
 void FAT_sync(struct super_block *sb);
-u8 *buf_getblk(struct super_block *sb, sector_t sec);
-void buf_modify(struct super_block *sb, sector_t sec);
-void buf_lock(struct super_block *sb, sector_t sec);
-void buf_unlock(struct super_block *sb, sector_t sec);
-void buf_release(struct super_block *sb, sector_t sec);
-void buf_release_all(struct super_block *sb);
-void buf_sync(struct super_block *sb);
+u8 *exfat_buf_getblk(struct super_block *sb, sector_t sec);
+void exfat_buf_modify(struct super_block *sb, sector_t sec);
+void exfat_buf_lock(struct super_block *sb, sector_t sec);
+void exfat_buf_unlock(struct super_block *sb, sector_t sec);
+void exfat_buf_release(struct super_block *sb, sector_t sec);
+void exfat_buf_release_all(struct super_block *sb);
+void exfat_buf_sync(struct super_block *sb);
 
 /* fs management functions */
 void fs_set_vol_flags(struct super_block *sb, u32 new_flag);
diff --git a/drivers/staging/exfat/exfat_cache.c b/drivers/staging/exfat/exfat_cache.c
index 1d344c5f3e15..835871b2a3d0 100644
--- a/drivers/staging/exfat/exfat_cache.c
+++ b/drivers/staging/exfat/exfat_cache.c
@@ -128,7 +128,7 @@ static void buf_cache_remove_hash(struct buf_cache_t *bp)
 	(bp->hash_next)->hash_prev = bp->hash_prev;
 }
 
-void buf_init(struct super_block *sb)
+void exfat_buf_init(struct super_block *sb)
 {
 	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
 
@@ -189,7 +189,7 @@ void buf_init(struct super_block *sb)
 		buf_cache_insert_hash(sb, &p_fs->buf_cache_array[i]);
 }
 
-void buf_shutdown(struct super_block *sb)
+void exfat_buf_shutdown(struct super_block *sb)
 {
 }
 
@@ -392,7 +392,7 @@ static struct buf_cache_t *buf_cache_get(struct super_block *sb, sector_t sec)
 	return bp;
 }
 
-static u8 *__buf_getblk(struct super_block *sb, sector_t sec)
+static u8 *__exfat_buf_getblk(struct super_block *sb, sector_t sec)
 {
 	struct buf_cache_t *bp;
 	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
@@ -427,18 +427,18 @@ static u8 *__buf_getblk(struct super_block *sb, sector_t sec)
 	return bp->buf_bh->b_data;
 }
 
-u8 *buf_getblk(struct super_block *sb, sector_t sec)
+u8 *exfat_buf_getblk(struct super_block *sb, sector_t sec)
 {
 	u8 *buf;
 
 	mutex_lock(&b_mutex);
-	buf = __buf_getblk(sb, sec);
+	buf = __exfat_buf_getblk(sb, sec);
 	mutex_unlock(&b_mutex);
 
 	return buf;
 }
 
-void buf_modify(struct super_block *sb, sector_t sec)
+void exfat_buf_modify(struct super_block *sb, sector_t sec)
 {
 	struct buf_cache_t *bp;
 
@@ -454,7 +454,7 @@ void buf_modify(struct super_block *sb, sector_t sec)
 	mutex_unlock(&b_mutex);
 }
 
-void buf_lock(struct super_block *sb, sector_t sec)
+void exfat_buf_lock(struct super_block *sb, sector_t sec)
 {
 	struct buf_cache_t *bp;
 
@@ -470,7 +470,7 @@ void buf_lock(struct super_block *sb, sector_t sec)
 	mutex_unlock(&b_mutex);
 }
 
-void buf_unlock(struct super_block *sb, sector_t sec)
+void exfat_buf_unlock(struct super_block *sb, sector_t sec)
 {
 	struct buf_cache_t *bp;
 
@@ -486,7 +486,7 @@ void buf_unlock(struct super_block *sb, sector_t sec)
 	mutex_unlock(&b_mutex);
 }
 
-void buf_release(struct super_block *sb, sector_t sec)
+void exfat_buf_release(struct super_block *sb, sector_t sec)
 {
 	struct buf_cache_t *bp;
 	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
@@ -510,7 +510,7 @@ void buf_release(struct super_block *sb, sector_t sec)
 	mutex_unlock(&b_mutex);
 }
 
-void buf_release_all(struct super_block *sb)
+void exfat_buf_release_all(struct super_block *sb)
 {
 	struct buf_cache_t *bp;
 	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
@@ -535,7 +535,7 @@ void buf_release_all(struct super_block *sb)
 	mutex_unlock(&b_mutex);
 }
 
-void buf_sync(struct super_block *sb)
+void exfat_buf_sync(struct super_block *sb)
 {
 	struct buf_cache_t *bp;
 	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
diff --git a/drivers/staging/exfat/exfat_core.c b/drivers/staging/exfat/exfat_core.c
index 3cc13aaaed24..f60fb691e165 100644
--- a/drivers/staging/exfat/exfat_core.c
+++ b/drivers/staging/exfat/exfat_core.c
@@ -352,7 +352,7 @@ static void exfat_free_cluster(struct super_block *sb, struct chain_t *p_chain,
 			if (do_relse) {
 				sector = START_SECTOR(clu);
 				for (i = 0; i < p_fs->sectors_per_clu; i++)
-					buf_release(sb, sector + i);
+					exfat_buf_release(sb, sector + i);
 			}
 
 			if (clr_alloc_bitmap(sb, clu - 2) != 0)
@@ -369,7 +369,7 @@ static void exfat_free_cluster(struct super_block *sb, struct chain_t *p_chain,
 			if (do_relse) {
 				sector = START_SECTOR(clu);
 				for (i = 0; i < p_fs->sectors_per_clu; i++)
-					buf_release(sb, sector + i);
+					exfat_buf_release(sb, sector + i);
 			}
 
 			if (clr_alloc_bitmap(sb, clu - 2) != 0)
@@ -1032,10 +1032,10 @@ static s32 exfat_init_dir_entry(struct super_block *sb, struct chain_t *p_dir,
 		return -ENOENT;
 
 	init_file_entry(file_ep, type);
-	buf_modify(sb, sector);
+	exfat_buf_modify(sb, sector);
 
 	init_strm_entry(strm_ep, flags, start_clu, size);
-	buf_modify(sb, sector);
+	exfat_buf_modify(sb, sector);
 
 	return 0;
 }
@@ -1058,7 +1058,7 @@ static s32 exfat_init_ext_entry(struct super_block *sb, struct chain_t *p_dir,
 		return -ENOENT;
 
 	file_ep->num_ext = (u8)(num_entries - 1);
-	buf_modify(sb, sector);
+	exfat_buf_modify(sb, sector);
 
 	strm_ep = (struct strm_dentry_t *)get_entry_in_dir(sb, p_dir, entry + 1,
 							   &sector);
@@ -1067,7 +1067,7 @@ static s32 exfat_init_ext_entry(struct super_block *sb, struct chain_t *p_dir,
 
 	strm_ep->name_len = p_uniname->name_len;
 	SET16_A(strm_ep->name_hash, p_uniname->name_hash);
-	buf_modify(sb, sector);
+	exfat_buf_modify(sb, sector);
 
 	for (i = 2; i < num_entries; i++) {
 		name_ep = (struct name_dentry_t *)get_entry_in_dir(sb, p_dir,
@@ -1077,7 +1077,7 @@ static s32 exfat_init_ext_entry(struct super_block *sb, struct chain_t *p_dir,
 			return -ENOENT;
 
 		init_name_entry(name_ep, uniname);
-		buf_modify(sb, sector);
+		exfat_buf_modify(sb, sector);
 		uniname += 15;
 	}
 
@@ -1100,7 +1100,7 @@ static void exfat_delete_dir_entry(struct super_block *sb, struct chain_t *p_dir
 			return;
 
 		p_fs->fs_func->set_entry_type(ep, TYPE_DELETED);
-		buf_modify(sb, sector);
+		exfat_buf_modify(sb, sector);
 	}
 }
 
@@ -1118,7 +1118,7 @@ void update_dir_checksum(struct super_block *sb, struct chain_t *p_dir,
 	if (!file_ep)
 		return;
 
-	buf_lock(sb, sector);
+	exfat_buf_lock(sb, sector);
 
 	num_entries = (s32)file_ep->num_ext + 1;
 	chksum = calc_checksum_2byte((void *)file_ep, DENTRY_SIZE, 0,
@@ -1127,7 +1127,7 @@ void update_dir_checksum(struct super_block *sb, struct chain_t *p_dir,
 	for (i = 1; i < num_entries; i++) {
 		ep = get_entry_in_dir(sb, p_dir, entry + i, NULL);
 		if (!ep) {
-			buf_unlock(sb, sector);
+			exfat_buf_unlock(sb, sector);
 			return;
 		}
 
@@ -1136,8 +1136,8 @@ void update_dir_checksum(struct super_block *sb, struct chain_t *p_dir,
 	}
 
 	SET16_A(file_ep->checksum, chksum);
-	buf_modify(sb, sector);
-	buf_unlock(sb, sector);
+	exfat_buf_modify(sb, sector);
+	exfat_buf_unlock(sb, sector);
 }
 
 static s32 __write_partial_entries_in_entry_set(struct super_block *sb,
@@ -1161,7 +1161,7 @@ static s32 __write_partial_entries_in_entry_set(struct super_block *sb,
 		copy_entries = min_t(s32,
 				     remaining_byte_in_sector >> DENTRY_SIZE_BITS,
 				     num_entries);
-		buf = buf_getblk(sb, sec);
+		buf = exfat_buf_getblk(sb, sec);
 		if (!buf)
 			goto err_out;
 		pr_debug("es->buf %p buf_off %u\n", esbuf, buf_off);
@@ -1170,7 +1170,7 @@ static s32 __write_partial_entries_in_entry_set(struct super_block *sb,
 			 (unsigned long long)sec);
 		memcpy(buf + off, esbuf + buf_off,
 		       copy_entries << DENTRY_SIZE_BITS);
-		buf_modify(sb, sec);
+		exfat_buf_modify(sb, sec);
 		num_entries -= copy_entries;
 
 		if (num_entries) {
@@ -1295,7 +1295,7 @@ struct dentry_t *get_entry_in_dir(struct super_block *sb, struct chain_t *p_dir,
 	if (find_location(sb, p_dir, entry, &sec, &off) != 0)
 		return NULL;
 
-	buf = buf_getblk(sb, sec);
+	buf = exfat_buf_getblk(sb, sec);
 
 	if (!buf)
 		return NULL;
@@ -1359,7 +1359,7 @@ struct entry_set_cache_t *get_entry_set_in_dir(struct super_block *sb,
 	sec = byte_offset >> p_bd->sector_size_bits;
 	sec += START_SECTOR(clu);
 
-	buf = buf_getblk(sb, sec);
+	buf = exfat_buf_getblk(sb, sec);
 	if (!buf)
 		goto err_out;
 
@@ -1457,7 +1457,7 @@ struct entry_set_cache_t *get_entry_set_in_dir(struct super_block *sb,
 			} else {
 				sec++;
 			}
-			buf = buf_getblk(sb, sec);
+			buf = exfat_buf_getblk(sb, sec);
 			if (!buf)
 				goto err_out;
 			off = 0;
@@ -1649,7 +1649,7 @@ static s32 find_empty_entry(struct inode *inode, struct chain_t *p_dir, s32 num_
 				return -ENOENT;
 			p_fs->fs_func->set_entry_size(ep, size);
 			p_fs->fs_func->set_entry_flag(ep, p_dir->flags);
-			buf_modify(sb, sector);
+			exfat_buf_modify(sb, sector);
 
 			update_dir_checksum(sb, &fid->dir,
 					    fid->entry);
@@ -2341,17 +2341,17 @@ void remove_file(struct inode *inode, struct chain_t *p_dir, s32 entry)
 	if (!ep)
 		return;
 
-	buf_lock(sb, sector);
+	exfat_buf_lock(sb, sector);
 
-	/* buf_lock() before call count_ext_entries() */
+	/* exfat_buf_lock() before call count_ext_entries() */
 	num_entries = fs_func->count_ext_entries(sb, p_dir, entry, ep);
 	if (num_entries < 0) {
-		buf_unlock(sb, sector);
+		exfat_buf_unlock(sb, sector);
 		return;
 	}
 	num_entries++;
 
-	buf_unlock(sb, sector);
+	exfat_buf_unlock(sb, sector);
 
 	/* (1) update the directory entry */
 	fs_func->delete_dir_entry(sb, p_dir, entry, 0, num_entries);
@@ -2372,13 +2372,13 @@ s32 rename_file(struct inode *inode, struct chain_t *p_dir, s32 oldentry,
 	if (!epold)
 		return -ENOENT;
 
-	buf_lock(sb, sector_old);
+	exfat_buf_lock(sb, sector_old);
 
-	/* buf_lock() before call count_ext_entries() */
+	/* exfat_buf_lock() before call count_ext_entries() */
 	num_old_entries = fs_func->count_ext_entries(sb, p_dir, oldentry,
 						     epold);
 	if (num_old_entries < 0) {
-		buf_unlock(sb, sector_old);
+		exfat_buf_unlock(sb, sector_old);
 		return -ENOENT;
 	}
 	num_old_entries++;
@@ -2386,20 +2386,20 @@ s32 rename_file(struct inode *inode, struct chain_t *p_dir, s32 oldentry,
 	ret = get_num_entries_and_dos_name(sb, p_dir, p_uniname,
 					   &num_new_entries, &dos_name);
 	if (ret) {
-		buf_unlock(sb, sector_old);
+		exfat_buf_unlock(sb, sector_old);
 		return ret;
 	}
 
 	if (num_old_entries < num_new_entries) {
 		newentry = find_empty_entry(inode, p_dir, num_new_entries);
 		if (newentry < 0) {
-			buf_unlock(sb, sector_old);
+			exfat_buf_unlock(sb, sector_old);
 			return -ENOSPC;
 		}
 
 		epnew = get_entry_in_dir(sb, p_dir, newentry, &sector_new);
 		if (!epnew) {
-			buf_unlock(sb, sector_old);
+			exfat_buf_unlock(sb, sector_old);
 			return -ENOENT;
 		}
 
@@ -2410,23 +2410,23 @@ s32 rename_file(struct inode *inode, struct chain_t *p_dir, s32 oldentry,
 						ATTR_ARCHIVE);
 			fid->attr |= ATTR_ARCHIVE;
 		}
-		buf_modify(sb, sector_new);
-		buf_unlock(sb, sector_old);
+		exfat_buf_modify(sb, sector_new);
+		exfat_buf_unlock(sb, sector_old);
 
 		epold = get_entry_in_dir(sb, p_dir, oldentry + 1,
 					 &sector_old);
-		buf_lock(sb, sector_old);
+		exfat_buf_lock(sb, sector_old);
 		epnew = get_entry_in_dir(sb, p_dir, newentry + 1,
 					 &sector_new);
 
 		if (!epold || !epnew) {
-			buf_unlock(sb, sector_old);
+			exfat_buf_unlock(sb, sector_old);
 			return -ENOENT;
 		}
 
 		memcpy((void *)epnew, (void *)epold, DENTRY_SIZE);
-		buf_modify(sb, sector_new);
-		buf_unlock(sb, sector_old);
+		exfat_buf_modify(sb, sector_new);
+		exfat_buf_unlock(sb, sector_old);
 
 		ret = fs_func->init_ext_entry(sb, p_dir, newentry,
 					      num_new_entries, p_uniname,
@@ -2444,8 +2444,8 @@ s32 rename_file(struct inode *inode, struct chain_t *p_dir, s32 oldentry,
 						ATTR_ARCHIVE);
 			fid->attr |= ATTR_ARCHIVE;
 		}
-		buf_modify(sb, sector_old);
-		buf_unlock(sb, sector_old);
+		exfat_buf_modify(sb, sector_old);
+		exfat_buf_unlock(sb, sector_old);
 
 		ret = fs_func->init_ext_entry(sb, p_dir, oldentry,
 					      num_new_entries, p_uniname,
@@ -2481,13 +2481,13 @@ s32 move_file(struct inode *inode, struct chain_t *p_olddir, s32 oldentry,
 	    fs_func->get_entry_clu0(epmov) == p_newdir->dir)
 		return -EINVAL;
 
-	buf_lock(sb, sector_mov);
+	exfat_buf_lock(sb, sector_mov);
 
-	/* buf_lock() before call count_ext_entries() */
+	/* exfat_buf_lock() before call count_ext_entries() */
 	num_old_entries = fs_func->count_ext_entries(sb, p_olddir, oldentry,
 						     epmov);
 	if (num_old_entries < 0) {
-		buf_unlock(sb, sector_mov);
+		exfat_buf_unlock(sb, sector_mov);
 		return -ENOENT;
 	}
 	num_old_entries++;
@@ -2495,19 +2495,19 @@ s32 move_file(struct inode *inode, struct chain_t *p_olddir, s32 oldentry,
 	ret = get_num_entries_and_dos_name(sb, p_newdir, p_uniname,
 					   &num_new_entries, &dos_name);
 	if (ret) {
-		buf_unlock(sb, sector_mov);
+		exfat_buf_unlock(sb, sector_mov);
 		return ret;
 	}
 
 	newentry = find_empty_entry(inode, p_newdir, num_new_entries);
 	if (newentry < 0) {
-		buf_unlock(sb, sector_mov);
+		exfat_buf_unlock(sb, sector_mov);
 		return -ENOSPC;
 	}
 
 	epnew = get_entry_in_dir(sb, p_newdir, newentry, &sector_new);
 	if (!epnew) {
-		buf_unlock(sb, sector_mov);
+		exfat_buf_unlock(sb, sector_mov);
 		return -ENOENT;
 	}
 
@@ -2517,22 +2517,22 @@ s32 move_file(struct inode *inode, struct chain_t *p_olddir, s32 oldentry,
 					ATTR_ARCHIVE);
 		fid->attr |= ATTR_ARCHIVE;
 	}
-	buf_modify(sb, sector_new);
-	buf_unlock(sb, sector_mov);
+	exfat_buf_modify(sb, sector_new);
+	exfat_buf_unlock(sb, sector_mov);
 
 	epmov = get_entry_in_dir(sb, p_olddir, oldentry + 1,
 				 &sector_mov);
-	buf_lock(sb, sector_mov);
+	exfat_buf_lock(sb, sector_mov);
 	epnew = get_entry_in_dir(sb, p_newdir, newentry + 1,
 				 &sector_new);
 	if (!epmov || !epnew) {
-		buf_unlock(sb, sector_mov);
+		exfat_buf_unlock(sb, sector_mov);
 		return -ENOENT;
 	}
 
 	memcpy((void *)epnew, (void *)epmov, DENTRY_SIZE);
-	buf_modify(sb, sector_new);
-	buf_unlock(sb, sector_mov);
+	exfat_buf_modify(sb, sector_new);
+	exfat_buf_unlock(sb, sector_mov);
 
 	ret = fs_func->init_ext_entry(sb, p_newdir, newentry, num_new_entries,
 				      p_uniname, &dos_name);
diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index 7309053105d8..ea6161e8456a 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -355,7 +355,7 @@ static int ffsMountVol(struct super_block *sb)
 
 	mutex_lock(&z_mutex);
 
-	buf_init(sb);
+	exfat_buf_init(sb);
 
 	mutex_init(&p_fs->v_mutex);
 	p_fs->dev_ejected = 0;
@@ -458,7 +458,7 @@ static int ffsUmountVol(struct super_block *sb)
 	free_alloc_bitmap(sb);
 
 	FAT_release_all(sb);
-	buf_release_all(sb);
+	exfat_buf_release_all(sb);
 
 	/* close the block device */
 	exfat_bdev_close(sb);
@@ -468,7 +468,7 @@ static int ffsUmountVol(struct super_block *sb)
 		err = -EIO;
 	}
 
-	buf_shutdown(sb);
+	exfat_buf_shutdown(sb);
 
 	/* release the lock for file system critical section */
 	mutex_unlock(&p_fs->v_mutex);
@@ -1921,7 +1921,7 @@ static int ffsReadDir(struct inode *inode, struct dir_entry_t *dir_entry)
 			if ((type != TYPE_FILE) && (type != TYPE_DIR))
 				continue;
 
-			buf_lock(sb, sector);
+			exfat_buf_lock(sb, sector);
 			dir_entry->Attr = fs_func->get_entry_attr(ep);
 
 			fs_func->get_entry_time(ep, &tm, TM_CREATE);
@@ -1949,7 +1949,7 @@ static int ffsReadDir(struct inode *inode, struct dir_entry_t *dir_entry)
 			fs_func->get_uni_name_from_ext_entry(sb, &dir, dentry,
 							     uni_name.name);
 			nls_uniname_to_cstring(sb, dir_entry->Name, &uni_name);
-			buf_unlock(sb, sector);
+			exfat_buf_unlock(sb, sector);
 
 			ep = get_entry_in_dir(sb, &clu, i + 1, NULL);
 			if (!ep) {
@@ -3822,7 +3822,7 @@ static void exfat_debug_kill_sb(struct super_block *sb)
 			 */
 			mutex_lock(&p_fs->v_mutex);
 			FAT_release_all(sb);
-			buf_release_all(sb);
+			exfat_buf_release_all(sb);
 			mutex_unlock(&p_fs->v_mutex);
 
 			invalidate_bdev(bdev);
-- 
2.24.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
