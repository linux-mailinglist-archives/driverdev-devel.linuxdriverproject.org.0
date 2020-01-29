Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D3E1414CEE6
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Jan 2020 18:00:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7E44F21FF6;
	Wed, 29 Jan 2020 17:00:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AQzHuBxTkDWV; Wed, 29 Jan 2020 17:00:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 947F521FFB;
	Wed, 29 Jan 2020 17:00:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 686541BF215
 for <devel@linuxdriverproject.org>; Wed, 29 Jan 2020 17:00:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6430C85F97
 for <devel@linuxdriverproject.org>; Wed, 29 Jan 2020 17:00:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Tlm_4ntZ9fu5 for <devel@linuxdriverproject.org>;
 Wed, 29 Jan 2020 17:00:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3C5C8835EE
 for <devel@driverdev.osuosl.org>; Wed, 29 Jan 2020 17:00:15 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id q127so74093pga.4
 for <devel@driverdev.osuosl.org>; Wed, 29 Jan 2020 09:00:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=E1l6gHXvQ49XV0SVd1Lq576TcvFQ2pyxU0yLbNr7bQg=;
 b=HP+tU1IyiUVjnOJ7B79aKEO6ztkpxtzfvK5qMtNtjG1+yKXi3m88SECzlPwDDdiZEE
 diBgW227eiuJXnTCfp532XhTfwdmuTnlH81TFodIjdtzqmoM5h6KN3rnNY/GZRpViH7n
 CDUeGFTj08OTdTztWiRlHY5dX6Ti77cbR+T90C/RQfl3qgamINwICZziEPEUx8mIKVrx
 aSbLwmTP42e92L2mSkIAVLON7HJWJ/+hO3AMajFoCevXucIok4K638731DR7+eu4K6bn
 slIj+ZmfbdQ7tkzGkCnqvfVK7D651qVD5nwgnYn6iL986sdSZhHzEAIm2UXwmVFHCruv
 oOKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=E1l6gHXvQ49XV0SVd1Lq576TcvFQ2pyxU0yLbNr7bQg=;
 b=gAokNcjwc8IAAX+VvzGoZEA911WSM4Phv4a58cn5KdX+FBJFv9iLdpoT3vuk/ejWeF
 UD/pbBcUNyg/OWo/oC+NxWGHaMqs/P/NEfXXphZFkfhM3dWd8MxZQ6wRClJyeHYv3Tfq
 UKU2JqnNgWBDy5njFh/HqN538MaOTTkM9/pqKw7Iwz2WfVXNnkWLUVs94hIbz2R7iGx3
 2GWe1Y68svTZ3Hk/S55lQJJ3/yb8IHZz6NM1rnrjbPh5GguiDgavtgr7Kd2LpjpcFnm3
 6rvTomPdM3ubJJIwAIW3sxQtz3UXwXmod2JAoZWXwq5V0A73wap2hVuKa3ZbTNjnJ34S
 2tdA==
X-Gm-Message-State: APjAAAVHC0TaZN9TdXAUDD5ktr0EtMcFRM6Ohc5wXuwu9CFaPDxgzo8v
 +xadyZ9yvptX3dPTUC31dS0=
X-Google-Smtp-Source: APXvYqyThZCHWdE0CW86oGgw+CrujFSrifKNQZdrUJVMNMmM1WKWgwv4YL2alEpTIW7CWy1KJT/HmQ==
X-Received: by 2002:aa7:92c2:: with SMTP id k2mr487123pfa.93.1580317214793;
 Wed, 29 Jan 2020 09:00:14 -0800 (PST)
Received: from localhost.localdomain ([2405:205:c92f:3ccd:49ce:a9e3:28b5:cf94])
 by smtp.gmail.com with ESMTPSA id f8sm3223610pfn.2.2020.01.29.09.00.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Jan 2020 09:00:14 -0800 (PST)
From: Pragat Pandya <pragat.pandya@gmail.com>
To: gregkh@linuxfoundation.org,
	valdis.kletnieks@vt.edu
Subject: [PATCH 15/19] staging: exfat: Rename variable 'Attr' to 'attr'
Date: Wed, 29 Jan 2020 22:28:28 +0530
Message-Id: <20200129165832.10574-16-pragat.pandya@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200129165832.10574-1-pragat.pandya@gmail.com>
References: <20200129165832.10574-1-pragat.pandya@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 skhan@linuxfoundation.org, linux-fsdevel@vger.kernel.org,
 linux-kernel-mentees@lists.linuxfoundation.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix checkpatch warning: Avoid CamelCase.
Change all occurrences of identifier "Attr" to "attr"

Signed-off-by: Pragat Pandya <pragat.pandya@gmail.com>
---
 drivers/staging/exfat/exfat.h       |  2 +-
 drivers/staging/exfat/exfat_super.c | 24 ++++++++++++------------
 2 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index 099730e5b9f1..f1fa4d19a2e2 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -275,7 +275,7 @@ struct dir_entry_t {
 	/* used only for FAT12/16/32, not used for exFAT */
 	char short_name[DOS_NAME_LENGTH + 2];
 
-	u32 Attr;
+	u32 attr;
 	u64 Size;
 	u32 NumSubdirs;
 	struct date_time_t CreateTimestamp;
diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index e155079722c8..73d116b8d769 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -1457,7 +1457,7 @@ static int ffsReadStat(struct inode *inode, struct dir_entry_t *info)
 	if (is_dir) {
 		if ((fid->dir.dir == p_fs->root_dir) &&
 		    (fid->entry == -1)) {
-			info->Attr = ATTR_SUBDIR;
+			info->attr = ATTR_SUBDIR;
 			memset((char *)&info->CreateTimestamp, 0,
 			       sizeof(struct date_time_t));
 			memset((char *)&info->ModifyTimestamp, 0,
@@ -1502,7 +1502,7 @@ static int ffsReadStat(struct inode *inode, struct dir_entry_t *info)
 	ep2 = ep + 1;
 
 	/* set FILE_INFO structure using the acquired struct dentry_t */
-	info->Attr = p_fs->fs_func->get_entry_attr(ep);
+	info->attr = p_fs->fs_func->get_entry_attr(ep);
 
 	p_fs->fs_func->get_entry_time(ep, &tm, TM_CREATE);
 	info->CreateTimestamp.year = tm.year;
@@ -1602,7 +1602,7 @@ static int ffsWriteStat(struct inode *inode, struct dir_entry_t *info)
 	}
 	ep2 = ep + 1;
 
-	p_fs->fs_func->set_entry_attr(ep, info->Attr);
+	p_fs->fs_func->set_entry_attr(ep, info->attr);
 
 	/* set FILE_INFO structure using the acquired struct dentry_t */
 	tm.sec  = info->CreateTimestamp.second;
@@ -1922,7 +1922,7 @@ static int ffsReadDir(struct inode *inode, struct dir_entry_t *dir_entry)
 				continue;
 
 			exfat_buf_lock(sb, sector);
-			dir_entry->Attr = fs_func->get_entry_attr(ep);
+			dir_entry->attr = fs_func->get_entry_attr(ep);
 
 			fs_func->get_entry_time(ep, &tm, TM_CREATE);
 			dir_entry->CreateTimestamp.year = tm.year;
@@ -2150,7 +2150,7 @@ static int exfat_readdir(struct file *filp, struct dir_context *ctx)
 	}
 
 	if (!dir_emit(ctx, de.name, strlen(de.name), inum,
-		      (de.Attr & ATTR_SUBDIR) ? DT_DIR : DT_REG))
+		      (de.attr & ATTR_SUBDIR) ? DT_DIR : DT_REG))
 		goto out;
 
 	ctx->pos = cpos;
@@ -3159,25 +3159,25 @@ static int exfat_fill_inode(struct inode *inode, struct file_id_t *fid)
 	INC_IVERSION(inode);
 	inode->i_generation = prandom_u32();
 
-	if (info.Attr & ATTR_SUBDIR) { /* directory */
+	if (info.attr & ATTR_SUBDIR) { /* directory */
 		inode->i_generation &= ~1;
-		inode->i_mode = exfat_make_mode(sbi, info.Attr, 0777);
+		inode->i_mode = exfat_make_mode(sbi, info.attr, 0777);
 		inode->i_op = &exfat_dir_inode_operations;
 		inode->i_fop = &exfat_dir_operations;
 
 		i_size_write(inode, info.Size);
 		EXFAT_I(inode)->mmu_private = i_size_read(inode);
 		set_nlink(inode, info.NumSubdirs);
-	} else if (info.Attr & ATTR_SYMLINK) { /* symbolic link */
+	} else if (info.attr & ATTR_SYMLINK) { /* symbolic link */
 		inode->i_generation |= 1;
-		inode->i_mode = exfat_make_mode(sbi, info.Attr, 0777);
+		inode->i_mode = exfat_make_mode(sbi, info.attr, 0777);
 		inode->i_op = &exfat_symlink_inode_operations;
 
 		i_size_write(inode, info.Size);
 		EXFAT_I(inode)->mmu_private = i_size_read(inode);
 	} else { /* regular file */
 		inode->i_generation |= 1;
-		inode->i_mode = exfat_make_mode(sbi, info.Attr, 0777);
+		inode->i_mode = exfat_make_mode(sbi, info.attr, 0777);
 		inode->i_op = &exfat_file_inode_operations;
 		inode->i_fop = &exfat_file_operations;
 		inode->i_mapping->a_ops = &exfat_aops;
@@ -3186,7 +3186,7 @@ static int exfat_fill_inode(struct inode *inode, struct file_id_t *fid)
 		i_size_write(inode, info.Size);
 		EXFAT_I(inode)->mmu_private = i_size_read(inode);
 	}
-	exfat_save_attr(inode, info.Attr);
+	exfat_save_attr(inode, info.attr);
 
 	inode->i_blocks = ((i_size_read(inode) + (p_fs->cluster_size - 1))
 				& ~((loff_t)p_fs->cluster_size - 1)) >> 9;
@@ -3259,7 +3259,7 @@ static int exfat_write_inode(struct inode *inode, struct writeback_control *wbc)
 	if (inode->i_ino == EXFAT_ROOT_INO)
 		return 0;
 
-	info.Attr = exfat_make_attr(inode);
+	info.attr = exfat_make_attr(inode);
 	info.Size = i_size_read(inode);
 
 	exfat_time_unix2fat(&inode->i_mtime, &info.ModifyTimestamp);
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
