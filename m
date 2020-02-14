Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AA1A315D08B
	for <lists+driverdev-devel@lfdr.de>; Fri, 14 Feb 2020 04:31:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9D813220CA;
	Fri, 14 Feb 2020 03:31:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oXZM2ByBr2+w; Fri, 14 Feb 2020 03:31:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9F2B522056;
	Fri, 14 Feb 2020 03:31:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 36B6D1BF28A
 for <devel@linuxdriverproject.org>; Fri, 14 Feb 2020 03:31:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2F36F22001
 for <devel@linuxdriverproject.org>; Fri, 14 Feb 2020 03:31:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dqc9It6y97tp for <devel@linuxdriverproject.org>;
 Fri, 14 Feb 2020 03:31:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx06.melco.co.jp (mx06.melco.co.jp [192.218.140.146])
 by silver.osuosl.org (Postfix) with ESMTPS id 9D35B2048B
 for <devel@driverdev.osuosl.org>; Fri, 14 Feb 2020 03:31:48 +0000 (UTC)
Received: from mr06.melco.co.jp (mr06 [133.141.98.164])
 by mx06.melco.co.jp (Postfix) with ESMTP id 6008B3A4051;
 Fri, 14 Feb 2020 12:31:46 +0900 (JST)
Received: from mr06.melco.co.jp (unknown [127.0.0.1])
 by mr06.imss (Postfix) with ESMTP id 48Jf7Q1ybhzRk9N;
 Fri, 14 Feb 2020 12:31:46 +0900 (JST)
Received: from mf04_second.melco.co.jp (unknown [192.168.20.184])
 by mr06.melco.co.jp (Postfix) with ESMTP id 48Jf7Q1fK2zRjjs;
 Fri, 14 Feb 2020 12:31:46 +0900 (JST)
Received: from mf04.melco.co.jp (unknown [133.141.98.184])
 by mf04_second.melco.co.jp (Postfix) with ESMTP id 48Jf7Q1hdXzRk8c;
 Fri, 14 Feb 2020 12:31:46 +0900 (JST)
Received: from tux532.tad.melco.co.jp (unknown [133.141.243.226])
 by mf04.melco.co.jp (Postfix) with ESMTP id 48Jf7Q1DV4zRk6b;
 Fri, 14 Feb 2020 12:31:46 +0900 (JST)
Received: from tux532.tad.melco.co.jp
 by tux532.tad.melco.co.jp (unknown) with ESMTP id 01E3VjP2017636;
 Fri, 14 Feb 2020 12:31:46 +0900
Received: from tux390.tad.melco.co.jp (tux390.tad.melco.co.jp [127.0.0.1])
 by postfix.imss70 (Postfix) with ESMTP id D2D3617E075;
 Fri, 14 Feb 2020 12:31:45 +0900 (JST)
Received: from tux554.tad.melco.co.jp (mailgw1.tad.melco.co.jp [10.168.7.223])
 by tux390.tad.melco.co.jp (Postfix) with ESMTP id BC6FD17E073;
 Fri, 14 Feb 2020 12:31:45 +0900 (JST)
Received: from tux554.tad.melco.co.jp
 by tux554.tad.melco.co.jp (unknown) with ESMTP id 01E3VjHL015652;
 Fri, 14 Feb 2020 12:31:45 +0900
From: Tetsuhiro Kohada <Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
To: Valdis Kletnieks <valdis.kletnieks@vt.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-fsdevel@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/2] staging: exfat: dedicate count_entries() to sub-dir
 counting.
Date: Fri, 14 Feb 2020 12:31:40 +0900
Message-Id: <20200214033140.72339-2-Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200214033140.72339-1-Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
References: <20200214033140.72339-1-Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
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
Cc: Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp,
 Mori.Takahiro@ab.MitsubishiElectric.co.jp,
 motai.hirotaka@aj.mitsubishielectric.co.jp
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

count_entries() function is only used to count sub-dirs.
Clarify the role and rename to count_dir_entries().

Signed-off-by: Tetsuhiro Kohada <Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
---
Changes in v2:
- Rebase to linux-next-next-20200213.

 drivers/staging/exfat/exfat.h       | 2 +-
 drivers/staging/exfat/exfat_core.c  | 8 ++------
 drivers/staging/exfat/exfat_super.c | 4 ++--
 3 files changed, 5 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index 79eb20068dce..36ce23951be0 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -683,7 +683,7 @@ struct entry_set_cache_t *get_entry_set_in_dir(struct super_block *sb,
 					       u32 type,
 					       struct dentry_t **file_ep);
 void release_entry_set(struct entry_set_cache_t *es);
-s32 count_entries(struct super_block *sb, struct chain_t *p_dir, u32 type);
+s32 count_dir_entries(struct super_block *sb, struct chain_t *p_dir);
 void update_dir_checksum(struct super_block *sb, struct chain_t *p_dir,
 			 s32 entry);
 void update_dir_checksum_with_entry_set(struct super_block *sb,
diff --git a/drivers/staging/exfat/exfat_core.c b/drivers/staging/exfat/exfat_core.c
index 94a10c5984ac..7308e50c0aaf 100644
--- a/drivers/staging/exfat/exfat_core.c
+++ b/drivers/staging/exfat/exfat_core.c
@@ -1850,7 +1850,7 @@ s32 exfat_count_ext_entries(struct super_block *sb, struct chain_t *p_dir,
 	return count;
 }
 
-s32 count_entries(struct super_block *sb, struct chain_t *p_dir, u32 type)
+s32 count_dir_entries(struct super_block *sb, struct chain_t *p_dir)
 {
 	int i, count = 0;
 	s32 dentries_per_clu;
@@ -1881,11 +1881,7 @@ s32 count_entries(struct super_block *sb, struct chain_t *p_dir, u32 type)
 
 			if (entry_type == TYPE_UNUSED)
 				return count;
-			if (!(type & TYPE_CRITICAL_PRI) &&
-			    !(type & TYPE_BENIGN_PRI))
-				continue;
-
-			if ((type == TYPE_ALL) || (type == entry_type))
+			if (entry_type == TYPE_DIR)
 				count++;
 		}
 
diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index ce9eb75258f8..b80a2c886d61 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -1468,7 +1468,7 @@ static int ffsReadStat(struct inode *inode, struct dir_entry_t *info)
 						p_fs->cluster_size_bits;
 			}
 
-			count = count_entries(sb, &dir, TYPE_DIR);
+			count = count_dir_entries(sb, &dir);
 			if (count < 0) {
 				ret = count; /* propagate error upward */
 				goto out;
@@ -1535,7 +1535,7 @@ static int ffsReadStat(struct inode *inode, struct dir_entry_t *info)
 			info->Size = (u64)count_num_clusters(sb, &dir) <<
 					p_fs->cluster_size_bits;
 
-		count = count_entries(sb, &dir, TYPE_DIR);
+		count = count_dir_entries(sb, &dir);
 		if (count < 0) {
 			ret = count; /* propagate error upward */
 			goto out;
-- 
2.25.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
