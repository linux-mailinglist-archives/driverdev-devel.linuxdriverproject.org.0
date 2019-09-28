Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 70C58C126E
	for <lists+driverdev-devel@lfdr.de>; Sun, 29 Sep 2019 01:19:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DE8E620555;
	Sat, 28 Sep 2019 23:19:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iCNRHCNWRhY1; Sat, 28 Sep 2019 23:19:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5AE4420500;
	Sat, 28 Sep 2019 23:19:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6D4C11BF59A
 for <devel@linuxdriverproject.org>; Sat, 28 Sep 2019 23:19:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6096184F98
 for <devel@linuxdriverproject.org>; Sat, 28 Sep 2019 23:19:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T+rnbgz6bYsC for <devel@linuxdriverproject.org>;
 Sat, 28 Sep 2019 23:19:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
 [209.85.167.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B7F3B8442F
 for <devel@driverdev.osuosl.org>; Sat, 28 Sep 2019 23:19:16 +0000 (UTC)
Received: by mail-oi1-f196.google.com with SMTP id w6so8127193oie.11
 for <devel@driverdev.osuosl.org>; Sat, 28 Sep 2019 16:19:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=08U8kTj+7ryuF4wWVDEoa5n7c+9tXfifBOgV/g1kdoc=;
 b=dBsWkQDFUaMjDerdVT/Mn5JeLyErILKZRtAfzEfKowY1YhLX2EVfCBVw7FXBqL7JNm
 8Gfc4/RTKsIkbEyyYaOTWcnCB/g3JoRQhrzb4ObT0CjzvkwkBbF2V5xL50yHK+ZZWR6U
 mNvYu7+7eEK89SyK9WP83EmXd0LxO1QwIEttJw8WiHtk5zx/+UCF8h9kiHprefS/C4kU
 f9mjEky6rPeUrOgPt+3CVbqYI7HG+ErIq5uN1wgnEn9Tfl3qVg0bQBLDr0r6xbfKyu+l
 b0zZa0XvJGHi6fS8BqJfln4MrzjZyxM2GvA9aJYHUEmId7K928+LB6T+pGS5OEZrXUnA
 WwOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=08U8kTj+7ryuF4wWVDEoa5n7c+9tXfifBOgV/g1kdoc=;
 b=uZiwe6ePA3WFLQAD6oCogN2UTY++sUe/xcU+3/KPSR2ySKV4CtdYDzSFRHaS1SCBxf
 O8wtFmniTKfdTMX1gdxtMyM1uu/I+EoQ0ECMOITYOyfg5Aes+ATyVrFSR8ruZBPaCDkT
 TXbtdoKG2eYczmg4HjKOch9O+Jv2Rxfb1HzpoUXrnp3iYzTPOiviG8QU9j/pmjEQjh6L
 VcwVMHhbGHVCCbIMhI6AOGe5wMRn1KSTXwygfgvqU2rvGXFxxhoS35yhnaCJNwlvRHR9
 UFdyjoO4n+o8wQjOjcnYRulWBatx15A/5vM6gc8TKqN3+nT3wPribm6DTFmit1BPFoh0
 tipg==
X-Gm-Message-State: APjAAAVp9K3LD74msh3upS72Ma4xPwfdDo5fE1rf50r5SA4H3q3T7OS+
 nMJJMbsFccyrN/4/HosYvCdQfEGjjigWiQ==
X-Google-Smtp-Source: APXvYqwl2Lec9Lxg2DpYBKwaU2Wgo4r5Hpw9nW1el6IAIrmMXTIJq3uWZb62eQWuZZ+0ufrYVOzP/A==
X-Received: by 2002:aca:d708:: with SMTP id o8mr12667771oig.68.1569712755799; 
 Sat, 28 Sep 2019 16:19:15 -0700 (PDT)
Received: from localhost (ip72-210-101-152.tu.ok.cox.net. [72.210.101.152])
 by smtp.gmail.com with ESMTPSA id 34sm2402154otf.55.2019.09.28.16.19.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 28 Sep 2019 16:19:15 -0700 (PDT)
From: Jesse Barton <jessebarton95@gmail.com>
To: valdis.kletnieks@vt.edu
Subject: [PATCH] Staging: exfat: exfat_super.c: fixed camelcase coding style
 issue
Date: Sat, 28 Sep 2019 18:19:10 -0500
Message-Id: <20190928231910.16898-1-jessebarton95@gmail.com>
X-Mailer: git-send-email 2.23.0
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Jesse Barton <jessebarton95@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixed a coding style issue.

Signed-off-by: Jesse Barton <jessebarton95@gmail.com>
---
 drivers/staging/exfat/exfat_super.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index 5f6caee819a6..665eb25e318d 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -342,7 +342,7 @@ static inline void exfat_save_attr(struct inode *inode, u32 attr)
 		EXFAT_I(inode)->fid.attr = attr & (ATTR_RWMASK | ATTR_READONLY);
 }
 
-static int ffsMountVol(struct super_block *sb)
+static int ffs_mount_vol(struct super_block *sb)
 {
 	int i, ret;
 	struct pbr_sector_t *p_pbr;
@@ -446,7 +446,7 @@ static int ffsMountVol(struct super_block *sb)
 	return ret;
 }
 
-static int ffsUmountVol(struct super_block *sb)
+static int ffs_umount_vol(struct super_block *sb)
 {
 	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
 	int err = FFS_SUCCESS;
@@ -518,7 +518,7 @@ static int ffsGetVolInfo(struct super_block *sb, struct vol_info_t *info)
 	return err;
 }
 
-static int ffsSyncVol(struct super_block *sb, bool do_sync)
+static int ffs_sync_vol(struct super_block *sb, bool do_sync)
 {
 	int err = FFS_SUCCESS;
 	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
@@ -3043,7 +3043,7 @@ static int exfat_file_release(struct inode *inode, struct file *filp)
 	struct super_block *sb = inode->i_sb;
 
 	EXFAT_I(inode)->fid.size = i_size_read(inode);
-	ffsSyncVol(sb, false);
+	ffs_sync_vol(sb, false);
 	return 0;
 }
 
@@ -3460,7 +3460,7 @@ static void exfat_put_super(struct super_block *sb)
 	if (__is_sb_dirty(sb))
 		exfat_write_super(sb);
 
-	ffsUmountVol(sb);
+	ffs_umount_vol(sb);
 
 	sb->s_fs_info = NULL;
 	exfat_free_super(sbi);
@@ -3473,7 +3473,7 @@ static void exfat_write_super(struct super_block *sb)
 	__set_sb_clean(sb);
 
 	if (!sb_rdonly(sb))
-		ffsSyncVol(sb, true);
+		ffs_sync_vol(sb, true);
 
 	__unlock_super(sb);
 }
@@ -3485,7 +3485,7 @@ static int exfat_sync_fs(struct super_block *sb, int wait)
 	if (__is_sb_dirty(sb)) {
 		__lock_super(sb);
 		__set_sb_clean(sb);
-		err = ffsSyncVol(sb, true);
+		err = ffs_sync_vol(sb, true);
 		__unlock_super(sb);
 	}
 
@@ -3865,10 +3865,10 @@ static int exfat_fill_super(struct super_block *sb, void *data, int silent)
 	sb_min_blocksize(sb, 512);
 	sb->s_maxbytes = 0x7fffffffffffffffLL;    /* maximum file size */
 
-	ret = ffsMountVol(sb);
+	ret = ffs_mount_vol(sb);
 	if (ret) {
 		if (!silent)
-			pr_err("[EXFAT] ffsMountVol failed\n");
+			pr_err("[EXFAT] ffs_mount_vol failed\n");
 
 		goto out_fail;
 	}
@@ -3919,7 +3919,7 @@ static int exfat_fill_super(struct super_block *sb, void *data, int silent)
 	return 0;
 
 out_fail2:
-	ffsUmountVol(sb);
+	ffs_umount_vol(sb);
 out_fail:
 	if (root_inode)
 		iput(root_inode);
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
