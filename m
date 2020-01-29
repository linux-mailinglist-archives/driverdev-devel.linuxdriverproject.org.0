Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9710C14CED5
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Jan 2020 17:59:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4873785F71;
	Wed, 29 Jan 2020 16:59:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I6Fs-Yttsi7F; Wed, 29 Jan 2020 16:59:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 766E5834A0;
	Wed, 29 Jan 2020 16:59:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A435C1BF215
 for <devel@linuxdriverproject.org>; Wed, 29 Jan 2020 16:59:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9901D832E1
 for <devel@linuxdriverproject.org>; Wed, 29 Jan 2020 16:59:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9mb6maOTK4Fx for <devel@linuxdriverproject.org>;
 Wed, 29 Jan 2020 16:59:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id ED11781F2C
 for <devel@driverdev.osuosl.org>; Wed, 29 Jan 2020 16:59:48 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id t6so169846plj.5
 for <devel@driverdev.osuosl.org>; Wed, 29 Jan 2020 08:59:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=6ZbBhIi0riG/FffoHPYCh51NnFjjYqXGbFi/rzBY4g8=;
 b=PanbDHou8mhsrOBc69UOZyTngiEm8iDn5oseDnSAz+rMw8vbwMrDAaSir43qohiOYf
 IBpLw/I1Jiu27c99X6Qhlx2ZoFkAH4WE95oQ3SChbL9B7DAZaNIS6mV18Iu/5zlZeoOp
 iJeX427lwXFFiLFVYHcPwMqZwZAbRpPoAhROajvJWv9sLleTzOqqeRslPFU5fmRYjH4E
 9XzeDtWLlOgBmf0V51vYMfQ3k//tJJhG4UNRcArRq/H2O1dokzfUbKRRg2cE8Ut5i+CI
 Z92auWIftgpF7l8k78ygxTe2ZfYi+tYCOrwPlWSRSR+V3r+6GZNI7UQ4xbhcSQ8kE7Sy
 eDMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=6ZbBhIi0riG/FffoHPYCh51NnFjjYqXGbFi/rzBY4g8=;
 b=CfHELH2mFmj2nHcHFQDMK8k6R0UP/CE8lYTLAEUpNTvJMzAaOTuhgdsZczYS8SvNqj
 xHu/C7WP5XOyf3VAgxV7hd04+NIRzCmuHrrlZgFhPu/B5X7ljdoO5qmYMtvvHh8Q4YPo
 soD54iIoHOjIWPiuMOvOe5hj9IYPZ4vt+U+OAem3oBzzVVecs+CZ9iDXNXN7V6V8F3J3
 KCRWJdI7OVvOfr09mbbv53933KnDsF9mDBsuyrcmnOzBAHk4Z0NJwh4cLVlBPnm6nouI
 z/H2yihvRgpD7L8Oid8fY0dcaPSeecVn0RZsrXA1YCC+2wwSX2qYg9hGbRoVFxwFCgXJ
 aFbA==
X-Gm-Message-State: APjAAAXImoA59W6xi6ylkf5SqJVDMPrpK59FASZfWBQ+5JSNZkIg44YU
 4tCucDnXHTYVDX724mfa8Qc=
X-Google-Smtp-Source: APXvYqwCjJDPtZFFe4m2zkyLFY91/aQnmcgFPFrJlbSY60+TzUbowjEIKyEw9282hQtPDF5v5/eHGw==
X-Received: by 2002:a17:902:6b82:: with SMTP id
 p2mr279070plk.259.1580317188504; 
 Wed, 29 Jan 2020 08:59:48 -0800 (PST)
Received: from localhost.localdomain ([2405:205:c92f:3ccd:49ce:a9e3:28b5:cf94])
 by smtp.gmail.com with ESMTPSA id f8sm3223610pfn.2.2020.01.29.08.59.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Jan 2020 08:59:47 -0800 (PST)
From: Pragat Pandya <pragat.pandya@gmail.com>
To: gregkh@linuxfoundation.org,
	valdis.kletnieks@vt.edu
Subject: [PATCH 10/19] staging: exfat: Rename variable 'NumClusters' to
 'num_cluster'
Date: Wed, 29 Jan 2020 22:28:23 +0530
Message-Id: <20200129165832.10574-11-pragat.pandya@gmail.com>
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
Change all occurrences of identifier "NumClusters" to "num_clusters"

Signed-off-by: Pragat Pandya <pragat.pandya@gmail.com>
---
 drivers/staging/exfat/exfat.h       |  2 +-
 drivers/staging/exfat/exfat_super.c | 10 +++++-----
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index c9d9791312f0..3fd234a323fb 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -244,7 +244,7 @@ struct dev_info_t {
 struct vol_info_t {
 	u32      fat_type;
 	u32      cluster_size;
-	u32      NumClusters;
+	u32      num_clusters;
 	u32      FreeClusters;
 	u32      UsedClusters;
 };
diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index ac6f38508d2b..d8de39917bc0 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -496,9 +496,9 @@ static int ffsGetVolInfo(struct super_block *sb, struct vol_info_t *info)
 
 	info->fat_type = p_fs->vol_type;
 	info->cluster_size = p_fs->cluster_size;
-	info->NumClusters = p_fs->num_clusters - 2; /* clu 0 & 1 */
+	info->num_clusters = p_fs->num_clusters - 2; /* clu 0 & 1 */
 	info->UsedClusters = p_fs->used_clusters;
-	info->FreeClusters = info->NumClusters - info->UsedClusters;
+	info->FreeClusters = info->num_clusters - info->UsedClusters;
 
 	if (p_fs->dev_ejected)
 		err = -EIO;
@@ -3350,9 +3350,9 @@ static int exfat_statfs(struct dentry *dentry, struct kstatfs *buf)
 	} else {
 		info.fat_type = p_fs->vol_type;
 		info.cluster_size = p_fs->cluster_size;
-		info.NumClusters = p_fs->num_clusters - 2;
+		info.num_clusters = p_fs->num_clusters - 2;
 		info.UsedClusters = p_fs->used_clusters;
-		info.FreeClusters = info.NumClusters - info.UsedClusters;
+		info.FreeClusters = info.num_clusters - info.UsedClusters;
 
 		if (p_fs->dev_ejected)
 			pr_info("[EXFAT] statfs on device that is ejected\n");
@@ -3360,7 +3360,7 @@ static int exfat_statfs(struct dentry *dentry, struct kstatfs *buf)
 
 	buf->f_type = sb->s_magic;
 	buf->f_bsize = info.cluster_size;
-	buf->f_blocks = info.NumClusters;
+	buf->f_blocks = info.num_clusters;
 	buf->f_bfree = info.FreeClusters;
 	buf->f_bavail = info.FreeClusters;
 	buf->f_fsid.val[0] = (u32)id;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
