Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C55E8E3CB
	for <lists+driverdev-devel@lfdr.de>; Thu, 15 Aug 2019 06:43:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D7CFE8761E;
	Thu, 15 Aug 2019 04:43:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7e3tuSj8XAuU; Thu, 15 Aug 2019 04:43:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0D621877EA;
	Thu, 15 Aug 2019 04:43:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F2C761BF381
 for <devel@linuxdriverproject.org>; Thu, 15 Aug 2019 04:43:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EA202882F6
 for <devel@linuxdriverproject.org>; Thu, 15 Aug 2019 04:43:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mDP1T2rI0BH7 for <devel@linuxdriverproject.org>;
 Thu, 15 Aug 2019 04:43:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 74ACE88302
 for <devel@driverdev.osuosl.org>; Thu, 15 Aug 2019 04:43:10 +0000 (UTC)
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 65472A79A2EA0AA8F78C;
 Thu, 15 Aug 2019 12:43:08 +0800 (CST)
Received: from architecture4.huawei.com (10.140.130.215) by smtp.huawei.com
 (10.3.19.210) with Microsoft SMTP Server (TLS) id 14.3.439.0; Thu, 15 Aug
 2019 12:43:01 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: <linux-fsdevel@vger.kernel.org>, <devel@driverdev.osuosl.org>, "Alexander
 Viro" <viro@zeniv.linux.org.uk>
Subject: [PATCH v8 20/24] erofs: introduce generic decompression backend
Date: Thu, 15 Aug 2019 12:41:51 +0800
Message-ID: <20190815044155.88483-21-gaoxiang25@huawei.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190815044155.88483-1-gaoxiang25@huawei.com>
References: <20190815044155.88483-1-gaoxiang25@huawei.com>
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, linux-erofs@lists.ozlabs.org,
 Chao Yu <yuchao0@huawei.com>, Theodore Ts'o <tytso@mit.edu>,
 "Darrick J . Wong" <darrick.wong@oracle.com>, Pavel Machek <pavel@denx.de>,
 Jan Kara <jack@suse.cz>, Amir Goldstein <amir73il@gmail.com>,
 Dave Chinner <david@fromorbit.com>, LKML <linux-kernel@vger.kernel.org>,
 Li Guifu <bluce.liguifu@huawei.com>, David Sterba <dsterba@suse.cz>,
 Christoph Hellwig <hch@infradead.org>, Richard Weinberger <richard@nod.at>,
 Miao Xie <miaoxie@huawei.com>, Fang Wei <fangwei1@huawei.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jaegeuk Kim <jaegeuk@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch adds decompression backend to EROFS, which
supports uncompressed and LZ4 compressed data.

For compressed data, it uses the following strategy:
1) If outputsize is very small (totally less than a threshold),
   decompress to the per-CPU buffer and do memcpy directly
   in order to avoid vmap() overhead;
2) Otherwise it will fill bounced pages if needed and vmap
   all output pages into a continuous virtual memory area,
   memcpy compressed data to the per-CPU buffer for inplace
   I/O [1] and decompress.

Since LZ4 is a lz77-based algorithm which has a dynamically
populated ("sliding window") dictionary and the maximum
lookback distance is 65535. Therefore the number of bounced
pages could be limited by erofs based on this property.

[1] `LZ4 decompression inplace' will eliminate the extra memcpy
    if iend - oend margin is safe enough, see the following patch.

Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
---
 fs/erofs/Makefile       |   2 +-
 fs/erofs/compress.h     |  62 ++++++++
 fs/erofs/decompressor.c | 332 ++++++++++++++++++++++++++++++++++++++++
 3 files changed, 395 insertions(+), 1 deletion(-)
 create mode 100644 fs/erofs/compress.h
 create mode 100644 fs/erofs/decompressor.c

diff --git a/fs/erofs/Makefile b/fs/erofs/Makefile
index 930770be124f..5594abca6f95 100644
--- a/fs/erofs/Makefile
+++ b/fs/erofs/Makefile
@@ -7,5 +7,5 @@ ccflags-y += -DEROFS_VERSION=\"$(EROFS_VERSION)\"
 obj-$(CONFIG_EROFS_FS) += erofs.o
 erofs-objs := super.o inode.o data.o namei.o dir.o utils.o
 erofs-$(CONFIG_EROFS_FS_XATTR) += xattr.o
-erofs-$(CONFIG_EROFS_FS_ZIP) += zmap.o
+erofs-$(CONFIG_EROFS_FS_ZIP) += decompressor.o zmap.o
 
diff --git a/fs/erofs/compress.h b/fs/erofs/compress.h
new file mode 100644
index 000000000000..57035b7646ef
--- /dev/null
+++ b/fs/erofs/compress.h
@@ -0,0 +1,62 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * linux/fs/erofs/compress.h
+ *
+ * Copyright (C) 2019 HUAWEI, Inc.
+ *             http://www.huawei.com/
+ * Created by Gao Xiang <gaoxiang25@huawei.com>
+ */
+#ifndef __EROFS_FS_COMPRESS_H
+#define __EROFS_FS_COMPRESS_H
+
+#include "internal.h"
+
+enum {
+	Z_EROFS_COMPRESSION_SHIFTED = Z_EROFS_COMPRESSION_MAX,
+	Z_EROFS_COMPRESSION_RUNTIME_MAX
+};
+
+struct z_erofs_decompress_req {
+	struct super_block *sb;
+	struct page **in, **out;
+
+	unsigned short pageofs_out;
+	unsigned int inputsize, outputsize;
+
+	/* indicate the algorithm will be used for decompression */
+	unsigned int alg;
+	bool inplace_io, partial_decoding;
+};
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
+int z_erofs_decompress(struct z_erofs_decompress_req *rq,
+		       struct list_head *pagepool);
+
+#endif
+
diff --git a/fs/erofs/decompressor.c b/fs/erofs/decompressor.c
new file mode 100644
index 000000000000..2374dd3c967c
--- /dev/null
+++ b/fs/erofs/decompressor.c
@@ -0,0 +1,332 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * linux/fs/erofs/decompressor.c
+ *
+ * Copyright (C) 2019 HUAWEI, Inc.
+ *             http://www.huawei.com/
+ * Created by Gao Xiang <gaoxiang25@huawei.com>
+ */
+#include "compress.h"
+#include <linux/module.h>
+#include <linux/lz4.h>
+
+#ifndef LZ4_DISTANCE_MAX	/* history window size */
+#define LZ4_DISTANCE_MAX 65535	/* set to maximum value by default */
+#endif
+
+#define LZ4_MAX_DISTANCE_PAGES	(DIV_ROUND_UP(LZ4_DISTANCE_MAX, PAGE_SIZE) + 1)
+
+struct z_erofs_decompressor {
+	/*
+	 * if destpages have sparsed pages, fill them with bounce pages.
+	 * it also check whether destpages indicate continuous physical memory.
+	 */
+	int (*prepare_destpages)(struct z_erofs_decompress_req *rq,
+				 struct list_head *pagepool);
+	int (*decompress)(struct z_erofs_decompress_req *rq, u8 *out);
+	char *name;
+};
+
+static bool use_vmap;
+module_param(use_vmap, bool, 0444);
+MODULE_PARM_DESC(use_vmap, "Use vmap() instead of vm_map_ram() (default 0)");
+
+static int lz4_prepare_destpages(struct z_erofs_decompress_req *rq,
+				 struct list_head *pagepool)
+{
+	const unsigned int nr =
+		PAGE_ALIGN(rq->pageofs_out + rq->outputsize) >> PAGE_SHIFT;
+	struct page *availables[LZ4_MAX_DISTANCE_PAGES] = { NULL };
+	unsigned long bounced[DIV_ROUND_UP(LZ4_MAX_DISTANCE_PAGES,
+					   BITS_PER_LONG)] = { 0 };
+	void *kaddr = NULL;
+	unsigned int i, j, top;
+
+	top = 0;
+	for (i = j = 0; i < nr; ++i, ++j) {
+		struct page *const page = rq->out[i];
+		struct page *victim;
+
+		if (j >= LZ4_MAX_DISTANCE_PAGES)
+			j = 0;
+
+		/* 'valid' bounced can only be tested after a complete round */
+		if (test_bit(j, bounced)) {
+			DBG_BUGON(i < LZ4_MAX_DISTANCE_PAGES);
+			DBG_BUGON(top >= LZ4_MAX_DISTANCE_PAGES);
+			availables[top++] = rq->out[i - LZ4_MAX_DISTANCE_PAGES];
+		}
+
+		if (page) {
+			__clear_bit(j, bounced);
+			if (kaddr) {
+				if (kaddr + PAGE_SIZE == page_address(page))
+					kaddr += PAGE_SIZE;
+				else
+					kaddr = NULL;
+			} else if (!i) {
+				kaddr = page_address(page);
+			}
+			continue;
+		}
+		kaddr = NULL;
+		__set_bit(j, bounced);
+
+		if (top) {
+			victim = availables[--top];
+			get_page(victim);
+		} else {
+			victim = erofs_allocpage(pagepool, GFP_KERNEL, false);
+			if (unlikely(!victim))
+				return -ENOMEM;
+			victim->mapping = Z_EROFS_MAPPING_STAGING;
+		}
+		rq->out[i] = victim;
+	}
+	return kaddr ? 1 : 0;
+}
+
+static void *generic_copy_inplace_data(struct z_erofs_decompress_req *rq,
+				       u8 *src, unsigned int pageofs_in)
+{
+	/*
+	 * if in-place decompression is ongoing, those decompressed
+	 * pages should be copied in order to avoid being overlapped.
+	 */
+	struct page **in = rq->in;
+	u8 *const tmp = erofs_get_pcpubuf(0);
+	u8 *tmpp = tmp;
+	unsigned int inlen = rq->inputsize - pageofs_in;
+	unsigned int count = min_t(uint, inlen, PAGE_SIZE - pageofs_in);
+
+	while (tmpp < tmp + inlen) {
+		if (!src)
+			src = kmap_atomic(*in);
+		memcpy(tmpp, src + pageofs_in, count);
+		kunmap_atomic(src);
+		src = NULL;
+		tmpp += count;
+		pageofs_in = 0;
+		count = PAGE_SIZE;
+		++in;
+	}
+	return tmp;
+}
+
+static int lz4_decompress(struct z_erofs_decompress_req *rq, u8 *out)
+{
+	unsigned int inputmargin, inlen;
+	u8 *src;
+	bool copied;
+	int ret;
+
+	if (rq->inputsize > PAGE_SIZE)
+		return -EOPNOTSUPP;
+
+	src = kmap_atomic(*rq->in);
+	inputmargin = 0;
+
+	copied = false;
+	inlen = rq->inputsize - inputmargin;
+	if (rq->inplace_io) {
+		src = generic_copy_inplace_data(rq, src, inputmargin);
+		inputmargin = 0;
+		copied = true;
+	}
+
+	ret = LZ4_decompress_safe_partial(src + inputmargin, out,
+					  inlen, rq->outputsize,
+					  rq->outputsize);
+	if (ret < 0) {
+		errln("%s, failed to decompress, in[%p, %u, %u] out[%p, %u]",
+		      __func__, src + inputmargin, inlen, inputmargin,
+		      out, rq->outputsize);
+		WARN_ON(1);
+		print_hex_dump(KERN_DEBUG, "[ in]: ", DUMP_PREFIX_OFFSET,
+			       16, 1, src + inputmargin, inlen, true);
+		print_hex_dump(KERN_DEBUG, "[out]: ", DUMP_PREFIX_OFFSET,
+			       16, 1, out, rq->outputsize, true);
+		ret = -EIO;
+	}
+
+	if (copied)
+		erofs_put_pcpubuf(src);
+	else
+		kunmap_atomic(src);
+	return ret;
+}
+
+static struct z_erofs_decompressor decompressors[] = {
+	[Z_EROFS_COMPRESSION_SHIFTED] = {
+		.name = "shifted"
+	},
+	[Z_EROFS_COMPRESSION_LZ4] = {
+		.prepare_destpages = lz4_prepare_destpages,
+		.decompress = lz4_decompress,
+		.name = "lz4"
+	},
+};
+
+static void copy_from_pcpubuf(struct page **out, const char *dst,
+			      unsigned short pageofs_out,
+			      unsigned int outputsize)
+{
+	const char *end = dst + outputsize;
+	const unsigned int righthalf = PAGE_SIZE - pageofs_out;
+	const char *cur = dst - pageofs_out;
+
+	while (cur < end) {
+		struct page *const page = *out++;
+
+		if (page) {
+			char *buf = kmap_atomic(page);
+
+			if (cur >= dst) {
+				memcpy(buf, cur, min_t(uint, PAGE_SIZE,
+						       end - cur));
+			} else {
+				memcpy(buf + pageofs_out, cur + pageofs_out,
+				       min_t(uint, righthalf, end - cur));
+			}
+			kunmap_atomic(buf);
+		}
+		cur += PAGE_SIZE;
+	}
+}
+
+static void *erofs_vmap(struct page **pages, unsigned int count)
+{
+	int i = 0;
+
+	if (use_vmap)
+		return vmap(pages, count, VM_MAP, PAGE_KERNEL);
+
+	while (1) {
+		void *addr = vm_map_ram(pages, count, -1, PAGE_KERNEL);
+
+		/* retry two more times (totally 3 times) */
+		if (addr || ++i >= 3)
+			return addr;
+		vm_unmap_aliases();
+	}
+	return NULL;
+}
+
+static void erofs_vunmap(const void *mem, unsigned int count)
+{
+	if (!use_vmap)
+		vm_unmap_ram(mem, count);
+	else
+		vunmap(mem);
+}
+
+static int decompress_generic(struct z_erofs_decompress_req *rq,
+			      struct list_head *pagepool)
+{
+	const unsigned int nrpages_out =
+		PAGE_ALIGN(rq->pageofs_out + rq->outputsize) >> PAGE_SHIFT;
+	const struct z_erofs_decompressor *alg = decompressors + rq->alg;
+	unsigned int dst_maptype;
+	void *dst;
+	int ret;
+
+	if (nrpages_out == 1 && !rq->inplace_io) {
+		DBG_BUGON(!*rq->out);
+		dst = kmap_atomic(*rq->out);
+		dst_maptype = 0;
+		goto dstmap_out;
+	}
+
+	/*
+	 * For the case of small output size (especially much less
+	 * than PAGE_SIZE), memcpy the decompressed data rather than
+	 * compressed data is preferred.
+	 */
+	if (rq->outputsize <= PAGE_SIZE * 7 / 8) {
+		dst = erofs_get_pcpubuf(0);
+		if (IS_ERR(dst))
+			return PTR_ERR(dst);
+
+		rq->inplace_io = false;
+		ret = alg->decompress(rq, dst);
+		if (!ret)
+			copy_from_pcpubuf(rq->out, dst, rq->pageofs_out,
+					  rq->outputsize);
+
+		erofs_put_pcpubuf(dst);
+		return ret;
+	}
+
+	ret = alg->prepare_destpages(rq, pagepool);
+	if (ret < 0) {
+		return ret;
+	} else if (ret) {
+		dst = page_address(*rq->out);
+		dst_maptype = 1;
+		goto dstmap_out;
+	}
+
+	dst = erofs_vmap(rq->out, nrpages_out);
+	if (!dst)
+		return -ENOMEM;
+	dst_maptype = 2;
+
+dstmap_out:
+	ret = alg->decompress(rq, dst + rq->pageofs_out);
+
+	if (!dst_maptype)
+		kunmap_atomic(dst);
+	else if (dst_maptype == 2)
+		erofs_vunmap(dst, nrpages_out);
+	return ret;
+}
+
+static int shifted_decompress(const struct z_erofs_decompress_req *rq,
+			      struct list_head *pagepool)
+{
+	const unsigned int nrpages_out =
+		PAGE_ALIGN(rq->pageofs_out + rq->outputsize) >> PAGE_SHIFT;
+	const unsigned int righthalf = PAGE_SIZE - rq->pageofs_out;
+	unsigned char *src, *dst;
+
+	if (nrpages_out > 2) {
+		DBG_BUGON(1);
+		return -EIO;
+	}
+
+	if (rq->out[0] == *rq->in) {
+		DBG_BUGON(nrpages_out != 1);
+		return 0;
+	}
+
+	src = kmap_atomic(*rq->in);
+	if (!rq->out[0]) {
+		dst = NULL;
+	} else {
+		dst = kmap_atomic(rq->out[0]);
+		memcpy(dst + rq->pageofs_out, src, righthalf);
+	}
+
+	if (rq->out[1] == *rq->in) {
+		memmove(src, src + righthalf, rq->pageofs_out);
+	} else if (nrpages_out == 2) {
+		if (dst)
+			kunmap_atomic(dst);
+		DBG_BUGON(!rq->out[1]);
+		dst = kmap_atomic(rq->out[1]);
+		memcpy(dst, src + righthalf, rq->pageofs_out);
+	}
+	if (dst)
+		kunmap_atomic(dst);
+	kunmap_atomic(src);
+	return 0;
+}
+
+int z_erofs_decompress(struct z_erofs_decompress_req *rq,
+		       struct list_head *pagepool)
+{
+	if (rq->alg == Z_EROFS_COMPRESSION_SHIFTED)
+		return shifted_decompress(rq, pagepool);
+	return decompress_generic(rq, pagepool);
+}
+
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
