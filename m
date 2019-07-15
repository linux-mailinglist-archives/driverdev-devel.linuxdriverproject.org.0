Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BEB1E68738
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Jul 2019 12:43:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E79F386822;
	Mon, 15 Jul 2019 10:43:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Fagd2Bm5C1fv; Mon, 15 Jul 2019 10:43:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8866F865D3;
	Mon, 15 Jul 2019 10:43:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 82E0F1BF39C
 for <devel@linuxdriverproject.org>; Mon, 15 Jul 2019 10:43:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7754285C54
 for <devel@linuxdriverproject.org>; Mon, 15 Jul 2019 10:43:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oY5TfsjGSf7f for <devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 10:43:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com
 [209.85.215.182])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 79DFF84ECD
 for <devel@driverdev.osuosl.org>; Mon, 15 Jul 2019 10:43:49 +0000 (UTC)
Received: by mail-pg1-f182.google.com with SMTP id q4so7515782pgj.8
 for <devel@driverdev.osuosl.org>; Mon, 15 Jul 2019 03:43:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Iz1/iV6AlIEBC2T8tEVCw01XB86CE9h8NM1eDgM3FKo=;
 b=n7I7yaemZ1eTl2Y3WCNX9HkJ615JHOj6e+blCERviM5KQxzOghfuOaOeGdsCs+8uJ5
 pM2bEViO9BJGQ8ucMR9C2MZnZxKIZ0J305m5axM1GwdvrNUmAhM+onPFx6Uczpicd/id
 X/2/60Q9Wnpci6zPFnIpeTR2u5CRLcFPdHnr38xYoD/U87N0XcUCmwGFkDtWyfhWTHlo
 odzf79EGkvr9tE3TPvE6TyhifTDT5Sw5aLdYgbTNpbkaWowNiDuO7nvNchuEcBMYXx/i
 q9d+KByd3m9ATrfhcZs8wkD2D5ENlpbR1zMHzd3WlSX4fNdE0cmZq6hD7nRnNYgokMnO
 1xew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Iz1/iV6AlIEBC2T8tEVCw01XB86CE9h8NM1eDgM3FKo=;
 b=o+vBAx2ijuDFjWPw1gh7uKqIM7msj9ZMtkwIWNJt9E7/6FZounsWCllQn7wRJzVuX7
 mQXXn9MYej3M/IdCmpwhCGRmWby3WkpjG0DwCV5jgzMVV3YM9cM+2z1EWQOkYUBRJbmx
 q5k3oafOu2GcER3EseHHdVm+Y7h0TC70F5b5AtYXeHXsCFShrKwB6hN6Fj80eUnpYMJN
 9WEx/zamhxJst9ujbwTnfLn3OCfGULKCyCE3L5jzwH4dlstNjkcNDIVYznVdg5yALzBy
 QiJJnGvIOOJU4ogj4rO/ZDGhSbX8X5/3k2wvfRyFj45qiIvb53zgW6gauj/aGdaSh1t9
 JdnA==
X-Gm-Message-State: APjAAAVuxfhMq+9nFgCgUkShuz83d4G3x/1wIel/VbLrw68ljUQzaDua
 OZJYA0Z9ikINLt1/chl4CuTEwikD97o=
X-Google-Smtp-Source: APXvYqzekunVbtFNQ49/g9nGZWy3kB11AHmluRdQlCILfREeCQQciCtdKZewVv/qGezvBAc1yqH8jA==
X-Received: by 2002:a63:1847:: with SMTP id 7mr26999144pgy.204.1563187428983; 
 Mon, 15 Jul 2019 03:43:48 -0700 (PDT)
Received: from localhost.localdomain ([42.107.76.76])
 by smtp.gmail.com with ESMTPSA id b6sm15680740pgq.26.2019.07.15.03.43.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jul 2019 03:43:47 -0700 (PDT)
From: Pratik Shinde <pratikshinde320@gmail.com>
To: gaoxiang25@huawei.com,
	linux-erofs@lists.ozlabs.org,
	yuchao0@huawei.com
Subject: [PATCH v3] staging: erofs:converting all 'unsigned' to 'unsigned int'
Date: Mon, 15 Jul 2019 16:13:32 +0530
Message-Id: <20190715104332.12596-1-pratikshinde320@gmail.com>
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
 drivers/staging/erofs/xattr.h         | 15 ++++++++-------
 4 files changed, 22 insertions(+), 19 deletions(-)

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
index 35ba5ac..b9f6e9d 100644
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
+static inline unsigned int xattrblock_offset(struct erofs_sb_info *sbi,
+					     unsigned int xattr_id)
 {
 	return (xattr_id * sizeof(__u32)) % EROFS_BLKSIZ;
 }
@@ -49,7 +49,7 @@ extern const struct xattr_handler erofs_xattr_trusted_handler;
 extern const struct xattr_handler erofs_xattr_security_handler;
 #endif
 
-static inline const struct xattr_handler *erofs_xattr_handler(unsigned index)
+static inline const struct xattr_handler *erofs_xattr_handler(unsigned int idx)
 {
 static const struct xattr_handler *xattr_handler_map[] = {
 	[EROFS_XATTR_INDEX_USER] = &erofs_xattr_user_handler,
@@ -63,8 +63,9 @@ static const struct xattr_handler *xattr_handler_map[] = {
 	[EROFS_XATTR_INDEX_SECURITY] = &erofs_xattr_security_handler,
 #endif
 };
-	return index && index < ARRAY_SIZE(xattr_handler_map) ?
-		xattr_handler_map[index] : NULL;
+
+	return idx && idx < ARRAY_SIZE(xattr_handler_map) ?
+		xattr_handler_map[idx] : NULL;
 }
 
 #ifdef CONFIG_EROFS_FS_XATTR
-- 
2.9.3

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
