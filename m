Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E670BF9BBF
	for <lists+driverdev-devel@lfdr.de>; Tue, 12 Nov 2019 22:14:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 879662040E;
	Tue, 12 Nov 2019 21:14:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kxuwViGdSEmP; Tue, 12 Nov 2019 21:14:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0FDAF2041B;
	Tue, 12 Nov 2019 21:14:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6D67A1BF404
 for <devel@linuxdriverproject.org>; Tue, 12 Nov 2019 21:13:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6939D858C9
 for <devel@linuxdriverproject.org>; Tue, 12 Nov 2019 21:13:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Tv6bPkTXBgtT for <devel@linuxdriverproject.org>;
 Tue, 12 Nov 2019 21:13:56 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr2.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8D7A58545B
 for <devel@driverdev.osuosl.org>; Tue, 12 Nov 2019 21:13:56 +0000 (UTC)
Received: from mr6.cc.vt.edu (mr6.cc.vt.edu
 [IPv6:2607:b400:92:8500:0:af:2d00:4488])
 by omr2.cc.vt.edu (8.14.4/8.14.4) with ESMTP id xACLDtSf029768
 for <devel@driverdev.osuosl.org>; Tue, 12 Nov 2019 16:13:55 -0500
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69])
 by mr6.cc.vt.edu (8.14.7/8.14.7) with ESMTP id xACLDoQd015614
 for <devel@driverdev.osuosl.org>; Tue, 12 Nov 2019 16:13:55 -0500
Received: by mail-qv1-f69.google.com with SMTP id w5so9561975qvp.13
 for <devel@driverdev.osuosl.org>; Tue, 12 Nov 2019 13:13:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=vWz5qWU6fNbBoERW9/nUa4gCsQuEg8PE4Fn2E/plUag=;
 b=PNdDE1cQw48nATIHO7lHFwJz61rhHYll+AqotuoT4RUjydoSB6z/ol9J0FGxy++pMI
 6ykthE3GkLz3C8m1QRZwoSvQhJLKWbUUN/MqV37KtgPzmL5w8sRskhdDFoMfL91AjHSd
 kTZTyb4GKcm3eLW/DtFGW+btDwNVTLDp6PyAj/+tQtdp6TkFNGlUX25zvYPoNmyLaHjc
 N0QG5eWKZVkAsesn1MLe/YgkOoHbOm7tQgX5CTLVJnSvf4ZBbXJnZrlbyVAmBCDYis6z
 ZxSpFoR0ZCHdhc7VFaBujwwAhlLB7Ud2NeyYq7mmx3o//anMLHkrzdEj9j0Oiv4ptusH
 dg4g==
X-Gm-Message-State: APjAAAWBFbrfvdxPhYu0aFS3pqJFFtwD6gi+lj7MWKxMOO0T8DFBAxrO
 JBlSHh+URJSpHUhqbySiWaC6iHU8xcnbJ84KxqDoMIpq22h/5j2ApRiqj7bL/8vcZfiI/haT5f5
 b5YhgolWw54AjWw38/G3fmEYpJBA+wHrC
X-Received: by 2002:ad4:4e2c:: with SMTP id
 dm12mr31281834qvb.195.1573593230383; 
 Tue, 12 Nov 2019 13:13:50 -0800 (PST)
X-Google-Smtp-Source: APXvYqwveitpZlD3XdcvBQv8maP7sPUqp6dj5WueJm6mmmmAUPelBtYx/SsUzyMn71kNjjFyhPjjHw==
X-Received: by 2002:ad4:4e2c:: with SMTP id
 dm12mr31281804qvb.195.1573593229928; 
 Tue, 12 Nov 2019 13:13:49 -0800 (PST)
Received: from turing-police.lan ([2601:5c0:c001:c9e1::359])
 by smtp.gmail.com with ESMTPSA id 130sm9674214qkd.33.2019.11.12.13.13.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Nov 2019 13:13:49 -0800 (PST)
From: Valdis Kletnieks <valdis.kletnieks@vt.edu>
X-Google-Original-From: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
To: 
Subject: [PATCH 10/12] staging: exfat: Clean up the namespace pollution part 6
Date: Tue, 12 Nov 2019 16:12:36 -0500
Message-Id: <20191112211238.156490-11-Valdis.Kletnieks@vt.edu>
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

Move a few more things so we can make them static and clear exfat.h out.
At this point, pretty much everything that can be static is static.
(Note: FAT_sync(), buf_sync(), and sync_alloc_bitmap() aren't called
anyplace, but aren't static because (a) that will toss an error and
(b) they probably *should* be getting called someplace

Signed-off-by: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
---
 drivers/staging/exfat/exfat.h      |   8 --
 drivers/staging/exfat/exfat_core.c | 170 ++++++++++++++---------------
 2 files changed, 85 insertions(+), 93 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index c41fc3ec9f29..188ea1bd7162 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -780,12 +780,6 @@ struct entry_set_cache_t *get_entry_set_in_dir(struct super_block *sb,
 					       u32 type,
 					       struct dentry_t **file_ep);
 void release_entry_set(struct entry_set_cache_t *es);
-s32 write_whole_entry_set(struct super_block *sb, struct entry_set_cache_t *es);
-s32 write_partial_entries_in_entry_set(struct super_block *sb,
-				       struct entry_set_cache_t *es,
-				       struct dentry_t *ep, u32 count);
-s32 search_deleted_or_unused_entry(struct super_block *sb,
-				   struct chain_t *p_dir, s32 num_entries);
 s32 count_dos_name_entries(struct super_block *sb, struct chain_t *p_dir,
 			   u32 type);
 void update_dir_checksum(struct super_block *sb, struct chain_t *p_dir,
@@ -798,8 +792,6 @@ bool is_dir_empty(struct super_block *sb, struct chain_t *p_dir);
 s32 get_num_entries_and_dos_name(struct super_block *sb, struct chain_t *p_dir,
 				 struct uni_name_t *p_uniname, s32 *entries,
 				 struct dos_name_t *p_dosname);
-s32 extract_uni_name_from_name_entry(struct name_dentry_t *ep,
-				     u16 *uniname, s32 order);
 u16 calc_checksum_2byte(void *data, s32 len, u16 chksum, s32 type);
 
 /* name resolution functions */
diff --git a/drivers/staging/exfat/exfat_core.c b/drivers/staging/exfat/exfat_core.c
index 8d38f70c9726..3cc13aaaed24 100644
--- a/drivers/staging/exfat/exfat_core.c
+++ b/drivers/staging/exfat/exfat_core.c
@@ -1140,6 +1140,73 @@ void update_dir_checksum(struct super_block *sb, struct chain_t *p_dir,
 	buf_unlock(sb, sector);
 }
 
+static s32 __write_partial_entries_in_entry_set(struct super_block *sb,
+						struct entry_set_cache_t *es,
+						sector_t sec, s32 off, u32 count)
+{
+	s32 num_entries, buf_off = (off - es->offset);
+	u32 remaining_byte_in_sector, copy_entries;
+	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
+	struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
+	u32 clu;
+	u8 *buf, *esbuf = (u8 *)&es->__buf;
+
+	pr_debug("%s entered es %p sec %llu off %d count %d\n",
+		 __func__, es, (unsigned long long)sec, off, count);
+	num_entries = count;
+
+	while (num_entries) {
+		/* white per sector base */
+		remaining_byte_in_sector = (1 << p_bd->sector_size_bits) - off;
+		copy_entries = min_t(s32,
+				     remaining_byte_in_sector >> DENTRY_SIZE_BITS,
+				     num_entries);
+		buf = buf_getblk(sb, sec);
+		if (!buf)
+			goto err_out;
+		pr_debug("es->buf %p buf_off %u\n", esbuf, buf_off);
+		pr_debug("copying %d entries from %p to sector %llu\n",
+			 copy_entries, (esbuf + buf_off),
+			 (unsigned long long)sec);
+		memcpy(buf + off, esbuf + buf_off,
+		       copy_entries << DENTRY_SIZE_BITS);
+		buf_modify(sb, sec);
+		num_entries -= copy_entries;
+
+		if (num_entries) {
+			/* get next sector */
+			if (IS_LAST_SECTOR_IN_CLUSTER(sec)) {
+				clu = GET_CLUSTER_FROM_SECTOR(sec);
+				if (es->alloc_flag == 0x03) {
+					clu++;
+				} else {
+					if (FAT_read(sb, clu, &clu) == -1)
+						goto err_out;
+				}
+				sec = START_SECTOR(clu);
+			} else {
+				sec++;
+			}
+			off = 0;
+			buf_off += copy_entries << DENTRY_SIZE_BITS;
+		}
+	}
+
+	pr_debug("%s exited successfully\n", __func__);
+	return 0;
+err_out:
+	pr_debug("%s failed\n", __func__);
+	return -EINVAL;
+}
+
+/* write back all entries in entry set */
+static s32 write_whole_entry_set(struct super_block *sb, struct entry_set_cache_t *es)
+{
+	return __write_partial_entries_in_entry_set(sb, es, es->sector,
+						    es->offset,
+						    es->num_entries);
+}
+
 void update_dir_checksum_with_entry_set(struct super_block *sb,
 					struct entry_set_cache_t *es)
 {
@@ -1421,75 +1488,8 @@ void release_entry_set(struct entry_set_cache_t *es)
 	kfree(es);
 }
 
-static s32 __write_partial_entries_in_entry_set(struct super_block *sb,
-						struct entry_set_cache_t *es,
-						sector_t sec, s32 off, u32 count)
-{
-	s32 num_entries, buf_off = (off - es->offset);
-	u32 remaining_byte_in_sector, copy_entries;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-	struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
-	u32 clu;
-	u8 *buf, *esbuf = (u8 *)&es->__buf;
-
-	pr_debug("%s entered es %p sec %llu off %d count %d\n",
-		 __func__, es, (unsigned long long)sec, off, count);
-	num_entries = count;
-
-	while (num_entries) {
-		/* white per sector base */
-		remaining_byte_in_sector = (1 << p_bd->sector_size_bits) - off;
-		copy_entries = min_t(s32,
-				     remaining_byte_in_sector >> DENTRY_SIZE_BITS,
-				     num_entries);
-		buf = buf_getblk(sb, sec);
-		if (!buf)
-			goto err_out;
-		pr_debug("es->buf %p buf_off %u\n", esbuf, buf_off);
-		pr_debug("copying %d entries from %p to sector %llu\n",
-			 copy_entries, (esbuf + buf_off),
-			 (unsigned long long)sec);
-		memcpy(buf + off, esbuf + buf_off,
-		       copy_entries << DENTRY_SIZE_BITS);
-		buf_modify(sb, sec);
-		num_entries -= copy_entries;
-
-		if (num_entries) {
-			/* get next sector */
-			if (IS_LAST_SECTOR_IN_CLUSTER(sec)) {
-				clu = GET_CLUSTER_FROM_SECTOR(sec);
-				if (es->alloc_flag == 0x03) {
-					clu++;
-				} else {
-					if (FAT_read(sb, clu, &clu) == -1)
-						goto err_out;
-				}
-				sec = START_SECTOR(clu);
-			} else {
-				sec++;
-			}
-			off = 0;
-			buf_off += copy_entries << DENTRY_SIZE_BITS;
-		}
-	}
-
-	pr_debug("%s exited successfully\n", __func__);
-	return 0;
-err_out:
-	pr_debug("%s failed\n", __func__);
-	return -EINVAL;
-}
-
-/* write back all entries in entry set */
-s32 write_whole_entry_set(struct super_block *sb, struct entry_set_cache_t *es)
-{
-	return __write_partial_entries_in_entry_set(sb, es, es->sector,
-						    es->offset,
-						    es->num_entries);
-}
-
 /* search EMPTY CONTINUOUS "num_entries" entries */
-s32 search_deleted_or_unused_entry(struct super_block *sb,
+static s32 search_deleted_or_unused_entry(struct super_block *sb,
 				   struct chain_t *p_dir, s32 num_entries)
 {
 	int i, dentry, num_empty = 0;
@@ -1665,6 +1665,23 @@ static s32 find_empty_entry(struct inode *inode, struct chain_t *p_dir, s32 num_
 	return dentry;
 }
 
+static s32 extract_uni_name_from_name_entry(struct name_dentry_t *ep, u16 *uniname,
+				     s32 order)
+{
+	int i, len = 0;
+
+	for (i = 0; i < 30; i += 2) {
+		*uniname = GET16_A(ep->unicode_0_14 + i);
+		if (*uniname == 0x0)
+			return len;
+		uniname++;
+		len++;
+	}
+
+	*uniname = 0x0;
+	return len;
+}
+
 /* return values of exfat_find_dir_entry()
  * >= 0 : return dir entiry position with the name in dir
  * -1 : (root dir, ".") it is the root dir itself
@@ -2013,23 +2030,6 @@ static void exfat_get_uni_name_from_ext_entry(struct super_block *sb,
 	release_entry_set(es);
 }
 
-s32 extract_uni_name_from_name_entry(struct name_dentry_t *ep, u16 *uniname,
-				     s32 order)
-{
-	int i, len = 0;
-
-	for (i = 0; i < 30; i += 2) {
-		*uniname = GET16_A(ep->unicode_0_14 + i);
-		if (*uniname == 0x0)
-			return len;
-		uniname++;
-		len++;
-	}
-
-	*uniname = 0x0;
-	return len;
-}
-
 static s32 exfat_calc_num_entries(struct uni_name_t *p_uniname)
 {
 	s32 len;
-- 
2.24.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
