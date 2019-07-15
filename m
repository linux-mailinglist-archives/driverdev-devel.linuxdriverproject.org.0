Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B6425688D5
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Jul 2019 14:21:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9BC412094D;
	Mon, 15 Jul 2019 12:21:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2qZcrZwCm0a5; Mon, 15 Jul 2019 12:21:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 523F020785;
	Mon, 15 Jul 2019 12:21:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E53731BF3DF
 for <devel@linuxdriverproject.org>; Mon, 15 Jul 2019 12:21:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E1CDC204F1
 for <devel@linuxdriverproject.org>; Mon, 15 Jul 2019 12:21:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EKiwbolUN+Fz for <devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 12:21:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com
 [209.85.215.179])
 by silver.osuosl.org (Postfix) with ESMTPS id B9E08204C4
 for <devel@driverdev.osuosl.org>; Mon, 15 Jul 2019 12:21:41 +0000 (UTC)
Received: by mail-pg1-f179.google.com with SMTP id s1so1324620pgr.2
 for <devel@driverdev.osuosl.org>; Mon, 15 Jul 2019 05:21:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=W3ajbLhDnC6EcQsmzUjoH5mgLkElRU4viunvro2JzRs=;
 b=Smn7Q6UYcydsdFQ/SHmRbexo7rYpVPBuFngZ7PFIK0zpU5SZ0FTZzkrQ09D3B5Ty6R
 VukncIN3mGiL6NCHpdji2dWXbAbp8jrx2PFPILLUVeLl0Wd4w1Aw+axiXljev6XC88vz
 f21LuR6Ju7iOYaBuECbWgRzhBbRozgIPOHCi0rLzGV+ynJOPgnLDM/u0s8c/tG69wFA2
 hDjpjFvGaG8Us0A2sFjVRzcCfYjRL6X5gUrVVQFeX3OhhJw+Vw/mdoW9kgjym/DT4LIC
 bmQb4b6pE7fzgPC52014TkzmC6WpWBP9OtW276xbX8f+yX6oMGP1XCy8CwxjO8hA62XP
 ziig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=W3ajbLhDnC6EcQsmzUjoH5mgLkElRU4viunvro2JzRs=;
 b=uKE+em1IcJqsGkdtrYe0ZTJTDiL7QM5k0R4BAQ3KrV6KFuinp3xIt72ApjnCEBEnDv
 FNOatnSjj/YZX2p1/1pBnu8m/14sytnzy/jzwJSLJeW5fbeWY8/PXHpJLyqhNnhB+07S
 YIWAPi+WBXDVwg+xixjjXqx+qAlPgV0PlJhZcPXfE+X7FaxsqWlbRypCZMq4ZuVbJxTn
 dN8BEFo72Fx2HX23Ltows142BBotz1TM6WBR/vNGGEdSU1xEJgbI5Gs8XlpGWYNiay23
 dIwB08+hCfjjlLf3UM34UN21cg5b+xiKQaNpSXhYelEvbfC3SgREJ7shC4UVXfvaHoC8
 XT0w==
X-Gm-Message-State: APjAAAU9TCG3N2yRjE1pWEUKmNuTqiNZEazHw6JxdiUNkB40V+RUbaeL
 S3vkJxjmM2o584ePHMUhUXo=
X-Google-Smtp-Source: APXvYqzoQqDnaOWyQ4FfGUNQsBp634491VPjEzy0/ldgztbaWMLoy+B5U1jRA8QOxrLQbyH4L3S3GA==
X-Received: by 2002:a17:90a:2641:: with SMTP id
 l59mr27347653pje.55.1563193301329; 
 Mon, 15 Jul 2019 05:21:41 -0700 (PDT)
Received: from localhost.localdomain ([42.107.76.108])
 by smtp.gmail.com with ESMTPSA id z13sm4677884pfa.94.2019.07.15.05.21.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jul 2019 05:21:40 -0700 (PDT)
From: Pratik Shinde <pratikshinde320@gmail.com>
To: gaoxiang25@huawei.com,
	linux-erofs@lists.ozlabs.org,
	yuchao0@huawei.com
Subject: [PATCH v4] staging: erofs:converting all 'unsigned' to 'unsigned int'
Date: Mon, 15 Jul 2019 17:51:27 +0530
Message-Id: <20190715122127.13733-1-pratikshinde320@gmail.com>
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

Fixed checkpatch warnings: converting all 'unsigned' to 'unsigned int'

Signed-off-by: Pratik Shinde <pratikshinde320@gmail.com>
Reviewed-by: Gao Xiang <gaoxiang25@huawei.com>
---
 drivers/staging/erofs/internal.h      |  7 ++++---
 drivers/staging/erofs/unzip_pagevec.h | 11 ++++++-----
 drivers/staging/erofs/unzip_vle.h     |  8 ++++----
 drivers/staging/erofs/xattr.h         | 17 +++++++++--------
 4 files changed, 23 insertions(+), 20 deletions(-)

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
index 35ba5ac..3990805 100644
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
 
-static inline erofs_blk_t
-xattrblock_addr(struct erofs_sb_info *sbi, unsigned xattr_id)
+static inline erofs_blk_t xattrblock_addr(struct erofs_sb_info *sbi,
+					  unsigned int xattr_id)
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
