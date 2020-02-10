Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 572C51582A3
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Feb 2020 19:37:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id F2EB287987;
	Mon, 10 Feb 2020 18:37:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DWSXHaOG1EBe; Mon, 10 Feb 2020 18:37:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5CD358731A;
	Mon, 10 Feb 2020 18:37:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BA6D11BF964
 for <devel@linuxdriverproject.org>; Mon, 10 Feb 2020 18:37:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AE96C20499
 for <devel@linuxdriverproject.org>; Mon, 10 Feb 2020 18:37:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xfsgagWWXpjA for <devel@linuxdriverproject.org>;
 Mon, 10 Feb 2020 18:37:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 18ABD204A9
 for <devel@driverdev.osuosl.org>; Mon, 10 Feb 2020 18:37:30 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id b22so3148648pls.12
 for <devel@driverdev.osuosl.org>; Mon, 10 Feb 2020 10:37:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=6lwk7miD+ae4jYYUu6bZ8+EVLNhjmBds1tK8zZYoDaY=;
 b=AYHYMyiVBRhvvhLK2Df31om+O/xI0JupMjAhijHFJeHmLBOMZaWGpChcBRc8j34moa
 c9K9hFTlP6fEFDI4kCY77reTrKUghuTWoxDnahIcliazM3xnzmkfkshbdQKBq5x0pPlk
 U8XwKvDQqUGgGYhrrP45KXuGA0CSdc/DKaHy2anZASMikSEeKmtaJrfFkD9/WgAulcSo
 gwdVRMHtoIkEG06e7RKXQ4r3IDRZ72n/Fl7TZfeOnTj971VvN1QU60wG8cNMPmx+hNFJ
 FGmTZwowFK/IcHtLOkZFAFL7uBflq/c03u75SdU/4xZnxTRJgf5Dlx+A6ChwYIXqOzlk
 XCMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=6lwk7miD+ae4jYYUu6bZ8+EVLNhjmBds1tK8zZYoDaY=;
 b=kVmhmaAtAnzAo8TsXcr0sfoInQ0uYKZOO1JFx2gD245rPlILtBHux44kEK02f1gnJZ
 3D91ASF6BPeb35tpFdABgW+Af2lzyWNHjPSZTv6YJQP4QqrcaDmw29tdxmDS/PDSypql
 1gt+gG+534zSPxDlaF7JpnlK61+tlfZz4DbKt4JHSA5468QMUubHKw5pH+aHct8He+HP
 JfSjs22+OMVUdLyNNQRRjoDzTNNBNxzCV74gURGO+Z+JrgqxdU1Yl9RkSyNr472R0JXq
 FMoxSTHaIwt37nA2D+QPQBJ7CcIXvAGN+2qtSfgGReEh5SkdJrFhnEMlDanXBSLtS+nQ
 MihA==
X-Gm-Message-State: APjAAAUqqh31HBkYN39F9JEj2Lr76kpM6h9s9jWQCp1KoVdd2nOUa0MC
 V/8gHIvc/heWlwzz+7ZWf8M=
X-Google-Smtp-Source: APXvYqy9BhBfDaOAN2mGbOwrysU4PzmHuWlw6ufGWELxO5+2Bk5SILjeWy2pZchgdlgTrLTs80YRJw==
X-Received: by 2002:a17:90a:af81:: with SMTP id w1mr505149pjq.14.1581359849734; 
 Mon, 10 Feb 2020 10:37:29 -0800 (PST)
Received: from localhost.localdomain ([2405:204:8308:74f3:144f:bb39:afc3:51b0])
 by smtp.gmail.com with ESMTPSA id gc1sm124922pjb.20.2020.02.10.10.37.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2020 10:37:29 -0800 (PST)
From: Pragat Pandya <pragat.pandya@gmail.com>
To: gregkh@linuxfoundation.org,
	valdis.kletnieks@vt.edu
Subject: [PATCH v2 12/19] staging: exfat: Rename variable 'UsedClusters' to
 'used_clusters'
Date: Tue, 11 Feb 2020 00:05:51 +0530
Message-Id: <20200210183558.11836-13-pragat.pandya@gmail.com>
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
Change all occurrences of identifier "UsedClusters" to "used_clusters"

Signed-off-by: Pragat Pandya <pragat.pandya@gmail.com>
---
 drivers/staging/exfat/exfat.h       | 2 +-
 drivers/staging/exfat/exfat_super.c | 8 ++++----
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index aa6c46628fdd..01d79dcc1c94 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -246,7 +246,7 @@ struct vol_info_t {
 	u32      cluster_size;
 	u32      num_clusters;
 	u32      free_clusters;
-	u32      UsedClusters;
+	u32      used_clusters;
 };
 
 /* directory structure */
diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index dcccf4170afe..7d70206eb5f8 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -497,8 +497,8 @@ static int ffsGetVolInfo(struct super_block *sb, struct vol_info_t *info)
 	info->fat_type = p_fs->vol_type;
 	info->cluster_size = p_fs->cluster_size;
 	info->num_clusters = p_fs->num_clusters - 2; /* clu 0 & 1 */
-	info->UsedClusters = p_fs->used_clusters;
-	info->free_clusters = info->num_clusters - info->UsedClusters;
+	info->used_clusters = p_fs->used_clusters;
+	info->free_clusters = info->num_clusters - info->used_clusters;
 
 	if (p_fs->dev_ejected)
 		err = -EIO;
@@ -3348,8 +3348,8 @@ static int exfat_statfs(struct dentry *dentry, struct kstatfs *buf)
 		info.fat_type = p_fs->vol_type;
 		info.cluster_size = p_fs->cluster_size;
 		info.num_clusters = p_fs->num_clusters - 2;
-		info.UsedClusters = p_fs->used_clusters;
-		info.free_clusters = info.num_clusters - info.UsedClusters;
+		info.used_clusters = p_fs->used_clusters;
+		info.free_clusters = info.num_clusters - info.used_clusters;
 
 		if (p_fs->dev_ejected)
 			pr_info("[EXFAT] statfs on device that is ejected\n");
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
