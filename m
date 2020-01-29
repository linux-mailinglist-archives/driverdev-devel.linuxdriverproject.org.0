Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 949A614CEDE
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Jan 2020 17:59:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2B22E86E1A;
	Wed, 29 Jan 2020 16:59:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lf-eqH0PxQZz; Wed, 29 Jan 2020 16:59:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 792B681F2C;
	Wed, 29 Jan 2020 16:59:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8B8EA1BF215
 for <devel@linuxdriverproject.org>; Wed, 29 Jan 2020 16:59:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 87F0E2155E
 for <devel@linuxdriverproject.org>; Wed, 29 Jan 2020 16:59:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id seduo0XzR9zT for <devel@linuxdriverproject.org>;
 Wed, 29 Jan 2020 16:59:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by silver.osuosl.org (Postfix) with ESMTPS id CC0F52154B
 for <devel@driverdev.osuosl.org>; Wed, 29 Jan 2020 16:59:53 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id k29so6198941pfp.13
 for <devel@driverdev.osuosl.org>; Wed, 29 Jan 2020 08:59:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=2KjaafwE2g+wJHMSZXmaiaKXLE2m0dx98a6SWPRLseM=;
 b=QnBQTRAdZ/x2siJeZQ+z/iHOGDk09zkSmwAZy3M5Hew3nw4tVVz8FDsM13lyCwkKpg
 GWKUddVJl5hdPQChCzVp7HAgclYvZwk/1KZGV5stS+abF+KLuLvCp/vORffkMN/QAgej
 CgGdjlar+W80UtxhhwkL92LrnQFdBvQghK22fcjHBV+6XYS+URqAcjz+mx5WKKq30+ro
 GdrTQ6fBT7RUM10o5kXLYmkXADDfwTsHjhFx8/mH46thOJ80AkHctZ/t8K6/4NNyDKYY
 gk9m2YbK1VjZMFq2twKCxjMrJqZJ1i7APYAEEv25+Kh6Y9aL8jo6UOtoqaCZS4uV+QJC
 QHeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=2KjaafwE2g+wJHMSZXmaiaKXLE2m0dx98a6SWPRLseM=;
 b=e1ML6WDTt7SlDO3RGKuu0ILlUxeRgjStclucQnZtkEkAlTOcLCjC4TxZClDU406bjG
 2HSZo94RS5Ggm7IOGj5tqK3udjpwfIJBh+B56XF1FVzPNLOkLe4CznOzD3EwpPU29TAi
 N1yiSBvcCkgdfB5pGTSLGbBkTMfaSxV5HeXc7fT9yyiDks+AAx/xUvpPlnEqfL0J0mYC
 Q/YuM6W5AWBFJRrfLnzkK2XytAykMVXAyNMo+3bUiw3R6KGhACHPSSHyPz6kvu8hiE32
 fncwQ0FpIxNXtvOmGmhcie05Qg9zX4BOpX1H+lkoJl5DgoOncQ5msaPB/bLY3LFykgEi
 9Q9Q==
X-Gm-Message-State: APjAAAWwIpeIljhAHUm3kiI89sc7no0ysw/2TN04hbH0To9f9SV9rwyq
 oo5Zp4ar4tgNtRd7ia9F3G4=
X-Google-Smtp-Source: APXvYqwNkY7ypwOk+TsF6h58m3fPoIAnGWMdlpqLD4CcSNyWYKt94jpOvrR5EgZbZ5e2eN9iL23/6A==
X-Received: by 2002:aa7:8096:: with SMTP id v22mr504527pff.240.1580317193500; 
 Wed, 29 Jan 2020 08:59:53 -0800 (PST)
Received: from localhost.localdomain ([2405:205:c92f:3ccd:49ce:a9e3:28b5:cf94])
 by smtp.gmail.com with ESMTPSA id f8sm3223610pfn.2.2020.01.29.08.59.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Jan 2020 08:59:52 -0800 (PST)
From: Pragat Pandya <pragat.pandya@gmail.com>
To: gregkh@linuxfoundation.org,
	valdis.kletnieks@vt.edu
Subject: [PATCH 11/19] staging: exfat: Rename variable 'FreeClusters' to
 'free_clusters'
Date: Wed, 29 Jan 2020 22:28:24 +0530
Message-Id: <20200129165832.10574-12-pragat.pandya@gmail.com>
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
Change all occurrences of identifier "FreeClusters" to "free_clusters"

Signed-off-by: Pragat Pandya <pragat.pandya@gmail.com>
---
 drivers/staging/exfat/exfat.h       | 2 +-
 drivers/staging/exfat/exfat_super.c | 8 ++++----
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index 3fd234a323fb..2c42519d5eba 100644
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
index d8de39917bc0..335bf39aa171 100644
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
