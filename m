Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 83058C8C8E
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Oct 2019 17:17:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8709D86D08;
	Wed,  2 Oct 2019 15:17:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q+LpOASdbNq6; Wed,  2 Oct 2019 15:17:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 85F3D811CE;
	Wed,  2 Oct 2019 15:17:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 494A51BF3CD
 for <devel@linuxdriverproject.org>; Wed,  2 Oct 2019 15:17:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 443DF20438
 for <devel@linuxdriverproject.org>; Wed,  2 Oct 2019 15:17:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CSEPsL1mrlPZ for <devel@linuxdriverproject.org>;
 Wed,  2 Oct 2019 15:17:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by silver.osuosl.org (Postfix) with ESMTPS id E8AC0204BB
 for <devel@driverdev.osuosl.org>; Wed,  2 Oct 2019 15:17:15 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id 205so10518083pfw.2
 for <devel@driverdev.osuosl.org>; Wed, 02 Oct 2019 08:17:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=DZSOt9Pzw/sZocePyfLHQpL8Fkq0jbtYd2wgMDKhCqM=;
 b=Ajn7nzoWgwuFExiQu4a64f5qiRKcBxnoUUA2BEjU4mmf93CJyplrjXQD4sA3IYpBF+
 SBdS/dd/ukcqblpmQhU1pSRs0U6oVi2zUasvgBZNH2Dz0mj9SWEuLBmfzam1WjbI6TOH
 ranrd13sFUSaloX3j9J07mIF/nXR5kPZ2Ou0feXo0CvjbLMwWQwtMKm23nrouwJn4z6M
 MZtXGGQ0zVODOo6bOm/aQLUh1cJl9PI2aQ5BO7LFVhSxc7TnzzhDhXydP7LiygwiMLqV
 aj3ZWg0vakY+dp0u484aod38Fxenaq4vfQ4DINteuItZdxQxyS1nJHm0lmukLYTCNx10
 xmUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=DZSOt9Pzw/sZocePyfLHQpL8Fkq0jbtYd2wgMDKhCqM=;
 b=jUnNHiLg8Qeo1gdbskSqF2jw17VAsiWj3zxTcVYoHWJHEILPFLgdVXHQfM5wm1fjO7
 kgfeCb4dDHggZnqY3u+gTaq69oIdGKp7S/BgMWGzlZS90B1+00YWECDvTgOOM5LzFJSB
 03ScHyYnfVSJ3GjOOmkosjGVFwVm390NngBpwHnG+2ZKnKibrgTj3jddnKzfspRzcG4+
 UfE1E5uoAA4syBYiJN/Qbr0ieruoM25uaForXSwrI3Kh65ruztxt2DgSeZ9lglSNJh0M
 m5uvputxkhfiB+XTPRHdzNTXD35IqjQNB19d/DHjr7R0NPf7WiSIsMEohcDp4KsFz9LS
 rS/w==
X-Gm-Message-State: APjAAAUMVWgjNYWfZsxi9SJTQNuY1vkcXnBm35gjKjjJWl7hRaE+yHWM
 yu1O+kSYbao/yRwKLt/JOe4=
X-Google-Smtp-Source: APXvYqyFO35UL16HG5jpoiu0hk9yaM4WsKFIVqvWMZWwVLFqGkfUZpOxTcNsoLLfJ6lnXaz/NvTmeg==
X-Received: by 2002:a62:1888:: with SMTP id 130mr5274314pfy.72.1570029435297; 
 Wed, 02 Oct 2019 08:17:15 -0700 (PDT)
Received: from SD ([106.222.11.213])
 by smtp.gmail.com with ESMTPSA id q71sm6509341pjb.26.2019.10.02.08.17.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Oct 2019 08:17:14 -0700 (PDT)
Date: Wed, 2 Oct 2019 20:47:03 +0530
From: Saiyam Doshi <saiyamdoshi.in@gmail.com>
To: valdis.kletnieks@vt.edu, gregkh@linuxfoundation.org
Subject: [PATCH] staging: exfat: use bdev_sync function directly where needed
Message-ID: <20191002151703.GA6594@SD>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

fs_sync() is wrapper to bdev_sync(). When fs_sync is called with
non-zero argument, bdev_sync gets called.

Most instances of fs_sync is called with false and very few with
true. Refactor this and makes direct call to bdev_sync() where
needed and removes fs_sync definition.

Signed-off-by: Saiyam Doshi <saiyamdoshi.in@gmail.com>
---
 drivers/staging/exfat/exfat_super.c | 19 +++----------------
 1 file changed, 3 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index 229ecabe7a93..3d3b0f0eebdc 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -285,12 +285,6 @@ static const struct dentry_operations exfat_dentry_ops = {
 
 static DEFINE_SEMAPHORE(z_sem);
 
-static inline void fs_sync(struct super_block *sb, bool do_sync)
-{
-	if (do_sync)
-		bdev_sync(sb);
-}
-
 /*
  * If ->i_mode can't hold S_IWUGO (i.e. ATTR_RO), we use ->i_attrs to
  * save ATTR_RO instead of ->i_mode.
@@ -458,7 +452,6 @@ static int ffsUmountVol(struct super_block *sb)
 	/* acquire the lock for file system critical section */
 	down(&p_fs->v_sem);
 
-	fs_sync(sb, false);
 	fs_set_vol_flags(sb, VOL_CLEAN);
 
 	if (p_fs->vol_type == EXFAT) {
@@ -527,7 +520,9 @@ static int ffsSyncVol(struct super_block *sb, bool do_sync)
 	down(&p_fs->v_sem);
 
 	/* synchronize the file system */
-	fs_sync(sb, do_sync);
+	if (do_sync)
+		bdev_sync(sb);
+
 	fs_set_vol_flags(sb, VOL_CLEAN);
 
 	if (p_fs->dev_ejected)
@@ -667,7 +662,6 @@ static int ffsCreateFile(struct inode *inode, char *path, u8 mode,
 	ret = create_file(inode, &dir, &uni_name, mode, fid);
 
 #ifdef CONFIG_EXFAT_DELAYED_SYNC
-	fs_sync(sb, false);
 	fs_set_vol_flags(sb, VOL_CLEAN);
 #endif
 
@@ -1040,7 +1034,6 @@ static int ffsWriteFile(struct inode *inode, struct file_id_t *fid,
 	}
 
 #ifdef CONFIG_EXFAT_DELAYED_SYNC
-	fs_sync(sb, false);
 	fs_set_vol_flags(sb, VOL_CLEAN);
 #endif
 
@@ -1180,7 +1173,6 @@ static int ffsTruncateFile(struct inode *inode, u64 old_size, u64 new_size)
 		fid->rwoffset = fid->size;
 
 #ifdef CONFIG_EXFAT_DELAYED_SYNC
-	fs_sync(sb, false);
 	fs_set_vol_flags(sb, VOL_CLEAN);
 #endif
 
@@ -1328,7 +1320,6 @@ static int ffsMoveFile(struct inode *old_parent_inode, struct file_id_t *fid,
 	}
 out:
 #ifdef CONFIG_EXFAT_DELAYED_SYNC
-	fs_sync(sb, false);
 	fs_set_vol_flags(sb, VOL_CLEAN);
 #endif
 
@@ -1390,7 +1381,6 @@ static int ffsRemoveFile(struct inode *inode, struct file_id_t *fid)
 	fid->flags = (p_fs->vol_type == EXFAT) ? 0x03 : 0x01;
 
 #ifdef CONFIG_EXFAT_DELAYED_SYNC
-	fs_sync(sb, false);
 	fs_set_vol_flags(sb, VOL_CLEAN);
 #endif
 
@@ -1479,7 +1469,6 @@ static int ffsSetAttr(struct inode *inode, u32 attr)
 	}
 
 #ifdef CONFIG_EXFAT_DELAYED_SYNC
-	fs_sync(sb, false);
 	fs_set_vol_flags(sb, VOL_CLEAN);
 #endif
 
@@ -1917,7 +1906,6 @@ static int ffsCreateDir(struct inode *inode, char *path, struct file_id_t *fid)
 	ret = create_dir(inode, &dir, &uni_name, fid);
 
 #ifdef CONFIG_EXFAT_DELAYED_SYNC
-	fs_sync(sb, false);
 	fs_set_vol_flags(sb, VOL_CLEAN);
 #endif
 
@@ -2178,7 +2166,6 @@ static int ffsRemoveDir(struct inode *inode, struct file_id_t *fid)
 	fid->flags = (p_fs->vol_type == EXFAT) ? 0x03 : 0x01;
 
 #ifdef CONFIG_EXFAT_DELAYED_SYNC
-	fs_sync(sb, false);
 	fs_set_vol_flags(sb, VOL_CLEAN);
 #endif
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
