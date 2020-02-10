Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C961158288
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Feb 2020 19:37:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2C3D185190;
	Mon, 10 Feb 2020 18:37:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tpaTwzs6R0Ny; Mon, 10 Feb 2020 18:37:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4EC1284545;
	Mon, 10 Feb 2020 18:37:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DA2181BF964
 for <devel@linuxdriverproject.org>; Mon, 10 Feb 2020 18:37:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D751820452
 for <devel@linuxdriverproject.org>; Mon, 10 Feb 2020 18:37:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6bbejnGKb93T for <devel@linuxdriverproject.org>;
 Mon, 10 Feb 2020 18:37:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by silver.osuosl.org (Postfix) with ESMTPS id E871A20499
 for <devel@driverdev.osuosl.org>; Mon, 10 Feb 2020 18:37:09 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id s1so4107030pfh.10
 for <devel@driverdev.osuosl.org>; Mon, 10 Feb 2020 10:37:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=27GS09eY1gZMvn8ykuFSTchiyR/0xlUbhClAe0LrabY=;
 b=ttfeDu8Zq4PNzrvi+BAn5afh1cmsVKs6haYWiAPBxQZNCe/zQSIihKZG0Pa/WzK1Er
 i9CqtMcAbBu5nv/440DEgGKrTiaAeRqy5hEkCWyeCCRwTMXEl1Apl6/dZcEtEHPiUqdh
 mNUh5JghIJSUW2+hQgc3HBAzutxUazNUYCu+drSFqfpG6jmmmANGYbwRTh3uSgAVrEN6
 SJS234pDg8Ukh2FuAondiOkH/7Oc1/D66HxZCOIdNg6IL98Sds/XPgd2uU43dfROpse2
 ICcyeUKr/M+xLzNtA8IAd4x0M4b0gwNTSTKWdE8tViSs/JKXfnNsARyrRyEd4a52L8nh
 i/3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=27GS09eY1gZMvn8ykuFSTchiyR/0xlUbhClAe0LrabY=;
 b=iHMlFcjhQta1ANm7pXddf9RAyiZxhsf9ip4bVJb4OyujjiWYt3XcKGEMA4UxbwNrgh
 4twEpvvfXp/KGpbTpCTEkXHxkq47B0qdD7yf95cYXWYWdLEnV6c67EdIJRZQfZt+0Izv
 mLDh02UnqYk/lvdN1EbPy7qv2nPjBpq5PMuColZvl14NFpocJC6AytGXNAjo4duW6sQd
 630Uo0QsXVdCaQgkQIUIWj31Yv6tIvyB91YVB1dH9VjRDVBoSJs2njIxYU5Ocn21XAOG
 GLmcwfATWxCpjdmjxX6P7qDGGAvkEbFF5BskEMZ4VjBBrGzVVf8C7cWIqXFOtnCyw32z
 MdIQ==
X-Gm-Message-State: APjAAAX2S2Zgfg4SisHf5YzbmtJCxUe3Iwr5kEPS4RkaBQBUykcjWGTg
 ffABTvv3Yn2MUZGYVhKt+w6GK28wwQg=
X-Google-Smtp-Source: APXvYqwtTrWXOaXFI4zLrvcX0Q/Ed+c2CsDmDrBwmpAQ640g+GzKUygWUNrHGvfT/Xmqx5u440L/Kg==
X-Received: by 2002:a63:5f10:: with SMTP id t16mr3111488pgb.222.1581359829628; 
 Mon, 10 Feb 2020 10:37:09 -0800 (PST)
Received: from localhost.localdomain ([2405:204:8308:74f3:144f:bb39:afc3:51b0])
 by smtp.gmail.com with ESMTPSA id gc1sm124922pjb.20.2020.02.10.10.37.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2020 10:37:09 -0800 (PST)
From: Pragat Pandya <pragat.pandya@gmail.com>
To: gregkh@linuxfoundation.org,
	valdis.kletnieks@vt.edu
Subject: [PATCH v2 08/19] staging: exfat: Rename variable 'FatType' to
 'fat_type'
Date: Tue, 11 Feb 2020 00:05:47 +0530
Message-Id: <20200210183558.11836-9-pragat.pandya@gmail.com>
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
Change all occurrences of identifier "FatType" to "fat_type"

Signed-off-by: Pragat Pandya <pragat.pandya@gmail.com>
---
 drivers/staging/exfat/exfat.h       | 2 +-
 drivers/staging/exfat/exfat_super.c | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index 96e1e1553e56..43c40addf5a5 100644
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
index 472a6c8efcbb..7b5be94a0bb7 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -494,7 +494,7 @@ static int ffsGetVolInfo(struct super_block *sb, struct vol_info_t *info)
 	if (p_fs->used_clusters == UINT_MAX)
 		p_fs->used_clusters = exfat_count_used_clusters(sb);
 
-	info->FatType = p_fs->vol_type;
+	info->fat_type = p_fs->vol_type;
 	info->ClusterSize = p_fs->cluster_size;
 	info->NumClusters = p_fs->num_clusters - 2; /* clu 0 & 1 */
 	info->UsedClusters = p_fs->used_clusters;
@@ -3345,7 +3345,7 @@ static int exfat_statfs(struct dentry *dentry, struct kstatfs *buf)
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
