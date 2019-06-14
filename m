Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A9A6346757
	for <lists+driverdev-devel@lfdr.de>; Fri, 14 Jun 2019 20:17:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3248687D91;
	Fri, 14 Jun 2019 18:17:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KFyrVvHidqcs; Fri, 14 Jun 2019 18:17:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E247B87D6E;
	Fri, 14 Jun 2019 18:17:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8E83F1BF83A
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 18:17:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8B706884FA
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 18:17:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pGLOANlLzmKd for <devel@linuxdriverproject.org>;
 Fri, 14 Jun 2019 18:17:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 79885884E9
 for <devel@driverdev.osuosl.org>; Fri, 14 Jun 2019 18:17:21 +0000 (UTC)
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 6B758CAB2F02AC7136F2;
 Sat, 15 Jun 2019 02:17:18 +0800 (CST)
Received: from architecture4.huawei.com (10.140.130.215) by smtp.huawei.com
 (10.3.19.208) with Microsoft SMTP Server (TLS) id 14.3.439.0; Sat, 15 Jun
 2019 02:17:08 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: <chao@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 <devel@driverdev.osuosl.org>
Subject: [RFC PATCH 4/8] staging: erofs: move stagingpage operations to
 compress.h
Date: Sat, 15 Jun 2019 02:16:15 +0800
Message-ID: <20190614181619.64905-5-gaoxiang25@huawei.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190614181619.64905-1-gaoxiang25@huawei.com>
References: <20190614181619.64905-1-gaoxiang25@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.140.130.215]
X-CFilter-Loop: Reflected
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
Cc: linux-erofs@lists.ozlabs.org, LKML <linux-kernel@vger.kernel.org>,
 weidu.du@huawei.com, Fang Wei <fangwei1@huawei.com>,
 linux-fsdevel@vger.kernel.org, Miao Xie <miaoxie@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

stagingpages are behaved as bounce pages for temporary use.
Move to compress.h since the upcoming decompressor will
allocate stagingpages as well.

Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
---
 drivers/staging/erofs/compress.h  | 40 +++++++++++++++++++++++++++++++
 drivers/staging/erofs/unzip_vle.c | 11 +++++----
 drivers/staging/erofs/unzip_vle.h | 20 ----------------
 3 files changed, 46 insertions(+), 25 deletions(-)
 create mode 100644 drivers/staging/erofs/compress.h

diff --git a/drivers/staging/erofs/compress.h b/drivers/staging/erofs/compress.h
new file mode 100644
index 000000000000..1dcfc3b35118
--- /dev/null
+++ b/drivers/staging/erofs/compress.h
@@ -0,0 +1,40 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * linux/drivers/staging/erofs/compress.h
+ *
+ * Copyright (C) 2019 HUAWEI, Inc.
+ *             http://www.huawei.com/
+ * Created by Gao Xiang <gaoxiang25@huawei.com>
+ */
+#ifndef __EROFS_FS_COMPRESS_H
+#define __EROFS_FS_COMPRESS_H
+
+/*
+ * - 0x5A110C8D ('sallocated', Z_EROFS_MAPPING_STAGING) -
+ * used to mark temporary allocated pages from other
+ * file/cached pages and NULL mapping pages.
+ */
+#define Z_EROFS_MAPPING_STAGING         ((void *)0x5A110C8D)
+
+/* check if a page is marked as staging */
+static inline bool z_erofs_page_is_staging(struct page *page)
+{
+	return page->mapping == Z_EROFS_MAPPING_STAGING;
+}
+
+static inline bool z_erofs_put_stagingpage(struct list_head *pagepool,
+					   struct page *page)
+{
+	if (!z_erofs_page_is_staging(page))
+		return false;
+
+	/* staging pages should not be used by others at the same time */
+	if (page_ref_count(page) > 1)
+		put_page(page);
+	else
+		list_add(&page->lru, pagepool);
+	return true;
+}
+
+#endif
+
diff --git a/drivers/staging/erofs/unzip_vle.c b/drivers/staging/erofs/unzip_vle.c
index 08f2d4302ecb..d95f985936b6 100644
--- a/drivers/staging/erofs/unzip_vle.c
+++ b/drivers/staging/erofs/unzip_vle.c
@@ -11,6 +11,7 @@
  * distribution for more details.
  */
 #include "unzip_vle.h"
+#include "compress.h"
 #include <linux/prefetch.h>
 
 #include <trace/events/erofs.h>
@@ -855,7 +856,7 @@ static inline void z_erofs_vle_read_endio(struct bio *bio)
 		DBG_BUGON(PageUptodate(page));
 		DBG_BUGON(!page->mapping);
 
-		if (unlikely(!sbi && !z_erofs_is_stagingpage(page))) {
+		if (unlikely(!sbi && !z_erofs_page_is_staging(page))) {
 			sbi = EROFS_SB(page->mapping->host->i_sb);
 
 			if (time_to_inject(sbi, FAULT_READ_IO)) {
@@ -947,7 +948,7 @@ static int z_erofs_vle_unzip(struct super_block *sb,
 		DBG_BUGON(!page);
 		DBG_BUGON(!page->mapping);
 
-		if (z_erofs_gather_if_stagingpage(page_pool, page))
+		if (z_erofs_put_stagingpage(page_pool, page))
 			continue;
 
 		if (page_type == Z_EROFS_VLE_PAGE_TYPE_HEAD)
@@ -977,7 +978,7 @@ static int z_erofs_vle_unzip(struct super_block *sb,
 		DBG_BUGON(!page);
 		DBG_BUGON(!page->mapping);
 
-		if (!z_erofs_is_stagingpage(page)) {
+		if (!z_erofs_page_is_staging(page)) {
 			if (erofs_page_is_managed(sbi, page)) {
 				if (unlikely(!PageUptodate(page)))
 					err = -EIO;
@@ -1055,7 +1056,7 @@ static int z_erofs_vle_unzip(struct super_block *sb,
 			continue;
 
 		/* recycle all individual staging pages */
-		(void)z_erofs_gather_if_stagingpage(page_pool, page);
+		(void)z_erofs_put_stagingpage(page_pool, page);
 
 		WRITE_ONCE(compressed_pages[i], NULL);
 	}
@@ -1068,7 +1069,7 @@ static int z_erofs_vle_unzip(struct super_block *sb,
 		DBG_BUGON(!page->mapping);
 
 		/* recycle all individual staging pages */
-		if (z_erofs_gather_if_stagingpage(page_pool, page))
+		if (z_erofs_put_stagingpage(page_pool, page))
 			continue;
 
 		if (unlikely(err < 0))
diff --git a/drivers/staging/erofs/unzip_vle.h b/drivers/staging/erofs/unzip_vle.h
index 9c53009700cf..6c3e0deb63e7 100644
--- a/drivers/staging/erofs/unzip_vle.h
+++ b/drivers/staging/erofs/unzip_vle.h
@@ -16,26 +16,6 @@
 #include "internal.h"
 #include "unzip_pagevec.h"
 
-/*
- *  - 0x5A110C8D ('sallocated', Z_EROFS_MAPPING_STAGING) -
- * used for temporary allocated pages (via erofs_allocpage),
- * in order to seperate those from NULL mapping (eg. truncated pages)
- */
-#define Z_EROFS_MAPPING_STAGING		((void *)0x5A110C8D)
-
-#define z_erofs_is_stagingpage(page)	\
-	((page)->mapping == Z_EROFS_MAPPING_STAGING)
-
-static inline bool z_erofs_gather_if_stagingpage(struct list_head *page_pool,
-						 struct page *page)
-{
-	if (z_erofs_is_stagingpage(page)) {
-		list_add(&page->lru, page_pool);
-		return true;
-	}
-	return false;
-}
-
 /*
  * Structure fields follow one of the following exclusion rules.
  *
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
