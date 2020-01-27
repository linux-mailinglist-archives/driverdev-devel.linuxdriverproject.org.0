Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2731A14A1B4
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Jan 2020 11:15:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C7D2E85465;
	Mon, 27 Jan 2020 10:15:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w5EteTr9doXP; Mon, 27 Jan 2020 10:15:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 76F4F8573E;
	Mon, 27 Jan 2020 10:15:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 260781BF294
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 10:15:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1ED26875BC
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 10:15:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EvHcv3LEf6Uc for <devel@linuxdriverproject.org>;
 Mon, 27 Jan 2020 10:15:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8E60C878AC
 for <devel@driverdev.osuosl.org>; Mon, 27 Jan 2020 10:15:22 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id s1so4089116pfh.10
 for <devel@driverdev.osuosl.org>; Mon, 27 Jan 2020 02:15:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=JcRIPbkub/tWCLWv2xyN/6N5F607AAwY0FQRtWmXUeA=;
 b=I2BMAGxj91JaWVFHnYf9So8bsD1dfH8idbbGesPL0ij3BPjgFCvpvLWjduaA5C8qkg
 8Qa2UOd3foVbMQcndVTWVnlpHv/PNu9eGY+jlTMlbamIIvBw196VKKknWRvCeGjqnGII
 fSQhGwKhVMDj4ynx6uiUTHYjo7it5NW7KImy6H4XpdoHZW28L6ZDnSGNHdOGOhxCkQs5
 9t1ebEbrxNhPlpwApa/W8pVeqbRL3ovJXuWiFKAXF5LM+LJbbGheNJL2AQYnsxQJocku
 BfMyoYnDgZXkYoUcRo1KAkkDppttvlREYu5vumOWZvCWvGurNJzFRHQPh66Feu0z/OYr
 9AAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=JcRIPbkub/tWCLWv2xyN/6N5F607AAwY0FQRtWmXUeA=;
 b=SI5Vu6DN2/7ChzYFpCDgZMgamjPMWz+gL32mgN7+WeMqnTgzbjpb45emL9NEOLhA6H
 AaiWxXoYcUeuRjIDaeE0k+r/AngaHSdvzZ84Yi+UaoKJfshh7RzDZyun2pjdpqeNOKan
 0YvnoRazT6xqbgA9S2h4Iv5sYIV/w+ACwvKzbdCviMmEm0X+RVJ8of0rGmriE2z2yPbw
 2yZY2nVPpt4Ioh9Fp9KwThS1yeMeFM8cpvJCARYFjrdmGA9fwvWl/FZ2vmGYwYpw+IOI
 yG+zpOswEdhYQ3Apt9paM82lfPTMU+FeE1KoccTPIG3PdsFnxmUZHcKCQfZgdV9M9WX0
 AhHQ==
X-Gm-Message-State: APjAAAXCmkuvViJj3QYmcxq0F0EcpmeGuEkjro5Ei0LBydFNoMdEMWKa
 YglYcSktSiTbpvohgqZhTYg=
X-Google-Smtp-Source: APXvYqz4cpaQhSrx7z63SDuOGFvrj5XzI/Ry023qsgX7Z6Wknq4LZXkbYdBRvnz+HNjoGYRxXi+zWg==
X-Received: by 2002:a63:7c55:: with SMTP id l21mr18809439pgn.57.1580120122163; 
 Mon, 27 Jan 2020 02:15:22 -0800 (PST)
Received: from localhost.localdomain ([2405:205:c902:a5e9:3956:8df2:aee5:9cf6])
 by smtp.gmail.com with ESMTPSA id s15sm15504138pgq.4.2020.01.27.02.15.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Jan 2020 02:15:21 -0800 (PST)
From: Pragat Pandya <pragat.pandya@gmail.com>
To: valdis.kletnieks@vt.edu,
	gregkh@linuxfoundation.org
Subject: [PATCH 12/22] staging: exfat: Rename variable "ClusterSize" to
 "cluster_size"
Date: Mon, 27 Jan 2020 15:43:33 +0530
Message-Id: <20200127101343.20415-13-pragat.pandya@gmail.com>
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

Change all the occurrences of "ClusterSize" to "cluster_size" in exfat.

Signed-off-by: Pragat Pandya <pragat.pandya@gmail.com>
---
 drivers/staging/exfat/exfat.h       | 2 +-
 drivers/staging/exfat/exfat_super.c | 6 +++---
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index 8a4668d301fc..8787cb3203ba 100644
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
index 695c8793fe5f..b9445bef0e6d 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -495,7 +495,7 @@ static int ffsGetVolInfo(struct super_block *sb, struct vol_info_t *info)
 		p_fs->used_clusters = p_fs->fs_func->count_used_clusters(sb);
 
 	info->fat_type = p_fs->vol_type;
-	info->ClusterSize = p_fs->cluster_size;
+	info->cluster_size = p_fs->cluster_size;
 	info->NumClusters = p_fs->num_clusters - 2; /* clu 0 & 1 */
 	info->UsedClusters = p_fs->used_clusters;
 	info->FreeClusters = info->NumClusters - info->UsedClusters;
@@ -3349,7 +3349,7 @@ static int exfat_statfs(struct dentry *dentry, struct kstatfs *buf)
 
 	} else {
 		info.fat_type = p_fs->vol_type;
-		info.ClusterSize = p_fs->cluster_size;
+		info.cluster_size = p_fs->cluster_size;
 		info.NumClusters = p_fs->num_clusters - 2;
 		info.UsedClusters = p_fs->used_clusters;
 		info.FreeClusters = info.NumClusters - info.UsedClusters;
@@ -3359,7 +3359,7 @@ static int exfat_statfs(struct dentry *dentry, struct kstatfs *buf)
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
