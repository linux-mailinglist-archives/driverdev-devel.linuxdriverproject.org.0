Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BB225ED735
	for <lists+driverdev-devel@lfdr.de>; Mon,  4 Nov 2019 02:46:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6955B895AC;
	Mon,  4 Nov 2019 01:46:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eah76nsjjhzw; Mon,  4 Nov 2019 01:46:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A6F2E89573;
	Mon,  4 Nov 2019 01:46:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 093FF1BF42D
 for <devel@linuxdriverproject.org>; Mon,  4 Nov 2019 01:46:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0582C20528
 for <devel@linuxdriverproject.org>; Mon,  4 Nov 2019 01:46:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y+P4vWJDd3BN for <devel@linuxdriverproject.org>;
 Mon,  4 Nov 2019 01:46:37 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr1.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by silver.osuosl.org (Postfix) with ESMTPS id 9A8BF2051F
 for <devel@driverdev.osuosl.org>; Mon,  4 Nov 2019 01:46:37 +0000 (UTC)
Received: from mr2.cc.vt.edu (mr2.cc.vt.edu
 [IPv6:2607:b400:92:8400:0:90:e077:bf22])
 by omr1.cc.vt.edu (8.14.4/8.14.4) with ESMTP id xA41kaaM025881
 for <devel@driverdev.osuosl.org>; Sun, 3 Nov 2019 20:46:36 -0500
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199])
 by mr2.cc.vt.edu (8.14.7/8.14.7) with ESMTP id xA41kV7e008352
 for <devel@driverdev.osuosl.org>; Sun, 3 Nov 2019 20:46:36 -0500
Received: by mail-qt1-f199.google.com with SMTP id i9so6999267qtq.11
 for <devel@driverdev.osuosl.org>; Sun, 03 Nov 2019 17:46:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=u019LskbZP8VabhKx0LyX0aafFHStxhhypj6hGUDhZI=;
 b=bb9r2JIcjuOYxk3B1TyQiiT+xTQvFuRlVeepcPw22rSq+TUMr+XUB3NGupQ+ZEBzjn
 /XSpM7v2E/J9gbsOvFQEZGHDuOO1rwkVNnSpP0YIErFZDuXBnualyMFfg92Zf8SlNpHC
 c3kFKyWceNosG67I0zbTmmtOLdScQq2PBNNe0wPi0ga+MbQJzKaXMnpjpvQ2q4Jnodi3
 b87BO0xpXPKBrzOJOfaeCdndaL0UuHXVwGhmvFKzhaOxiufJQzElSRocE58OBJ58QTBr
 l9FZvdZfkmxhXRnDKGRaHF1MDq82nbjqwHR/GCxq9aSY61AvaT4QPcoLi/sCfPW9k41t
 0uhg==
X-Gm-Message-State: APjAAAUDLnB3W+rCAsNkrjjEt1Tv2tkxg9LzHIcSuxl3YNh4oVHdYgBH
 p8w8LxJ7w124rZsuGLJWknC8OE+WSTGbE+RiFKLaFTPl83n3PREmYuGZg59pvWHA0UIoAJSwZCx
 YnwebGcc/3cL0GszgqJPiPYpUNiT1daRm
X-Received: by 2002:a05:620a:55c:: with SMTP id
 o28mr2946036qko.131.1572831991126; 
 Sun, 03 Nov 2019 17:46:31 -0800 (PST)
X-Google-Smtp-Source: APXvYqznKEGc1reQwrrCOPSY2doBOSCbE/tClL79ar8NfSr1UVzD6c1z7N4vRQ6vDpjYeS+IjtXGMg==
X-Received: by 2002:a05:620a:55c:: with SMTP id
 o28mr2946018qko.131.1572831990805; 
 Sun, 03 Nov 2019 17:46:30 -0800 (PST)
Received: from turing-police.lan ([2601:5c0:c001:c9e1::359])
 by smtp.gmail.com with ESMTPSA id d2sm8195354qkg.77.2019.11.03.17.46.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 03 Nov 2019 17:46:29 -0800 (PST)
From: Valdis Kletnieks <valdis.kletnieks@vt.edu>
X-Google-Original-From: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
To: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
Subject: [PATCH v2 08/10] staging: exfat: Collapse redundant return code
 translations
Date: Sun,  3 Nov 2019 20:45:04 -0500
Message-Id: <20191104014510.102356-9-Valdis.Kletnieks@vt.edu>
X-Mailer: git-send-email 2.24.0.rc1
In-Reply-To: <20191104014510.102356-1-Valdis.Kletnieks@vt.edu>
References: <20191104014510.102356-1-Valdis.Kletnieks@vt.edu>
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

Now that we no longer use odd internal return codes, we can
heave the translation code over the side, and just pass the
error code back up the call chain.

Signed-off-by: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
---
 drivers/staging/exfat/exfat_super.c | 92 +++++------------------------
 1 file changed, 14 insertions(+), 78 deletions(-)

diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index 5d538593b5f6..a97a61a60517 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -650,7 +650,7 @@ static int ffsCreateFile(struct inode *inode, char *path, u8 mode,
 	struct uni_name_t uni_name;
 	struct super_block *sb = inode->i_sb;
 	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-	int ret;
+	int ret = 0;
 
 	/* check the validity of pointer parameters */
 	if (!fid || !path || (*path == '\0'))
@@ -2366,19 +2366,9 @@ static int exfat_create(struct inode *dir, struct dentry *dentry, umode_t mode,
 	pr_debug("%s entered\n", __func__);
 
 	err = ffsCreateFile(dir, (u8 *)dentry->d_name.name, FM_REGULAR, &fid);
-	if (err) {
-		if (err == -EINVAL)
-			err = -EINVAL;
-		else if (err == -EEXIST)
-			err = -EEXIST;
-		else if (err == -ENOSPC)
-			err = -ENOSPC;
-		else if (err == -ENAMETOOLONG)
-			err = -ENAMETOOLONG;
-		else
-			err = -EIO;
+	if (err)
 		goto out;
-	}
+
 	INC_IVERSION(dir);
 	curtime = current_time(dir);
 	dir->i_ctime = curtime;
@@ -2543,13 +2533,9 @@ static int exfat_unlink(struct inode *dir, struct dentry *dentry)
 	EXFAT_I(inode)->fid.size = i_size_read(inode);
 
 	err = ffsRemoveFile(dir, &(EXFAT_I(inode)->fid));
-	if (err) {
-		if (err == -EPERM)
-			err = -EPERM;
-		else
-			err = -EIO;
+	if (err)
 		goto out;
-	}
+
 	INC_IVERSION(dir);
 	curtime = current_time(dir);
 	dir->i_mtime = curtime;
@@ -2589,27 +2575,14 @@ static int exfat_symlink(struct inode *dir, struct dentry *dentry,
 	pr_debug("%s entered\n", __func__);
 
 	err = ffsCreateFile(dir, (u8 *)dentry->d_name.name, FM_SYMLINK, &fid);
-	if (err) {
-		if (err == -EINVAL)
-			err = -EINVAL;
-		else if (err == -EEXIST)
-			err = -EEXIST;
-		else if (err == -ENOSPC)
-			err = -ENOSPC;
-		else
-			err = -EIO;
+	if (err)
 		goto out;
-	}
+
 
 	err = ffsWriteFile(dir, &fid, (char *)target, len, &ret);
 
 	if (err) {
 		ffsRemoveFile(dir, &fid);
-
-		if (err == -ENOSPC)
-			err = -ENOSPC;
-		else
-			err = -EIO;
 		goto out;
 	}
 
@@ -2666,19 +2639,9 @@ static int exfat_mkdir(struct inode *dir, struct dentry *dentry, umode_t mode)
 	pr_debug("%s entered\n", __func__);
 
 	err = ffsCreateDir(dir, (u8 *)dentry->d_name.name, &fid);
-	if (err) {
-		if (err == -EINVAL)
-			err = -EINVAL;
-		else if (err == -EEXIST)
-			err = -EEXIST;
-		else if (err == -ENOSPC)
-			err = -ENOSPC;
-		else if (err == -ENAMETOOLONG)
-			err = -ENAMETOOLONG;
-		else
-			err = -EIO;
+	if (err)
 		goto out;
-	}
+
 	INC_IVERSION(dir);
 	curtime = current_time(dir);
 	dir->i_ctime = curtime;
@@ -2727,19 +2690,9 @@ static int exfat_rmdir(struct inode *dir, struct dentry *dentry)
 	EXFAT_I(inode)->fid.size = i_size_read(inode);
 
 	err = ffsRemoveDir(dir, &(EXFAT_I(inode)->fid));
-	if (err) {
-		if (err == -EINVAL)
-			err = -EINVAL;
-		else if (err == -EEXIST)
-			err = -ENOTEMPTY;
-		else if (err == -ENOENT)
-			err = -ENOENT;
-		else if (err == -EBUSY)
-			err = -EBUSY;
-		else
-			err = -EIO;
+	if (err)
 		goto out;
-	}
+
 	INC_IVERSION(dir);
 	curtime = current_time(dir);
 	dir->i_mtime = curtime;
@@ -2787,21 +2740,9 @@ static int exfat_rename(struct inode *old_dir, struct dentry *old_dentry,
 
 	err = ffsMoveFile(old_dir, &(EXFAT_I(old_inode)->fid), new_dir,
 			  new_dentry);
-	if (err) {
-		if (err == -EPERM)
-			err = -EPERM;
-		else if (err == -EINVAL)
-			err = -EINVAL;
-		else if (err == -EEXIST)
-			err = -EEXIST;
-		else if (err == -ENOENT)
-			err = -ENOENT;
-		else if (err == -ENOSPC)
-			err = -ENOSPC;
-		else
-			err = -EIO;
+	if (err)
 		goto out;
-	}
+
 	INC_IVERSION(new_dir);
 	curtime = current_time(new_dir);
 	new_dir->i_ctime = curtime;
@@ -3161,12 +3102,7 @@ static int exfat_bmap(struct inode *inode, sector_t sector, sector_t *phys,
 
 	err = ffsMapCluster(inode, clu_offset, &cluster);
 
-	if (err) {
-		if (err == -ENOSPC)
-			return -ENOSPC;
-		else
-			return -EIO;
-	} else if (cluster != CLUSTER_32(~0)) {
+	if (!err && (cluster != CLUSTER_32(~0))) {
 		*phys = START_SECTOR(cluster) + sec_offset;
 		*mapped_blocks = p_fs->sectors_per_clu - sec_offset;
 	}
-- 
2.24.0.rc1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
