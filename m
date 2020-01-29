Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FBE414CED0
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Jan 2020 17:59:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F055985F71;
	Wed, 29 Jan 2020 16:59:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tDytMcD-7uN3; Wed, 29 Jan 2020 16:59:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A193B834A0;
	Wed, 29 Jan 2020 16:59:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5A06D1BF215
 for <devel@linuxdriverproject.org>; Wed, 29 Jan 2020 16:59:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 569778823A
 for <devel@linuxdriverproject.org>; Wed, 29 Jan 2020 16:59:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZnU2V0ZRa6XB for <devel@linuxdriverproject.org>;
 Wed, 29 Jan 2020 16:59:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E34D7881D9
 for <devel@driverdev.osuosl.org>; Wed, 29 Jan 2020 16:59:42 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id 2so8694193pfg.12
 for <devel@driverdev.osuosl.org>; Wed, 29 Jan 2020 08:59:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=PJt29fpMlf5QIWbEwlo7IH62d5FhRNTDbUVvQF2baUI=;
 b=gh2RK85B8NOwK3idUEi4OtRe0/WcrHmWcPvrHandlHXU9jkb9hTyq93hIQL+DMaSbs
 NFtEUNTffx/ZEXUWaXUXKvV75dVqzYGuQ/zx8f2ZY93GdTFCiZexoQKAHL31Ggl5SalD
 MisaJ7HRj+uPBftcOeHPW0AFcAxUrOl3A/KFUtRionIqhUcljBJtp48LAHhWjzD9Ix3I
 jEGRf0m1/yTvgKvpMBcdZD6fFTJmhnCTA6EG0DeiuqBVNWI5s/b+YNei+Fsq6A61MkaN
 DDV45wbfRkBDUTek0Jx50NTARF5RaByLEOs647eAD8ViFGSZNq0KRvce+tXoz+YSBIy5
 3Puw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=PJt29fpMlf5QIWbEwlo7IH62d5FhRNTDbUVvQF2baUI=;
 b=Pv6Xje+FMo1JAHTEzO4fsF+sqaMrkZNEE6ZFgUYCczpf4RvLO53k0eMaMmPO5cWB7U
 7tXwR5G/2rw1fzLA0qIhiGeOeJZnoCIUmFJwQ4zVGPe4QZD7YZ6CLTg643vvLfweTz7e
 +kAmXoLWk+f0WvQrl7iahrDaaxKhwgcYhhvVbQtsApb4NntTajbOLgZO1+sqRDA40bGr
 xj6dmqUMpyhqRlylhyZB/A/aFGlJiLLfSrE4bj/l1mgNcqqDIR0iKPZ1JGgSiEwuvX/Q
 0G91M5FpJv2qsFiT5QG2R0hgFOaG2VVCv277X4Uj+Ff3UTVhmDCnJlaHGgs9kHn6fWIa
 8dLQ==
X-Gm-Message-State: APjAAAVgQGD+iGi4fU1EXQuoGe3P30A55ZCZfKil5r44tLf2kmsWZJPo
 HU1AmOlSHhAFS8XLzWsCDqw=
X-Google-Smtp-Source: APXvYqzdQ7nUMbDaA3I6UMgsFCb/dQporMjaJNcyYVfVE/rPc5JH6NfgVyi0Rk/m+wfum951itB5Sw==
X-Received: by 2002:a63:b305:: with SMTP id i5mr24306579pgf.25.1580317182608; 
 Wed, 29 Jan 2020 08:59:42 -0800 (PST)
Received: from localhost.localdomain ([2405:205:c92f:3ccd:49ce:a9e3:28b5:cf94])
 by smtp.gmail.com with ESMTPSA id f8sm3223610pfn.2.2020.01.29.08.59.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Jan 2020 08:59:42 -0800 (PST)
From: Pragat Pandya <pragat.pandya@gmail.com>
To: gregkh@linuxfoundation.org,
	valdis.kletnieks@vt.edu
Subject: [PATCH 09/19] staging: exfat: Rename variable 'ClusterSize' to
 'cluster_size'
Date: Wed, 29 Jan 2020 22:28:22 +0530
Message-Id: <20200129165832.10574-10-pragat.pandya@gmail.com>
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
Change all occurrences of identifier "ClusterSize" to "cluster_size"

Signed-off-by: Pragat Pandya <pragat.pandya@gmail.com>
---
 drivers/staging/exfat/exfat.h       | 2 +-
 drivers/staging/exfat/exfat_super.c | 6 +++---
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index 8e01f011ef27..c9d9791312f0 100644
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
index 6278fc3eac19..ac6f38508d2b 100644
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
