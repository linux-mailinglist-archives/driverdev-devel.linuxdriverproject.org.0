Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 66A96C9224
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Oct 2019 21:16:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 15AAD8698F;
	Wed,  2 Oct 2019 19:16:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r3mRzm6hxrKN; Wed,  2 Oct 2019 19:16:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 79CE98693B;
	Wed,  2 Oct 2019 19:16:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 257C41BF3A6
 for <devel@linuxdriverproject.org>; Wed,  2 Oct 2019 19:16:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 202CF86841
 for <devel@linuxdriverproject.org>; Wed,  2 Oct 2019 19:16:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hLzDJv9yw4r3 for <devel@linuxdriverproject.org>;
 Wed,  2 Oct 2019 19:16:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr1.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EEAA18769B
 for <devel@driverdev.osuosl.org>; Wed,  2 Oct 2019 19:16:33 +0000 (UTC)
Received: from mr4.cc.vt.edu (inbound.smtp.ipv6.vt.edu
 [IPv6:2607:b400:92:9:0:9d:8fcb:4116])
 by omr1.cc.vt.edu (8.14.4/8.14.4) with ESMTP id x92JGWhL007388
 for <devel@driverdev.osuosl.org>; Wed, 2 Oct 2019 15:16:32 -0400
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199])
 by mr4.cc.vt.edu (8.14.7/8.14.7) with ESMTP id x92JGR60008919
 for <devel@driverdev.osuosl.org>; Wed, 2 Oct 2019 15:16:32 -0400
Received: by mail-qt1-f199.google.com with SMTP id d3so314214qtr.2
 for <devel@driverdev.osuosl.org>; Wed, 02 Oct 2019 12:16:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:mime-version:date
 :message-id;
 bh=4CMlpYrN8diNNsNoFQmvsP2oa4AEZl4aDzgp/marTlA=;
 b=CxMxBDyq0KVlgvggHoMphG9h+ooyo/G54jqgRUHAJ1tqlFXYOfYQgr7jW9szWdVSxS
 zmDbCZEy3ijQ3gNLRPtILKnjrQN6wEqzRG7K6kROr4LiIxWgZ5e8+zJC2a76pyJgPj0p
 YWcls5hVm8T6jUkoQj3/IYUtJ8v4jsDp0zx787659xB/VW+CKEzjtSfEenpK2uoMA9Dw
 k9uJhE5aPpnoAudQHv3CJ8XmQOXOdfe0+R3lsPcmRvX7AebRuFNyUTCzR2RXVTWNvw9P
 Z8MZ3FeDilhL+lnmck4Z1CpuH4HhTkc79alzr/VY/Ih+KKMOkewThNlOEm7z9rBw+VSJ
 Snlw==
X-Gm-Message-State: APjAAAVTVpp0YdlvuUQ/Piw9N4WatMVv5X83bHtUd9Hu9VCcUFnwq+FH
 ARZVH3wOaqou+WRc+x4MJkUC/V/tr6yMuUWG6xjhHV0gZcmQ7xrPMvqjnytHuNjBcKGBspR/5pi
 hPxrf1/9fDMyqSqYLZBYvrP7jzPCs9CJJ
X-Received: by 2002:ac8:2fe5:: with SMTP id m34mr5232174qta.224.1570043786640; 
 Wed, 02 Oct 2019 12:16:26 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzkwVZPcXYKi4Jv+iqb5hMX6PYRd4iZbasi8to50k/E5HcZysC0giTxd9BhaVaFD5kjJAJPBw==
X-Received: by 2002:ac8:2fe5:: with SMTP id m34mr5232151qta.224.1570043786333; 
 Wed, 02 Oct 2019 12:16:26 -0700 (PDT)
Received: from turing-police ([2601:5c0:c001:4341::9ca])
 by smtp.gmail.com with ESMTPSA id p2sm56019qkk.60.2019.10.02.12.16.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Oct 2019 12:16:25 -0700 (PDT)
From: "Valdis =?utf-8?Q?Kl=c4=93tnieks?=" <valdis.kletnieks@vt.edu>
X-Google-Original-From: "Valdis =?utf-8?Q?Kl=c4=93tnieks?="
 <Valdis.Kletnieks@vt.edu>
X-Mailer: exmh version 2.9.0 11/07/2018 with nmh-1.7+dev
To: gregkh@linuxfoundation.org
Subject: [PATCH] drivers/staging/exfat - fix fs_sync() calls.
Mime-Version: 1.0
Date: Wed, 02 Oct 2019 15:16:24 -0400
Message-ID: <11092.1570043784@turing-police>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The majority of them were totally backwards.  Change the logic
so that if DELAYED_SYNC *isn't* in the config, we actually flush to disk
before flagging the file system as clean.

That leaves two calls in the DELAYED_SYNC case.  More detailed
analysis is needed to make sure that's what's really needed, or if other
call sites also need a fs_sync() call.  This patch is at least "less wrong"
than the code was, but further changes should be another patch.

Signed-off-by: Valdis Kletnieks <valdis.kletnieks@vt.edu>

diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index 5f6caee819a6..2526044569ee 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -458,7 +458,7 @@ static int ffsUmountVol(struct super_block *sb)
 	/* acquire the lock for file system critical section */
 	down(&p_fs->v_sem);
 
-	fs_sync(sb, false);
+	fs_sync(sb, true);
 	fs_set_vol_flags(sb, VOL_CLEAN);
 
 	if (p_fs->vol_type == EXFAT) {
@@ -666,8 +666,8 @@ static int ffsCreateFile(struct inode *inode, char *path, u8 mode,
 	/* create a new file */
 	ret = create_file(inode, &dir, &uni_name, mode, fid);
 
-#ifdef CONFIG_EXFAT_DELAYED_SYNC
-	fs_sync(sb, false);
+#ifndef CONFIG_EXFAT_DELAYED_SYNC
+	fs_sync(sb, true);
 	fs_set_vol_flags(sb, VOL_CLEAN);
 #endif
 
@@ -1039,8 +1039,8 @@ static int ffsWriteFile(struct inode *inode, struct file_id_t *fid,
 		release_entry_set(es);
 	}
 
-#ifdef CONFIG_EXFAT_DELAYED_SYNC
-	fs_sync(sb, false);
+#ifndef CONFIG_EXFAT_DELAYED_SYNC
+	fs_sync(sb, true);
 	fs_set_vol_flags(sb, VOL_CLEAN);
 #endif
 
@@ -1179,8 +1179,8 @@ static int ffsTruncateFile(struct inode *inode, u64 old_size, u64 new_size)
 	if (fid->rwoffset > fid->size)
 		fid->rwoffset = fid->size;
 
-#ifdef CONFIG_EXFAT_DELAYED_SYNC
-	fs_sync(sb, false);
+#ifndef CONFIG_EXFAT_DELAYED_SYNC
+	fs_sync(sb, true);
 	fs_set_vol_flags(sb, VOL_CLEAN);
 #endif
 
@@ -1327,8 +1327,8 @@ static int ffsMoveFile(struct inode *old_parent_inode, struct file_id_t *fid,
 						num_entries + 1);
 	}
 out:
-#ifdef CONFIG_EXFAT_DELAYED_SYNC
-	fs_sync(sb, false);
+#ifndef CONFIG_EXFAT_DELAYED_SYNC
+	fs_sync(sb, true);
 	fs_set_vol_flags(sb, VOL_CLEAN);
 #endif
 
@@ -1389,8 +1389,8 @@ static int ffsRemoveFile(struct inode *inode, struct file_id_t *fid)
 	fid->start_clu = CLUSTER_32(~0);
 	fid->flags = (p_fs->vol_type == EXFAT) ? 0x03 : 0x01;
 
-#ifdef CONFIG_EXFAT_DELAYED_SYNC
-	fs_sync(sb, false);
+#ifndef CONFIG_EXFAT_DELAYED_SYNC
+	fs_sync(sb, true);
 	fs_set_vol_flags(sb, VOL_CLEAN);
 #endif
 
@@ -1478,8 +1478,8 @@ static int ffsSetAttr(struct inode *inode, u32 attr)
 		release_entry_set(es);
 	}
 
-#ifdef CONFIG_EXFAT_DELAYED_SYNC
-	fs_sync(sb, false);
+#ifndef CONFIG_EXFAT_DELAYED_SYNC
+	fs_sync(sb, true);
 	fs_set_vol_flags(sb, VOL_CLEAN);
 #endif
 
@@ -1916,8 +1916,8 @@ static int ffsCreateDir(struct inode *inode, char *path, struct file_id_t *fid)
 
 	ret = create_dir(inode, &dir, &uni_name, fid);
 
-#ifdef CONFIG_EXFAT_DELAYED_SYNC
-	fs_sync(sb, false);
+#ifndef CONFIG_EXFAT_DELAYED_SYNC
+	fs_sync(sb, true);
 	fs_set_vol_flags(sb, VOL_CLEAN);
 #endif
 
@@ -2177,8 +2177,8 @@ static int ffsRemoveDir(struct inode *inode, struct file_id_t *fid)
 	fid->start_clu = CLUSTER_32(~0);
 	fid->flags = (p_fs->vol_type == EXFAT) ? 0x03 : 0x01;
 
-#ifdef CONFIG_EXFAT_DELAYED_SYNC
-	fs_sync(sb, false);
+#ifndef CONFIG_EXFAT_DELAYED_SYNC
+	fs_sync(sb, true);
 	fs_set_vol_flags(sb, VOL_CLEAN);
 #endif
 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
