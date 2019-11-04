Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A8AF1ED725
	for <lists+driverdev-devel@lfdr.de>; Mon,  4 Nov 2019 02:46:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7991F2075B;
	Mon,  4 Nov 2019 01:46:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5mlhUMAc8-9B; Mon,  4 Nov 2019 01:46:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 62FD620520;
	Mon,  4 Nov 2019 01:45:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 900EF1BF42D
 for <devel@linuxdriverproject.org>; Mon,  4 Nov 2019 01:45:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8CA2F89536
 for <devel@linuxdriverproject.org>; Mon,  4 Nov 2019 01:45:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KY1S5cOruIsr for <devel@linuxdriverproject.org>;
 Mon,  4 Nov 2019 01:45:55 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr2.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DA70D89573
 for <devel@driverdev.osuosl.org>; Mon,  4 Nov 2019 01:45:54 +0000 (UTC)
Received: from mr5.cc.vt.edu (junk.cc.ipv6.vt.edu
 [IPv6:2607:b400:92:9:0:9d:8fcb:4116])
 by omr2.cc.vt.edu (8.14.4/8.14.4) with ESMTP id xA41jrt3009880
 for <devel@driverdev.osuosl.org>; Sun, 3 Nov 2019 20:45:53 -0500
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199])
 by mr5.cc.vt.edu (8.14.7/8.14.7) with ESMTP id xA41jmaF019410
 for <devel@driverdev.osuosl.org>; Sun, 3 Nov 2019 20:45:53 -0500
Received: by mail-qt1-f199.google.com with SMTP id o13so3390796qtr.3
 for <devel@driverdev.osuosl.org>; Sun, 03 Nov 2019 17:45:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=20ClKaSxdTtYUl7yKYvg1lJfKYAyqVPXfA1ed+3FbDA=;
 b=ZGqcy7x2EtOXABrjorNYFTX1FWyoh1RRjT3pr4jRsn0uOm9QUF1ShVKTvFuk6+GpR6
 68v5woXlBwGr011UkzGlX4DebGNyalvgcNO8zUgZgHMDab1TTz/+IUYE9yIRWbsL16k9
 On+UXc2/C1utd63DVMzr2LcIYwkgD70o1bc+tg17z9RwwpBb3T4RLXuKYdoybSc98Me/
 /ixuT+0Am2SobjlMHxuCfWENMbIuMYikISNJR7hzFhRw05hx2SQd1UNLCY0JqqFRZfKj
 dovEDOnuesC7329G18cViJN78Dt6BKY8tENWdehYuwzSfutmDVPJtUrmLwDuc33a2XZG
 aLMw==
X-Gm-Message-State: APjAAAXG/XI0VJKbopKKqPqUJ+aIGR1wqXyKwn/DG/CQCBs8ptsGjadl
 6jZQteKKRDgP8bUUBdfK63hM9VH473T6hLFPgOCtlBFqvYJ12kLNA0CpZly7Rc7un4b+jDtu//M
 24hEzywhxgZ0MNH5lYJU5owKX8BpNVcQs
X-Received: by 2002:a37:4a92:: with SMTP id x140mr161866qka.24.1572831948513; 
 Sun, 03 Nov 2019 17:45:48 -0800 (PST)
X-Google-Smtp-Source: APXvYqwbDRmzYHUGWNH5Sgtu91J2HEyqdoVZnJbx1gLacnfOaGwU1RcbU9QveIo4fdPjLOTXuwToSg==
X-Received: by 2002:a37:4a92:: with SMTP id x140mr161854qka.24.1572831948246; 
 Sun, 03 Nov 2019 17:45:48 -0800 (PST)
Received: from turing-police.lan ([2601:5c0:c001:c9e1::359])
 by smtp.gmail.com with ESMTPSA id d2sm8195354qkg.77.2019.11.03.17.45.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 03 Nov 2019 17:45:47 -0800 (PST)
From: Valdis Kletnieks <valdis.kletnieks@vt.edu>
X-Google-Original-From: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
To: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
Subject: [PATCH v2 01/10] staging: exfat: Clean up return codes - FFS_FORMATERR
Date: Sun,  3 Nov 2019 20:44:57 -0500
Message-Id: <20191104014510.102356-2-Valdis.Kletnieks@vt.edu>
X-Mailer: git-send-email 2.24.0.rc1
In-Reply-To: <20191104014510.102356-1-Valdis.Kletnieks@vt.edu>
References: <20191104014510.102356-1-Valdis.Kletnieks@vt.edu>
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
Cc: linux-fsdevel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 Valdis Kletnieks <valdis.kletnieks@vt.edu>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Convert FFS_FORMATERR to -EFSCORRUPTED

Signed-off-by: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
---
 drivers/staging/exfat/exfat.h      | 3 ++-
 drivers/staging/exfat/exfat_core.c | 8 ++++----
 2 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index acb73f47a253..4f9ba235d967 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -30,6 +30,8 @@
 #undef DEBUG
 #endif
 
+#define EFSCORRUPTED	EUCLEAN		/* Filesystem is corrupted */
+
 #define DENTRY_SIZE		32	/* dir entry size */
 #define DENTRY_SIZE_BITS	5
 
@@ -209,7 +211,6 @@ static inline u16 get_row_index(u16 i)
 /* return values */
 #define FFS_SUCCESS             0
 #define FFS_MEDIAERR            1
-#define FFS_FORMATERR           2
 #define FFS_MOUNTED             3
 #define FFS_NOTMOUNTED          4
 #define FFS_ALIGNMENTERR        5
diff --git a/drivers/staging/exfat/exfat_core.c b/drivers/staging/exfat/exfat_core.c
index b23fbf3ebaa5..e90b54a17150 100644
--- a/drivers/staging/exfat/exfat_core.c
+++ b/drivers/staging/exfat/exfat_core.c
@@ -573,7 +573,7 @@ s32 load_alloc_bitmap(struct super_block *sb)
 			return FFS_MEDIAERR;
 	}
 
-	return FFS_FORMATERR;
+	return -EFSCORRUPTED;
 }
 
 void free_alloc_bitmap(struct super_block *sb)
@@ -3016,7 +3016,7 @@ s32 fat16_mount(struct super_block *sb, struct pbr_sector_t *p_pbr)
 	struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
 
 	if (p_bpb->num_fats == 0)
-		return FFS_FORMATERR;
+		return -EFSCORRUPTED;
 
 	num_root_sectors = GET16(p_bpb->num_root_entries) << DENTRY_SIZE_BITS;
 	num_root_sectors = ((num_root_sectors - 1) >>
@@ -3078,7 +3078,7 @@ s32 fat32_mount(struct super_block *sb, struct pbr_sector_t *p_pbr)
 	struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
 
 	if (p_bpb->num_fats == 0)
-		return FFS_FORMATERR;
+		return -EFSCORRUPTED;
 
 	p_fs->sectors_per_clu = p_bpb->sectors_per_clu;
 	p_fs->sectors_per_clu_bits = ilog2(p_bpb->sectors_per_clu);
@@ -3157,7 +3157,7 @@ s32 exfat_mount(struct super_block *sb, struct pbr_sector_t *p_pbr)
 	struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
 
 	if (p_bpb->num_fats == 0)
-		return FFS_FORMATERR;
+		return -EFSCORRUPTED;
 
 	p_fs->sectors_per_clu = 1 << p_bpb->sectors_per_clu_bits;
 	p_fs->sectors_per_clu_bits = p_bpb->sectors_per_clu_bits;
-- 
2.24.0.rc1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
