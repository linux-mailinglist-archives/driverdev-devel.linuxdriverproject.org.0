Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 37394E371F
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Oct 2019 17:54:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D382A844EB;
	Thu, 24 Oct 2019 15:54:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i0ZFRwi7IdfJ; Thu, 24 Oct 2019 15:54:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1DBC984514;
	Thu, 24 Oct 2019 15:54:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4467B1BF297
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 15:54:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 40FD22155D
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 15:54:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id anCPyYcen3oi for <devel@linuxdriverproject.org>;
 Thu, 24 Oct 2019 15:54:33 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr1.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by silver.osuosl.org (Postfix) with ESMTPS id EB99F21556
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 15:54:32 +0000 (UTC)
Received: from mr2.cc.vt.edu (mr2.cc.vt.edu
 [IPv6:2607:b400:92:8400:0:90:e077:bf22])
 by omr1.cc.vt.edu (8.14.4/8.14.4) with ESMTP id x9OFsWfg010274
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 11:54:32 -0400
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200])
 by mr2.cc.vt.edu (8.14.7/8.14.7) with ESMTP id x9OFsQml024064
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 11:54:31 -0400
Received: by mail-qk1-f200.google.com with SMTP id b29so23738719qka.23
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 08:54:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=CFX2Xv2E2XFYpCFGhPq9au3w9hrjHGnjTLte4Rd/YmA=;
 b=V+XRluM3IIeDF0nHwV0OwkzIz4KL/Pwc+AaaauOD58fkRGA7IX0q/zRE77pBFlE1TQ
 N1I4taR+oDoCbIzmgJlPM83JCX5VvIdDKWUVxU//o9hwQGhjsqWfiRXsk3SHCgNbFi9Q
 4+h2gnGOQWOKNxdZGuDkRpvzaSL+qSKyemIdF1BE40A4LV++roAia4kMvJuzC/zlNoMi
 iFUXi8M1mQDD8nnJ6H09xzPgEH6esDXr97sgl9NuzoFagtSi0xg4z4qdUHTPIZZGjLpO
 qUzwCTkiufYTo6s8rRDGHBzpgTut6qTaFo3pXitKh8uPUdGFUzjwGINSb5lHL/ytK7tg
 5RQQ==
X-Gm-Message-State: APjAAAUSjqI4/AVcz9sWci8A3Qo7yD5OOqNEJizvv+xF0fgOxDOOpKRA
 9hNvUFUVAULVG3tsw4SNJgWbnK8vm5U2o4n9O3xre7IwsAdCaBpWZUxhN1TdlPJzIOx2qWSD+Ow
 uyYs6+ae3ZPqk1Wa7XkE2GCjZ82F9b6Uq
X-Received: by 2002:ac8:741a:: with SMTP id p26mr4892057qtq.143.1571932466668; 
 Thu, 24 Oct 2019 08:54:26 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwdcgzw8DZoEnTBhImp4GLM2YUeJK+MhsCB366bACFRrmA0VURtroFgd+2o8FGC37yHNwzjPg==
X-Received: by 2002:ac8:741a:: with SMTP id p26mr4892026qtq.143.1571932466279; 
 Thu, 24 Oct 2019 08:54:26 -0700 (PDT)
Received: from turing-police.lan ([2601:5c0:c001:c9e1::359])
 by smtp.gmail.com with ESMTPSA id x133sm12693274qka.44.2019.10.24.08.54.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 08:54:25 -0700 (PDT)
From: Valdis Kletnieks <valdis.kletnieks@vt.edu>
X-Google-Original-From: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 07/15] staging: exfat: Clean up return codes - FFS_INVALIDPATH
Date: Thu, 24 Oct 2019 11:53:18 -0400
Message-Id: <20191024155327.1095907-8-Valdis.Kletnieks@vt.edu>
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

Convert FFS_INVALIDPATH to -EINVAL

Signed-off-by: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
---
 drivers/staging/exfat/exfat.h       |  1 -
 drivers/staging/exfat/exfat_core.c  | 10 +++++-----
 drivers/staging/exfat/exfat_super.c | 10 +++++-----
 3 files changed, 10 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index c56363652c5d..00e5e37100ce 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -214,7 +214,6 @@ static inline u16 get_row_index(u16 i)
 #define FFS_NOTMOUNTED          4
 #define FFS_ALIGNMENTERR        5
 #define FFS_SEMAPHOREERR        6
-#define FFS_INVALIDPATH         7
 #define FFS_INVALIDFID          8
 #define FFS_NOTOPENED           12
 #define FFS_MAXOPENED           13
diff --git a/drivers/staging/exfat/exfat_core.c b/drivers/staging/exfat/exfat_core.c
index ba5680123b0f..23c369fb98e5 100644
--- a/drivers/staging/exfat/exfat_core.c
+++ b/drivers/staging/exfat/exfat_core.c
@@ -2124,7 +2124,7 @@ s32 get_num_entries_and_dos_name(struct super_block *sb, struct chain_t *p_dir,
 
 	num_entries = p_fs->fs_func->calc_num_entries(p_uniname);
 	if (num_entries == 0)
-		return FFS_INVALIDPATH;
+		return -EINVAL;
 
 	if (p_fs->vol_type != EXFAT) {
 		nls_uniname_to_dosname(sb, p_dosname, p_uniname, &lossy);
@@ -2136,7 +2136,7 @@ s32 get_num_entries_and_dos_name(struct super_block *sb, struct chain_t *p_dir,
 		} else {
 			for (r = reserved_names; *r; r++) {
 				if (!strncmp((void *)p_dosname->name, *r, 8))
-					return FFS_INVALIDPATH;
+					return -EINVAL;
 			}
 
 			if (p_dosname->name_case != 0xFF)
@@ -2257,11 +2257,11 @@ s32 resolve_path(struct inode *inode, char *path, struct chain_t *p_dir,
 	struct file_id_t *fid = &(EXFAT_I(inode)->fid);
 
 	if (strscpy(name_buf, path, sizeof(name_buf)) < 0)
-		return FFS_INVALIDPATH;
+		return -EINVAL;
 
 	nls_cstring_to_uniname(sb, p_uniname, name_buf, &lossy);
 	if (lossy)
-		return FFS_INVALIDPATH;
+		return -EINVAL;
 
 	fid->size = i_size_read(inode);
 
@@ -2659,7 +2659,7 @@ s32 move_file(struct inode *inode, struct chain_t *p_olddir, s32 oldentry,
 	/* check if the source and target directory is the same */
 	if (fs_func->get_entry_type(epmov) == TYPE_DIR &&
 	    fs_func->get_entry_clu0(epmov) == p_newdir->dir)
-		return FFS_INVALIDPATH;
+		return -EINVAL;
 
 	buf_lock(sb, sector_mov);
 
diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index 2c294e238d7b..5b35e3683605 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -2356,7 +2356,7 @@ static int exfat_create(struct inode *dir, struct dentry *dentry, umode_t mode,
 
 	err = ffsCreateFile(dir, (u8 *)dentry->d_name.name, FM_REGULAR, &fid);
 	if (err) {
-		if (err == FFS_INVALIDPATH)
+		if (err == -EINVAL)
 			err = -EINVAL;
 		else if (err == -EEXIST)
 			err = -EEXIST;
@@ -2567,7 +2567,7 @@ static int exfat_symlink(struct inode *dir, struct dentry *dentry,
 
 	err = ffsCreateFile(dir, (u8 *)dentry->d_name.name, FM_SYMLINK, &fid);
 	if (err) {
-		if (err == FFS_INVALIDPATH)
+		if (err == -EINVAL)
 			err = -EINVAL;
 		else if (err == -EEXIST)
 			err = -EEXIST;
@@ -2637,7 +2637,7 @@ static int exfat_mkdir(struct inode *dir, struct dentry *dentry, umode_t mode)
 
 	err = ffsCreateDir(dir, (u8 *)dentry->d_name.name, &fid);
 	if (err) {
-		if (err == FFS_INVALIDPATH)
+		if (err == -EINVAL)
 			err = -EINVAL;
 		else if (err == -EEXIST)
 			err = -EEXIST;
@@ -2691,7 +2691,7 @@ static int exfat_rmdir(struct inode *dir, struct dentry *dentry)
 
 	err = ffsRemoveDir(dir, &(EXFAT_I(inode)->fid));
 	if (err) {
-		if (err == FFS_INVALIDPATH)
+		if (err == -EINVAL)
 			err = -EINVAL;
 		else if (err == -EEXIST)
 			err = -ENOTEMPTY;
@@ -2748,7 +2748,7 @@ static int exfat_rename(struct inode *old_dir, struct dentry *old_dentry,
 	if (err) {
 		if (err == -EPERM)
 			err = -EPERM;
-		else if (err == FFS_INVALIDPATH)
+		else if (err == -EINVAL)
 			err = -EINVAL;
 		else if (err == -EEXIST)
 			err = -EEXIST;
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
