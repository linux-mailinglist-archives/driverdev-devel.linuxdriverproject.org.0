Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 557FE1649CE
	for <lists+driverdev-devel@lfdr.de>; Wed, 19 Feb 2020 17:18:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CB75185E25;
	Wed, 19 Feb 2020 16:18:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s10zK9ZLbzIC; Wed, 19 Feb 2020 16:18:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id ADD3485E65;
	Wed, 19 Feb 2020 16:17:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id ED04E1BF292
 for <devel@linuxdriverproject.org>; Wed, 19 Feb 2020 16:17:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E416820498
 for <devel@linuxdriverproject.org>; Wed, 19 Feb 2020 16:17:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n3DRj-nOn9FV for <devel@linuxdriverproject.org>;
 Wed, 19 Feb 2020 16:17:50 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by silver.osuosl.org (Postfix) with ESMTPS id B1BDD203DA
 for <devel@driverdev.osuosl.org>; Wed, 19 Feb 2020 16:17:49 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id d9so339756pgu.3
 for <devel@driverdev.osuosl.org>; Wed, 19 Feb 2020 08:17:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=Uy6UkLvPHbCZFb2G0DtVigJYqThbQGxt+hlDRaLD/UQ=;
 b=w9VPh/OOAHC9E9VFvJmLCc/TOWjFbMLZG1/5InWeEHD12l9q868DkpMO5zp7aoG3Ha
 rszRtkBZZ5YvkgDWq3I9I+TKWpkOBkJbH2dyzleehHPl+tXyCnhmcAQ8GdDYPCsX0nSO
 ZdlC3OWMAKxUDr7JqoZTIiAK9fJYvsTuJZgDIRnQW8+IahJPxoZ9aIDV9X2GtgVj8CBa
 0FYDDKTDVdMjznxuYVbmNFha/uLnvYZOJNjezDkmBc2FqnR00jfaiuHWH/6gr5teT1Ne
 JWW1G7ryfir6R68jKsNaYllh/u/FfKaevs/5VdkjFX9P0ajKwxdINyWCHjDXmhJkx32v
 zk4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=Uy6UkLvPHbCZFb2G0DtVigJYqThbQGxt+hlDRaLD/UQ=;
 b=ANiSGAkAGjEHneNVOcttlOJVazaO1RJ7oIruLxPpqdtfoXy2wpkCfL86BdAQSnh9sV
 jpC59RCRsnw5+Zo1bZRN5S+HKVZoJtQ0mX832zIzVRpfdugMWwKKGXqNyg9ccqXhNmSc
 lCr+Umoz2vq00iHgerv/bgSa0KJJwiLKrdtysxNGGb/8WuboNcYQDZAQTsxHiYTau2CQ
 as3F/rp4J9re48jYe8TuH25KHPIC32N4M98tvZo6uExlk546ENH5HfyjoWZ1TIfVCTUI
 fz2d3OOE+MgLncpHCM7AxxJ/bSv1AlP9t/4BVwsdLycp7AVjvWATB856bY9hxDmOqD82
 Wdfg==
X-Gm-Message-State: APjAAAVlRsTzO41dCb4eB38y4fvNVe2QwQmxcRSbNjvDNOiWez2+GXbp
 KgyEu3VEj3WYZFDbxyvMr6hWgg==
X-Google-Smtp-Source: APXvYqy9Eoe+mM9PUgWeyNvkRF6huxYBxkkZz6VqXZpZ/IPHOjItmusPH6NY1cjPY/WVTZmf/9xFLQ==
X-Received: by 2002:a63:ce4b:: with SMTP id r11mr29739694pgi.419.1582129069058; 
 Wed, 19 Feb 2020 08:17:49 -0800 (PST)
Received: from kaaira-HP-Pavilion-Notebook ([103.37.201.169])
 by smtp.gmail.com with ESMTPSA id b42sm298534pjc.27.2020.02.19.08.17.45
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 19 Feb 2020 08:17:48 -0800 (PST)
Date: Wed, 19 Feb 2020 21:47:38 +0530
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
To: Valdis Kletnieks <valdis.kletnieks@vt.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-fsdevel@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: exfat: remove exfat_fat_sync()
Message-ID: <20200219161738.GA22282@kaaira-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

exfat_fat_sync() is not called anywhere, hence remove it from
exfat_cache.c and exfat.h

Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
---
 drivers/staging/exfat/exfat.h       |  1 -
 drivers/staging/exfat/exfat_cache.c | 19 -------------------
 2 files changed, 20 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index c4ef6c2de329..e36d01b6fdc9 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -647,7 +647,6 @@ s32 exfat_fat_write(struct super_block *sb, u32 loc, u32 content);
 u8 *exfat_fat_getblk(struct super_block *sb, sector_t sec);
 void exfat_fat_modify(struct super_block *sb, sector_t sec);
 void exfat_fat_release_all(struct super_block *sb);
-void exfat_fat_sync(struct super_block *sb);
 u8 *exfat_buf_getblk(struct super_block *sb, sector_t sec);
 void exfat_buf_modify(struct super_block *sb, sector_t sec);
 void exfat_buf_lock(struct super_block *sb, sector_t sec);
diff --git a/drivers/staging/exfat/exfat_cache.c b/drivers/staging/exfat/exfat_cache.c
index 3fd5604058a9..790ea4df9c00 100644
--- a/drivers/staging/exfat/exfat_cache.c
+++ b/drivers/staging/exfat/exfat_cache.c
@@ -341,25 +341,6 @@ void exfat_fat_release_all(struct super_block *sb)
 	mutex_unlock(&f_mutex);
 }
 
-void exfat_fat_sync(struct super_block *sb)
-{
-	struct buf_cache_t *bp;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-
-	mutex_lock(&f_mutex);
-
-	bp = p_fs->FAT_cache_lru_list.next;
-	while (bp != &p_fs->FAT_cache_lru_list) {
-		if ((bp->drv == p_fs->drv) && (bp->flag & DIRTYBIT)) {
-			sync_dirty_buffer(bp->buf_bh);
-			bp->flag &= ~(DIRTYBIT);
-		}
-		bp = bp->next;
-	}
-
-	mutex_unlock(&f_mutex);
-}
-
 static struct buf_cache_t *buf_cache_find(struct super_block *sb, sector_t sec)
 {
 	s32 off;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
