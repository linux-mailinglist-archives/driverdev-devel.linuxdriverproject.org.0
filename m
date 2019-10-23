Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C9004E11A1
	for <lists+driverdev-devel@lfdr.de>; Wed, 23 Oct 2019 07:28:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7778785758;
	Wed, 23 Oct 2019 05:28:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NJT1HkwnNOTK; Wed, 23 Oct 2019 05:28:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B6A2885773;
	Wed, 23 Oct 2019 05:28:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8104A1BF863
 for <devel@linuxdriverproject.org>; Wed, 23 Oct 2019 05:28:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7972687639
 for <devel@linuxdriverproject.org>; Wed, 23 Oct 2019 05:28:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FSkcABjO7d4O for <devel@linuxdriverproject.org>;
 Wed, 23 Oct 2019 05:28:37 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr2.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E24EF875EA
 for <devel@driverdev.osuosl.org>; Wed, 23 Oct 2019 05:28:34 +0000 (UTC)
Received: from mr4.cc.vt.edu (mr4.cc.ipv6.vt.edu
 [IPv6:2607:b400:92:8300:0:7b:e2b1:6a29])
 by omr2.cc.vt.edu (8.14.4/8.14.4) with ESMTP id x9N5SXPX020001
 for <devel@driverdev.osuosl.org>; Wed, 23 Oct 2019 01:28:33 -0400
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200])
 by mr4.cc.vt.edu (8.14.7/8.14.7) with ESMTP id x9N5SSxK021432
 for <devel@driverdev.osuosl.org>; Wed, 23 Oct 2019 01:28:33 -0400
Received: by mail-qk1-f200.google.com with SMTP id b3so18296218qkh.2
 for <devel@driverdev.osuosl.org>; Tue, 22 Oct 2019 22:28:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=1ZfVmulmjsU3Cyo+ca3bv9XfNhytkiBUHJH7LMRWmLo=;
 b=QrKAO/V9mLtXlhUNZW4lid46j5WxDPauK5rKCf4VD05kJ0h+sadM2iJihscIfq/KKI
 +3/zCQdf0rGFGfgHxyRL61xVhD6QloqrBg5JiMDtkfT2gVkIv8XCjtQGCiDf4sSGHgiF
 pCLCX0rmEuvxCEd7RUPWqDAADKO9tZ6NQot8ZA9lls+/U7gnKFuZ0Wy+TEbHij212Qdg
 GX2qRuIxe4zYXgYIDX6meDKy5Ju5xbzPLVf0/GK/W4xAwtA1E7AIQFKBMFY3EsQ2N3Cb
 RlbfD3Ba2Wn9xkWulb9cIYYKJFxxv9gZ/wJiraUdqZYiZQ/Z9KZuzfsPfbdML1bivj/4
 udfg==
X-Gm-Message-State: APjAAAW1aPKP9spCrSZB4tE55N9Fmw4YQW/BTrozSS9tZPWINyzi34xz
 NQBtItZkXJwzXe6jaW0bEBt+ZZiTjuf/VLPVcQdm7hQXOS1Oz+SpFpfjCEF/vMhWMtSQ2Ry22tb
 y8FADVSyntnUvhfWU7BJ7KyAJ4t50y6u5
X-Received: by 2002:ac8:5556:: with SMTP id o22mr7357016qtr.217.1571808508498; 
 Tue, 22 Oct 2019 22:28:28 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxa4tINSJ8hrkJr9ykxfcaSkUDylsH8LXjFhl71sfPlJNyCzr5HxGoTpVHwOlGkhBekPk9nvQ==
X-Received: by 2002:ac8:5556:: with SMTP id o22mr7357004qtr.217.1571808508213; 
 Tue, 22 Oct 2019 22:28:28 -0700 (PDT)
Received: from turing-police.lan ([2601:5c0:c001:c9e1::359])
 by smtp.gmail.com with ESMTPSA id 14sm10397445qtb.54.2019.10.22.22.28.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Oct 2019 22:28:27 -0700 (PDT)
From: Valdis Kletnieks <valdis.kletnieks@vt.edu>
X-Google-Original-From: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Valdis.Kletnieks@vt.edu
Subject: [PATCH 4/8] staging: exfat: Cleanup static entries in exfat.h
Date: Wed, 23 Oct 2019 01:27:47 -0400
Message-Id: <20191023052752.693689-5-Valdis.Kletnieks@vt.edu>
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

Many of the static definitions that remain are not needed, as the function
definition is already before the first use.

Signed-off-by: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
---
 drivers/staging/exfat/exfat.h | 53 -----------------------------------
 1 file changed, 53 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index 9cd78b6417d0..dbd86a6cdc95 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -782,17 +782,9 @@ static void buf_sync(struct super_block *sb);
 
 /* fs management functions */
 void fs_set_vol_flags(struct super_block *sb, u32 new_flag);
-static void fs_error(struct super_block *sb);
 
 /* cluster management functions */
-static s32 clear_cluster(struct super_block *sb, u32 clu);
-static s32 exfat_alloc_cluster(struct super_block *sb, s32 num_alloc,
-			struct chain_t *p_chain);
-static void exfat_free_cluster(struct super_block *sb, struct chain_t *p_chain,
-			s32 do_relse);
-static u32 find_last_cluster(struct super_block *sb, struct chain_t *p_chain);
 s32 count_num_clusters(struct super_block *sb, struct chain_t *dir);
-static s32 exfat_count_used_clusters(struct super_block *sb);
 void exfat_chain_cont_cluster(struct super_block *sb, u32 chain, s32 len);
 
 /* allocation bitmap management functions */
@@ -808,36 +800,12 @@ s32 load_upcase_table(struct super_block *sb);
 void free_upcase_table(struct super_block *sb);
 
 /* dir entry management functions */
-static u32 exfat_get_entry_type(struct dentry_t *p_entry);
-static void exfat_set_entry_type(struct dentry_t *p_entry, u32 type);
-static u32 exfat_get_entry_attr(struct dentry_t *p_entry);
-static void exfat_set_entry_attr(struct dentry_t *p_entry, u32 attr);
-static u8 exfat_get_entry_flag(struct dentry_t *p_entry);
-static void exfat_set_entry_flag(struct dentry_t *p_entry, u8 flag);
-static u32 exfat_get_entry_clu0(struct dentry_t *p_entry);
-static void exfat_set_entry_clu0(struct dentry_t *p_entry, u32 start_clu);
-static u64 exfat_get_entry_size(struct dentry_t *p_entry);
-static void exfat_set_entry_size(struct dentry_t *p_entry, u64 size);
 struct timestamp_t *tm_current(struct timestamp_t *tm);
-static void exfat_get_entry_time(struct dentry_t *p_entry, struct timestamp_t *tp,
-			  u8 mode);
-static void exfat_set_entry_time(struct dentry_t *p_entry, struct timestamp_t *tp,
-			  u8 mode);
-static s32 exfat_init_dir_entry(struct super_block *sb, struct chain_t *p_dir,
-			 s32 entry, u32 type, u32 start_clu, u64 size);
-static s32 exfat_init_ext_dir_entry(struct super_block *sb, struct chain_t *p_dir,
-			     s32 entry, s32 num_entries,
-			     struct uni_name_t *p_uniname,
-		struct dos_name_t *p_dosname);
 static void init_file_entry(struct file_dentry_t *ep, u32 type);
 static void init_strm_entry(struct strm_dentry_t *ep, u8 flags, u32 start_clu,
 		     u64 size);
 static void init_name_entry(struct name_dentry_t *ep, u16 *uniname);
-static void exfat_delete_dir_entry(struct super_block *sb, struct chain_t *p_dir,
-			    s32 entry, s32 order, s32 num_entries);
 
-static s32 find_location(struct super_block *sb, struct chain_t *p_dir, s32 entry,
-		  sector_t *sector, s32 *offset);
 struct dentry_t *get_entry_in_dir(struct super_block *sb, struct chain_t *p_dir,
 				  s32 entry, sector_t *sector);
 struct entry_set_cache_t *get_entry_set_in_dir(struct super_block *sb,
@@ -846,18 +814,6 @@ struct entry_set_cache_t *get_entry_set_in_dir(struct super_block *sb,
 					       struct dentry_t **file_ep);
 void release_entry_set(struct entry_set_cache_t *es);
 static s32 write_whole_entry_set(struct super_block *sb, struct entry_set_cache_t *es);
-static s32 write_partial_entries_in_entry_set(struct super_block *sb,
-				       struct entry_set_cache_t *es,
-				       struct dentry_t *ep, u32 count);
-static s32 search_deleted_or_unused_entry(struct super_block *sb,
-				   struct chain_t *p_dir, s32 num_entries);
-static s32 find_empty_entry(struct inode *inode, struct chain_t *p_dir,
-		     s32 num_entries);
-static s32 exfat_find_dir_entry(struct super_block *sb, struct chain_t *p_dir,
-			 struct uni_name_t *p_uniname, s32 num_entries,
-			 struct dos_name_t *p_dosname, u32 type);
-static s32 exfat_count_ext_entries(struct super_block *sb, struct chain_t *p_dir,
-			    s32 entry, struct dentry_t *p_entry);
 s32 count_dos_name_entries(struct super_block *sb, struct chain_t *p_dir,
 			   u32 type);
 static void update_dir_checksum(struct super_block *sb, struct chain_t *p_dir,
@@ -873,25 +829,16 @@ s32 get_num_entries_and_dos_name(struct super_block *sb, struct chain_t *p_dir,
 void get_uni_name_from_dos_entry(struct super_block *sb,
 				 struct dos_dentry_t *ep,
 				 struct uni_name_t *p_uniname, u8 mode);
-static void fat_get_uni_name_from_ext_entry(struct super_block *sb,
-				     struct chain_t *p_dir, s32 entry,
-				     u16 *uniname);
-static void exfat_get_uni_name_from_ext_entry(struct super_block *sb,
-				       struct chain_t *p_dir, s32 entry,
-				       u16 *uniname);
 static s32 extract_uni_name_from_name_entry(struct name_dentry_t *ep, u16 *uniname,
 				            s32 order);
 static s32 fat_generate_dos_name(struct super_block *sb, struct chain_t *p_dir,
 			  struct dos_name_t *p_dosname);
 static void fat_attach_count_to_dos_name(u8 *dosname, s32 count);
-static s32 fat_calc_num_entries(struct uni_name_t *p_uniname);
-static s32 exfat_calc_num_entries(struct uni_name_t *p_uniname);
 u16 calc_checksum_2byte(void *data, s32 len, u16 chksum, s32 type);
 
 /* name resolution functions */
 s32 resolve_path(struct inode *inode, char *path, struct chain_t *p_dir,
 		 struct uni_name_t *p_uniname);
-static s32 resolve_name(u8 *name, u8 **arg);
 
 /* file operation functions */
 s32 exfat_mount(struct super_block *sb, struct pbr_sector_t *p_pbr);
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
