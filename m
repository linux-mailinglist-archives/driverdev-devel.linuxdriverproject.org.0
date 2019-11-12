Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11E2FF9BAF
	for <lists+driverdev-devel@lfdr.de>; Tue, 12 Nov 2019 22:13:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7BA50878FE;
	Tue, 12 Nov 2019 21:13:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jPW887hgwEQr; Tue, 12 Nov 2019 21:13:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DE2E88789B;
	Tue, 12 Nov 2019 21:13:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 57C3E1BF404
 for <devel@linuxdriverproject.org>; Tue, 12 Nov 2019 21:13:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 53C12203F5
 for <devel@linuxdriverproject.org>; Tue, 12 Nov 2019 21:13:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KV9EI-4wmTv7 for <devel@linuxdriverproject.org>;
 Tue, 12 Nov 2019 21:13:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr2.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by silver.osuosl.org (Postfix) with ESMTPS id 1B51B20368
 for <devel@driverdev.osuosl.org>; Tue, 12 Nov 2019 21:13:48 +0000 (UTC)
Received: from mr6.cc.vt.edu (mr6.cc.ipv6.vt.edu
 [IPv6:2607:b400:92:8500:0:af:2d00:4488])
 by omr2.cc.vt.edu (8.14.4/8.14.4) with ESMTP id xACLDlEt029713
 for <devel@driverdev.osuosl.org>; Tue, 12 Nov 2019 16:13:47 -0500
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70])
 by mr6.cc.vt.edu (8.14.7/8.14.7) with ESMTP id xACLDgec015415
 for <devel@driverdev.osuosl.org>; Tue, 12 Nov 2019 16:13:47 -0500
Received: by mail-qv1-f70.google.com with SMTP id b1so11130qvm.0
 for <devel@driverdev.osuosl.org>; Tue, 12 Nov 2019 13:13:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=G+XEM7NqA7duBgC178Q7ObGQk8ZeoGEeRJMM3ee4yAQ=;
 b=FxHJL92l4mn/0LovcDNhL8iGNITB/jxzh8ath/iYFOsfcuimZahevjTZKErqUiDblp
 2M+jWSfCUuunG3CdJOxrgw9vwmG19gyAtdFU9suML5etkGAX5bfsC+jaBolZasiRgQla
 IMApBdnnaQGQbWhmFSllwHNqwZuY4LBhqPXvM8PMOi0ovEvXmEfSdn78PyCkMGEgPikA
 dKvwTIfrw/KYKyltT/WV52WLfo6jpbxqGUQhlVvZwzHrUE6glUq5DlmJn2bleeFO51dP
 pUIhP5PqdlgWNVDjfmsdl7AvpaWtgTJH/9ir1d1niS3SePa61+lliLkL0yFwMMBog8BG
 JBrg==
X-Gm-Message-State: APjAAAVxaCFj/cw1A2ASmiXMYblHSCKcvu8p+SAofTkP26mYIvFHqOGw
 1JS9LtrpGlgyPpU2JOXKzPeXs1V/L4ZWuU/sx4xPwZDcWdSg/3PwShClw/KHz8Yjd67PG6k8aXe
 lgRu1bKzJ4Nx9nZm+AzNV0adJhwejBXFD
X-Received: by 2002:ac8:1494:: with SMTP id l20mr13675945qtj.356.1573593222060; 
 Tue, 12 Nov 2019 13:13:42 -0800 (PST)
X-Google-Smtp-Source: APXvYqzF5gO4XlN15JxU3WTA3jUQX9UNDZq3E87aaI55II1ymFJHv5aHH+FQzD+IV+eipDN7UN+WIA==
X-Received: by 2002:ac8:1494:: with SMTP id l20mr13675845qtj.356.1573593220899; 
 Tue, 12 Nov 2019 13:13:40 -0800 (PST)
Received: from turing-police.lan ([2601:5c0:c001:c9e1::359])
 by smtp.gmail.com with ESMTPSA id 130sm9674214qkd.33.2019.11.12.13.13.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Nov 2019 13:13:40 -0800 (PST)
From: Valdis Kletnieks <valdis.kletnieks@vt.edu>
X-Google-Original-From: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
To: 
Subject: [PATCH 07/12] staging: exfat: Clean up the namespace pollution part 3
Date: Tue, 12 Nov 2019 16:12:33 -0500
Message-Id: <20191112211238.156490-8-Valdis.Kletnieks@vt.edu>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191112211238.156490-1-Valdis.Kletnieks@vt.edu>
References: <20191112211238.156490-1-Valdis.Kletnieks@vt.edu>
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

These functions are only used in the local file, make them static

Signed-off-by: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
---
 drivers/staging/exfat/exfat.h      | 6 ------
 drivers/staging/exfat/exfat_core.c | 8 ++++----
 2 files changed, 4 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index 5044523ccb97..407dbb017c5f 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -758,8 +758,6 @@ void fs_set_vol_flags(struct super_block *sb, u32 new_flag);
 void fs_error(struct super_block *sb);
 
 /* cluster management functions */
-s32 clear_cluster(struct super_block *sb, u32 clu);
-u32 find_last_cluster(struct super_block *sb, struct chain_t *p_chain);
 s32 count_num_clusters(struct super_block *sb, struct chain_t *dir);
 void exfat_chain_cont_cluster(struct super_block *sb, u32 chain, s32 len);
 
@@ -782,8 +780,6 @@ void init_strm_entry(struct strm_dentry_t *ep, u8 flags, u32 start_clu,
 		     u64 size);
 void init_name_entry(struct name_dentry_t *ep, u16 *uniname);
 
-s32 find_location(struct super_block *sb, struct chain_t *p_dir, s32 entry,
-		  sector_t *sector, s32 *offset);
 struct dentry_t *get_entry_in_dir(struct super_block *sb, struct chain_t *p_dir,
 				  s32 entry, sector_t *sector);
 struct entry_set_cache_t *get_entry_set_in_dir(struct super_block *sb,
@@ -797,8 +793,6 @@ s32 write_partial_entries_in_entry_set(struct super_block *sb,
 				       struct dentry_t *ep, u32 count);
 s32 search_deleted_or_unused_entry(struct super_block *sb,
 				   struct chain_t *p_dir, s32 num_entries);
-s32 find_empty_entry(struct inode *inode, struct chain_t *p_dir,
-		     s32 num_entries);
 s32 count_dos_name_entries(struct super_block *sb, struct chain_t *p_dir,
 			   u32 type);
 void update_dir_checksum(struct super_block *sb, struct chain_t *p_dir,
diff --git a/drivers/staging/exfat/exfat_core.c b/drivers/staging/exfat/exfat_core.c
index 5a01fc25f31d..3ea51d12c38d 100644
--- a/drivers/staging/exfat/exfat_core.c
+++ b/drivers/staging/exfat/exfat_core.c
@@ -125,7 +125,7 @@ void fs_error(struct super_block *sb)
  *  Cluster Management Functions
  */
 
-s32 clear_cluster(struct super_block *sb, u32 clu)
+static s32 clear_cluster(struct super_block *sb, u32 clu)
 {
 	sector_t s, n;
 	s32 ret = 0;
@@ -294,7 +294,7 @@ static void exfat_free_cluster(struct super_block *sb, struct chain_t *p_chain,
 		p_fs->used_clusters -= num_clusters;
 }
 
-u32 find_last_cluster(struct super_block *sb, struct chain_t *p_chain)
+static u32 find_last_cluster(struct super_block *sb, struct chain_t *p_chain)
 {
 	u32 clu, next;
 	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
@@ -1186,7 +1186,7 @@ static s32 _walk_fat_chain(struct super_block *sb, struct chain_t *p_dir,
 	return 0;
 }
 
-s32 find_location(struct super_block *sb, struct chain_t *p_dir, s32 entry,
+static s32 find_location(struct super_block *sb, struct chain_t *p_dir, s32 entry,
 		  sector_t *sector, s32 *offset)
 {
 	s32 off, ret;
@@ -1583,7 +1583,7 @@ s32 search_deleted_or_unused_entry(struct super_block *sb,
 	return -1;
 }
 
-s32 find_empty_entry(struct inode *inode, struct chain_t *p_dir, s32 num_entries)
+static s32 find_empty_entry(struct inode *inode, struct chain_t *p_dir, s32 num_entries)
 {
 	s32 ret, dentry;
 	u32 last_clu;
-- 
2.24.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
