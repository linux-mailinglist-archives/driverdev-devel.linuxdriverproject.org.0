Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 307EBE371A
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Oct 2019 17:54:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DEAED230FB;
	Thu, 24 Oct 2019 15:54:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id khUoIEvrE0CY; Thu, 24 Oct 2019 15:54:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4795221556;
	Thu, 24 Oct 2019 15:54:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 78E911BF297
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 15:54:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7606781119
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 15:54:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IzRdJzDh567X for <devel@linuxdriverproject.org>;
 Thu, 24 Oct 2019 15:54:28 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr1.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D194084489
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 15:54:27 +0000 (UTC)
Received: from mr5.cc.vt.edu (mr5.cc.vt.edu
 [IPv6:2607:b400:92:8400:0:72:232:758b])
 by omr1.cc.vt.edu (8.14.4/8.14.4) with ESMTP id x9OFsRMr010222
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 11:54:27 -0400
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200])
 by mr5.cc.vt.edu (8.14.7/8.14.7) with ESMTP id x9OFsLpP008083
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 11:54:27 -0400
Received: by mail-qt1-f200.google.com with SMTP id i25so18529896qtm.17
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 08:54:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=y2kqeSz6fnHPq1JqCLRz1dPQKvUyqY/VKk0ymtbQ1zc=;
 b=qj6uSnBTzMMKCzNnckeEWJb/ud//ORFydN/48R5y6MKoWgwYwT3a4CmIdBfvlaM683
 KX3vYbETDfDdDNfcFAD9JaFliClhfPNtZwrV682xc7AtceWOusnztgLFU3lCuTK68PZJ
 bluzRtFqWJq/kYmNGCFZY9APW07mlrNZwEknQzoL83ZkoZgYCNJ5PLz8CLkg4StsMvor
 5TMy2gN97p5yigBTMe89Uyb3Sb6XI8RthnskxU31PbJ7LOx0l5ikJ3kMCyoTJCoL8lZm
 iFesLjnV1qKdvB1wMOF9HR4clusgezR6ZdTXnWXUH/9eDAG7ElBonKLaNtE02RpJpRfp
 Bd4A==
X-Gm-Message-State: APjAAAWR/pS3V5HxG3KdnU0TsYF5Ec31jCIfRi8aE78NfSB5Q1oP0XEx
 KSx+YiPMfkrrTynzNKH/GMOWHK9gd1IxQ3/LUB51JIs7/bJKtMWZ1+DCDfKaKzfVtJIewYsiRJ5
 /X+gPjcs5Fo/hks4TWtXClnJTGw39GPpv
X-Received: by 2002:ac8:237b:: with SMTP id b56mr5044137qtb.264.1571932461743; 
 Thu, 24 Oct 2019 08:54:21 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyYVSakr7YLSim5uj/9sHAYIeDosKyPSoG0JshER6gQZYAXIyY/PLR8t9YrUZsYttao5idbKQ==
X-Received: by 2002:ac8:237b:: with SMTP id b56mr5044105qtb.264.1571932461413; 
 Thu, 24 Oct 2019 08:54:21 -0700 (PDT)
Received: from turing-police.lan ([2601:5c0:c001:c9e1::359])
 by smtp.gmail.com with ESMTPSA id x133sm12693274qka.44.2019.10.24.08.54.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 08:54:20 -0700 (PDT)
From: Valdis Kletnieks <valdis.kletnieks@vt.edu>
X-Google-Original-From: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 06/15] staging: exfat: Clean up return codes - FFS_FILEEXIST
Date: Thu, 24 Oct 2019 11:53:17 -0400
Message-Id: <20191024155327.1095907-7-Valdis.Kletnieks@vt.edu>
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

Convert FFS_FILEEXIST to -EEXIST

Signed-off-by: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
---
 drivers/staging/exfat/exfat.h       |  1 -
 drivers/staging/exfat/exfat_core.c  |  2 +-
 drivers/staging/exfat/exfat_super.c | 14 +++++++-------
 3 files changed, 8 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index a2b865788697..c56363652c5d 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -216,7 +216,6 @@ static inline u16 get_row_index(u16 i)
 #define FFS_SEMAPHOREERR        6
 #define FFS_INVALIDPATH         7
 #define FFS_INVALIDFID          8
-#define FFS_FILEEXIST           10
 #define FFS_NOTOPENED           12
 #define FFS_MAXOPENED           13
 #define FFS_EOF                 15
diff --git a/drivers/staging/exfat/exfat_core.c b/drivers/staging/exfat/exfat_core.c
index af1ccd686e01..ba5680123b0f 100644
--- a/drivers/staging/exfat/exfat_core.c
+++ b/drivers/staging/exfat/exfat_core.c
@@ -2103,7 +2103,7 @@ static s32 fat_generate_dos_name(struct super_block *sb, struct chain_t *p_dir,
 	}
 
 	if ((count == 0) || (count >= 1024))
-		return FFS_FILEEXIST;
+		return -EEXIST;
 	fat_attach_count_to_dos_name(p_dosname->name, count);
 
 	/* Now dos_name has DOS~????.EXT */
diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index eb3c3642abca..2c294e238d7b 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -1288,7 +1288,7 @@ static int ffsMoveFile(struct inode *old_parent_inode, struct file_id_t *fid,
 			new_clu.flags = new_fid->flags;
 
 			if (!is_dir_empty(sb, &new_clu)) {
-				ret = FFS_FILEEXIST;
+				ret = -EEXIST;
 				goto out;
 			}
 		}
@@ -2156,7 +2156,7 @@ static int ffsRemoveDir(struct inode *inode, struct file_id_t *fid)
 	clu_to_free.flags = fid->flags;
 
 	if (!is_dir_empty(sb, &clu_to_free)) {
-		ret = FFS_FILEEXIST;
+		ret = -EEXIST;
 		goto out;
 	}
 
@@ -2358,7 +2358,7 @@ static int exfat_create(struct inode *dir, struct dentry *dentry, umode_t mode,
 	if (err) {
 		if (err == FFS_INVALIDPATH)
 			err = -EINVAL;
-		else if (err == FFS_FILEEXIST)
+		else if (err == -EEXIST)
 			err = -EEXIST;
 		else if (err == -ENOSPC)
 			err = -ENOSPC;
@@ -2569,7 +2569,7 @@ static int exfat_symlink(struct inode *dir, struct dentry *dentry,
 	if (err) {
 		if (err == FFS_INVALIDPATH)
 			err = -EINVAL;
-		else if (err == FFS_FILEEXIST)
+		else if (err == -EEXIST)
 			err = -EEXIST;
 		else if (err == -ENOSPC)
 			err = -ENOSPC;
@@ -2639,7 +2639,7 @@ static int exfat_mkdir(struct inode *dir, struct dentry *dentry, umode_t mode)
 	if (err) {
 		if (err == FFS_INVALIDPATH)
 			err = -EINVAL;
-		else if (err == FFS_FILEEXIST)
+		else if (err == -EEXIST)
 			err = -EEXIST;
 		else if (err == -ENOSPC)
 			err = -ENOSPC;
@@ -2693,7 +2693,7 @@ static int exfat_rmdir(struct inode *dir, struct dentry *dentry)
 	if (err) {
 		if (err == FFS_INVALIDPATH)
 			err = -EINVAL;
-		else if (err == FFS_FILEEXIST)
+		else if (err == -EEXIST)
 			err = -ENOTEMPTY;
 		else if (err == -ENOENT)
 			err = -ENOENT;
@@ -2750,7 +2750,7 @@ static int exfat_rename(struct inode *old_dir, struct dentry *old_dentry,
 			err = -EPERM;
 		else if (err == FFS_INVALIDPATH)
 			err = -EINVAL;
-		else if (err == FFS_FILEEXIST)
+		else if (err == -EEXIST)
 			err = -EEXIST;
 		else if (err == -ENOENT)
 			err = -ENOENT;
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
