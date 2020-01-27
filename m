Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C52514A1AE
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Jan 2020 11:15:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E98FC85852;
	Mon, 27 Jan 2020 10:15:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nOzVGgj55Q4d; Mon, 27 Jan 2020 10:15:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9A02B8392B;
	Mon, 27 Jan 2020 10:15:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 86C4E1BF294
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 10:15:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 83817878AC
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 10:15:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mcgS-DcQwl8x for <devel@linuxdriverproject.org>;
 Mon, 27 Jan 2020 10:15:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 59609878C4
 for <devel@driverdev.osuosl.org>; Mon, 27 Jan 2020 10:15:17 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id q8so4695517pfh.7
 for <devel@driverdev.osuosl.org>; Mon, 27 Jan 2020 02:15:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=srlge2UyLaMLQMOBuVNCorvu2hILs9zTEX6ffyYx364=;
 b=U4n4tTx9CiDzqkS0IdtHnP7N1ZHpLKh96OZLl+ZrMLImNebgom7M96D+0WF3xRUXYi
 z6iawH0aejcJDS3JkyFw3n1Zccive5w88Ab0N/TA8wp119GxrJlNosIIshJZvZdyhl6o
 H05eACtTp6dADrYdAkKMcMY6TZSw1wFh9c7x2fTEnmoS7b/PWykcoCQNOWed9OMbQKdF
 3zVWPrSKuWWjM+P4RBdJuUileIp1Z/NGGKtqzgGobJviWPZgp1ehsJqirRCe+YaeeZ2D
 30mynq82LB80knhA4yLn4Bfq1kjYttKZ8JxCb79F+BrENO03bl8hsGsX3cvD4q/0JQ97
 OJdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=srlge2UyLaMLQMOBuVNCorvu2hILs9zTEX6ffyYx364=;
 b=X7zAsCu+R0h6FV/RbawqdbHr4g+F7AonLJv1RI5zpp6KipmA/+IJgTcoFqQ6RYjfhn
 klid3sC7bIQlpchDIYDoqRRpsqqDb51iV9arRBr/xBlvkh9VeUKQ/BUYIxKyc7v1rIIC
 o3BZaQt84DB4HlRJfTTKp33+Npnnu2OSEVqa1kU3I+FB+JrxaKg+67bZ6vI5N2VBPck4
 lGkhGBkLoZiOW8LEaqRJrabB6ejE6W9dYGehP3CoOYOwr083ROjBkzNhIObzT2OTj4f6
 UBepjdt9Ti5ZbjmiQH5OR1Opl+14rmNsuwAXYnLWzVssm0I4qMdzmgbyQNF1ksc7bDeL
 wOfQ==
X-Gm-Message-State: APjAAAVGCfk8zxgAQs43A0gKlf9fWhH4voDoCpQ7E5kuJJI+EYSD10ml
 jJIEd6uND3n27gOmwoYFa2A=
X-Google-Smtp-Source: APXvYqysbjV2ji5EYJHV5PyvyPXacfZu6qeM1cE0RQF4rGdVXXJfVcjO/TIlowqCy56Zw1aaUiQF0A==
X-Received: by 2002:a65:420d:: with SMTP id c13mr19176232pgq.101.1580120117036; 
 Mon, 27 Jan 2020 02:15:17 -0800 (PST)
Received: from localhost.localdomain ([2405:205:c902:a5e9:3956:8df2:aee5:9cf6])
 by smtp.gmail.com with ESMTPSA id s15sm15504138pgq.4.2020.01.27.02.15.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Jan 2020 02:15:16 -0800 (PST)
From: Pragat Pandya <pragat.pandya@gmail.com>
To: valdis.kletnieks@vt.edu,
	gregkh@linuxfoundation.org
Subject: [PATCH 11/22] staging: exfat: Rename variable "FatType" to "fat_type"
Date: Mon, 27 Jan 2020 15:43:32 +0530
Message-Id: <20200127101343.20415-12-pragat.pandya@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200127101343.20415-1-pragat.pandya@gmail.com>
References: <20200127101343.20415-1-pragat.pandya@gmail.com>
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

Change all the occurrences of "FatType" to "fat_type" in exfat.

Signed-off-by: Pragat Pandya <pragat.pandya@gmail.com>
---
 drivers/staging/exfat/exfat.h       | 2 +-
 drivers/staging/exfat/exfat_super.c | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index 58292495bb57..8a4668d301fc 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -242,7 +242,7 @@ struct dev_info_t {
 };
 
 struct vol_info_t {
-	u32      FatType;
+	u32      fat_type;
 	u32      ClusterSize;
 	u32      NumClusters;
 	u32      FreeClusters;
diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index 6cc21d795589..695c8793fe5f 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -494,7 +494,7 @@ static int ffsGetVolInfo(struct super_block *sb, struct vol_info_t *info)
 	if (p_fs->used_clusters == UINT_MAX)
 		p_fs->used_clusters = p_fs->fs_func->count_used_clusters(sb);
 
-	info->FatType = p_fs->vol_type;
+	info->fat_type = p_fs->vol_type;
 	info->ClusterSize = p_fs->cluster_size;
 	info->NumClusters = p_fs->num_clusters - 2; /* clu 0 & 1 */
 	info->UsedClusters = p_fs->used_clusters;
@@ -3348,7 +3348,7 @@ static int exfat_statfs(struct dentry *dentry, struct kstatfs *buf)
 			return -EIO;
 
 	} else {
-		info.FatType = p_fs->vol_type;
+		info.fat_type = p_fs->vol_type;
 		info.ClusterSize = p_fs->cluster_size;
 		info.NumClusters = p_fs->num_clusters - 2;
 		info.UsedClusters = p_fs->used_clusters;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
