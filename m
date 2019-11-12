Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EBA2F9BC3
	for <lists+driverdev-devel@lfdr.de>; Tue, 12 Nov 2019 22:14:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CE8B985FC0;
	Tue, 12 Nov 2019 21:14:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6470nejq4U1w; Tue, 12 Nov 2019 21:14:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D83CC85CB4;
	Tue, 12 Nov 2019 21:14:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 129AE1BF404
 for <devel@linuxdriverproject.org>; Tue, 12 Nov 2019 21:14:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0E44C87364
 for <devel@linuxdriverproject.org>; Tue, 12 Nov 2019 21:14:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5GVt6twG-pQA for <devel@linuxdriverproject.org>;
 Tue, 12 Nov 2019 21:14:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr1.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7DB3D8735E
 for <devel@driverdev.osuosl.org>; Tue, 12 Nov 2019 21:14:04 +0000 (UTC)
Received: from mr2.cc.vt.edu (mr2.cc.vt.edu
 [IPv6:2607:b400:92:8400:0:90:e077:bf22])
 by omr1.cc.vt.edu (8.14.4/8.14.4) with ESMTP id xACLE3E0012914
 for <devel@driverdev.osuosl.org>; Tue, 12 Nov 2019 16:14:03 -0500
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71])
 by mr2.cc.vt.edu (8.14.7/8.14.7) with ESMTP id xACLDwhH027136
 for <devel@driverdev.osuosl.org>; Tue, 12 Nov 2019 16:14:03 -0500
Received: by mail-qv1-f71.google.com with SMTP id b6so3750qvo.4
 for <devel@driverdev.osuosl.org>; Tue, 12 Nov 2019 13:14:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=/5dcXb5jV0vJyIQ9aOWwrA8j2Q6YPlHuGiZpqMvB+PQ=;
 b=nTC3rCN+rMtSPdaadQ7Ua6fD71zFDCxJa6G8VCbKSgrU7drVwABVpjDnwiltjQnAoq
 r3Q8dTcV95wM2FKUKW4HYXeyueFCXC6i8KJgSStKLstfrWoS4UACQXghCp8s20zJF7GH
 7bY4Y1R/C7aGsCHKnc/bCwEc7E9Hj0+yuRk7dAzqa4h1K1SS8dl63T8MyhiH6E2IUxoh
 V/agO3i6VgUHG6wrJcgPUpF/ba9jkm7JEI0cmF+UqCIKNPJf8MCHcaKbfjHLxbM23KaN
 Yr3XSqY4U1ekyMElegqmwgdf4uSNy20qBk5vtxpD3g7x/45xZyBLQbmSqtp6CWgaw/mI
 u3XQ==
X-Gm-Message-State: APjAAAXnF6RIEyVNPyKd3snqfHSH+daHyGfPW0ARRBDecX7yr+wQsArx
 zh8pAbqGHHqEGKb4zkjhEbcpAz7wGmMPy1en3lBkT24zEybJMrvL+AqdcVkOb22hBEA8Pu7Uj9C
 hWTAfXlTN72TUSOGRpE165pAXj1//7o7E
X-Received: by 2002:a37:4d02:: with SMTP id a2mr8614323qkb.355.1573593237924; 
 Tue, 12 Nov 2019 13:13:57 -0800 (PST)
X-Google-Smtp-Source: APXvYqxd9VZIS7nGDh383zn1WydTIXMz1P9L23XzuarGLHSGnABTjveASme+ArnfSLRboUJapDFYsw==
X-Received: by 2002:a37:4d02:: with SMTP id a2mr8614285qkb.355.1573593237396; 
 Tue, 12 Nov 2019 13:13:57 -0800 (PST)
Received: from turing-police.lan ([2601:5c0:c001:c9e1::359])
 by smtp.gmail.com with ESMTPSA id 130sm9674214qkd.33.2019.11.12.13.13.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Nov 2019 13:13:56 -0800 (PST)
From: Valdis Kletnieks <valdis.kletnieks@vt.edu>
X-Google-Original-From: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
To: 
Subject: [PATCH 12/12] staging: exfat: Clean up the namespace pollution part 8
Date: Tue, 12 Nov 2019 16:12:38 -0500
Message-Id: <20191112211238.156490-13-Valdis.Kletnieks@vt.edu>
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

Rename all the FAT_* functions to exfat_fat_*.

Signed-off-by: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
---
 drivers/staging/exfat/exfat.h       | 12 +++++-----
 drivers/staging/exfat/exfat_cache.c | 26 +++++++++++-----------
 drivers/staging/exfat/exfat_core.c  | 34 ++++++++++++++---------------
 drivers/staging/exfat/exfat_super.c | 30 ++++++++++++-------------
 4 files changed, 51 insertions(+), 51 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index 6a9cb6c68d28..2aac1e000977 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -739,12 +739,12 @@ void nls_cstring_to_uniname(struct super_block *sb,
 /* buffer cache management */
 void exfat_buf_init(struct super_block *sb);
 void exfat_buf_shutdown(struct super_block *sb);
-int FAT_read(struct super_block *sb, u32 loc, u32 *content);
-s32 FAT_write(struct super_block *sb, u32 loc, u32 content);
-u8 *FAT_getblk(struct super_block *sb, sector_t sec);
-void FAT_modify(struct super_block *sb, sector_t sec);
-void FAT_release_all(struct super_block *sb);
-void FAT_sync(struct super_block *sb);
+int exfat_fat_read(struct super_block *sb, u32 loc, u32 *content);
+s32 exfat_fat_write(struct super_block *sb, u32 loc, u32 content);
+u8 *exfat_fat_getblk(struct super_block *sb, sector_t sec);
+void exfat_fat_modify(struct super_block *sb, sector_t sec);
+void exfat_fat_release_all(struct super_block *sb);
+void exfat_fat_sync(struct super_block *sb);
 u8 *exfat_buf_getblk(struct super_block *sb, sector_t sec);
 void exfat_buf_modify(struct super_block *sb, sector_t sec);
 void exfat_buf_lock(struct super_block *sb, sector_t sec);
diff --git a/drivers/staging/exfat/exfat_cache.c b/drivers/staging/exfat/exfat_cache.c
index 835871b2a3d0..3fd5604058a9 100644
--- a/drivers/staging/exfat/exfat_cache.c
+++ b/drivers/staging/exfat/exfat_cache.c
@@ -193,7 +193,7 @@ void exfat_buf_shutdown(struct super_block *sb)
 {
 }
 
-static int __FAT_read(struct super_block *sb, u32 loc, u32 *content)
+static int __exfat_fat_read(struct super_block *sb, u32 loc, u32 *content)
 {
 	s32 off;
 	u32 _content;
@@ -206,7 +206,7 @@ static int __FAT_read(struct super_block *sb, u32 loc, u32 *content)
 		(loc >> (p_bd->sector_size_bits - 2));
 	off = (loc << 2) & p_bd->sector_size_mask;
 
-	fat_sector = FAT_getblk(sb, sec);
+	fat_sector = exfat_fat_getblk(sb, sec);
 	if (!fat_sector)
 		return -1;
 
@@ -226,18 +226,18 @@ static int __FAT_read(struct super_block *sb, u32 loc, u32 *content)
  * returns 0 on success
  *            -1 on error
  */
-int FAT_read(struct super_block *sb, u32 loc, u32 *content)
+int exfat_fat_read(struct super_block *sb, u32 loc, u32 *content)
 {
 	s32 ret;
 
 	mutex_lock(&f_mutex);
-	ret = __FAT_read(sb, loc, content);
+	ret = __exfat_fat_read(sb, loc, content);
 	mutex_unlock(&f_mutex);
 
 	return ret;
 }
 
-static s32 __FAT_write(struct super_block *sb, u32 loc, u32 content)
+static s32 __exfat_fat_write(struct super_block *sb, u32 loc, u32 content)
 {
 	s32 off;
 	sector_t sec;
@@ -249,7 +249,7 @@ static s32 __FAT_write(struct super_block *sb, u32 loc, u32 content)
 					 (p_bd->sector_size_bits - 2));
 	off = (loc << 2) & p_bd->sector_size_mask;
 
-	fat_sector = FAT_getblk(sb, sec);
+	fat_sector = exfat_fat_getblk(sb, sec);
 	if (!fat_sector)
 		return -1;
 
@@ -257,22 +257,22 @@ static s32 __FAT_write(struct super_block *sb, u32 loc, u32 content)
 
 	SET32_A(fat_entry, content);
 
-	FAT_modify(sb, sec);
+	exfat_fat_modify(sb, sec);
 	return 0;
 }
 
-int FAT_write(struct super_block *sb, u32 loc, u32 content)
+int exfat_fat_write(struct super_block *sb, u32 loc, u32 content)
 {
 	s32 ret;
 
 	mutex_lock(&f_mutex);
-	ret = __FAT_write(sb, loc, content);
+	ret = __exfat_fat_write(sb, loc, content);
 	mutex_unlock(&f_mutex);
 
 	return ret;
 }
 
-u8 *FAT_getblk(struct super_block *sb, sector_t sec)
+u8 *exfat_fat_getblk(struct super_block *sb, sector_t sec)
 {
 	struct buf_cache_t *bp;
 	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
@@ -307,7 +307,7 @@ u8 *FAT_getblk(struct super_block *sb, sector_t sec)
 	return bp->buf_bh->b_data;
 }
 
-void FAT_modify(struct super_block *sb, sector_t sec)
+void exfat_fat_modify(struct super_block *sb, sector_t sec)
 {
 	struct buf_cache_t *bp;
 
@@ -316,7 +316,7 @@ void FAT_modify(struct super_block *sb, sector_t sec)
 		sector_write(sb, sec, bp->buf_bh, 0);
 }
 
-void FAT_release_all(struct super_block *sb)
+void exfat_fat_release_all(struct super_block *sb)
 {
 	struct buf_cache_t *bp;
 	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
@@ -341,7 +341,7 @@ void FAT_release_all(struct super_block *sb)
 	mutex_unlock(&f_mutex);
 }
 
-void FAT_sync(struct super_block *sb)
+void exfat_fat_sync(struct super_block *sb)
 {
 	struct buf_cache_t *bp;
 	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
diff --git a/drivers/staging/exfat/exfat_core.c b/drivers/staging/exfat/exfat_core.c
index f60fb691e165..1638ed266f68 100644
--- a/drivers/staging/exfat/exfat_core.c
+++ b/drivers/staging/exfat/exfat_core.c
@@ -283,7 +283,7 @@ static s32 exfat_alloc_cluster(struct super_block *sb, s32 num_alloc,
 		num_clusters++;
 
 		if (p_chain->flags == 0x01) {
-			if (FAT_write(sb, new_clu, CLUSTER_32(~0)) < 0)
+			if (exfat_fat_write(sb, new_clu, CLUSTER_32(~0)) < 0)
 				return -EIO;
 		}
 
@@ -291,7 +291,7 @@ static s32 exfat_alloc_cluster(struct super_block *sb, s32 num_alloc,
 			p_chain->dir = new_clu;
 		} else {
 			if (p_chain->flags == 0x01) {
-				if (FAT_write(sb, last_clu, new_clu) < 0)
+				if (exfat_fat_write(sb, last_clu, new_clu) < 0)
 					return -EIO;
 			}
 		}
@@ -375,7 +375,7 @@ static void exfat_free_cluster(struct super_block *sb, struct chain_t *p_chain,
 			if (clr_alloc_bitmap(sb, clu - 2) != 0)
 				break;
 
-			if (FAT_read(sb, clu, &clu) == -1)
+			if (exfat_fat_read(sb, clu, &clu) == -1)
 				break;
 			num_clusters++;
 		} while ((clu != CLUSTER_32(0)) && (clu != CLUSTER_32(~0)));
@@ -395,7 +395,7 @@ static u32 find_last_cluster(struct super_block *sb, struct chain_t *p_chain)
 	if (p_chain->flags == 0x03) {
 		clu += p_chain->size - 1;
 	} else {
-		while ((FAT_read(sb, clu, &next) == 0) &&
+		while ((exfat_fat_read(sb, clu, &next) == 0) &&
 		       (next != CLUSTER_32(~0))) {
 			if (p_fs->dev_ejected)
 				break;
@@ -422,7 +422,7 @@ s32 count_num_clusters(struct super_block *sb, struct chain_t *p_chain)
 	} else {
 		for (i = 2; i < p_fs->num_clusters; i++) {
 			count++;
-			if (FAT_read(sb, clu, &clu) != 0)
+			if (exfat_fat_read(sb, clu, &clu) != 0)
 				return 0;
 			if (clu == CLUSTER_32(~0))
 				break;
@@ -461,12 +461,12 @@ void exfat_chain_cont_cluster(struct super_block *sb, u32 chain, s32 len)
 		return;
 
 	while (len > 1) {
-		if (FAT_write(sb, chain, chain + 1) < 0)
+		if (exfat_fat_write(sb, chain, chain + 1) < 0)
 			break;
 		chain++;
 		len--;
 	}
-	FAT_write(sb, chain, CLUSTER_32(~0));
+	exfat_fat_write(sb, chain, CLUSTER_32(~0));
 }
 
 /*
@@ -538,7 +538,7 @@ s32 load_alloc_bitmap(struct super_block *sb)
 			}
 		}
 
-		if (FAT_read(sb, clu.dir, &clu.dir) != 0)
+		if (exfat_fat_read(sb, clu.dir, &clu.dir) != 0)
 			return -EIO;
 	}
 
@@ -760,7 +760,7 @@ s32 load_upcase_table(struct super_block *sb)
 				break;
 			return 0;
 		}
-		if (FAT_read(sb, clu.dir, &clu.dir) != 0)
+		if (exfat_fat_read(sb, clu.dir, &clu.dir) != 0)
 			return -EIO;
 	}
 	/* load default upcase table */
@@ -1180,7 +1180,7 @@ static s32 __write_partial_entries_in_entry_set(struct super_block *sb,
 				if (es->alloc_flag == 0x03) {
 					clu++;
 				} else {
-					if (FAT_read(sb, clu, &clu) == -1)
+					if (exfat_fat_read(sb, clu, &clu) == -1)
 						goto err_out;
 				}
 				sec = START_SECTOR(clu);
@@ -1242,7 +1242,7 @@ static s32 _walk_fat_chain(struct super_block *sb, struct chain_t *p_dir,
 		cur_clu += clu_offset;
 	} else {
 		while (clu_offset > 0) {
-			if (FAT_read(sb, cur_clu, &cur_clu) == -1)
+			if (exfat_fat_read(sb, cur_clu, &cur_clu) == -1)
 				return -EIO;
 			clu_offset--;
 		}
@@ -1450,7 +1450,7 @@ struct entry_set_cache_t *get_entry_set_in_dir(struct super_block *sb,
 				if (es->alloc_flag == 0x03) {
 					clu++;
 				} else {
-					if (FAT_read(sb, clu, &clu) == -1)
+					if (exfat_fat_read(sb, clu, &clu) == -1)
 						goto err_out;
 				}
 				sec = START_SECTOR(clu);
@@ -1575,7 +1575,7 @@ static s32 search_deleted_or_unused_entry(struct super_block *sb,
 			else
 				clu.dir = CLUSTER_32(~0);
 		} else {
-			if (FAT_read(sb, clu.dir, &clu.dir) != 0)
+			if (exfat_fat_read(sb, clu.dir, &clu.dir) != 0)
 				return -1;
 		}
 	}
@@ -1625,7 +1625,7 @@ static s32 find_empty_entry(struct inode *inode, struct chain_t *p_dir, s32 num_
 			p_fs->hint_uentry.clu.flags = 0x01;
 		}
 		if (clu.flags == 0x01)
-			if (FAT_write(sb, last_clu, clu.dir) < 0)
+			if (exfat_fat_write(sb, last_clu, clu.dir) < 0)
 				return -EIO;
 
 		if (p_fs->hint_uentry.entry == -1) {
@@ -1822,7 +1822,7 @@ static s32 exfat_find_dir_entry(struct super_block *sb, struct chain_t *p_dir,
 			else
 				clu.dir = CLUSTER_32(~0);
 		} else {
-			if (FAT_read(sb, clu.dir, &clu.dir) != 0)
+			if (exfat_fat_read(sb, clu.dir, &clu.dir) != 0)
 				return -2;
 		}
 	}
@@ -1903,7 +1903,7 @@ s32 count_dos_name_entries(struct super_block *sb, struct chain_t *p_dir,
 			else
 				clu.dir = CLUSTER_32(~0);
 		} else {
-			if (FAT_read(sb, clu.dir, &clu.dir) != 0)
+			if (exfat_fat_read(sb, clu.dir, &clu.dir) != 0)
 				return -EIO;
 		}
 	}
@@ -1963,7 +1963,7 @@ bool is_dir_empty(struct super_block *sb, struct chain_t *p_dir)
 			else
 				clu.dir = CLUSTER_32(~0);
 		}
-		if (FAT_read(sb, clu.dir, &clu.dir) != 0)
+		if (exfat_fat_read(sb, clu.dir, &clu.dir) != 0)
 			break;
 	}
 
diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index ea6161e8456a..d2e1e7aa7404 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -457,7 +457,7 @@ static int ffsUmountVol(struct super_block *sb)
 	free_upcase_table(sb);
 	free_alloc_bitmap(sb);
 
-	FAT_release_all(sb);
+	exfat_fat_release_all(sb);
 	exfat_buf_release_all(sb);
 
 	/* close the block device */
@@ -722,8 +722,8 @@ static int ffsReadFile(struct inode *inode, struct file_id_t *fid, void *buffer,
 			}
 
 			while (clu_offset > 0) {
-				/* clu = FAT_read(sb, clu); */
-				if (FAT_read(sb, clu, &clu) == -1) {
+				/* clu = exfat_fat_read(sb, clu); */
+				if (exfat_fat_read(sb, clu, &clu) == -1) {
 					ret = -EIO;
 					goto out;
 				}
@@ -868,8 +868,8 @@ static int ffsWriteFile(struct inode *inode, struct file_id_t *fid,
 
 			while ((clu_offset > 0) && (clu != CLUSTER_32(~0))) {
 				last_clu = clu;
-				/* clu = FAT_read(sb, clu); */
-				if (FAT_read(sb, clu, &clu) == -1) {
+				/* clu = exfat_fat_read(sb, clu); */
+				if (exfat_fat_read(sb, clu, &clu) == -1) {
 					ret = -EIO;
 					goto out;
 				}
@@ -911,7 +911,7 @@ static int ffsWriteFile(struct inode *inode, struct file_id_t *fid,
 					modified = true;
 				}
 				if (new_clu.flags == 0x01)
-					FAT_write(sb, last_clu, new_clu.dir);
+					exfat_fat_write(sb, last_clu, new_clu.dir);
 			}
 
 			num_clusters += num_alloced;
@@ -1081,7 +1081,7 @@ static int ffsTruncateFile(struct inode *inode, u64 old_size, u64 new_size)
 		} else {
 			while (num_clusters > 0) {
 				last_clu = clu.dir;
-				if (FAT_read(sb, clu.dir, &clu.dir) == -1) {
+				if (exfat_fat_read(sb, clu.dir, &clu.dir) == -1) {
 					ret = -EIO;
 					goto out;
 				}
@@ -1123,7 +1123,7 @@ static int ffsTruncateFile(struct inode *inode, u64 old_size, u64 new_size)
 	/* (2) cut off from the FAT chain */
 	if (last_clu != CLUSTER_32(0)) {
 		if (fid->flags == 0x01)
-			FAT_write(sb, last_clu, CLUSTER_32(~0));
+			exfat_fat_write(sb, last_clu, CLUSTER_32(~0));
 	}
 
 	/* (3) free the clusters */
@@ -1687,7 +1687,7 @@ static int ffsMapCluster(struct inode *inode, s32 clu_offset, u32 *clu)
 
 		while ((clu_offset > 0) && (*clu != CLUSTER_32(~0))) {
 			last_clu = *clu;
-			if (FAT_read(sb, *clu, clu) == -1) {
+			if (exfat_fat_read(sb, *clu, clu) == -1) {
 				ret = -EIO;
 				goto out;
 			}
@@ -1727,7 +1727,7 @@ static int ffsMapCluster(struct inode *inode, s32 clu_offset, u32 *clu)
 				modified = true;
 			}
 			if (new_clu.flags == 0x01)
-				FAT_write(sb, last_clu, new_clu.dir);
+				exfat_fat_write(sb, last_clu, new_clu.dir);
 		}
 
 		num_clusters += num_alloced;
@@ -1888,8 +1888,8 @@ static int ffsReadDir(struct inode *inode, struct dir_entry_t *dir_entry)
 			}
 
 			while (clu_offset > 0) {
-				/* clu.dir = FAT_read(sb, clu.dir); */
-				if (FAT_read(sb, clu.dir, &clu.dir) == -1) {
+				/* clu.dir = exfat_fat_read(sb, clu.dir); */
+				if (exfat_fat_read(sb, clu.dir, &clu.dir) == -1) {
 					ret = -EIO;
 					goto out;
 				}
@@ -1983,8 +1983,8 @@ static int ffsReadDir(struct inode *inode, struct dir_entry_t *dir_entry)
 			else
 				clu.dir = CLUSTER_32(~0);
 		} else {
-			/* clu.dir = FAT_read(sb, clu.dir); */
-			if (FAT_read(sb, clu.dir, &clu.dir) == -1) {
+			/* clu.dir = exfat_fat_read(sb, clu.dir); */
+			if (exfat_fat_read(sb, clu.dir, &clu.dir) == -1) {
 				ret = -EIO;
 				goto out;
 			}
@@ -3821,7 +3821,7 @@ static void exfat_debug_kill_sb(struct super_block *sb)
 			 * dirty. We use this to simulate device removal.
 			 */
 			mutex_lock(&p_fs->v_mutex);
-			FAT_release_all(sb);
+			exfat_fat_release_all(sb);
 			exfat_buf_release_all(sb);
 			mutex_unlock(&p_fs->v_mutex);
 
-- 
2.24.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
