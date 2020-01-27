Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B0ECE14A1B5
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Jan 2020 11:15:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5CB8F858F3;
	Mon, 27 Jan 2020 10:15:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZjnYVcM_0_lM; Mon, 27 Jan 2020 10:15:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5FBA585691;
	Mon, 27 Jan 2020 10:15:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B0BEC1BF294
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 10:15:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A39F420478
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 10:15:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cHBPKGVmbi1e for <devel@linuxdriverproject.org>;
 Mon, 27 Jan 2020 10:15:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 016422037E
 for <devel@driverdev.osuosl.org>; Mon, 27 Jan 2020 10:15:26 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id s64so4906003pgb.9
 for <devel@driverdev.osuosl.org>; Mon, 27 Jan 2020 02:15:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=B8GDmRl8TepNTcDzJT5ICA0rDYFD1xF6+jSjLMlbtuc=;
 b=afqek/uATyxIPblcJJgh6QUg8ByugTFUNdXyKY2aQ2ZL4ojwVOJ3UR/aFu5eU+majb
 v3S12LTErNzYcH9cAjcXMOqWhCGsP55ru6dd2ze4aWibktiyojGAlKH04UdRsYYSY5Io
 cfN++8wDqXREN09r7ipWJiYR0Ev+9xSYu518rWSSaHBkgbYlYStHVpDqR/a+MJEtW9LY
 eflmVm019i8UFA7E1cvi/iPJQJbO0gy/pnUWBUco7vKfO02ncwYfuXYh7bstItSJdR3z
 +UnlvP3MHtEAguNOy3fIb+EIweWYPsRq4v/3jr47KXfaRpHg4yZ/HjD+L8XSfUbzRMmu
 fSnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=B8GDmRl8TepNTcDzJT5ICA0rDYFD1xF6+jSjLMlbtuc=;
 b=ETQFjwCiNkFUO0UlE0MrGLAoJPELbTKkVAzca/ItlQ8LJp1sA9WfbPBvcoihRpvcIr
 k+In4/HGDxasY48cSWfRNKZUT0WFBnpfX/1LJP7sNceokzTJCUbpN+LJWI6SEZsJ5VWX
 Zp+fB52YpfGQ5mgGCssJp16OGFyi/wvD0XhsD/wxCSrlkfvGOwV6RS7833DAhZSeRJa5
 AH8ioQr8xzScycSQ8+y4MSRu6cPPlchQyBTsRL3SXo4JLITGGAjTMZjgvKxWA62UfTap
 yWutehYtP/sVbO845g1Z6VK1L104M1cr75DxCGMpwg5+5zwkFqlc4XDPghHBMnLOi6LK
 fezA==
X-Gm-Message-State: APjAAAU13zx4MfGSByeYO9OdRm2levBLRcwLwkjLsE68bUEzuBeIqoza
 XWebY+Dxz9kgLN00CsH5rQ4=
X-Google-Smtp-Source: APXvYqy3v+pKWVgDjy9WH7ZrBlVym3xhNyVbZysFPRgp0oPfzBUtsPSjwIwNYCvtCug6+OaUrOqqvA==
X-Received: by 2002:a63:5818:: with SMTP id m24mr18839235pgb.358.1580120126661; 
 Mon, 27 Jan 2020 02:15:26 -0800 (PST)
Received: from localhost.localdomain ([2405:205:c902:a5e9:3956:8df2:aee5:9cf6])
 by smtp.gmail.com with ESMTPSA id s15sm15504138pgq.4.2020.01.27.02.15.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Jan 2020 02:15:26 -0800 (PST)
From: Pragat Pandya <pragat.pandya@gmail.com>
To: valdis.kletnieks@vt.edu,
	gregkh@linuxfoundation.org
Subject: [PATCH 13/22] staging: exfat: Rename variable "NumClusters" to
 "num_clusters"
Date: Mon, 27 Jan 2020 15:43:34 +0530
Message-Id: <20200127101343.20415-14-pragat.pandya@gmail.com>
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

Change all the occurreces of "NumClusters" to "num_clusters" in exfat.

Signed-off-by: Pragat Pandya <pragat.pandya@gmail.com>
---
 drivers/staging/exfat/exfat.h       |  2 +-
 drivers/staging/exfat/exfat_super.c | 10 +++++-----
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index 8787cb3203ba..36baa4c9a98a 100644
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
index b9445bef0e6d..c5edf09f1123 100644
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
