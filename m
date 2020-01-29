Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BD2114CEE3
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Jan 2020 18:00:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D2AFC83505;
	Wed, 29 Jan 2020 17:00:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GDIA7cyTthpy; Wed, 29 Jan 2020 17:00:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CE24084812;
	Wed, 29 Jan 2020 17:00:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 224711BF215
 for <devel@linuxdriverproject.org>; Wed, 29 Jan 2020 16:59:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1F2C7832E1
 for <devel@linuxdriverproject.org>; Wed, 29 Jan 2020 16:59:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1JAxhodKeBQ9 for <devel@linuxdriverproject.org>;
 Wed, 29 Jan 2020 16:59:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 558F98745C
 for <devel@driverdev.osuosl.org>; Wed, 29 Jan 2020 16:59:58 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id w62so8707271pfw.8
 for <devel@driverdev.osuosl.org>; Wed, 29 Jan 2020 08:59:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=eHjjsiMv1wzBzYyD+HE2PIrBR1oeknOAP7k+Y37wTOU=;
 b=shw0t8B3zA6CFyI1x/5Y4QVs4mRC4KcQuPyKBA/kKA/pBp5R3adOcDf+e8sY/1XebQ
 nuR793bgVlDQfNjsSd8SYIrZziZmqY+enjkFZ/ndySx/mJ2S2BWlg7CTzhkAJltN4yW1
 YvIA4zjInhJewzLRZXwgyzGbUzhhWj4pS52a3hOgjW4beVUctm/BaxLXqWXmH592ycZ3
 iwLlUEFamzMt0nogbi7KDvOQI/6h3ACnDHhWZB7SDmj8p0IDvCyZRM0J0TXDFTIegn0d
 txtdOIrQdDxD01YEUM/4eBjlN8Cjf3zafwyWwZBDHWpH20NHXUZbcB2bPYE/LZg560FK
 TPWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=eHjjsiMv1wzBzYyD+HE2PIrBR1oeknOAP7k+Y37wTOU=;
 b=iWA9LGbP1ccOEx655c0YAyuw7CPusvL4yatOR2Z1f0MHiueTMSWprSlBSogrfBlYpm
 8q49Uyo3/MGaBgDe0c4L48hHxREtG0HPt9XGO3Qa39iRG2e4LMibVC0NJr4L5mE4N/sz
 US4tV76Tgx906j6C62/jpKhmcmifEFapVCk4PYHRcDNuBSrUZ3MVA9z9s4rCJo9FFIK7
 n4mUvkTPzFuEgvQr7L3vXtfIue8pAA32Mtva5XIipHbBdtaKvMyfutf71ujZjMxElEeF
 E2GpSf9PnkD1PBR2+YebhUm848+yJrIYt1SMFEtMElnPYs5jY2eAO0d4RfCsTplN+KOK
 8NfQ==
X-Gm-Message-State: APjAAAV31eEF4KyQvg0Ok1RkAlcE+8XMSIy8SeE9RfOYHoFtTuSGLKv2
 abi/ndV5OfUvQJB75DYZ+ek=
X-Google-Smtp-Source: APXvYqxABWPyCjxgqwnirseesvhmXcgODMGoWG64H+djLbHYA5lVIEhFjUKzaCXD/ZciOPEJSZoA6A==
X-Received: by 2002:aa7:8bcd:: with SMTP id s13mr518903pfd.234.1580317197984; 
 Wed, 29 Jan 2020 08:59:57 -0800 (PST)
Received: from localhost.localdomain ([2405:205:c92f:3ccd:49ce:a9e3:28b5:cf94])
 by smtp.gmail.com with ESMTPSA id f8sm3223610pfn.2.2020.01.29.08.59.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Jan 2020 08:59:57 -0800 (PST)
From: Pragat Pandya <pragat.pandya@gmail.com>
To: gregkh@linuxfoundation.org,
	valdis.kletnieks@vt.edu
Subject: [PATCH 12/19] staging: exfat: Rename variable 'UsedClusters' to
 'used_clusters'
Date: Wed, 29 Jan 2020 22:28:25 +0530
Message-Id: <20200129165832.10574-13-pragat.pandya@gmail.com>
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
Change all occurrecnes of identifier "UsedClusters" to "used_clusters"

Signed-off-by: Pragat Pandya <pragat.pandya@gmail.com>
---
 drivers/staging/exfat/exfat.h       | 2 +-
 drivers/staging/exfat/exfat_super.c | 8 ++++----
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index 2c42519d5eba..2242cf1fdb4a 100644
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
index 335bf39aa171..4b8ffb8ab557 100644
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
