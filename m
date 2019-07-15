Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F89768358
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Jul 2019 07:50:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1FCAD85BFA;
	Mon, 15 Jul 2019 05:50:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id juP1I2O2+x5b; Mon, 15 Jul 2019 05:50:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 323F585C77;
	Mon, 15 Jul 2019 05:50:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C731C1BF489
 for <devel@linuxdriverproject.org>; Mon, 15 Jul 2019 05:50:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C451D20465
 for <devel@linuxdriverproject.org>; Mon, 15 Jul 2019 05:50:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vBf4VaXDC+zA for <devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 05:50:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by silver.osuosl.org (Postfix) with ESMTPS id D856920460
 for <devel@driverdev.osuosl.org>; Mon, 15 Jul 2019 05:50:45 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id m30so6882092pff.8
 for <devel@driverdev.osuosl.org>; Sun, 14 Jul 2019 22:50:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=RNbLE/gRohDHknx/+5pF02V0RtPKlfAqHrWotGkYG3E=;
 b=KCZQRgR/I7IcQWtbUSPOyfPDmEgfhFjlSLRa7pgcBMVbKVqcVsBmcK7+HGiIq6LXIW
 b2R2j6kWe2yvXVnaSfpavMnoM9hQGDsxWV7rkhySJEzMTfwM4HpR/7GSx2fFsxwZpq/2
 gyRAJnW/Sk5l7pTRCmjtZSAIFOsljiLRyKpk9+Evn+suyDqBSxgh689d5GlhpfkxlIeC
 3/SerCjBGlHoVLlwfMjnUdWyWgFAqdfn8zzaIstUJgZDqobgIY0HqAKAPlPK4kcZnrE5
 o1DVE2bzZEl8/+z0pSsQUfiXo1oHccaFaWzhaO3kIX/3kzQJv0N/H4TQKpumt1X6oX9Q
 V9pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=RNbLE/gRohDHknx/+5pF02V0RtPKlfAqHrWotGkYG3E=;
 b=eIOw3bPAwH7DZeiMScFmKWfUzcRqoLm+KvWnnwGtxWOL4TpKUEbzGhQwZww8DHeSk0
 j7JqNpe6ZmxAVGv0WXkoLJTGqVkZiOx0ZTevXazmzaeLJk1lVk2wkzW+fIsmhPpZIfH8
 qB47MyDA98KtCLz0SpoUOPjuQAN3fC/H9GRMo7FMJ3ehMHj0v8V+bRUIkJWqlygLMGZc
 nRESkn1jKhjTH2pL8afZpvLG143wZQ304YRIYowauwJP8NmnoYnD0v/WFME86KH76X/s
 1wOQrBJ1KhM5RPO74FV2SlsFPHi5EhWbWG8NiSLbhmt5PRpbwErhPVnwQarZM0R9ZrBO
 Cq7w==
X-Gm-Message-State: APjAAAW2Jpz3sMLI4hDNXMyjQ90EfcI9SNNx0bwuKLDPzRbBJgm0Qnxb
 cmnaVRGROcWLLKsA5Q1DVD0=
X-Google-Smtp-Source: APXvYqxWoaP8EU+k6uPw4alPGLYh/PdoxMXuOIxrI8LkLtL6hDnMUhshW4VA37SormshtCYqvjrISA==
X-Received: by 2002:a17:90a:4803:: with SMTP id
 a3mr27917534pjh.58.1563169845329; 
 Sun, 14 Jul 2019 22:50:45 -0700 (PDT)
Received: from localhost.localdomain ([42.107.94.90])
 by smtp.gmail.com with ESMTPSA id 6sm1791013pfn.87.2019.07.14.22.50.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 14 Jul 2019 22:50:44 -0700 (PDT)
From: Pratik Shinde <pratikshinde320@gmail.com>
To: gaoxiang25@huawei.com,
	linux-erofs@lists.ozlabs.org,
	yuchao0@huawei.com
Subject: [PATCH] staging: erofs:converting all 'unsigned' to 'unsigned int'
Date: Mon, 15 Jul 2019 11:20:30 +0530
Message-Id: <20190715055030.11474-1-pratikshinde320@gmail.com>
X-Mailer: git-send-email 2.9.3
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 Pratik Shinde <pratikshinde320@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixed check patch warnings: converting all 'unsigned' to 'unsigned int'

Signed-off-by: Pratik Shinde <pratikshinde320@gmail.com>
---
 drivers/staging/erofs/internal.h      |  7 ++++---
 drivers/staging/erofs/unzip_pagevec.h | 11 ++++++-----
 drivers/staging/erofs/unzip_vle.h     |  8 ++++----
 drivers/staging/erofs/xattr.h         | 11 ++++++-----
 4 files changed, 20 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/erofs/internal.h b/drivers/staging/erofs/internal.h
index 963cc1b..0ebc294 100644
--- a/drivers/staging/erofs/internal.h
+++ b/drivers/staging/erofs/internal.h
@@ -359,8 +359,8 @@ struct erofs_vnode {
 	unsigned char inode_isize;
 	unsigned short xattr_isize;
 
-	unsigned xattr_shared_count;
-	unsigned *xattr_shared_xattrs;
+	unsigned int xattr_shared_count;
+	unsigned int *xattr_shared_xattrs;
 
 	union {
 		erofs_blk_t raw_blkaddr;
@@ -510,7 +510,8 @@ erofs_grab_bio(struct super_block *sb,
 	return bio;
 }
 
-static inline void __submit_bio(struct bio *bio, unsigned op, unsigned op_flags)
+static inline void __submit_bio(struct bio *bio, unsigned int op,
+				unsigned int op_flags)
 {
 	bio_set_op_attrs(bio, op, op_flags);
 	submit_bio(bio);
diff --git a/drivers/staging/erofs/unzip_pagevec.h b/drivers/staging/erofs/unzip_pagevec.h
index 7af0ba8..e65dbca 100644
--- a/drivers/staging/erofs/unzip_pagevec.h
+++ b/drivers/staging/erofs/unzip_pagevec.h
@@ -54,9 +54,9 @@ static inline void z_erofs_pagevec_ctor_exit(struct z_erofs_pagevec_ctor *ctor,
 
 static inline struct page *
 z_erofs_pagevec_ctor_next_page(struct z_erofs_pagevec_ctor *ctor,
-			       unsigned nr)
+			       unsigned int nr)
 {
-	unsigned index;
+	unsigned int index;
 
 	/* keep away from occupied pages */
 	if (ctor->next)
@@ -64,7 +64,7 @@ z_erofs_pagevec_ctor_next_page(struct z_erofs_pagevec_ctor *ctor,
 
 	for (index = 0; index < nr; ++index) {
 		const erofs_vtptr_t t = ctor->pages[index];
-		const unsigned tags = tagptr_unfold_tags(t);
+		const unsigned int tags = tagptr_unfold_tags(t);
 
 		if (tags == Z_EROFS_PAGE_TYPE_EXCLUSIVE)
 			return tagptr_unfold_ptr(t);
@@ -91,8 +91,9 @@ z_erofs_pagevec_ctor_pagedown(struct z_erofs_pagevec_ctor *ctor,
 }
 
 static inline void z_erofs_pagevec_ctor_init(struct z_erofs_pagevec_ctor *ctor,
-					     unsigned nr,
-					     erofs_vtptr_t *pages, unsigned i)
+					     unsigned int nr,
+					     erofs_vtptr_t *pages,
+					     unsigned int i)
 {
 	ctor->nr = nr;
 	ctor->curr = ctor->next = NULL;
diff --git a/drivers/staging/erofs/unzip_vle.h b/drivers/staging/erofs/unzip_vle.h
index ab509d75..df91ad1 100644
--- a/drivers/staging/erofs/unzip_vle.h
+++ b/drivers/staging/erofs/unzip_vle.h
@@ -34,7 +34,7 @@ struct z_erofs_vle_work {
 	unsigned short nr_pages;
 
 	/* L: queued pages in pagevec[] */
-	unsigned vcnt;
+	unsigned int vcnt;
 
 	union {
 		/* L: pagevec */
@@ -124,7 +124,7 @@ union z_erofs_onlinepage_converter {
 	unsigned long *v;
 };
 
-static inline unsigned z_erofs_onlinepage_index(struct page *page)
+static inline unsigned int z_erofs_onlinepage_index(struct page *page)
 {
 	union z_erofs_onlinepage_converter u;
 
@@ -164,7 +164,7 @@ static inline void z_erofs_onlinepage_fixup(struct page *page,
 	}
 
 	v = (index << Z_EROFS_ONLINEPAGE_INDEX_SHIFT) |
-		((o & Z_EROFS_ONLINEPAGE_COUNT_MASK) + (unsigned)down);
+		((o & Z_EROFS_ONLINEPAGE_COUNT_MASK) + (unsigned int)down);
 	if (cmpxchg(p, o, v) != o)
 		goto repeat;
 }
@@ -172,7 +172,7 @@ static inline void z_erofs_onlinepage_fixup(struct page *page,
 static inline void z_erofs_onlinepage_endio(struct page *page)
 {
 	union z_erofs_onlinepage_converter u;
-	unsigned v;
+	unsigned int v;
 
 	DBG_BUGON(!PagePrivate(page));
 	u.v = &page_private(page);
diff --git a/drivers/staging/erofs/xattr.h b/drivers/staging/erofs/xattr.h
index 35ba5ac..bbf13c4 100644
--- a/drivers/staging/erofs/xattr.h
+++ b/drivers/staging/erofs/xattr.h
@@ -20,14 +20,14 @@
 /* Attribute not found */
 #define ENOATTR         ENODATA
 
-static inline unsigned inlinexattr_header_size(struct inode *inode)
+static inline unsigned int inlinexattr_header_size(struct inode *inode)
 {
 	return sizeof(struct erofs_xattr_ibody_header)
 		+ sizeof(u32) * EROFS_V(inode)->xattr_shared_count;
 }
 
 static inline erofs_blk_t
-xattrblock_addr(struct erofs_sb_info *sbi, unsigned xattr_id)
+xattrblock_addr(struct erofs_sb_info *sbi, unsigned int xattr_id)
 {
 #ifdef CONFIG_EROFS_FS_XATTR
 	return sbi->xattr_blkaddr +
@@ -37,8 +37,8 @@ xattrblock_addr(struct erofs_sb_info *sbi, unsigned xattr_id)
 #endif
 }
 
-static inline unsigned
-xattrblock_offset(struct erofs_sb_info *sbi, unsigned xattr_id)
+static inline unsigned int
+xattrblock_offset(struct erofs_sb_info *sbi, unsigned int xattr_id)
 {
 	return (xattr_id * sizeof(__u32)) % EROFS_BLKSIZ;
 }
@@ -49,7 +49,8 @@ extern const struct xattr_handler erofs_xattr_trusted_handler;
 extern const struct xattr_handler erofs_xattr_security_handler;
 #endif
 
-static inline const struct xattr_handler *erofs_xattr_handler(unsigned index)
+static inline const struct xattr_handler *erofs_xattr_handler(
+							unsigned int index)
 {
 static const struct xattr_handler *xattr_handler_map[] = {
 	[EROFS_XATTR_INDEX_USER] = &erofs_xattr_user_handler,
-- 
2.9.3

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
