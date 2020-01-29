Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 48B7F14CECF
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Jan 2020 17:59:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F195E83505;
	Wed, 29 Jan 2020 16:59:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rLtezplN-ue1; Wed, 29 Jan 2020 16:59:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BDEC2834D0;
	Wed, 29 Jan 2020 16:59:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 326521BF215
 for <devel@linuxdriverproject.org>; Wed, 29 Jan 2020 16:59:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2DB1E21552
 for <devel@linuxdriverproject.org>; Wed, 29 Jan 2020 16:59:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c2Hm90XtXISd for <devel@linuxdriverproject.org>;
 Wed, 29 Jan 2020 16:59:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 987CB2154B
 for <devel@driverdev.osuosl.org>; Wed, 29 Jan 2020 16:59:37 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id j4so81280pgi.1
 for <devel@driverdev.osuosl.org>; Wed, 29 Jan 2020 08:59:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=v2M483Nb+iZkWZmPc4XRqpPz0Lt+K12nY/QlfnPGK2M=;
 b=mJu7NoGudWfCS8cD7W26V3T2ehy3yTffZ9Ef64UIY4yUU8URmZvnIZ0z2FBILyF7KF
 x7z1pA49lxyD7b0NMenTv0yCa697NCxI7tz6Zj/YgjIPmB0Ps6Pgjdh0EweDi8FEGJqx
 Sf2B1od5u3Ei/D1WibtvEhJqqv517GwBoPnfv+Ib+NL9dtFkyunT9UdIBrlAmWs0f/Z0
 J9rszrLfnIyxPf4yAJ1eA+Khju15+BMsEYrY99WXcKLHDQlJz7dq9RPp0lmOCt/Tdr7P
 B23U7u46R+Iw4Lgyda7ghaolzEii6pyIKMSDFVYE4u55cLJlWcP1ID+bR6WSiQ7dDky0
 cCBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=v2M483Nb+iZkWZmPc4XRqpPz0Lt+K12nY/QlfnPGK2M=;
 b=U7lB9PDBdTSKWrFy7jUHTr6TuvmOv8KeZKPEYdZGhzPJ6Z1NUK3+tVqCofpphLS9h+
 qE84TEJXfC/i/HpNIu99Yh80tF1c4jFdrYIL8IJS7iCjM2G0RzRJGAfl5iU3vLdrZnFc
 mjgBjOIF6AFS8kYGL83HULQnPiuNVAXAGl4Oivv2lpFqKDNWahEcCOmvkrDtjnQApJcJ
 e3rA2EREM0Gv3+lZOJNuG+ACurjxpqO7OS3/Kb5+OPGpDVEprLjV9idXJ9hdq1KRev61
 1gpyclH34nKQgdMkQCMi2CQblpqnRjr/f0Y6mVPauQLdYryUJOmS0CuwUB6EihAQ5eTU
 Vp4A==
X-Gm-Message-State: APjAAAUr3I4QkArcs1zmqvoBvkFQR/fkyARdnNJFxj00/lsaYKGW92wW
 qOLMggAxdo1cgeL5zjZKzRg=
X-Google-Smtp-Source: APXvYqw/2sgeGJUjeHgta0fESRcIDWKcAefrypgb55KtWV4ikjhcQ+MRA6SEB/hicXdUbOEGXGWRHw==
X-Received: by 2002:a63:fb05:: with SMTP id o5mr32245884pgh.355.1580317177241; 
 Wed, 29 Jan 2020 08:59:37 -0800 (PST)
Received: from localhost.localdomain ([2405:205:c92f:3ccd:49ce:a9e3:28b5:cf94])
 by smtp.gmail.com with ESMTPSA id f8sm3223610pfn.2.2020.01.29.08.59.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Jan 2020 08:59:36 -0800 (PST)
From: Pragat Pandya <pragat.pandya@gmail.com>
To: gregkh@linuxfoundation.org,
	valdis.kletnieks@vt.edu
Subject: [PATCH 08/19] staging: exfat: Rename variable 'FatType' to 'fat_type'
Date: Wed, 29 Jan 2020 22:28:21 +0530
Message-Id: <20200129165832.10574-9-pragat.pandya@gmail.com>
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
Change all occurrences of identifier "FatType" to "fat_type"

Signed-off-by: Pragat Pandya <pragat.pandya@gmail.com>
---
 drivers/staging/exfat/exfat.h       | 2 +-
 drivers/staging/exfat/exfat_super.c | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index 55405dcbf8f7..8e01f011ef27 100644
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
index e51abb9b3826..6278fc3eac19 100644
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
