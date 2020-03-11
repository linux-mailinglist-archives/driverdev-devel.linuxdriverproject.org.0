Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A4BD181633
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Mar 2020 11:52:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CCAF222264;
	Wed, 11 Mar 2020 10:52:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MmZAeNq0xRnA; Wed, 11 Mar 2020 10:52:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EDB7F22225;
	Wed, 11 Mar 2020 10:52:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 74C411BF313
 for <devel@linuxdriverproject.org>; Wed, 11 Mar 2020 10:52:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 719A48727B
 for <devel@linuxdriverproject.org>; Wed, 11 Mar 2020 10:52:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 03SdrXw5lXmZ for <devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 10:52:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx04.melco.co.jp (mx04.melco.co.jp [192.218.140.144])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 821558721B
 for <devel@driverdev.osuosl.org>; Wed, 11 Mar 2020 10:52:51 +0000 (UTC)
Received: from mr04.melco.co.jp (mr04 [133.141.98.166])
 by mx04.melco.co.jp (Postfix) with ESMTP id 45BB03A4421;
 Wed, 11 Mar 2020 19:52:50 +0900 (JST)
Received: from mr04.melco.co.jp (unknown [127.0.0.1])
 by mr04.imss (Postfix) with ESMTP id 48cphL1GdBzRk8b;
 Wed, 11 Mar 2020 19:52:50 +0900 (JST)
Received: from mf04_second.melco.co.jp (unknown [192.168.20.184])
 by mr04.melco.co.jp (Postfix) with ESMTP id 48cphL0ypFzRk5L;
 Wed, 11 Mar 2020 19:52:50 +0900 (JST)
Received: from mf04.melco.co.jp (unknown [133.141.98.184])
 by mf04_second.melco.co.jp (Postfix) with ESMTP id 48cphL0xPxzRjFt;
 Wed, 11 Mar 2020 19:52:50 +0900 (JST)
Received: from tux532.tad.melco.co.jp (unknown [133.141.243.226])
 by mf04.melco.co.jp (Postfix) with ESMTP id 48cphL0SzmzRjFp;
 Wed, 11 Mar 2020 19:52:50 +0900 (JST)
Received: from tux532.tad.melco.co.jp
 by tux532.tad.melco.co.jp (unknown) with ESMTP id 02BAqn0V028972;
 Wed, 11 Mar 2020 19:52:49 +0900
Received: from tux390.tad.melco.co.jp (tux390.tad.melco.co.jp [127.0.0.1])
 by postfix.imss70 (Postfix) with ESMTP id C905C17E075;
 Wed, 11 Mar 2020 19:52:49 +0900 (JST)
Received: from tux554.tad.melco.co.jp (tadpost1.tad.melco.co.jp [10.168.7.223])
 by tux390.tad.melco.co.jp (Postfix) with ESMTP id B30E317E073;
 Wed, 11 Mar 2020 19:52:49 +0900 (JST)
Received: from tux554.tad.melco.co.jp
 by tux554.tad.melco.co.jp (unknown) with ESMTP id 02BAqm0x017644;
 Wed, 11 Mar 2020 19:52:49 +0900
From: Tetsuhiro Kohada <Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
To: Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp
Subject: [PATCH 5/5] staging: exfat: standardize checksum calculation
Date: Wed, 11 Mar 2020 19:52:45 +0900
Message-Id: <20200311105245.125564-5-Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200311105245.125564-1-Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
References: <20200311105245.125564-1-Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
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
Cc: devel@driverdev.osuosl.org, Valdis Kletnieks <valdis.kletnieks@vt.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 motai.hirotaka@aj.mitsubishielectric.co.jp, linux-kernel@vger.kernel.org,
 Mori.Takahiro@ab.MitsubishiElectric.co.jp, linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

- Remove redundant code of calc_checksum_2byte() and rename to calc_checksum16.
- Replace checksum calculation in __load_upcase_table() with calc_checksum32().

Reviewed-by: Takahiro Mori <Mori.Takahiro@ab.MitsubishiElectric.co.jp>
Signed-off-by: Tetsuhiro Kohada <Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
---
 drivers/staging/exfat/exfat.h      |  3 ++-
 drivers/staging/exfat/exfat_core.c | 40 ++++++++----------------------
 drivers/staging/exfat/exfat_nls.c  |  3 +--
 3 files changed, 14 insertions(+), 32 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index 95c2a6ef0e71..4e6e6c4b20e5 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -601,7 +601,8 @@ bool is_dir_empty(struct super_block *sb, struct chain_t *p_dir);
 /* name conversion functions */
 s32 get_num_entries(struct super_block *sb, struct chain_t *p_dir,
 		    struct uni_name_t *p_uniname, s32 *entries);
-u16 calc_checksum_2byte(void *data, s32 len, u16 chksum, s32 type);
+u16 calc_checksum16(void *data, int len, u16 chksum, int type);
+u32 calc_checksum32(void *data, int len, u32 chksum, int type);
 
 /* name resolution functions */
 s32 resolve_path(struct inode *inode, char *path, struct chain_t *p_dir,
diff --git a/drivers/staging/exfat/exfat_core.c b/drivers/staging/exfat/exfat_core.c
index 07c876bb1759..d14e9b345903 100644
--- a/drivers/staging/exfat/exfat_core.c
+++ b/drivers/staging/exfat/exfat_core.c
@@ -588,14 +588,6 @@ static s32 __load_upcase_table(struct super_block *sb, sector_t sector,
 
 		for (i = 0; i < p_bd->sector_size && index <= 0xFFFF; i += 2) {
 			uni = GET16(((u8 *)tmp_bh->b_data) + i);
-
-			checksum = ((checksum & 1) ? 0x80000000 : 0) +
-				   (checksum >> 1) + *(((u8 *)tmp_bh->b_data) +
-						       i);
-			checksum = ((checksum & 1) ? 0x80000000 : 0) +
-				   (checksum >> 1) + *(((u8 *)tmp_bh->b_data) +
-						       (i + 1));
-
 			if (skip) {
 				pr_debug("skip from 0x%X ", index);
 				index += uni;
@@ -626,6 +618,8 @@ static s32 __load_upcase_table(struct super_block *sb, sector_t sector,
 				index++;
 			}
 		}
+		checksum = calc_checksum32(tmp_bh->b_data, i, checksum,
+					   CS_DEFAULT);
 	}
 	if (index >= 0xFFFF && utbl_checksum == checksum) {
 		if (tmp_bh)
@@ -1096,8 +1090,7 @@ void update_dir_checksum(struct super_block *sb, struct chain_t *p_dir,
 	exfat_buf_lock(sb, sector);
 
 	num_entries = (s32)file_ep->num_ext + 1;
-	chksum = calc_checksum_2byte((void *)file_ep, DENTRY_SIZE, 0,
-				     CS_DIR_ENTRY);
+	chksum = calc_checksum16(file_ep, DENTRY_SIZE, 0, CS_DIR_ENTRY);
 
 	for (i = 1; i < num_entries; i++) {
 		ep = get_entry_in_dir(sb, p_dir, entry + i, NULL);
@@ -1106,8 +1099,7 @@ void update_dir_checksum(struct super_block *sb, struct chain_t *p_dir,
 			return;
 		}
 
-		chksum = calc_checksum_2byte((void *)ep, DENTRY_SIZE, chksum,
-					     CS_DEFAULT);
+		chksum = calc_checksum16(ep, DENTRY_SIZE, chksum, CS_DEFAULT);
 	}
 
 	SET16_A(file_ep->checksum, chksum);
@@ -1192,8 +1184,7 @@ void update_dir_checksum_with_entry_set(struct super_block *sb,
 	ep = (struct dentry_t *)&es->__buf;
 	for (i = 0; i < es->num_entries; i++) {
 		pr_debug("%s ep %p\n", __func__, ep);
-		chksum = calc_checksum_2byte((void *)ep, DENTRY_SIZE, chksum,
-					     chksum_type);
+		chksum = calc_checksum16(ep, DENTRY_SIZE, chksum, chksum_type);
 		ep++;
 		chksum_type = CS_DEFAULT;
 	}
@@ -1997,25 +1988,16 @@ s32 exfat_calc_num_entries(struct uni_name_t *p_uniname)
 	return (len - 1) / 15 + 3;
 }
 
-u16 calc_checksum_2byte(void *data, s32 len, u16 chksum, s32 type)
+u16 calc_checksum16(void *data, int len, u16 chksum, int type)
 {
 	int i;
 	u8 *c = (u8 *)data;
 
-	switch (type) {
-	case CS_DIR_ENTRY:
-		for (i = 0; i < len; i++, c++) {
-			if ((i == 2) || (i == 3))
-				continue;
-			chksum = (((chksum & 1) << 15) |
-				  ((chksum & 0xFFFE) >> 1)) + (u16)*c;
-		}
-		break;
-	default
-			:
-		for (i = 0; i < len; i++, c++)
-			chksum = (((chksum & 1) << 15) |
-				  ((chksum & 0xFFFE) >> 1)) + (u16)*c;
+	for (i = 0; i < len; i++, c++) {
+		if (unlikely(type == CS_DIR_ENTRY &&
+			     (i == 2 || i == 3)))
+			continue;
+		chksum = ((chksum & 1) << 15 | chksum >> 1) + (u16)*c;
 	}
 	return chksum;
 }
diff --git a/drivers/staging/exfat/exfat_nls.c b/drivers/staging/exfat/exfat_nls.c
index 91e8b0c4dce7..bda6613b4773 100644
--- a/drivers/staging/exfat/exfat_nls.c
+++ b/drivers/staging/exfat/exfat_nls.c
@@ -204,8 +204,7 @@ void nls_cstring_to_uniname(struct super_block *sb,
 	}
 
 	p_uniname->name_len = j;
-	p_uniname->name_hash = calc_checksum_2byte(upname, j << 1, 0,
-						   CS_DEFAULT);
+	p_uniname->name_hash = calc_checksum16(upname, j << 1, 0, CS_DEFAULT);
 
 	if (p_lossy)
 		*p_lossy = lossy;
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
