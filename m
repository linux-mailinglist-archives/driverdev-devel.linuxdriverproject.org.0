Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C5667E119F
	for <lists+driverdev-devel@lfdr.de>; Wed, 23 Oct 2019 07:28:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 303C7857D8;
	Wed, 23 Oct 2019 05:28:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IwhHe6cQzL0H; Wed, 23 Oct 2019 05:28:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CD9348577C;
	Wed, 23 Oct 2019 05:28:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3814B1BF863
 for <devel@linuxdriverproject.org>; Wed, 23 Oct 2019 05:28:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 32EDB20426
 for <devel@linuxdriverproject.org>; Wed, 23 Oct 2019 05:28:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VOHvd5SHfXqS for <devel@linuxdriverproject.org>;
 Wed, 23 Oct 2019 05:28:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr2.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by silver.osuosl.org (Postfix) with ESMTPS id 258012040C
 for <devel@driverdev.osuosl.org>; Wed, 23 Oct 2019 05:28:38 +0000 (UTC)
Received: from mr4.cc.vt.edu (mr4.cc.ipv6.vt.edu
 [IPv6:2607:b400:92:8300:0:7b:e2b1:6a29])
 by omr2.cc.vt.edu (8.14.4/8.14.4) with ESMTP id x9N5SbR4020013
 for <devel@driverdev.osuosl.org>; Wed, 23 Oct 2019 01:28:37 -0400
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200])
 by mr4.cc.vt.edu (8.14.7/8.14.7) with ESMTP id x9N5SWTK021461
 for <devel@driverdev.osuosl.org>; Wed, 23 Oct 2019 01:28:37 -0400
Received: by mail-qk1-f200.google.com with SMTP id h9so3959427qkk.16
 for <devel@driverdev.osuosl.org>; Tue, 22 Oct 2019 22:28:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=3R3TYJQENxlxM/7hiSPDOzoGGvmVuWM26HSA4gktLsc=;
 b=Lbw4tAfUw4QQEo94M0GF7wMS3W/yzunR/rA2hA/Cb8JHtEvu6OW3nXhaolGAQXQteL
 LBQRXVIkn885e/5MLYmb7RAP12z6jIzTpXEfoyPka2S5ACeUFFlSnGABmF0LjyxMHVKu
 Z+KVHDsWxXe3WZeNG33WcGuY6Tq3SXLGPxSmbn2/xIyuCEQYDLwL3rZWH7sNhxxbCKFV
 /A0qoPCP1CXkrm+qTJhbwnZ1H6+iNVlXPks35hY0rzj4RW2VIS0+tJBbuItLAsnq0tbP
 C2FADyaZXcbdlsM0lRIDjAgf62lZZUfNtoXVz0CF3GXutRdV2DIOnCqMJ3fqUePCO1xW
 li5w==
X-Gm-Message-State: APjAAAWrK3EmhJE+OSpWJHTMQZUS1PIpfLmjWzwYIQlKyN73J45p29XN
 9qQy5aflP3w43eygg6nMJyQUdn9sL+bs2atr5PiUnuHKChj7M3pzIrhAn/EXBTFvcxQOIQ+rn+Z
 qLsMS4hprsLQwtEd4IVfCz/DGQfbftIcX
X-Received: by 2002:ac8:70c3:: with SMTP id g3mr7202613qtp.391.1571808512062; 
 Tue, 22 Oct 2019 22:28:32 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzy4r7y16DC8h4ydIFPzLdAGCvDsekngAhlepEpIYK5p7QCs9OYpm9liB0aPVEfxDo6Cc6ONA==
X-Received: by 2002:ac8:70c3:: with SMTP id g3mr7202598qtp.391.1571808511686; 
 Tue, 22 Oct 2019 22:28:31 -0700 (PDT)
Received: from turing-police.lan ([2601:5c0:c001:c9e1::359])
 by smtp.gmail.com with ESMTPSA id 14sm10397445qtb.54.2019.10.22.22.28.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Oct 2019 22:28:30 -0700 (PDT)
From: Valdis Kletnieks <valdis.kletnieks@vt.edu>
X-Google-Original-From: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Valdis.Kletnieks@vt.edu
Subject: [PATCH 5/8] staging: exfat: Clean up static definitions in
 exfat_cache.c
Date: Wed, 23 Oct 2019 01:27:48 -0400
Message-Id: <20191023052752.693689-6-Valdis.Kletnieks@vt.edu>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191023052752.693689-1-Valdis.Kletnieks@vt.edu>
References: <20191023052752.693689-1-Valdis.Kletnieks@vt.edu>
MIME-Version: 1.0
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
Cc: linux-fsdevel@vger.kernel.org, devel@driverdev.osuosl.org,
 Valdis Kletnieks <valdis.kletnieks@vt.edu>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Move static function bodies before first use, remove the definition in exfat.h

Signed-off-by: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
---
 drivers/staging/exfat/exfat.h       |  4 --
 drivers/staging/exfat/exfat_cache.c | 94 +++++++++++++++--------------
 2 files changed, 48 insertions(+), 50 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index dbd86a6cdc95..654a0c46c1a0 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -768,17 +768,13 @@ void buf_init(struct super_block *sb);
 void buf_shutdown(struct super_block *sb);
 int FAT_read(struct super_block *sb, u32 loc, u32 *content);
 s32 FAT_write(struct super_block *sb, u32 loc, u32 content);
-static u8 *FAT_getblk(struct super_block *sb, sector_t sec);
-static void FAT_modify(struct super_block *sb, sector_t sec);
 void FAT_release_all(struct super_block *sb);
-static void FAT_sync(struct super_block *sb);
 u8 *buf_getblk(struct super_block *sb, sector_t sec);
 void buf_modify(struct super_block *sb, sector_t sec);
 void buf_lock(struct super_block *sb, sector_t sec);
 void buf_unlock(struct super_block *sb, sector_t sec);
 void buf_release(struct super_block *sb, sector_t sec);
 void buf_release_all(struct super_block *sb);
-static void buf_sync(struct super_block *sb);
 
 /* fs management functions */
 void fs_set_vol_flags(struct super_block *sb, u32 new_flag);
diff --git a/drivers/staging/exfat/exfat_cache.c b/drivers/staging/exfat/exfat_cache.c
index e1b001718709..e9ad0353b4e5 100644
--- a/drivers/staging/exfat/exfat_cache.c
+++ b/drivers/staging/exfat/exfat_cache.c
@@ -193,6 +193,50 @@ void buf_shutdown(struct super_block *sb)
 {
 }
 
+static u8 *FAT_getblk(struct super_block *sb, sector_t sec)
+{
+	struct buf_cache_t *bp;
+	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
+
+	bp = FAT_cache_find(sb, sec);
+	if (bp) {
+		move_to_mru(bp, &p_fs->FAT_cache_lru_list);
+		return bp->buf_bh->b_data;
+	}
+
+	bp = FAT_cache_get(sb, sec);
+
+	FAT_cache_remove_hash(bp);
+
+	bp->drv = p_fs->drv;
+	bp->sec = sec;
+	bp->flag = 0;
+
+	FAT_cache_insert_hash(sb, bp);
+
+	if (sector_read(sb, sec, &bp->buf_bh, 1) != FFS_SUCCESS) {
+		FAT_cache_remove_hash(bp);
+		bp->drv = -1;
+		bp->sec = ~0;
+		bp->flag = 0;
+		bp->buf_bh = NULL;
+
+		move_to_lru(bp, &p_fs->FAT_cache_lru_list);
+		return NULL;
+	}
+
+	return bp->buf_bh->b_data;
+}
+
+static void FAT_modify(struct super_block *sb, sector_t sec)
+{
+	struct buf_cache_t *bp;
+
+	bp = FAT_cache_find(sb, sec);
+	if (bp)
+		sector_write(sb, sec, bp->buf_bh, 0);
+}
+
 static int __FAT_read(struct super_block *sb, u32 loc, u32 *content)
 {
 	s32 off;
@@ -441,50 +485,6 @@ int FAT_write(struct super_block *sb, u32 loc, u32 content)
 	return ret;
 }
 
-u8 *FAT_getblk(struct super_block *sb, sector_t sec)
-{
-	struct buf_cache_t *bp;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-
-	bp = FAT_cache_find(sb, sec);
-	if (bp) {
-		move_to_mru(bp, &p_fs->FAT_cache_lru_list);
-		return bp->buf_bh->b_data;
-	}
-
-	bp = FAT_cache_get(sb, sec);
-
-	FAT_cache_remove_hash(bp);
-
-	bp->drv = p_fs->drv;
-	bp->sec = sec;
-	bp->flag = 0;
-
-	FAT_cache_insert_hash(sb, bp);
-
-	if (sector_read(sb, sec, &bp->buf_bh, 1) != FFS_SUCCESS) {
-		FAT_cache_remove_hash(bp);
-		bp->drv = -1;
-		bp->sec = ~0;
-		bp->flag = 0;
-		bp->buf_bh = NULL;
-
-		move_to_lru(bp, &p_fs->FAT_cache_lru_list);
-		return NULL;
-	}
-
-	return bp->buf_bh->b_data;
-}
-
-void FAT_modify(struct super_block *sb, sector_t sec)
-{
-	struct buf_cache_t *bp;
-
-	bp = FAT_cache_find(sb, sec);
-	if (bp)
-		sector_write(sb, sec, bp->buf_bh, 0);
-}
-
 void FAT_release_all(struct super_block *sb)
 {
 	struct buf_cache_t *bp;
@@ -510,7 +510,8 @@ void FAT_release_all(struct super_block *sb)
 	up(&f_sem);
 }
 
-void FAT_sync(struct super_block *sb)
+/* FIXME - this function is not used anyplace. See TODO */
+static void FAT_sync(struct super_block *sb)
 {
 	struct buf_cache_t *bp;
 	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
@@ -704,7 +705,8 @@ void buf_release_all(struct super_block *sb)
 	up(&b_sem);
 }
 
-void buf_sync(struct super_block *sb)
+/* FIXME - this function is not used anyplace. See TODO */
+static void buf_sync(struct super_block *sb)
 {
 	struct buf_cache_t *bp;
 	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
