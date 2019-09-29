Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 71336C15DB
	for <lists+driverdev-devel@lfdr.de>; Sun, 29 Sep 2019 16:51:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5265A20509;
	Sun, 29 Sep 2019 14:51:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KMYEfDdF+cl1; Sun, 29 Sep 2019 14:51:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7299D20452;
	Sun, 29 Sep 2019 14:51:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A554F1BF35F
 for <devel@linuxdriverproject.org>; Sun, 29 Sep 2019 14:51:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A213D8788B
 for <devel@linuxdriverproject.org>; Sun, 29 Sep 2019 14:51:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qLz8DP-NUgLj for <devel@linuxdriverproject.org>;
 Sun, 29 Sep 2019 14:51:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
 [209.85.210.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 074EC87852
 for <devel@driverdev.osuosl.org>; Sun, 29 Sep 2019 14:51:20 +0000 (UTC)
Received: by mail-ot1-f67.google.com with SMTP id c10so6189217otd.9
 for <devel@driverdev.osuosl.org>; Sun, 29 Sep 2019 07:51:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Hib8D+V0D3BwDwwAI6M1zboYoKRedpSshNbRty1BMwY=;
 b=p9XjC7YYvytpt5fNNzOG7FTyKwNqeSFc+8kmsrM2he3vm/hDflFhlNmKel5L47Cspk
 m0Gce0izFndyhDBiKDkR92pSysRmayOwxTbQeRIhHs5qgRPd6p355ip+hubpwnF5rzYJ
 SPMFQeOkjA353XzgNEtvGN4oZmu5WYJXaC6pnPKFY5lzzsZd6+Rr4kGjxnTL4ONysni6
 M2kgg0pWMyXff1idIiuBmSOPqjirAx79d8qwfWKeeoOR8NFVSto5WU5Up1DP81kNIb2M
 BfMUaoauQfa/2pW947YkcBek8d2HqpNgPjt4rg22gtgVxtfPwDyDa+Hrq2571E6CqtFX
 VYGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Hib8D+V0D3BwDwwAI6M1zboYoKRedpSshNbRty1BMwY=;
 b=SaE10v6sQCaoXpqPKKICm8yw7RYkpFosBn2OOoVxi/iFHRMrpwlmd/GzO6AaVcgxdJ
 55GzrKkxKGHx6M6l5HVakecUCLwhgMMdjvobjxTjE3Ziau7YbWp7x5kY6O2rOAVGfd6U
 qPbH+IhXVJ/R/4erB6sec3zSJQbPYSMQSJE3dOyvRmnxq8rUb7kW7wz0uJBByHDoMcsc
 g8I4zBhRia2t6Q5QlULceSxClnGnSA21bbtDZptogVJ4NLZTvzB4fFXt8ufiQxppQpti
 PbLXAwOaWtGECDnRtcuLma55nYtGcX2VRZJL64FoICF/+3//37zDabOC+bkIa5DcMie+
 Jyng==
X-Gm-Message-State: APjAAAULWZAcMHnnaYH1UTthsTqKTskl5EL0XQWKTPFYvjKKbPDdnqY3
 XZE0u+czT3r33pDME4IAG7A=
X-Google-Smtp-Source: APXvYqxjzs5Kyrha7Xjrwqr58WyZM+Qr/hyb4dghv7D24eCTAOnBAFh27BJBoLNItWXw/x4/rA35Iw==
X-Received: by 2002:a05:6830:2059:: with SMTP id
 f25mr10285704otp.137.1569768679166; 
 Sun, 29 Sep 2019 07:51:19 -0700 (PDT)
Received: from localhost (ip72-210-101-152.tu.ok.cox.net. [72.210.101.152])
 by smtp.gmail.com with ESMTPSA id r19sm2765149ota.79.2019.09.29.07.51.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 29 Sep 2019 07:51:18 -0700 (PDT)
From: Jesse Barton <jessebarton95@gmail.com>
To: valdis.kletnieks@vt.edu
Subject: [PATCH 1/3] Staging: exfat: exfat_super.c: fixed camelcase coding
 style issue
Date: Sun, 29 Sep 2019 09:50:57 -0500
Message-Id: <20190929145057.37752-1-jessebarton95@gmail.com>
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

Changed function names:
ffsUmountVol to ffs_umount_vol
ffsMountVol to ffs_mount_vol
ffsSyncVol to ffs_sync_vol


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
