Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 503848E3BC
	for <lists+driverdev-devel@lfdr.de>; Thu, 15 Aug 2019 06:42:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 07D22876AA;
	Thu, 15 Aug 2019 04:42:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cKt4fQpRSjsi; Thu, 15 Aug 2019 04:42:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1EC4B86E21;
	Thu, 15 Aug 2019 04:42:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C744B1BF381
 for <devel@linuxdriverproject.org>; Thu, 15 Aug 2019 04:42:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A8D63871E0
 for <devel@linuxdriverproject.org>; Thu, 15 Aug 2019 04:42:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l5dVB3595eUj for <devel@linuxdriverproject.org>;
 Thu, 15 Aug 2019 04:42:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7F1D386E21
 for <devel@driverdev.osuosl.org>; Thu, 15 Aug 2019 04:42:47 +0000 (UTC)
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 26700C6E758D82EDADE9;
 Thu, 15 Aug 2019 12:42:43 +0800 (CST)
Received: from architecture4.huawei.com (10.140.130.215) by smtp.huawei.com
 (10.3.19.210) with Microsoft SMTP Server (TLS) id 14.3.439.0; Thu, 15 Aug
 2019 12:42:34 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: <linux-fsdevel@vger.kernel.org>, <devel@driverdev.osuosl.org>, "Alexander
 Viro" <viro@zeniv.linux.org.uk>
Subject: [PATCH v8 04/24] erofs: add raw address_space operations
Date: Thu, 15 Aug 2019 12:41:35 +0800
Message-ID: <20190815044155.88483-5-gaoxiang25@huawei.com>
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

This commit adds functions for meta and raw data, and also
provides address_space_operations for raw data access.

Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
---
 fs/erofs/data.c | 419 ++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 419 insertions(+)
 create mode 100644 fs/erofs/data.c

diff --git a/fs/erofs/data.c b/fs/erofs/data.c
new file mode 100644
index 000000000000..3d8f1511cacb
--- /dev/null
+++ b/fs/erofs/data.c
@@ -0,0 +1,419 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * linux/fs/erofs/data.c
+ *
+ * Copyright (C) 2017-2018 HUAWEI, Inc.
+ *             http://www.huawei.com/
+ * Created by Gao Xiang <gaoxiang25@huawei.com>
+ */
+#include "internal.h"
+#include <linux/prefetch.h>
+
+#include <trace/events/erofs.h>
+
+static inline void read_endio(struct bio *bio)
+{
+	struct super_block *const sb = bio->bi_private;
+	struct bio_vec *bvec;
+	blk_status_t err = bio->bi_status;
+	struct bvec_iter_all iter_all;
+
+	if (time_to_inject(EROFS_SB(sb), FAULT_READ_IO)) {
+		erofs_show_injection_info(FAULT_READ_IO);
+		err = BLK_STS_IOERR;
+	}
+
+	bio_for_each_segment_all(bvec, bio, iter_all) {
+		struct page *page = bvec->bv_page;
+
+		/* page is already locked */
+		DBG_BUGON(PageUptodate(page));
+
+		if (unlikely(err))
+			SetPageError(page);
+		else
+			SetPageUptodate(page);
+
+		unlock_page(page);
+		/* page could be reclaimed now */
+	}
+	bio_put(bio);
+}
+
+/* prio -- true is used for dir */
+struct page *__erofs_get_meta_page(struct super_block *sb,
+				   erofs_blk_t blkaddr, bool prio, bool nofail)
+{
+	struct inode *const bd_inode = sb->s_bdev->bd_inode;
+	struct address_space *const mapping = bd_inode->i_mapping;
+	/* prefer retrying in the allocator to blindly looping below */
+	const gfp_t gfp = mapping_gfp_constraint(mapping, ~__GFP_FS) |
+		(nofail ? __GFP_NOFAIL : 0);
+	unsigned int io_retries = nofail ? EROFS_IO_MAX_RETRIES_NOFAIL : 0;
+	struct page *page;
+	int err;
+
+repeat:
+	page = find_or_create_page(mapping, blkaddr, gfp);
+	if (unlikely(!page)) {
+		DBG_BUGON(nofail);
+		return ERR_PTR(-ENOMEM);
+	}
+	DBG_BUGON(!PageLocked(page));
+
+	if (!PageUptodate(page)) {
+		struct bio *bio;
+
+		bio = erofs_grab_bio(sb, blkaddr, 1, sb, read_endio, nofail);
+		if (IS_ERR(bio)) {
+			DBG_BUGON(nofail);
+			err = PTR_ERR(bio);
+			goto err_out;
+		}
+
+		err = bio_add_page(bio, page, PAGE_SIZE, 0);
+		if (unlikely(err != PAGE_SIZE)) {
+			err = -EFAULT;
+			goto err_out;
+		}
+
+		__submit_bio(bio, REQ_OP_READ,
+			     REQ_META | (prio ? REQ_PRIO : 0));
+
+		lock_page(page);
+
+		/* this page has been truncated by others */
+		if (unlikely(page->mapping != mapping)) {
+unlock_repeat:
+			unlock_page(page);
+			put_page(page);
+			goto repeat;
+		}
+
+		/* more likely a read error */
+		if (unlikely(!PageUptodate(page))) {
+			if (io_retries) {
+				--io_retries;
+				goto unlock_repeat;
+			}
+			err = -EIO;
+			goto err_out;
+		}
+	}
+	return page;
+
+err_out:
+	unlock_page(page);
+	put_page(page);
+	return ERR_PTR(err);
+}
+
+static int erofs_map_blocks_flatmode(struct inode *inode,
+				     struct erofs_map_blocks *map,
+				     int flags)
+{
+	int err = 0;
+	erofs_blk_t nblocks, lastblk;
+	u64 offset = map->m_la;
+	struct erofs_vnode *vi = EROFS_V(inode);
+
+	trace_erofs_map_blocks_flatmode_enter(inode, map, flags);
+
+	nblocks = DIV_ROUND_UP(inode->i_size, PAGE_SIZE);
+	lastblk = nblocks - is_inode_flat_inline(inode);
+
+	if (unlikely(offset >= inode->i_size)) {
+		/* leave out-of-bound access unmapped */
+		map->m_flags = 0;
+		map->m_plen = 0;
+		goto out;
+	}
+
+	/* there is no hole in flatmode */
+	map->m_flags = EROFS_MAP_MAPPED;
+
+	if (offset < blknr_to_addr(lastblk)) {
+		map->m_pa = blknr_to_addr(vi->raw_blkaddr) + map->m_la;
+		map->m_plen = blknr_to_addr(lastblk) - offset;
+	} else if (is_inode_flat_inline(inode)) {
+		/* 2 - inode inline B: inode, [xattrs], inline last blk... */
+		struct erofs_sb_info *sbi = EROFS_SB(inode->i_sb);
+
+		map->m_pa = iloc(sbi, vi->nid) + vi->inode_isize +
+			vi->xattr_isize + erofs_blkoff(map->m_la);
+		map->m_plen = inode->i_size - offset;
+
+		/* inline data should be located in one meta block */
+		if (erofs_blkoff(map->m_pa) + map->m_plen > PAGE_SIZE) {
+			errln("inline data cross block boundary @ nid %llu",
+			      vi->nid);
+			DBG_BUGON(1);
+			err = -EFSCORRUPTED;
+			goto err_out;
+		}
+
+		map->m_flags |= EROFS_MAP_META;
+	} else {
+		errln("internal error @ nid: %llu (size %llu), m_la 0x%llx",
+		      vi->nid, inode->i_size, map->m_la);
+		DBG_BUGON(1);
+		err = -EIO;
+		goto err_out;
+	}
+
+out:
+	map->m_llen = map->m_plen;
+
+err_out:
+	trace_erofs_map_blocks_flatmode_exit(inode, map, flags, 0);
+	return err;
+}
+
+int erofs_map_blocks(struct inode *inode,
+		     struct erofs_map_blocks *map, int flags)
+{
+	if (is_inode_layout_compression(inode))
+		return -EOPNOTSUPP;
+
+	return erofs_map_blocks_flatmode(inode, map, flags);
+}
+
+static inline struct bio *erofs_read_raw_page(struct bio *bio,
+					      struct address_space *mapping,
+					      struct page *page,
+					      erofs_off_t *last_block,
+					      unsigned int nblocks,
+					      bool ra)
+{
+	struct inode *const inode = mapping->host;
+	struct super_block *const sb = inode->i_sb;
+	erofs_off_t current_block = (erofs_off_t)page->index;
+	int err;
+
+	DBG_BUGON(!nblocks);
+
+	if (PageUptodate(page)) {
+		err = 0;
+		goto has_updated;
+	}
+
+	/* note that for readpage case, bio also equals to NULL */
+	if (bio &&
+	    /* not continuous */
+	    *last_block + 1 != current_block) {
+submit_bio_retry:
+		__submit_bio(bio, REQ_OP_READ, 0);
+		bio = NULL;
+	}
+
+	if (!bio) {
+		struct erofs_map_blocks map = {
+			.m_la = blknr_to_addr(current_block),
+		};
+		erofs_blk_t blknr;
+		unsigned int blkoff;
+
+		err = erofs_map_blocks(inode, &map, EROFS_GET_BLOCKS_RAW);
+		if (unlikely(err))
+			goto err_out;
+
+		/* zero out the holed page */
+		if (unlikely(!(map.m_flags & EROFS_MAP_MAPPED))) {
+			zero_user_segment(page, 0, PAGE_SIZE);
+			SetPageUptodate(page);
+
+			/* imply err = 0, see erofs_map_blocks */
+			goto has_updated;
+		}
+
+		/* for RAW access mode, m_plen must be equal to m_llen */
+		DBG_BUGON(map.m_plen != map.m_llen);
+
+		blknr = erofs_blknr(map.m_pa);
+		blkoff = erofs_blkoff(map.m_pa);
+
+		/* deal with inline page */
+		if (map.m_flags & EROFS_MAP_META) {
+			void *vsrc, *vto;
+			struct page *ipage;
+
+			DBG_BUGON(map.m_plen > PAGE_SIZE);
+
+			ipage = erofs_get_meta_page(inode->i_sb, blknr, 0);
+
+			if (IS_ERR(ipage)) {
+				err = PTR_ERR(ipage);
+				goto err_out;
+			}
+
+			vsrc = kmap_atomic(ipage);
+			vto = kmap_atomic(page);
+			memcpy(vto, vsrc + blkoff, map.m_plen);
+			memset(vto + map.m_plen, 0, PAGE_SIZE - map.m_plen);
+			kunmap_atomic(vto);
+			kunmap_atomic(vsrc);
+			flush_dcache_page(page);
+
+			SetPageUptodate(page);
+			/* TODO: could we unlock the page earlier? */
+			unlock_page(ipage);
+			put_page(ipage);
+
+			/* imply err = 0, see erofs_map_blocks */
+			goto has_updated;
+		}
+
+		/* pa must be block-aligned for raw reading */
+		DBG_BUGON(erofs_blkoff(map.m_pa));
+
+		/* max # of continuous pages */
+		if (nblocks > DIV_ROUND_UP(map.m_plen, PAGE_SIZE))
+			nblocks = DIV_ROUND_UP(map.m_plen, PAGE_SIZE);
+		if (nblocks > BIO_MAX_PAGES)
+			nblocks = BIO_MAX_PAGES;
+
+		bio = erofs_grab_bio(sb, blknr, nblocks, sb,
+				     read_endio, false);
+		if (IS_ERR(bio)) {
+			err = PTR_ERR(bio);
+			bio = NULL;
+			goto err_out;
+		}
+	}
+
+	err = bio_add_page(bio, page, PAGE_SIZE, 0);
+	/* out of the extent or bio is full */
+	if (err < PAGE_SIZE)
+		goto submit_bio_retry;
+
+	*last_block = current_block;
+
+	/* shift in advance in case of it followed by too many gaps */
+	if (bio->bi_iter.bi_size >= bio->bi_max_vecs * PAGE_SIZE) {
+		/* err should reassign to 0 after submitting */
+		err = 0;
+		goto submit_bio_out;
+	}
+
+	return bio;
+
+err_out:
+	/* for sync reading, set page error immediately */
+	if (!ra) {
+		SetPageError(page);
+		ClearPageUptodate(page);
+	}
+has_updated:
+	unlock_page(page);
+
+	/* if updated manually, continuous pages has a gap */
+	if (bio)
+submit_bio_out:
+		__submit_bio(bio, REQ_OP_READ, 0);
+
+	return unlikely(err) ? ERR_PTR(err) : NULL;
+}
+
+/*
+ * since we dont have write or truncate flows, so no inode
+ * locking needs to be held at the moment.
+ */
+static int erofs_raw_access_readpage(struct file *file, struct page *page)
+{
+	erofs_off_t last_block;
+	struct bio *bio;
+
+	trace_erofs_readpage(page, true);
+
+	bio = erofs_read_raw_page(NULL, page->mapping,
+				  page, &last_block, 1, false);
+
+	if (IS_ERR(bio))
+		return PTR_ERR(bio);
+
+	DBG_BUGON(bio);	/* since we have only one bio -- must be NULL */
+	return 0;
+}
+
+static int erofs_raw_access_readpages(struct file *filp,
+				      struct address_space *mapping,
+				      struct list_head *pages,
+				      unsigned int nr_pages)
+{
+	erofs_off_t last_block;
+	struct bio *bio = NULL;
+	gfp_t gfp = readahead_gfp_mask(mapping);
+	struct page *page = list_last_entry(pages, struct page, lru);
+
+	trace_erofs_readpages(mapping->host, page, nr_pages, true);
+
+	for (; nr_pages; --nr_pages) {
+		page = list_entry(pages->prev, struct page, lru);
+
+		prefetchw(&page->flags);
+		list_del(&page->lru);
+
+		if (!add_to_page_cache_lru(page, mapping, page->index, gfp)) {
+			bio = erofs_read_raw_page(bio, mapping, page,
+						  &last_block, nr_pages, true);
+
+			/* all the page errors are ignored when readahead */
+			if (IS_ERR(bio)) {
+				pr_err("%s, readahead error at page %lu of nid %llu\n",
+				       __func__, page->index,
+				       EROFS_V(mapping->host)->nid);
+
+				bio = NULL;
+			}
+		}
+
+		/* pages could still be locked */
+		put_page(page);
+	}
+	DBG_BUGON(!list_empty(pages));
+
+	/* the rare case (end in gaps) */
+	if (unlikely(bio))
+		__submit_bio(bio, REQ_OP_READ, 0);
+	return 0;
+}
+
+static int erofs_get_block(struct inode *inode, sector_t iblock,
+			   struct buffer_head *bh, int create)
+{
+	struct erofs_map_blocks map = {
+		.m_la = iblock << 9,
+	};
+	int err;
+
+	err = erofs_map_blocks(inode, &map, EROFS_GET_BLOCKS_RAW);
+	if (err)
+		return err;
+
+	if (map.m_flags & EROFS_MAP_MAPPED)
+		bh->b_blocknr = erofs_blknr(map.m_pa);
+
+	return err;
+}
+
+static sector_t erofs_bmap(struct address_space *mapping, sector_t block)
+{
+	struct inode *inode = mapping->host;
+
+	if (is_inode_flat_inline(inode)) {
+		erofs_blk_t blks = i_size_read(inode) >> LOG_BLOCK_SIZE;
+
+		if (block >> LOG_SECTORS_PER_BLOCK >= blks)
+			return 0;
+	}
+
+	return generic_block_bmap(mapping, block, erofs_get_block);
+}
+
+/* for uncompressed (aligned) files and raw access for other files */
+const struct address_space_operations erofs_raw_access_aops = {
+	.readpage = erofs_raw_access_readpage,
+	.readpages = erofs_raw_access_readpages,
+	.bmap = erofs_bmap,
+};
+
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
