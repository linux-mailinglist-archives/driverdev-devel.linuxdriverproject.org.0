Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E3ACEA70F3
	for <lists+driverdev-devel@lfdr.de>; Tue,  3 Sep 2019 18:47:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3EF1C87775;
	Tue,  3 Sep 2019 16:47:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 673ZeVPnNgwz; Tue,  3 Sep 2019 16:47:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 02F5487746;
	Tue,  3 Sep 2019 16:47:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 48A501BF27F
 for <devel@linuxdriverproject.org>; Tue,  3 Sep 2019 16:47:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 459A383885
 for <devel@linuxdriverproject.org>; Tue,  3 Sep 2019 16:47:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CJbYBlnWMH7H for <devel@linuxdriverproject.org>;
 Tue,  3 Sep 2019 16:47:50 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from valentin-vidic.from.hr (valentin-vidic.from.hr [94.229.67.141])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8416583102
 for <devel@driverdev.osuosl.org>; Tue,  3 Sep 2019 16:47:50 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at valentin-vidic.from.hr
Received: by valentin-vidic.from.hr (Postfix, from userid 1000)
 id 926AA3A32A; Tue,  3 Sep 2019 18:47:40 +0200 (CEST)
From: Valentin Vidic <vvidic@valentin-vidic.from.hr>
To: Valdis Kletnieks <valdis.kletnieks@vt.edu>
Subject: [PATCH] staging: exfat: cleanup braces for if/else statements
Date: Tue,  3 Sep 2019 18:47:32 +0200
Message-Id: <20190903164732.14194-1-vvidic@valentin-vidic.from.hr>
X-Mailer: git-send-email 2.20.1
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Valentin Vidic <vvidic@valentin-vidic.from.hr>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixes checkpatch.pl warnings:

  CHECK: Unbalanced braces around else statement
  CHECK: braces {} should be used on all arms of this statement

Signed-off-by: Valentin Vidic <vvidic@valentin-vidic.from.hr>
---
 drivers/staging/exfat/exfat_core.c  | 12 ++++++------
 drivers/staging/exfat/exfat_super.c | 16 +++++++++-------
 2 files changed, 15 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/exfat/exfat_core.c b/drivers/staging/exfat/exfat_core.c
index 46b9f4455da1..1246afcffb8d 100644
--- a/drivers/staging/exfat/exfat_core.c
+++ b/drivers/staging/exfat/exfat_core.c
@@ -743,11 +743,11 @@ static s32 __load_upcase_table(struct super_block *sb, sector_t sector,
 				pr_debug("to 0x%X (amount of 0x%X)\n",
 					 index, uni);
 				skip = FALSE;
-			} else if (uni == index)
+			} else if (uni == index) {
 				index++;
-			else if (uni == 0xFFFF)
+			} else if (uni == 0xFFFF) {
 				skip = TRUE;
-			else { /* uni != index , uni != 0xFFFF */
+			} else { /* uni != index , uni != 0xFFFF */
 				u16 col_index = get_col_index(index);
 
 				if (upcase_table[col_index] == NULL) {
@@ -805,11 +805,11 @@ static s32 __load_default_upcase_table(struct super_block *sb)
 			index += uni;
 			pr_debug("to 0x%X (amount of 0x%X)\n", index, uni);
 			skip = FALSE;
-		} else if (uni == index)
+		} else if (uni == index) {
 			index++;
-		else if (uni == 0xFFFF)
+		} else if (uni == 0xFFFF) {
 			skip = TRUE;
-		else { /* uni != index , uni != 0xFFFF */
+		} else { /* uni != index , uni != 0xFFFF */
 			u16 col_index = get_col_index(index);
 
 			if (upcase_table[col_index] == NULL) {
diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index 881cd85cf677..e44b860e35e8 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -344,8 +344,10 @@ static int exfat_cmpi(const struct dentry *dentry, unsigned int len,
 		if (t == NULL) {
 			if (strncasecmp(name->name, str, alen) == 0)
 				return 0;
-		} else if (nls_strnicmp(t, name->name, str, alen) == 0)
-			return 0;
+		} else {
+			if (nls_strnicmp(t, name->name, str, alen) == 0)
+				return 0;
+		}
 	}
 	return 1;
 }
@@ -999,7 +1001,7 @@ static int ffsWriteFile(struct inode *inode, struct file_id_t *fid,
 								   &new_clu);
 			if (num_alloced == 0)
 				break;
-			else if (num_alloced < 0) {
+			if (num_alloced < 0) {
 				ret = FFS_MEDIAERR;
 				goto out;
 			}
@@ -1248,9 +1250,9 @@ static int ffsTruncateFile(struct inode *inode, u64 old_size, u64 new_size)
 		p_fs->fs_func->set_entry_clu0(ep2, CLUSTER_32(0));
 	}
 
-	if (p_fs->vol_type != EXFAT)
+	if (p_fs->vol_type != EXFAT) {
 		buf_modify(sb, sector);
-	else {
+	} else {
 		update_dir_checksum_with_entry_set(sb, es);
 		release_entry_set(es);
 	}
@@ -1561,9 +1563,9 @@ static int ffsSetAttr(struct inode *inode, u32 attr)
 	fid->attr = attr;
 	p_fs->fs_func->set_entry_attr(ep, attr);
 
-	if (p_fs->vol_type != EXFAT)
+	if (p_fs->vol_type != EXFAT) {
 		buf_modify(sb, sector);
-	else {
+	} else {
 		update_dir_checksum_with_entry_set(sb, es);
 		release_entry_set(es);
 	}
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
