Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D0B7BF9BAE
	for <lists+driverdev-devel@lfdr.de>; Tue, 12 Nov 2019 22:13:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5F0658609F;
	Tue, 12 Nov 2019 21:13:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sI4LRn7MzJZr; Tue, 12 Nov 2019 21:13:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 345E385C10;
	Tue, 12 Nov 2019 21:13:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B948E1BF404
 for <devel@linuxdriverproject.org>; Tue, 12 Nov 2019 21:13:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8AC8587364
 for <devel@linuxdriverproject.org>; Tue, 12 Nov 2019 21:13:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Rj5uah0x3gpx for <devel@linuxdriverproject.org>;
 Tue, 12 Nov 2019 21:13:37 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr1.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7C60287368
 for <devel@driverdev.osuosl.org>; Tue, 12 Nov 2019 21:13:36 +0000 (UTC)
Received: from mr4.cc.vt.edu (inbound.smtp.ipv6.vt.edu
 [IPv6:2607:b400:92:9:0:9d:8fcb:4116])
 by omr1.cc.vt.edu (8.14.4/8.14.4) with ESMTP id xACLDZ3P012728
 for <devel@driverdev.osuosl.org>; Tue, 12 Nov 2019 16:13:35 -0500
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72])
 by mr4.cc.vt.edu (8.14.7/8.14.7) with ESMTP id xACLDUvQ023639
 for <devel@driverdev.osuosl.org>; Tue, 12 Nov 2019 16:13:35 -0500
Received: by mail-qv1-f72.google.com with SMTP id m43so5968690qvc.17
 for <devel@driverdev.osuosl.org>; Tue, 12 Nov 2019 13:13:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=/Ve1tYgaEpQoSsk3PF/eRFqiDprB0riCNe5U4ZL0vGs=;
 b=bA7DFZLlu9Xpk1VCUGTstv33pi6KVqiLFfS7++Pl3gdzOhurYPEwhIkaaLPgZO1bgQ
 mym9Y4jSYGfSipHaLgoRDoGkUfmuILJ/XJZlWVtzswZ67i3PvcucnPKSaNJHDYIZbiCJ
 VGG2qtTyreIMr9quQNB5IEuau1FkR7MzHpYOadCeKuOj4aTKW1++5nnqTsTLKt+TSTlu
 r96au38T+/8DdDFUUk6nu9MO1ULG0vwqFkUazKNGlxVdW8S7dIZMkzQ7AdlLgbLKa8mQ
 38acO5LdCwkcJtNPwsOSNTNxCHje3LPukd5habIoHaQp0bbvZXQpw75hpfYJxgC86ebC
 9vvg==
X-Gm-Message-State: APjAAAW4OIkJ/GEEnudkmkljkTPk1wACfCkTUQ11EXgv/rW3d6e4FSNL
 LdmcvqXA+2jfs6iceVht9Q/ne90qclTbgSyuHIb8XdDgBNjbUZrz7Mu6MRfAK8spvaY4/ul5GYM
 WkdXI5EZn5umIMto32h3FjUf6h2KwTz7Z
X-Received: by 2002:a37:7f87:: with SMTP id a129mr7578530qkd.122.1573593210289; 
 Tue, 12 Nov 2019 13:13:30 -0800 (PST)
X-Google-Smtp-Source: APXvYqy2C7H3VRf/+7tz3plBFXnc+oIF6TdjhfjMpYMkRoZL+g/GLuS8Gf/ZOrdMMMSGtAmE3I2JJQ==
X-Received: by 2002:a37:7f87:: with SMTP id a129mr7578489qkd.122.1573593209782; 
 Tue, 12 Nov 2019 13:13:29 -0800 (PST)
Received: from turing-police.lan ([2601:5c0:c001:c9e1::359])
 by smtp.gmail.com with ESMTPSA id 130sm9674214qkd.33.2019.11.12.13.13.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Nov 2019 13:13:27 -0800 (PST)
From: Valdis Kletnieks <valdis.kletnieks@vt.edu>
X-Google-Original-From: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
To: 
Subject: [PATCH 04/12] staging: exfat: Remove FAT/VFAT mount support, part 4
Date: Tue, 12 Nov 2019 16:12:30 -0500
Message-Id: <20191112211238.156490-5-Valdis.Kletnieks@vt.edu>
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

The code simplification from the previous patch rendered a few more
routines unreferenced, so heave them over the side as well.

Signed-off-by: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
---
 drivers/staging/exfat/exfat.h      |  19 ---
 drivers/staging/exfat/exfat_core.c | 137 --------------------
 drivers/staging/exfat/exfat_nls.c  | 192 -----------------------------
 3 files changed, 348 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index 9ea865f607af..470e409ef536 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -729,14 +729,7 @@ static inline struct exfat_inode_info *EXFAT_I(struct inode *inode)
 
 /* NLS management function */
 u16 nls_upper(struct super_block *sb, u16 a);
-int nls_dosname_cmp(struct super_block *sb, u8 *a, u8 *b);
 int nls_uniname_cmp(struct super_block *sb, u16 *a, u16 *b);
-void nls_uniname_to_dosname(struct super_block *sb,
-			    struct dos_name_t *p_dosname,
-			    struct uni_name_t *p_uniname, bool *p_lossy);
-void nls_dosname_to_uniname(struct super_block *sb,
-			    struct uni_name_t *p_uniname,
-			    struct dos_name_t *p_dosname);
 void nls_uniname_to_cstring(struct super_block *sb, u8 *p_cstring,
 			    struct uni_name_t *p_uniname);
 void nls_cstring_to_uniname(struct super_block *sb,
@@ -805,10 +798,6 @@ void exfat_set_entry_time(struct dentry_t *p_entry, struct timestamp_t *tp,
 			  u8 mode);
 s32 exfat_init_dir_entry(struct super_block *sb, struct chain_t *p_dir,
 			 s32 entry, u32 type, u32 start_clu, u64 size);
-s32 exfat_init_ext_dir_entry(struct super_block *sb, struct chain_t *p_dir,
-			     s32 entry, s32 num_entries,
-			     struct uni_name_t *p_uniname,
-		struct dos_name_t *p_dosname);
 void init_file_entry(struct file_dentry_t *ep, u32 type);
 void init_strm_entry(struct strm_dentry_t *ep, u8 flags, u32 start_clu,
 		     u64 size);
@@ -850,25 +839,17 @@ bool is_dir_empty(struct super_block *sb, struct chain_t *p_dir);
 s32 get_num_entries_and_dos_name(struct super_block *sb, struct chain_t *p_dir,
 				 struct uni_name_t *p_uniname, s32 *entries,
 				 struct dos_name_t *p_dosname);
-void get_uni_name_from_dos_entry(struct super_block *sb,
-				 struct dos_dentry_t *ep,
-				 struct uni_name_t *p_uniname, u8 mode);
 void exfat_get_uni_name_from_ext_entry(struct super_block *sb,
 				       struct chain_t *p_dir, s32 entry,
 				       u16 *uniname);
 s32 extract_uni_name_from_name_entry(struct name_dentry_t *ep,
 				     u16 *uniname, s32 order);
-s32 fat_generate_dos_name(struct super_block *sb, struct chain_t *p_dir,
-			  struct dos_name_t *p_dosname);
-void fat_attach_count_to_dos_name(u8 *dosname, s32 count);
-s32 fat_calc_num_entries(struct uni_name_t *p_uniname);
 s32 exfat_calc_num_entries(struct uni_name_t *p_uniname);
 u16 calc_checksum_2byte(void *data, s32 len, u16 chksum, s32 type);
 
 /* name resolution functions */
 s32 resolve_path(struct inode *inode, char *path, struct chain_t *p_dir,
 		 struct uni_name_t *p_uniname);
-s32 resolve_name(u8 *name, u8 **arg);
 
 /* file operation functions */
 s32 exfat_mount(struct super_block *sb, struct pbr_sector_t *p_pbr);
diff --git a/drivers/staging/exfat/exfat_core.c b/drivers/staging/exfat/exfat_core.c
index 77b826dfdeda..c3454e883e3c 100644
--- a/drivers/staging/exfat/exfat_core.c
+++ b/drivers/staging/exfat/exfat_core.c
@@ -1976,21 +1976,6 @@ s32 get_num_entries_and_dos_name(struct super_block *sb, struct chain_t *p_dir,
 	return 0;
 }
 
-void get_uni_name_from_dos_entry(struct super_block *sb,
-				 struct dos_dentry_t *ep,
-				 struct uni_name_t *p_uniname, u8 mode)
-{
-	struct dos_name_t dos_name;
-
-	if (mode == 0x0)
-		dos_name.name_case = 0x0;
-	else
-		dos_name.name_case = ep->lcase;
-
-	memcpy(dos_name.name, ep->name, DOS_NAME_LENGTH);
-	nls_dosname_to_uniname(sb, p_uniname, &dos_name);
-}
-
 void exfat_get_uni_name_from_ext_entry(struct super_block *sb,
 				       struct chain_t *p_dir, s32 entry,
 				       u16 *uniname)
@@ -2045,128 +2030,6 @@ s32 extract_uni_name_from_name_entry(struct name_dentry_t *ep, u16 *uniname,
 	return len;
 }
 
-s32 fat_generate_dos_name(struct super_block *sb, struct chain_t *p_dir,
-			  struct dos_name_t *p_dosname)
-{
-	int i, j, count = 0;
-	bool count_begin = false;
-	s32 dentries_per_clu;
-	u32 type;
-	u8 bmap[128/* 1 ~ 1023 */];
-	struct chain_t clu;
-	struct dos_dentry_t *ep;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-
-	memset(bmap, 0, sizeof(bmap));
-	exfat_bitmap_set(bmap, 0);
-
-	if (p_dir->dir == CLUSTER_32(0)) /* FAT16 root_dir */
-		dentries_per_clu = p_fs->dentries_in_root;
-	else
-		dentries_per_clu = p_fs->dentries_per_clu;
-
-	clu.dir = p_dir->dir;
-	clu.flags = p_dir->flags;
-
-	while (clu.dir != CLUSTER_32(~0)) {
-		if (p_fs->dev_ejected)
-			break;
-
-		for (i = 0; i < dentries_per_clu; i++) {
-			ep = (struct dos_dentry_t *)get_entry_in_dir(sb, &clu,
-								     i, NULL);
-			if (!ep)
-				return -ENOENT;
-
-			type = p_fs->fs_func->get_entry_type((struct dentry_t *)
-							     ep);
-
-			if (type == TYPE_UNUSED)
-				break;
-			if ((type != TYPE_FILE) && (type != TYPE_DIR))
-				continue;
-
-			count = 0;
-			count_begin = false;
-
-			for (j = 0; j < 8; j++) {
-				if (ep->name[j] == ' ')
-					break;
-
-				if (ep->name[j] == '~') {
-					count_begin = true;
-				} else if (count_begin) {
-					if ((ep->name[j] >= '0') &&
-					    (ep->name[j] <= '9')) {
-						count = count * 10 +
-							(ep->name[j] - '0');
-					} else {
-						count = 0;
-						count_begin = false;
-					}
-				}
-			}
-
-			if ((count > 0) && (count < 1024))
-				exfat_bitmap_set(bmap, count);
-		}
-
-		if (p_dir->dir == CLUSTER_32(0))
-			break; /* FAT16 root_dir */
-
-		if (FAT_read(sb, clu.dir, &clu.dir) != 0)
-			return -EIO;
-	}
-
-	count = 0;
-	for (i = 0; i < 128; i++) {
-		if (bmap[i] != 0xFF) {
-			for (j = 0; j < 8; j++) {
-				if (exfat_bitmap_test(&bmap[i], j) == 0) {
-					count = (i << 3) + j;
-					break;
-				}
-			}
-			if (count != 0)
-				break;
-		}
-	}
-
-	if ((count == 0) || (count >= 1024))
-		return -EEXIST;
-	fat_attach_count_to_dos_name(p_dosname->name, count);
-
-	/* Now dos_name has DOS~????.EXT */
-	return 0;
-}
-
-void fat_attach_count_to_dos_name(u8 *dosname, s32 count)
-{
-	int i, j, length;
-	char str_count[6];
-
-	snprintf(str_count, sizeof(str_count), "~%d", count);
-	length = strlen(str_count);
-
-	i = 0;
-	j = 0;
-	while (j <= (8 - length)) {
-		i = j;
-		if (dosname[j] == ' ')
-			break;
-		if (dosname[j] & 0x80)
-			j += 2;
-		else
-			j++;
-	}
-
-	for (j = 0; j < length; i++, j++)
-		dosname[i] = (u8)str_count[j];
-
-	if (i == 7)
-		dosname[7] = ' ';
-}
-
 s32 exfat_calc_num_entries(struct uni_name_t *p_uniname)
 {
 	s32 len;
diff --git a/drivers/staging/exfat/exfat_nls.c b/drivers/staging/exfat/exfat_nls.c
index a5c4b68925fb..91e8b0c4dce7 100644
--- a/drivers/staging/exfat/exfat_nls.c
+++ b/drivers/staging/exfat/exfat_nls.c
@@ -7,13 +7,6 @@
 #include <linux/nls.h>
 #include "exfat.h"
 
-static u16 bad_dos_chars[] = {
-	/* + , ; = [ ] */
-	0x002B, 0x002C, 0x003B, 0x003D, 0x005B, 0x005D,
-	0xFF0B, 0xFF0C, 0xFF1B, 0xFF1D, 0xFF3B, 0xFF3D,
-	0
-};
-
 static u16 bad_uni_chars[] = {
 	/* " * / : < > ? \ | */
 	0x0022,         0x002A, 0x002F, 0x003A,
@@ -96,11 +89,6 @@ static u16 *nls_wstrchr(u16 *str, u16 wchar)
 	return NULL;
 }
 
-int nls_dosname_cmp(struct super_block *sb, u8 *a, u8 *b)
-{
-	return strncmp(a, b, DOS_NAME_LENGTH);
-}
-
 int nls_uniname_cmp(struct super_block *sb, u16 *a, u16 *b)
 {
 	int i;
@@ -114,186 +102,6 @@ int nls_uniname_cmp(struct super_block *sb, u16 *a, u16 *b)
 	return 0;
 }
 
-void nls_uniname_to_dosname(struct super_block *sb,
-			    struct dos_name_t *p_dosname,
-			    struct uni_name_t *p_uniname, bool *p_lossy)
-{
-	int i, j, len;
-	bool lossy = false;
-	u8 buf[MAX_CHARSET_SIZE];
-	u8 lower = 0, upper = 0;
-	u8 *dosname = p_dosname->name;
-	u16 *uniname = p_uniname->name;
-	u16 *p, *last_period;
-	struct nls_table *nls = EXFAT_SB(sb)->nls_disk;
-
-	for (i = 0; i < DOS_NAME_LENGTH; i++)
-		*(dosname + i) = ' ';
-
-	if (!nls_uniname_cmp(sb, uniname, (u16 *)UNI_CUR_DIR_NAME)) {
-		*(dosname) = '.';
-		p_dosname->name_case = 0x0;
-		if (p_lossy)
-			*p_lossy = false;
-		return;
-	}
-
-	if (!nls_uniname_cmp(sb, uniname, (u16 *)UNI_PAR_DIR_NAME)) {
-		*(dosname) = '.';
-		*(dosname + 1) = '.';
-		p_dosname->name_case = 0x0;
-		if (p_lossy)
-			*p_lossy = false;
-		return;
-	}
-
-	/* search for the last embedded period */
-	last_period = NULL;
-	for (p = uniname; *p; p++) {
-		if (*p == (u16)'.')
-			last_period = p;
-	}
-
-	i = 0;
-	while (i < DOS_NAME_LENGTH) {
-		if (i == 8) {
-			if (!last_period)
-				break;
-
-			if (uniname <= last_period) {
-				if (uniname < last_period)
-					lossy = true;
-				uniname = last_period + 1;
-			}
-		}
-
-		if (*uniname == (u16)'\0') {
-			break;
-		} else if (*uniname == (u16)' ') {
-			lossy = true;
-		} else if (*uniname == (u16)'.') {
-			if (uniname < last_period)
-				lossy = true;
-			else
-				i = 8;
-		} else if (nls_wstrchr(bad_dos_chars, *uniname)) {
-			lossy = true;
-			*(dosname + i) = '_';
-			i++;
-		} else {
-			len = convert_uni_to_ch(nls, buf, *uniname, &lossy);
-
-			if (len > 1) {
-				if ((i >= 8) && ((i + len) > DOS_NAME_LENGTH))
-					break;
-
-				if ((i < 8) && ((i + len) > 8)) {
-					i = 8;
-					continue;
-				}
-
-				lower = 0xFF;
-
-				for (j = 0; j < len; j++, i++)
-					*(dosname + i) = *(buf + j);
-			} else { /* len == 1 */
-				if ((*buf >= 'a') && (*buf <= 'z')) {
-					*(dosname + i) = *buf - ('a' - 'A');
-
-					if (i < 8)
-						lower |= 0x08;
-					else
-						lower |= 0x10;
-				} else if ((*buf >= 'A') && (*buf <= 'Z')) {
-					*(dosname + i) = *buf;
-
-					if (i < 8)
-						upper |= 0x08;
-					else
-						upper |= 0x10;
-				} else {
-					*(dosname + i) = *buf;
-				}
-				i++;
-			}
-		}
-
-		uniname++;
-	}
-
-	if (*dosname == 0xE5)
-		*dosname = 0x05;
-
-	if (*uniname != 0x0)
-		lossy = true;
-
-	if (upper & lower)
-		p_dosname->name_case = 0xFF;
-	else
-		p_dosname->name_case = lower;
-
-	if (p_lossy)
-		*p_lossy = lossy;
-}
-
-void nls_dosname_to_uniname(struct super_block *sb,
-			    struct uni_name_t *p_uniname,
-			    struct dos_name_t *p_dosname)
-{
-	int i = 0, j, n = 0;
-	u8 buf[DOS_NAME_LENGTH + 2];
-	u8 *dosname = p_dosname->name;
-	u16 *uniname = p_uniname->name;
-	struct nls_table *nls = EXFAT_SB(sb)->nls_disk;
-
-	if (*dosname == 0x05) {
-		*buf = 0xE5;
-		i++;
-		n++;
-	}
-
-	for (; i < 8; i++, n++) {
-		if (*(dosname + i) == ' ')
-			break;
-
-		if ((*(dosname + i) >= 'A') && (*(dosname + i) <= 'Z') &&
-		    (p_dosname->name_case & 0x08))
-			*(buf + n) = *(dosname + i) + ('a' - 'A');
-		else
-			*(buf + n) = *(dosname + i);
-	}
-	if (*(dosname + 8) != ' ') {
-		*(buf + n) = '.';
-		n++;
-	}
-
-	for (i = 8; i < DOS_NAME_LENGTH; i++, n++) {
-		if (*(dosname + i) == ' ')
-			break;
-
-		if ((*(dosname + i) >= 'A') && (*(dosname + i) <= 'Z') &&
-		    (p_dosname->name_case & 0x10))
-			*(buf + n) = *(dosname + i) + ('a' - 'A');
-		else
-			*(buf + n) = *(dosname + i);
-	}
-	*(buf + n) = '\0';
-
-	i = 0;
-	j = 0;
-	while (j < (MAX_NAME_LENGTH - 1)) {
-		if (*(buf + i) == '\0')
-			break;
-
-		i += convert_ch_to_uni(nls, uniname, (buf + i), NULL);
-
-		uniname++;
-		j++;
-	}
-
-	*uniname = (u16)'\0';
-}
-
 void nls_uniname_to_cstring(struct super_block *sb, u8 *p_cstring,
 			    struct uni_name_t *p_uniname)
 {
-- 
2.24.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
