Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F5A9F86B1
	for <lists+driverdev-devel@lfdr.de>; Tue, 12 Nov 2019 03:10:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 12B7F204A4;
	Tue, 12 Nov 2019 02:10:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aklnGaodzxjd; Tue, 12 Nov 2019 02:10:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7F38920414;
	Tue, 12 Nov 2019 02:10:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6B9C61BF37A
 for <devel@linuxdriverproject.org>; Tue, 12 Nov 2019 02:10:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6808E86B9E
 for <devel@linuxdriverproject.org>; Tue, 12 Nov 2019 02:10:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xd8HqYAD28aa for <devel@linuxdriverproject.org>;
 Tue, 12 Nov 2019 02:10:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr2.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B273386BDC
 for <devel@driverdev.osuosl.org>; Tue, 12 Nov 2019 02:10:44 +0000 (UTC)
Received: from mr4.cc.vt.edu (mr4.cc.vt.edu
 [IPv6:2607:b400:92:8300:0:7b:e2b1:6a29])
 by omr2.cc.vt.edu (8.14.4/8.14.4) with ESMTP id xAC2Ahoe028396
 for <devel@driverdev.osuosl.org>; Mon, 11 Nov 2019 21:10:43 -0500
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71])
 by mr4.cc.vt.edu (8.14.7/8.14.7) with ESMTP id xAC2AcYa015932
 for <devel@driverdev.osuosl.org>; Mon, 11 Nov 2019 21:10:43 -0500
Received: by mail-qv1-f71.google.com with SMTP id w7so7540994qvs.15
 for <devel@driverdev.osuosl.org>; Mon, 11 Nov 2019 18:10:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=tfeIwuZlARKtMiR++Mo+2NVCZ5X6OlyhQI7+5iHKuUE=;
 b=mnEoV2lY5vTjNhefYYlMtXWRs0qkTnSYJZScvhPWAjrZkdqJXYF2EXG3hhKfEquFjN
 8tcD8r2s4FoBKJacFxHaWdkVg5lDIqs6Lo1KGtLhNIbVM5FMCbPyywIHBCGROrsphzws
 1ZYK0WH5pd0GbLaXYj/S0sKaAnxn7GeahncBDr6EGfE5HKx8ynlD+Ck/j6fj10bdk/2/
 UBQm7BA8WzF/9TanzFqPoX+pYDHWwyzefp2pauP0dbHwfn0EeXjulFtWQspBNyBVxLVX
 pCpReE9A+jmap8vo12Dsqr8pe3eekOGA1DE73TdMS+vEqq5XFsOWzUFUsHYYvxjc6O/u
 +r9w==
X-Gm-Message-State: APjAAAUJNlKVhnzYO0VG5dBcHDLKyWKElv6lmgvhhVyw1HbUK5J06W7k
 duXBlBgKayuzGXJuSnIEt5SMGks16FY1dy9CweSrmr2PnvCcZpnYPN6f1T2xj1VBM3UB2Iv1L0k
 oMx/Uu9M55Ml2mvw6lJ6eSpXmJVF+Y/HH
X-Received: by 2002:a0c:b0fa:: with SMTP id p55mr27418875qvc.239.1573524638271; 
 Mon, 11 Nov 2019 18:10:38 -0800 (PST)
X-Google-Smtp-Source: APXvYqyCFLoJqfkH/sXAJGngYRG4es7WvFgJ3x610vhZKQLhmcYHBo59mmlbtZ4IsB4csFlxLNji5g==
X-Received: by 2002:a0c:b0fa:: with SMTP id p55mr27418857qvc.239.1573524637930; 
 Mon, 11 Nov 2019 18:10:37 -0800 (PST)
Received: from turing-police.lan ([2601:5c0:c001:c9e1::359])
 by smtp.gmail.com with ESMTPSA id o195sm8004767qke.35.2019.11.11.18.10.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Nov 2019 18:10:36 -0800 (PST)
From: Valdis Kletnieks <valdis.kletnieks@vt.edu>
X-Google-Original-From: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
To: gregkh@linuxfoundation.org
Subject: [PATCH v3 5/9] staging: exfat: Clean up return codes - FFS_ERROR
Date: Mon, 11 Nov 2019 21:09:53 -0500
Message-Id: <20191112021000.42091-6-Valdis.Kletnieks@vt.edu>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191112021000.42091-1-Valdis.Kletnieks@vt.edu>
References: <20191112021000.42091-1-Valdis.Kletnieks@vt.edu>
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
Cc: linux-fsdevel@vger.kernel.org, devel@driverdev.osuosl.org,
 Valdis Kletnieks <valdis.kletnieks@vt.edu>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Convert FFS_ERROR to -EINVAL

Signed-off-by: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
---
 drivers/staging/exfat/exfat.h       |  1 -
 drivers/staging/exfat/exfat_core.c  | 10 +++++-----
 drivers/staging/exfat/exfat_super.c | 20 ++++++++++----------
 3 files changed, 15 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index 7a817405c624..443fafe1d89d 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -216,7 +216,6 @@ static inline u16 get_row_index(u16 i)
 #define FFS_SEMAPHOREERR        6
 #define FFS_NOTOPENED           12
 #define FFS_MAXOPENED           13
-#define FFS_ERROR               19
 
 #define NUM_UPCASE              2918
 
diff --git a/drivers/staging/exfat/exfat_core.c b/drivers/staging/exfat/exfat_core.c
index 2f6e9d724625..ffcad6867ecb 100644
--- a/drivers/staging/exfat/exfat_core.c
+++ b/drivers/staging/exfat/exfat_core.c
@@ -699,7 +699,7 @@ void sync_alloc_bitmap(struct super_block *sb)
 static s32 __load_upcase_table(struct super_block *sb, sector_t sector,
 			       u32 num_sectors, u32 utbl_checksum)
 {
-	int i, ret = FFS_ERROR;
+	int i, ret = -EINVAL;
 	u32 j;
 	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
 	struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
@@ -774,7 +774,7 @@ static s32 __load_upcase_table(struct super_block *sb, sector_t sector,
 			brelse(tmp_bh);
 		return FFS_SUCCESS;
 	}
-	ret = FFS_ERROR;
+	ret = -EINVAL;
 error:
 	if (tmp_bh)
 		brelse(tmp_bh);
@@ -784,7 +784,7 @@ static s32 __load_upcase_table(struct super_block *sb, sector_t sector,
 
 static s32 __load_default_upcase_table(struct super_block *sb)
 {
-	int i, ret = FFS_ERROR;
+	int i, ret = -EINVAL;
 	u32 j;
 	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
 
@@ -1906,7 +1906,7 @@ static s32 __write_partial_entries_in_entry_set(struct super_block *sb,
 	return FFS_SUCCESS;
 err_out:
 	pr_debug("%s failed\n", __func__);
-	return FFS_ERROR;
+	return -EINVAL;
 }
 
 /* write back all entries in entry set */
@@ -1931,7 +1931,7 @@ s32 write_partial_entries_in_entry_set(struct super_block *sb,
 
 	/* vaidity check */
 	if (ep + count  > ((struct dentry_t *)&es->__buf) + es->num_entries)
-		return FFS_ERROR;
+		return -EINVAL;
 
 	dir.dir = GET_CLUSTER_FROM_SECTOR(es->sector);
 	dir.flags = es->alloc_flag;
diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index dd6530aef63a..daded767182a 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -498,7 +498,7 @@ static int ffsGetVolInfo(struct super_block *sb, struct vol_info_t *info)
 
 	/* check the validity of pointer parameters */
 	if (!info)
-		return FFS_ERROR;
+		return -EINVAL;
 
 	/* acquire the lock for file system critical section */
 	mutex_lock(&p_fs->v_mutex);
@@ -561,7 +561,7 @@ static int ffsLookupFile(struct inode *inode, char *path, struct file_id_t *fid)
 
 	/* check the validity of pointer parameters */
 	if (!fid || !path || (*path == '\0'))
-		return FFS_ERROR;
+		return -EINVAL;
 
 	/* acquire the lock for file system critical section */
 	mutex_lock(&p_fs->v_mutex);
@@ -654,7 +654,7 @@ static int ffsCreateFile(struct inode *inode, char *path, u8 mode,
 
 	/* check the validity of pointer parameters */
 	if (!fid || !path || (*path == '\0'))
-		return FFS_ERROR;
+		return -EINVAL;
 
 	/* acquire the lock for file system critical section */
 	mutex_lock(&p_fs->v_mutex);
@@ -703,7 +703,7 @@ static int ffsReadFile(struct inode *inode, struct file_id_t *fid, void *buffer,
 
 	/* check the validity of pointer parameters */
 	if (!buffer)
-		return FFS_ERROR;
+		return -EINVAL;
 
 	/* acquire the lock for file system critical section */
 	mutex_lock(&p_fs->v_mutex);
@@ -835,7 +835,7 @@ static int ffsWriteFile(struct inode *inode, struct file_id_t *fid,
 
 	/* check the validity of pointer parameters */
 	if (!buffer)
-		return FFS_ERROR;
+		return -EINVAL;
 
 	/* acquire the lock for file system critical section */
 	mutex_lock(&p_fs->v_mutex);
@@ -1241,7 +1241,7 @@ static int ffsMoveFile(struct inode *old_parent_inode, struct file_id_t *fid,
 
 	/* check the validity of pointer parameters */
 	if (!new_path || (*new_path == '\0'))
-		return FFS_ERROR;
+		return -EINVAL;
 
 	/* acquire the lock for file system critical section */
 	mutex_lock(&p_fs->v_mutex);
@@ -1464,7 +1464,7 @@ static int ffsSetAttr(struct inode *inode, u32 attr)
 		if (p_fs->dev_ejected)
 			ret = -EIO;
 		else
-			ret = FFS_ERROR;
+			ret = -EINVAL;
 
 		if (p_fs->vol_type == EXFAT)
 			release_entry_set(es);
@@ -1756,7 +1756,7 @@ static int ffsMapCluster(struct inode *inode, s32 clu_offset, u32 *clu)
 
 	/* check the validity of pointer parameters */
 	if (!clu)
-		return FFS_ERROR;
+		return -EINVAL;
 
 	/* acquire the lock for file system critical section */
 	mutex_lock(&p_fs->v_mutex);
@@ -1908,7 +1908,7 @@ static int ffsCreateDir(struct inode *inode, char *path, struct file_id_t *fid)
 
 	/* check the validity of pointer parameters */
 	if (!fid || !path || (*path == '\0'))
-		return FFS_ERROR;
+		return -EINVAL;
 
 	/* acquire the lock for file system critical section */
 	mutex_lock(&p_fs->v_mutex);
@@ -1954,7 +1954,7 @@ static int ffsReadDir(struct inode *inode, struct dir_entry_t *dir_entry)
 
 	/* check the validity of pointer parameters */
 	if (!dir_entry)
-		return FFS_ERROR;
+		return -EINVAL;
 
 	/* check if the given file ID is opened */
 	if (fid->type != TYPE_DIR)
-- 
2.24.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
