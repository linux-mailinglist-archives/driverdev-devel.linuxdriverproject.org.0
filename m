Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ACBB15829E
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Feb 2020 19:37:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DD5E7204A5;
	Mon, 10 Feb 2020 18:37:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jrUtB-+9KtZG; Mon, 10 Feb 2020 18:37:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 84D90204A2;
	Mon, 10 Feb 2020 18:37:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C99401BF964
 for <devel@linuxdriverproject.org>; Mon, 10 Feb 2020 18:37:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C6CCD8522E
 for <devel@linuxdriverproject.org>; Mon, 10 Feb 2020 18:37:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9LbUf_NuT0_g for <devel@linuxdriverproject.org>;
 Mon, 10 Feb 2020 18:37:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f65.google.com (mail-pj1-f65.google.com
 [209.85.216.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5B959851AD
 for <devel@driverdev.osuosl.org>; Mon, 10 Feb 2020 18:37:20 +0000 (UTC)
Received: by mail-pj1-f65.google.com with SMTP id m7so146255pjs.0
 for <devel@driverdev.osuosl.org>; Mon, 10 Feb 2020 10:37:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=HS62S5V7Qa07ZQUMT3Q93j8iWGJHMLo+fJYA8CxCock=;
 b=sANQpXsyHmm/d/GWSP7Owb/st6xVfVjs+LDYcZsCf5Bkxukflb2YMvRx6mUTeC/iXk
 BR7doZv8Zfc6hmqMpBpZzA0VKtvFlHqCAsGZjvzA87LL2mhZTcQYRY83egGiB+AvRN++
 pLK90VCEqf2K02OjeE1L6WMTZPVMtQ/WiIvcUIgIhayK+pLjwt51nT7fpPo2WNHqwquH
 uk1DklkNW+P8/MT5qAGxVa8jYNDcMI0fHWavTGmvcWbjRBREDoawRUnI7QVM3N2axFV9
 aHJDRqpDOmFb0yHeIGoayFMwieTr+Mdjr4jJFlMaC88iqT11YB33/x5dF6z9oDR3kWdc
 S+WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=HS62S5V7Qa07ZQUMT3Q93j8iWGJHMLo+fJYA8CxCock=;
 b=UkGW9oaWOulqjR6Ee1F52jDiTa54o53iRBtM/DNqHdIosDy0xI0udPLxM0ar5KpPX1
 gAj4yYH07xeihcQ1O/QPw1kVOxStgNaTRYDIEqyWXGm/5FNXAbRHoW6z2l6EZ4UyqDHt
 SG9PurKqxII3nkmm3OuR+aSlDqYPhHhPdctqot/FdclyOj0BmoV7KPDAbQ6UZ16CYQG1
 PdWAwalZZr/B5scWnSuzsaFN4JxLDhL6mMmpY2er+M3jp5mfd6jhfx+VART1lH+RcBCF
 h5TDKSquYPrNUSjiYK4mRWpJA4F8l4ufQnfD9MSf0EuwxwhBdkmlNKfZi7IuwJGxhF49
 GWoQ==
X-Gm-Message-State: APjAAAW2oPF09qIVsaEX6eHnxhfcpnY0mms8+700MAVlJ6FVjAFipp0A
 gzR0wstxtACX1KKCZ0poMc01NjoTE0M=
X-Google-Smtp-Source: APXvYqzSTCVLpw41wYXgoo9QWkGLg6yuI6kZG3p2+few/NSO+vSp2E5FIKRYxdj+96eNyvrCSRA09A==
X-Received: by 2002:a17:902:b210:: with SMTP id
 t16mr13861164plr.65.1581359839948; 
 Mon, 10 Feb 2020 10:37:19 -0800 (PST)
Received: from localhost.localdomain ([2405:204:8308:74f3:144f:bb39:afc3:51b0])
 by smtp.gmail.com with ESMTPSA id gc1sm124922pjb.20.2020.02.10.10.37.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2020 10:37:19 -0800 (PST)
From: Pragat Pandya <pragat.pandya@gmail.com>
To: gregkh@linuxfoundation.org,
	valdis.kletnieks@vt.edu
Subject: [PATCH v2 10/19] staging: exfat: Rename variable 'NumClusters' to
 'num_clusters'
Date: Tue, 11 Feb 2020 00:05:49 +0530
Message-Id: <20200210183558.11836-11-pragat.pandya@gmail.com>
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
Change all occurrences identifier "NumClusters" to "num_clusters"

Signed-off-by: Pragat Pandya <pragat.pandya@gmail.com>
---
 drivers/staging/exfat/exfat.h       |  2 +-
 drivers/staging/exfat/exfat_super.c | 10 +++++-----
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index c6e3981cc370..df84a729d5d5 100644
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
index cac5631d0f11..59e18b37dd7d 100644
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
@@ -3347,9 +3347,9 @@ static int exfat_statfs(struct dentry *dentry, struct kstatfs *buf)
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
@@ -3357,7 +3357,7 @@ static int exfat_statfs(struct dentry *dentry, struct kstatfs *buf)
 
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
