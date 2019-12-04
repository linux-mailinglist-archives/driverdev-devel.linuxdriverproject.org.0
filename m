Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 381EF1138F6
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Dec 2019 01:47:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CB6E2886BE;
	Thu,  5 Dec 2019 00:47:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IJXJ78noFe08; Thu,  5 Dec 2019 00:47:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1E9018869E;
	Thu,  5 Dec 2019 00:47:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7A7531BF9B6
 for <devel@linuxdriverproject.org>; Thu,  5 Dec 2019 00:46:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7714A88021
 for <devel@linuxdriverproject.org>; Thu,  5 Dec 2019 00:46:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 82IDCHSxKl2y for <devel@linuxdriverproject.org>;
 Thu,  5 Dec 2019 00:46:58 +0000 (UTC)
X-Greylist: delayed 00:30:31 by SQLgrey-1.7.6
Received: from mail-il1-f201.google.com (mail-il1-f201.google.com
 [209.85.166.201])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9B04A88007
 for <devel@driverdev.osuosl.org>; Thu,  5 Dec 2019 00:46:58 +0000 (UTC)
Received: by mail-il1-f201.google.com with SMTP id d3so1170104ilg.20
 for <devel@driverdev.osuosl.org>; Wed, 04 Dec 2019 16:46:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=XbMDMBiURPy3ztmL5BAB2zOV5tyLvPs4cZrgza5Nb04=;
 b=vvoOr97XSjgqRQXRYI8xsRGNB6sMUmPJTH35AVLEBHzUCUIf4TKeH576HHqX2DdT0w
 DhkNeyy0KVEz2UHvNOJCElCM2pXaipK4dATie/v1T8VW/ccwD1N0GFTfowS08R32R1SI
 +apUVj/M3+8f8mDGLFFC94QGu82UmZUQrHi0cMEPAnZ9V/l7nxaNUos7BqQ8bONSu77b
 elzOYuGfWpDdmLcLjbijtSEn/4qf5nzJdt1AFxRQsf3rOyD09xoS07pye9fewtGQ/USy
 M9kZ2gfcTq7zc9Bwb/bv3Z0+6u7faqvqCb6Zr0iadYYGSy5kwc/GvSJ90Btej1GZgtnk
 2m1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=XbMDMBiURPy3ztmL5BAB2zOV5tyLvPs4cZrgza5Nb04=;
 b=nVoHJgQxjzaOobg+MqdjPAOSTfk8QM3ijpd4AO8pgfasxTfKyAMlanmeVXWpLibPtj
 cDHbPn1Q2kVsUmeBChemQTdiumJhk4A+Yd7UrCoSwH1JXLrdhKW035qIDd2X9qG0w55C
 8yheWHh6PiD69CEUXGlmJWVYk6rsi6iUHlnbZEQdi0H6wpwyZX546/0zPeoi72LQYls3
 EPn6kUwYyekNXGoDxZ+42i8R9BOu5yu2djhtVoR2ayLHOhWdR0WBUGGoN2oDvTGU6bDQ
 GbPr9tlUv3y5+v2xL7qEwFgZaF46HNxHqC7vDd38xh42Murbbv/UYaf6jWwASwJxIKMk
 P1TQ==
X-Gm-Message-State: APjAAAV5eCgOeCzN+78vppC/W0JlVFbhs4nhuQrJcPLiyoduK1iG7bfy
 u0OCtWsKAja1mb4lLpEJPlkI/RFaFtAUBhOsnOgckg==
X-Google-Smtp-Source: APXvYqz47avrpcjXVQ+1KDiyygY87m+93a0IsuajGxXEGgl8sxMDZj0iTIaMcFs25SnHdkR0uy27q47QcmEbuf3o5rKViw==
X-Received: by 2002:a65:56c9:: with SMTP id w9mr6061182pgs.296.1575503193275; 
 Wed, 04 Dec 2019 15:46:33 -0800 (PST)
Date: Wed,  4 Dec 2019 15:45:22 -0800
Message-Id: <20191204234522.42855-1-brendanhiggins@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.24.0.393.g34dc348eaf-goog
Subject: [PATCH v1] staging: exfat: fix multiple definition error of
 `rename_file'
From: Brendan Higgins <brendanhiggins@google.com>
To: valdis.kletnieks@vt.edu
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Brendan Higgins <brendanhiggins@google.com>, linux-kernel@vger.kernel.org,
 davidgow@google.com, linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

`rename_file' was exported but not properly namespaced causing a
multiple definition error because `rename_file' is already defined in
fs/hostfs/hostfs_user.c:

ld: drivers/staging/exfat/exfat_core.o: in function `rename_file':
drivers/staging/exfat/exfat_core.c:2327: multiple definition of
`rename_file'; fs/hostfs/hostfs_user.o:fs/hostfs/hostfs_user.c:350:
first defined here
make: *** [Makefile:1077: vmlinux] Error 1

This error can be reproduced on ARCH=um by selecting:

CONFIG_EXFAT_FS=y
CONFIG_HOSTFS=y

Add a namespace prefix exfat_* to fix this error.

Reported-by: Brendan Higgins <brendanhiggins@google.com>
Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
Cc: Valdis Kletnieks <valdis.kletnieks@vt.edu>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/staging/exfat/exfat.h       | 4 ++--
 drivers/staging/exfat/exfat_core.c  | 4 ++--
 drivers/staging/exfat/exfat_super.c | 4 ++--
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index 2aac1e000977e..51c665a924b76 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -805,8 +805,8 @@ s32 create_dir(struct inode *inode, struct chain_t *p_dir,
 s32 create_file(struct inode *inode, struct chain_t *p_dir,
 		struct uni_name_t *p_uniname, u8 mode, struct file_id_t *fid);
 void remove_file(struct inode *inode, struct chain_t *p_dir, s32 entry);
-s32 rename_file(struct inode *inode, struct chain_t *p_dir, s32 old_entry,
-		struct uni_name_t *p_uniname, struct file_id_t *fid);
+s32 exfat_rename_file(struct inode *inode, struct chain_t *p_dir, s32 old_entry,
+		      struct uni_name_t *p_uniname, struct file_id_t *fid);
 s32 move_file(struct inode *inode, struct chain_t *p_olddir, s32 oldentry,
 	      struct chain_t *p_newdir, struct uni_name_t *p_uniname,
 	      struct file_id_t *fid);
diff --git a/drivers/staging/exfat/exfat_core.c b/drivers/staging/exfat/exfat_core.c
index d2d3447083c7b..7017e22b0f7a8 100644
--- a/drivers/staging/exfat/exfat_core.c
+++ b/drivers/staging/exfat/exfat_core.c
@@ -2322,8 +2322,8 @@ void remove_file(struct inode *inode, struct chain_t *p_dir, s32 entry)
 	fs_func->delete_dir_entry(sb, p_dir, entry, 0, num_entries);
 }
 
-s32 rename_file(struct inode *inode, struct chain_t *p_dir, s32 oldentry,
-		struct uni_name_t *p_uniname, struct file_id_t *fid)
+s32 exfat_rename_file(struct inode *inode, struct chain_t *p_dir, s32 oldentry,
+		      struct uni_name_t *p_uniname, struct file_id_t *fid)
 {
 	s32 ret, newentry = -1, num_old_entries, num_new_entries;
 	sector_t sector_old, sector_new;
diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index 6e481908c59f6..9f91853b189b0 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -1262,8 +1262,8 @@ static int ffsMoveFile(struct inode *old_parent_inode, struct file_id_t *fid,
 	fs_set_vol_flags(sb, VOL_DIRTY);
 
 	if (olddir.dir == newdir.dir)
-		ret = rename_file(new_parent_inode, &olddir, dentry, &uni_name,
-				  fid);
+		ret = exfat_rename_file(new_parent_inode, &olddir, dentry,
+					&uni_name, fid);
 	else
 		ret = move_file(new_parent_inode, &olddir, dentry, &newdir,
 				&uni_name, fid);
-- 
2.24.0.393.g34dc348eaf-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
