Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D5122158290
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Feb 2020 19:37:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 894D085233;
	Mon, 10 Feb 2020 18:37:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4HKjvdAZwL_v; Mon, 10 Feb 2020 18:37:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 828D485116;
	Mon, 10 Feb 2020 18:37:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C929B1BF964
 for <devel@linuxdriverproject.org>; Mon, 10 Feb 2020 18:37:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C3BF084545
 for <devel@linuxdriverproject.org>; Mon, 10 Feb 2020 18:37:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rQx0TewV8az7 for <devel@linuxdriverproject.org>;
 Mon, 10 Feb 2020 18:37:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0FB4585233
 for <devel@driverdev.osuosl.org>; Mon, 10 Feb 2020 18:37:15 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id z12so4358902pgl.4
 for <devel@driverdev.osuosl.org>; Mon, 10 Feb 2020 10:37:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=kCL9QcX2KJtyxfPizFGD83Z8ooNVX2oTvcxNkikn/Ts=;
 b=dj5je7hvcEUczA33TOqtQ+y470CpD8/evhLPIhyNFsLBVvdOuDoALrm4qPp44LIV+n
 cFhJfmAp0GoCzYDPko1mb+BQGvZj8IR+bpqayC2NvaQ5O4R3a9ul7S0jQnY57XYkEuqm
 Hrn+vkKPeaqVERaRhWBi9GnKmfUkk1C0qKTdgkXy0sMC8zec9opfbnvolF2AJpDOYdx9
 ZkNJ1NCxMJ6AFGE2ZBUZnMzFfRVqRI2Woifi7rRGp/BiAk2DCZ4Vi4XMNVycT0bXaUm4
 x+972fcP3l2k1x30FILf1y9v9LleXgNBa9SO23d7NBfGp9YyOMygH7pcZvzsAzfaXnJn
 z6oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=kCL9QcX2KJtyxfPizFGD83Z8ooNVX2oTvcxNkikn/Ts=;
 b=GMa25O9hKICNkE93vF4Iv56C+GSYraQFbhJ4i+zAdrQJUaEJd2nefTQroP5CtEfOtv
 138X7grgk7+kFNUjmvIvV/Bg+GFMK3YDDNgImNLh7CkhqnZiFkuyFUK4CNUOLr8ujBG4
 WnfrnBa5kRgZ9O9ETsf/PdiAANmF+n46r22ItHLzKp+ukoQx0gTBcH5D/Kpnz/rndbzx
 ODjUUd/jfvZLmsPYehhjHQkDdYUBHCvy/vvVA70i9EyWefd+JdXLJl4a/S48zeHPlkmO
 9q+TjGxIEinB/D3PBVLd0f2ZHyKFvsmFYObTE5vJwYAEDmQotuoxDOTt/cDkAuQFWrdX
 a8rw==
X-Gm-Message-State: APjAAAVL+921UkUXsEEO5tgEUDSbTvKUuCl8vEiImdz7fDhCuGHVhErj
 3Q2PZyC3Oa0GUAlxHGWXSbM=
X-Google-Smtp-Source: APXvYqzGxQerJUOOggWdedxuKYWqVlTZmLjKxvVUTa0jHue0GqKzY9ljHH6k3xo3o3HQwp+pM7ssPg==
X-Received: by 2002:a63:3e09:: with SMTP id l9mr3025858pga.149.1581359834735; 
 Mon, 10 Feb 2020 10:37:14 -0800 (PST)
Received: from localhost.localdomain ([2405:204:8308:74f3:144f:bb39:afc3:51b0])
 by smtp.gmail.com with ESMTPSA id gc1sm124922pjb.20.2020.02.10.10.37.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2020 10:37:14 -0800 (PST)
From: Pragat Pandya <pragat.pandya@gmail.com>
To: gregkh@linuxfoundation.org,
	valdis.kletnieks@vt.edu
Subject: [PATCH v2 09/19] staging: exfat: Rename variable 'ClusterSize' to
 'cluster_size'
Date: Tue, 11 Feb 2020 00:05:48 +0530
Message-Id: <20200210183558.11836-10-pragat.pandya@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200210183558.11836-1-pragat.pandya@gmail.com>
References: <20200207094612.GA562325@kroah.com>
 <20200210183558.11836-1-pragat.pandya@gmail.com>
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

Fix checkpatch warning: Avoid CamelCase
Change all occurrences of identifier "ClusterSize" to "cluster_size"

Signed-off-by: Pragat Pandya <pragat.pandya@gmail.com>
---
 drivers/staging/exfat/exfat.h       | 2 +-
 drivers/staging/exfat/exfat_super.c | 6 +++---
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index 43c40addf5a5..c6e3981cc370 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -243,7 +243,7 @@ struct dev_info_t {
 
 struct vol_info_t {
 	u32      fat_type;
-	u32      ClusterSize;
+	u32      cluster_size;
 	u32      NumClusters;
 	u32      FreeClusters;
 	u32      UsedClusters;
diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index 7b5be94a0bb7..cac5631d0f11 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -495,7 +495,7 @@ static int ffsGetVolInfo(struct super_block *sb, struct vol_info_t *info)
 		p_fs->used_clusters = exfat_count_used_clusters(sb);
 
 	info->fat_type = p_fs->vol_type;
-	info->ClusterSize = p_fs->cluster_size;
+	info->cluster_size = p_fs->cluster_size;
 	info->NumClusters = p_fs->num_clusters - 2; /* clu 0 & 1 */
 	info->UsedClusters = p_fs->used_clusters;
 	info->FreeClusters = info->NumClusters - info->UsedClusters;
@@ -3346,7 +3346,7 @@ static int exfat_statfs(struct dentry *dentry, struct kstatfs *buf)
 
 	} else {
 		info.fat_type = p_fs->vol_type;
-		info.ClusterSize = p_fs->cluster_size;
+		info.cluster_size = p_fs->cluster_size;
 		info.NumClusters = p_fs->num_clusters - 2;
 		info.UsedClusters = p_fs->used_clusters;
 		info.FreeClusters = info.NumClusters - info.UsedClusters;
@@ -3356,7 +3356,7 @@ static int exfat_statfs(struct dentry *dentry, struct kstatfs *buf)
 	}
 
 	buf->f_type = sb->s_magic;
-	buf->f_bsize = info.ClusterSize;
+	buf->f_bsize = info.cluster_size;
 	buf->f_blocks = info.NumClusters;
 	buf->f_bfree = info.FreeClusters;
 	buf->f_bavail = info.FreeClusters;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
