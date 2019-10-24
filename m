Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D817E3717
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Oct 2019 17:54:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B123C8698F;
	Thu, 24 Oct 2019 15:54:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5mqclJaghFhC; Thu, 24 Oct 2019 15:54:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9134B86980;
	Thu, 24 Oct 2019 15:54:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1FF1A1BF297
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 15:54:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1D533230A4
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 15:54:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id quUm4J8+Uqhi for <devel@linuxdriverproject.org>;
 Thu, 24 Oct 2019 15:54:20 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr2.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by silver.osuosl.org (Postfix) with ESMTPS id 1764121556
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 15:54:20 +0000 (UTC)
Received: from mr2.cc.vt.edu (junk.cc.ipv6.vt.edu
 [IPv6:2607:b400:92:9:0:9d:8fcb:4116])
 by omr2.cc.vt.edu (8.14.4/8.14.4) with ESMTP id x9OFsJPj026758
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 11:54:19 -0400
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198])
 by mr2.cc.vt.edu (8.14.7/8.14.7) with ESMTP id x9OFsDDc023664
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 11:54:19 -0400
Received: by mail-qt1-f198.google.com with SMTP id x50so14269387qth.4
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 08:54:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=HC8F6K721XcrFfe6PL9r+w9DRvlfMBW1HH2bOAKZbBk=;
 b=GGpUwjAGlCOatYdxGOMF5SvcTad/+D63uJtm38m8VM+jW2UtPs4P7sG/s9Wc35srU/
 WhyitMMcycBRq138IXUtlz56/J65q0N23IkUDOvbQeHSaoZFAHmvgIDVNUa0recPSCsj
 WmObBHZGa5vo5Tf3UIIhUOIRA6T+QWOgFq36/+CL+ids+xKJot568VzCB2tEZ03fn5Gj
 gdpB1RLT2sF3B6EnCV083TLhxv72v3X4Xuo3FJqNkLv6N8/mrus1ujeVuakXa+RJgrm+
 zonshP/nY6flYvmHzoGF4KbtazWT2Zdnec+cYJR54F0ixwfudgi+tdBOwrfmq+aO+2KU
 qGqQ==
X-Gm-Message-State: APjAAAWSNly2OCJeoxVfHmlMH9NH+Z3EAh+GD4aH7zv2lz9XkQdvaIOg
 kIIH82wOP75ugeYrfkrKnTUukrYJLA98Lg6j+NJHP1ZL8+3hmYsmwpbH+5MvwXJ7dJpFVJoiqjl
 WRsgJGcdWHOWI8TAvaWLCV2QsnxqslGbl
X-Received: by 2002:a05:620a:a8d:: with SMTP id
 v13mr2276825qkg.113.1571932453735; 
 Thu, 24 Oct 2019 08:54:13 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxzXZCBzmmQ+hEAhyBvlB5KizY+kshvHx0pXuyB03RkLB5Z9bOBJFYlqXoD+NPrxM3nFlZCkw==
X-Received: by 2002:a05:620a:a8d:: with SMTP id
 v13mr2276794qkg.113.1571932453397; 
 Thu, 24 Oct 2019 08:54:13 -0700 (PDT)
Received: from turing-police.lan ([2601:5c0:c001:c9e1::359])
 by smtp.gmail.com with ESMTPSA id x133sm12693274qka.44.2019.10.24.08.54.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 08:54:12 -0700 (PDT)
From: Valdis Kletnieks <valdis.kletnieks@vt.edu>
X-Google-Original-From: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 04/15] staging: exfat: Clean up return codes -
 FFS_PERMISSIONERR
Date: Thu, 24 Oct 2019 11:53:15 -0400
Message-Id: <20191024155327.1095907-5-Valdis.Kletnieks@vt.edu>
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

Convert FFS_PERMISSIONERR to -EPERM

Signed-off-by: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
---
 drivers/staging/exfat/exfat.h       |  1 -
 drivers/staging/exfat/exfat_super.c | 20 ++++++++++----------
 2 files changed, 10 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index ec52237b01cd..86bdcf222a5a 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -217,7 +217,6 @@ static inline u16 get_row_index(u16 i)
 #define FFS_INVALIDPATH         7
 #define FFS_INVALIDFID          8
 #define FFS_FILEEXIST           10
-#define FFS_PERMISSIONERR       11
 #define FFS_NOTOPENED           12
 #define FFS_MAXOPENED           13
 #define FFS_EOF                 15
diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index 566cfba0a522..fd5d8ba0d8bc 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -702,7 +702,7 @@ static int ffsReadFile(struct inode *inode, struct file_id_t *fid, void *buffer,
 
 	/* check if the given file ID is opened */
 	if (fid->type != TYPE_FILE) {
-		ret = FFS_PERMISSIONERR;
+		ret = -EPERM;
 		goto out;
 	}
 
@@ -832,7 +832,7 @@ static int ffsWriteFile(struct inode *inode, struct file_id_t *fid,
 
 	/* check if the given file ID is opened */
 	if (fid->type != TYPE_FILE) {
-		ret = FFS_PERMISSIONERR;
+		ret = -EPERM;
 		goto out;
 	}
 
@@ -1079,7 +1079,7 @@ static int ffsTruncateFile(struct inode *inode, u64 old_size, u64 new_size)
 
 	/* check if the given file ID is opened */
 	if (fid->type != TYPE_FILE) {
-		ret = FFS_PERMISSIONERR;
+		ret = -EPERM;
 		goto out;
 	}
 
@@ -1246,7 +1246,7 @@ static int ffsMoveFile(struct inode *old_parent_inode, struct file_id_t *fid,
 	/* check if the old file is "." or ".." */
 	if (p_fs->vol_type != EXFAT) {
 		if ((olddir.dir != p_fs->root_dir) && (dentry < 2)) {
-			ret = FFS_PERMISSIONERR;
+			ret = -EPERM;
 			goto out2;
 		}
 	}
@@ -1258,7 +1258,7 @@ static int ffsMoveFile(struct inode *old_parent_inode, struct file_id_t *fid,
 	}
 
 	if (p_fs->fs_func->get_entry_attr(ep) & ATTR_READONLY) {
-		ret = FFS_PERMISSIONERR;
+		ret = -EPERM;
 		goto out2;
 	}
 
@@ -1365,7 +1365,7 @@ static int ffsRemoveFile(struct inode *inode, struct file_id_t *fid)
 	}
 
 	if (p_fs->fs_func->get_entry_attr(ep) & ATTR_READONLY) {
-		ret = FFS_PERMISSIONERR;
+		ret = -EPERM;
 		goto out;
 	}
 	fs_set_vol_flags(sb, VOL_DIRTY);
@@ -1947,7 +1947,7 @@ static int ffsReadDir(struct inode *inode, struct dir_entry_t *dir_entry)
 
 	/* check if the given file ID is opened */
 	if (fid->type != TYPE_DIR)
-		return FFS_PERMISSIONERR;
+		return -EPERM;
 
 	/* acquire the lock for file system critical section */
 	down(&p_fs->v_sem);
@@ -2145,7 +2145,7 @@ static int ffsRemoveDir(struct inode *inode, struct file_id_t *fid)
 	/* check if the file is "." or ".." */
 	if (p_fs->vol_type != EXFAT) {
 		if ((dir.dir != p_fs->root_dir) && (dentry < 2))
-			return FFS_PERMISSIONERR;
+			return -EPERM;
 	}
 
 	/* acquire the lock for file system critical section */
@@ -2526,7 +2526,7 @@ static int exfat_unlink(struct inode *dir, struct dentry *dentry)
 
 	err = ffsRemoveFile(dir, &(EXFAT_I(inode)->fid));
 	if (err) {
-		if (err == FFS_PERMISSIONERR)
+		if (err == -EPERM)
 			err = -EPERM;
 		else
 			err = -EIO;
@@ -2746,7 +2746,7 @@ static int exfat_rename(struct inode *old_dir, struct dentry *old_dentry,
 	err = ffsMoveFile(old_dir, &(EXFAT_I(old_inode)->fid), new_dir,
 			  new_dentry);
 	if (err) {
-		if (err == FFS_PERMISSIONERR)
+		if (err == -EPERM)
 			err = -EPERM;
 		else if (err == FFS_INVALIDPATH)
 			err = -EINVAL;
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
