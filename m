Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F029514A1B8
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Jan 2020 11:15:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8DCD185B95;
	Mon, 27 Jan 2020 10:15:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9chh-nCmsfJR; Mon, 27 Jan 2020 10:15:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4829685AD6;
	Mon, 27 Jan 2020 10:15:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9FF7C1BF294
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 10:15:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 992498786C
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 10:15:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pizbum0lOAXE for <devel@linuxdriverproject.org>;
 Mon, 27 Jan 2020 10:15:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 089FB875BC
 for <devel@driverdev.osuosl.org>; Mon, 27 Jan 2020 10:15:32 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id s64so4906091pgb.9
 for <devel@driverdev.osuosl.org>; Mon, 27 Jan 2020 02:15:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=2ffH0K8BFmkOC/vLFRY737ndfJQRlqPy+w9ONVEocJo=;
 b=tpiOhf+569/miNYtRdQIQc0t5PkG61c9/QOKwLgZLiok6RPr5VJQq/nHvYYeJBJa/3
 PQhgiqwJaR7JM9sIKZozopyZCuvLqCrivfOHKszGF80AR1CQjywguqt4IRcEbnUnLaf/
 q5YncfI/H2rwGi1DnaIRVCjm8BAQu1OHKCg4HIhwFFVpdhfrDootcccKHqhYoL9mudmX
 fPKAFRUZpfCd2567jSaSgbNLD7+yFVleJFdzmjPEqsD3YG8796uvaFDmjlRIuB5nFSPt
 gKe6Zqy/Zt7UJp0d7e3Br7kXhJh6VQ3eCkf24Y9IGpyTyeqwB4foMFfSPoj/0NC7cODB
 HHqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=2ffH0K8BFmkOC/vLFRY737ndfJQRlqPy+w9ONVEocJo=;
 b=dJr5X/5IUpy8qbPbDatlmL/mp7pGaQZhFxMM+WkybtkAuGAdTqodtbEBcM0vIgviAJ
 7mMTnWBxOZNIBkPIzdv9yizQX2TGt+AHMOXs+yiqWB2zWNppjdm78M5w/LL6NR8T7SLM
 vSjIlfhNfH1XTGdw43D71ozmam6ZTovZnamlr7AskZ1V0RkQ/IdjsSkFKnR9lRnTN9Zk
 B87g6qx/hirYyzMiNBTGxGmrdDlX4TM69CC0KpyWgcO2YRWP2NRJk/HnlqFnIiXzliqy
 IGu5ap6EmbxPLbTLvsJXIOAqVr3Tl+EFjCCX3y2uuftU3PpjsCpjur+k4316bY1BoayK
 c5gw==
X-Gm-Message-State: APjAAAUATCCwK0qpQXgEAv1LEBzbLsn1UbU897+KbkFv3Yc8tdpoj+sn
 569o+nF1eBkma5oleqZRPII=
X-Google-Smtp-Source: APXvYqyeU4HI+w6Zs4rhoa0d+PXReVp8dIkqtpHlKYuVreJmGlb4KefHZiLlPCdD8iv/YWTXQSPw1Q==
X-Received: by 2002:a63:1d1a:: with SMTP id d26mr17685427pgd.98.1580120131638; 
 Mon, 27 Jan 2020 02:15:31 -0800 (PST)
Received: from localhost.localdomain ([2405:205:c902:a5e9:3956:8df2:aee5:9cf6])
 by smtp.gmail.com with ESMTPSA id s15sm15504138pgq.4.2020.01.27.02.15.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Jan 2020 02:15:31 -0800 (PST)
From: Pragat Pandya <pragat.pandya@gmail.com>
To: valdis.kletnieks@vt.edu,
	gregkh@linuxfoundation.org
Subject: [PATCH 14/22] staging: exfat: Rename variable "FreeClusters" to
 "free_clusters"
Date: Mon, 27 Jan 2020 15:43:35 +0530
Message-Id: <20200127101343.20415-15-pragat.pandya@gmail.com>
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

Change all the occurrences of "FreeClusters" to "free_clusters" in
exfat.

Signed-off-by: Pragat Pandya <pragat.pandya@gmail.com>
---
 drivers/staging/exfat/exfat.h       | 2 +-
 drivers/staging/exfat/exfat_super.c | 8 ++++----
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index 36baa4c9a98a..4cc5c1914864 100644
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
index c5edf09f1123..7a8b876414bd 100644
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
@@ -3352,7 +3352,7 @@ static int exfat_statfs(struct dentry *dentry, struct kstatfs *buf)
 		info.cluster_size = p_fs->cluster_size;
 		info.num_clusters = p_fs->num_clusters - 2;
 		info.UsedClusters = p_fs->used_clusters;
-		info.FreeClusters = info.num_clusters - info.UsedClusters;
+		info.free_clusters = info.num_clusters - info.UsedClusters;
 
 		if (p_fs->dev_ejected)
 			pr_info("[EXFAT] statfs on device that is ejected\n");
@@ -3361,8 +3361,8 @@ static int exfat_statfs(struct dentry *dentry, struct kstatfs *buf)
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
