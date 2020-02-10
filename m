Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A323B1582A2
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Feb 2020 19:37:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2CA7C204B4;
	Mon, 10 Feb 2020 18:37:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M7FKi6MhdiV1; Mon, 10 Feb 2020 18:37:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7CC7120499;
	Mon, 10 Feb 2020 18:37:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1CB0E1BF964
 for <devel@linuxdriverproject.org>; Mon, 10 Feb 2020 18:37:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1988F85193
 for <devel@linuxdriverproject.org>; Mon, 10 Feb 2020 18:37:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OLjLlzq6k05S for <devel@linuxdriverproject.org>;
 Mon, 10 Feb 2020 18:37:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f65.google.com (mail-pj1-f65.google.com
 [209.85.216.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A08EA8513B
 for <devel@driverdev.osuosl.org>; Mon, 10 Feb 2020 18:37:25 +0000 (UTC)
Received: by mail-pj1-f65.google.com with SMTP id gv17so120997pjb.1
 for <devel@driverdev.osuosl.org>; Mon, 10 Feb 2020 10:37:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=HfStNmJze4gtu3p+ndhiR96JnMn6mxUwQjjELtrDbgw=;
 b=nbgcE4S82HyLS8e82SBCtKIJg82H9pfKpp6uxHmNuLCbHLUpc/vT6MXxfZEbEif+ki
 q1COMmUn+EwQwUoHNEweenRBvWQTF+0QI11jmZ0EKcSXKmFMYSe8vxU4Es1mTw4ZhCKM
 jG00Y6R7FI7UIFYGPHpn8rVJH5cxkqw34hcHh+ljQgHxm9ZyYH5SmFYMMq6amKjrQUoD
 kwn3SsD/y8qPOTrLj5eiO04vUyZue+3kMRUHWCX0MpKZLZPN3kqfhq2uFFLK0DF5sCUO
 Y41RxtsvkV/1bl90njlJesWxnq8UEdy8ga8l1b8gdqw0VF94T8YFYJzs4RktPwIzZdZP
 7ktQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=HfStNmJze4gtu3p+ndhiR96JnMn6mxUwQjjELtrDbgw=;
 b=L4nCAfGR+ZqbhjZggdMy+c4Uxpl+9JPNLrWUHvDTgjzT+r+tTwZuCm1uDet5AGN82/
 aG7yjpEkdbTpU0Lyzh7//miZ3hZed2XgurNznpjJ4R4R8/76Ex5RUa6madYLbomntG6V
 5z4TDVTzsjWlYL8jqsYXkNDSndYTctvlH7HnGyA1KdtvrST6vh9jmPLi9Hzw8nEKRXPP
 vfben3o8zhTtLcskGIa8sH73rWuJGRVXRcZ45P788bGSrWnPHm2HasypVaaYn2LDyUM5
 4qz871AN2uQhpv6vi3Q1/hxhHWfe8shKc3/sufB3Q0vjkJgiDTObrdIDSDUZyQnUGVPK
 lWuQ==
X-Gm-Message-State: APjAAAV3VpsQqHS+KpINgwakm7RyMUeodTdwhVYYqRuclnZq6Nv07CTB
 upoA7ngBEcYmOnm1E400viA=
X-Google-Smtp-Source: APXvYqyfBTYIZhMkueWHP73fRu6clkAmebFrfnGeR5nEwSvXvDu41+vPTgK9KG4bgb8HNxd5QMKuDg==
X-Received: by 2002:a17:902:9349:: with SMTP id
 g9mr14045799plp.110.1581359845297; 
 Mon, 10 Feb 2020 10:37:25 -0800 (PST)
Received: from localhost.localdomain ([2405:204:8308:74f3:144f:bb39:afc3:51b0])
 by smtp.gmail.com with ESMTPSA id gc1sm124922pjb.20.2020.02.10.10.37.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2020 10:37:24 -0800 (PST)
From: Pragat Pandya <pragat.pandya@gmail.com>
To: gregkh@linuxfoundation.org,
	valdis.kletnieks@vt.edu
Subject: [PATCH v2 11/19] staging: exfat: Rename variable 'FreeClusters' to
 'free_clusters'
Date: Tue, 11 Feb 2020 00:05:50 +0530
Message-Id: <20200210183558.11836-12-pragat.pandya@gmail.com>
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
Change all occurrences of identifier "FreeClusters" to "free_clusters"

Signed-off-by: Pragat Pandya <pragat.pandya@gmail.com>
---
 drivers/staging/exfat/exfat.h       | 2 +-
 drivers/staging/exfat/exfat_super.c | 8 ++++----
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index df84a729d5d5..aa6c46628fdd 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -245,7 +245,7 @@ struct vol_info_t {
 	u32      fat_type;
 	u32      cluster_size;
 	u32      num_clusters;
-	u32      FreeClusters;
+	u32      free_clusters;
 	u32      UsedClusters;
 };
 
diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index 59e18b37dd7d..dcccf4170afe 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -498,7 +498,7 @@ static int ffsGetVolInfo(struct super_block *sb, struct vol_info_t *info)
 	info->cluster_size = p_fs->cluster_size;
 	info->num_clusters = p_fs->num_clusters - 2; /* clu 0 & 1 */
 	info->UsedClusters = p_fs->used_clusters;
-	info->FreeClusters = info->num_clusters - info->UsedClusters;
+	info->free_clusters = info->num_clusters - info->UsedClusters;
 
 	if (p_fs->dev_ejected)
 		err = -EIO;
@@ -3349,7 +3349,7 @@ static int exfat_statfs(struct dentry *dentry, struct kstatfs *buf)
 		info.cluster_size = p_fs->cluster_size;
 		info.num_clusters = p_fs->num_clusters - 2;
 		info.UsedClusters = p_fs->used_clusters;
-		info.FreeClusters = info.num_clusters - info.UsedClusters;
+		info.free_clusters = info.num_clusters - info.UsedClusters;
 
 		if (p_fs->dev_ejected)
 			pr_info("[EXFAT] statfs on device that is ejected\n");
@@ -3358,8 +3358,8 @@ static int exfat_statfs(struct dentry *dentry, struct kstatfs *buf)
 	buf->f_type = sb->s_magic;
 	buf->f_bsize = info.cluster_size;
 	buf->f_blocks = info.num_clusters;
-	buf->f_bfree = info.FreeClusters;
-	buf->f_bavail = info.FreeClusters;
+	buf->f_bfree = info.free_clusters;
+	buf->f_bavail = info.free_clusters;
 	buf->f_fsid.val[0] = (u32)id;
 	buf->f_fsid.val[1] = (u32)(id >> 32);
 	buf->f_namelen = 260;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
