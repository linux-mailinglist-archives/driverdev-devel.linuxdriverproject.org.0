Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C78EE370E
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Oct 2019 17:54:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 10AD4869A5;
	Thu, 24 Oct 2019 15:54:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o-R3iYmniFwY; Thu, 24 Oct 2019 15:54:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5E35F8699B;
	Thu, 24 Oct 2019 15:54:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E0A681BF297
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 15:54:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DD31B86980
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 15:54:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 90Gg8VapwD8N for <devel@linuxdriverproject.org>;
 Thu, 24 Oct 2019 15:54:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr2.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2146B8697C
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 15:54:09 +0000 (UTC)
Received: from mr1.cc.vt.edu (mr1.cc.vt.edu
 [IPv6:2607:b400:92:8300:0:31:1732:8aa4])
 by omr2.cc.vt.edu (8.14.4/8.14.4) with ESMTP id x9OFs8Li026478
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 11:54:08 -0400
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199])
 by mr1.cc.vt.edu (8.14.7/8.14.7) with ESMTP id x9OFs2nb022614
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 11:54:08 -0400
Received: by mail-qt1-f199.google.com with SMTP id v92so12547343qtd.18
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 08:54:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=tuGYBWrQiV3Prr8/Sny44VGd46bwM8gjFYJUSWIv6Nc=;
 b=VV/Cij9cGiT8VmxcqjiquBm8RwpNdq6/b7l8f+mr85cBzgFL0vaExw5E5N4L55brUm
 giGXkQBXG1Uzzc1xh3eXEMIh6NzNLP/jYu3PaYsAtZy6EGuc75sOs6xJwqqbZfB6YKtK
 CF6ZUUsHIjJcp4z0p2D6U+gud3cExgNNZl4PTKbL/sZoo9hbSbgQehMMxCHqkS5SRus2
 E66b3myYy2C4ENcBSmnFEEifa/XWfAAeXZlo+bfzQE7dL/xBAHyVpo+InW6eyOuOHOiS
 RT4M8xK6I5cTRhu0xImPWVFpus/+2YapO519ABrrebCGv6hUfsanZtlB3WoRz6wzKdWP
 NblQ==
X-Gm-Message-State: APjAAAXlaJYyzB3rWtslC0R+HHWVL6ZgkaHdUB7747jpChPlJXUUMMcp
 Bgul44mJnylqKglF+wu8/lfv0EbWUYrGKLuVxLr8F5Y9ofx+hgUFFtwbE0bohJbzA6tQzqhflgJ
 gx4xqoyMls2H/nZWOLKbPyLm6wy2pwd1K
X-Received: by 2002:a37:a50a:: with SMTP id o10mr14378911qke.115.1571932442684; 
 Thu, 24 Oct 2019 08:54:02 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyp9z4sJf1v688STQmfBLUgM0AOlYZiO7i697T5YoUg+IxbY7V8VeP0mdjKzMV0FQf6gc+SiA==
X-Received: by 2002:a37:a50a:: with SMTP id o10mr14378878qke.115.1571932442323; 
 Thu, 24 Oct 2019 08:54:02 -0700 (PDT)
Received: from turing-police.lan ([2601:5c0:c001:c9e1::359])
 by smtp.gmail.com with ESMTPSA id x133sm12693274qka.44.2019.10.24.08.54.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 08:54:01 -0700 (PDT)
From: Valdis Kletnieks <valdis.kletnieks@vt.edu>
X-Google-Original-From: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 01/15] staging: exfat: Clean up return codes - FFS_FULL
Date: Thu, 24 Oct 2019 11:53:12 -0400
Message-Id: <20191024155327.1095907-2-Valdis.Kletnieks@vt.edu>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191024155327.1095907-1-Valdis.Kletnieks@vt.edu>
References: <20191024155327.1095907-1-Valdis.Kletnieks@vt.edu>
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

Start cleaning up the odd scheme of return codes, starting with FFS_FULL

Signed-off-by: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
---
 drivers/staging/exfat/exfat.h       |  1 -
 drivers/staging/exfat/exfat_core.c  | 10 +++++-----
 drivers/staging/exfat/exfat_super.c | 16 ++++++++--------
 3 files changed, 13 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index 8738e41dd5a5..4aca4ae44a98 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -221,7 +221,6 @@ static inline u16 get_row_index(u16 i)
 #define FFS_PERMISSIONERR       11
 #define FFS_NOTOPENED           12
 #define FFS_MAXOPENED           13
-#define FFS_FULL                14
 #define FFS_EOF                 15
 #define FFS_DIRBUSY             16
 #define FFS_MEMORYERR           17
diff --git a/drivers/staging/exfat/exfat_core.c b/drivers/staging/exfat/exfat_core.c
index 7332e69fcbcd..af1ccd686e01 100644
--- a/drivers/staging/exfat/exfat_core.c
+++ b/drivers/staging/exfat/exfat_core.c
@@ -2369,7 +2369,7 @@ s32 create_dir(struct inode *inode, struct chain_t *p_dir,
 	/* find_empty_entry must be called before alloc_cluster */
 	dentry = find_empty_entry(inode, p_dir, num_entries);
 	if (dentry < 0)
-		return FFS_FULL;
+		return -ENOSPC;
 
 	clu.dir = CLUSTER_32(~0);
 	clu.size = 0;
@@ -2380,7 +2380,7 @@ s32 create_dir(struct inode *inode, struct chain_t *p_dir,
 	if (ret < 0)
 		return FFS_MEDIAERR;
 	else if (ret == 0)
-		return FFS_FULL;
+		return -ENOSPC;
 
 	ret = clear_cluster(sb, clu.dir);
 	if (ret != FFS_SUCCESS)
@@ -2472,7 +2472,7 @@ s32 create_file(struct inode *inode, struct chain_t *p_dir,
 	/* find_empty_entry must be called before alloc_cluster() */
 	dentry = find_empty_entry(inode, p_dir, num_entries);
 	if (dentry < 0)
-		return FFS_FULL;
+		return -ENOSPC;
 
 	/* (1) update the directory entry */
 	/* fill the dos name directory entry information of the created file.
@@ -2571,7 +2571,7 @@ s32 rename_file(struct inode *inode, struct chain_t *p_dir, s32 oldentry,
 		newentry = find_empty_entry(inode, p_dir, num_new_entries);
 		if (newentry < 0) {
 			buf_unlock(sb, sector_old);
-			return FFS_FULL;
+			return -ENOSPC;
 		}
 
 		epnew = get_entry_in_dir(sb, p_dir, newentry, &sector_new);
@@ -2682,7 +2682,7 @@ s32 move_file(struct inode *inode, struct chain_t *p_olddir, s32 oldentry,
 	newentry = find_empty_entry(inode, p_newdir, num_new_entries);
 	if (newentry < 0) {
 		buf_unlock(sb, sector_mov);
-		return FFS_FULL;
+		return -ENOSPC;
 	}
 
 	epnew = get_entry_in_dir(sb, p_newdir, newentry, &sector_new);
diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index 0264be92c2be..273fe2310e76 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -1045,7 +1045,7 @@ static int ffsWriteFile(struct inode *inode, struct file_id_t *fid,
 		*wcount = write_bytes;
 
 	if (num_alloced == 0)
-		ret = FFS_FULL;
+		ret = -ENOSPC;
 
 	else if (p_fs->dev_ejected)
 		ret = FFS_MEDIAERR;
@@ -1801,7 +1801,7 @@ static int ffsMapCluster(struct inode *inode, s32 clu_offset, u32 *clu)
 			ret = FFS_MEDIAERR;
 			goto out;
 		} else if (num_alloced == 0) {
-			ret = FFS_FULL;
+			ret = -ENOSPC;
 			goto out;
 		}
 
@@ -2360,7 +2360,7 @@ static int exfat_create(struct inode *dir, struct dentry *dentry, umode_t mode,
 			err = -EINVAL;
 		else if (err == FFS_FILEEXIST)
 			err = -EEXIST;
-		else if (err == FFS_FULL)
+		else if (err == -ENOSPC)
 			err = -ENOSPC;
 		else if (err == FFS_NAMETOOLONG)
 			err = -ENAMETOOLONG;
@@ -2571,7 +2571,7 @@ static int exfat_symlink(struct inode *dir, struct dentry *dentry,
 			err = -EINVAL;
 		else if (err == FFS_FILEEXIST)
 			err = -EEXIST;
-		else if (err == FFS_FULL)
+		else if (err == -ENOSPC)
 			err = -ENOSPC;
 		else
 			err = -EIO;
@@ -2583,7 +2583,7 @@ static int exfat_symlink(struct inode *dir, struct dentry *dentry,
 	if (err) {
 		ffsRemoveFile(dir, &fid);
 
-		if (err == FFS_FULL)
+		if (err == -ENOSPC)
 			err = -ENOSPC;
 		else
 			err = -EIO;
@@ -2641,7 +2641,7 @@ static int exfat_mkdir(struct inode *dir, struct dentry *dentry, umode_t mode)
 			err = -EINVAL;
 		else if (err == FFS_FILEEXIST)
 			err = -EEXIST;
-		else if (err == FFS_FULL)
+		else if (err == -ENOSPC)
 			err = -ENOSPC;
 		else if (err == FFS_NAMETOOLONG)
 			err = -ENAMETOOLONG;
@@ -2754,7 +2754,7 @@ static int exfat_rename(struct inode *old_dir, struct dentry *old_dentry,
 			err = -EEXIST;
 		else if (err == FFS_NOTFOUND)
 			err = -ENOENT;
-		else if (err == FFS_FULL)
+		else if (err == -ENOSPC)
 			err = -ENOSPC;
 		else
 			err = -EIO;
@@ -3109,7 +3109,7 @@ static int exfat_bmap(struct inode *inode, sector_t sector, sector_t *phys,
 	err = ffsMapCluster(inode, clu_offset, &cluster);
 
 	if (err) {
-		if (err == FFS_FULL)
+		if (err == -ENOSPC)
 			return -ENOSPC;
 		else
 			return -EIO;
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
