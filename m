Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 864CF14A1BC
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Jan 2020 11:15:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3E9868594B;
	Mon, 27 Jan 2020 10:15:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wEuZzuECNdcy; Mon, 27 Jan 2020 10:15:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 31D3E85660;
	Mon, 27 Jan 2020 10:15:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 25CEE1BF294
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 10:15:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2242485660
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 10:15:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gI66ux3VsXhw for <devel@linuxdriverproject.org>;
 Mon, 27 Jan 2020 10:15:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id AC3F385657
 for <devel@driverdev.osuosl.org>; Mon, 27 Jan 2020 10:15:36 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id s1so4089348pfh.10
 for <devel@driverdev.osuosl.org>; Mon, 27 Jan 2020 02:15:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=eMr4psfWgJ9fb4qbP9kKyPdJt7Lo5XGdcJP/eVazIso=;
 b=IOom2ukhWfgNkJRLBcke9EKnz6KTi0/vaHrfCaz/g1+TL2io1DE6doYYcxrp0yqNZo
 sx6tkg4oMaDQTPvZi5GuP7HK49stci4jd81bFLke3W+YnBhRXjdCf9O+XLoKiypdU/LM
 cm3POzg0I/hlcR/gh7A8QyZBa08ghlp+zTxOk8ZNwV1UNYHy7J9X8yzG21PW9Jqq3v1U
 /fYyvg+SCetcffMmD0VGsmQ195sHdXsAl/4CQD5T/APaamNigBdHWgWO1GGPHjYAMhU3
 RngrieQSpnWlCHNkZmgzlRs/sV7rpya6GPiFtu01YGeHxEoJnbxv4Zi81spH1UgHtLCs
 GQUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=eMr4psfWgJ9fb4qbP9kKyPdJt7Lo5XGdcJP/eVazIso=;
 b=C4KYuObDfcO4AEPXh3r2+17iw68WyRQLSrcO/spkasaELa/ph6CNyM2C0IgiIscq+/
 UBECfuWIV1h9TegYLw12noCB409l6MGDhU6DBEJtbUpgcyuTZdmhvM1kvYXUPXGuuz1u
 L3On8qcw9uy2JbOLEcM+TYMsYtvsqS0C3V4SK02gPX+gmoDOuYrg4b4IN2UP3UVnGWzq
 TNoj3eYaNBk5XlKgJMTooqC++HAMfhkkcAGtRc/z48s3o2f+qEEEO81u5KzSe9G9jcjr
 atIaaZxeX7nExLfuXjQjszQv6wdYTA9XcBiBlFJu7Epsl8QFktIzIwFxFzv6GZ+tBMhW
 0yCA==
X-Gm-Message-State: APjAAAXWQgmfcgCZbHVCvfwt2x3tL4OFkjDtcu4DqnUTZUgy8Hta71N3
 5wvXHlQciGnRQ3306I0tpUI=
X-Google-Smtp-Source: APXvYqwV371FrvlzQir9WoQFP5YSMgFPDn0zPWiHdeQGOBE1SFHUqH2is1uMBFsvhXjS+T64ceo7ew==
X-Received: by 2002:a62:2ccd:: with SMTP id s196mr7280282pfs.227.1580120136290; 
 Mon, 27 Jan 2020 02:15:36 -0800 (PST)
Received: from localhost.localdomain ([2405:205:c902:a5e9:3956:8df2:aee5:9cf6])
 by smtp.gmail.com with ESMTPSA id s15sm15504138pgq.4.2020.01.27.02.15.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Jan 2020 02:15:35 -0800 (PST)
From: Pragat Pandya <pragat.pandya@gmail.com>
To: valdis.kletnieks@vt.edu,
	gregkh@linuxfoundation.org
Subject: [PATCH 15/22] staging: exfat: Rename variable "UsedClusters" to
 "used_clusters"
Date: Mon, 27 Jan 2020 15:43:36 +0530
Message-Id: <20200127101343.20415-16-pragat.pandya@gmail.com>
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

Change all the occurrences of "UsedClusters" to "used_clusters" in
exfat.

Signed-off-by: Pragat Pandya <pragat.pandya@gmail.com>
---
 drivers/staging/exfat/exfat.h       | 2 +-
 drivers/staging/exfat/exfat_super.c | 8 ++++----
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index 4cc5c1914864..abed7fed3823 100644
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
index 7a8b876414bd..223699a21079 100644
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
@@ -3351,8 +3351,8 @@ static int exfat_statfs(struct dentry *dentry, struct kstatfs *buf)
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
