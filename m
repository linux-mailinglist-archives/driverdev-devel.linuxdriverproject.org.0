Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C12077A1B6
	for <lists+driverdev-devel@lfdr.de>; Tue, 30 Jul 2019 09:15:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3DD6D8642E;
	Tue, 30 Jul 2019 07:15:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZC9+qY5NbhG5; Tue, 30 Jul 2019 07:15:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 079F186354;
	Tue, 30 Jul 2019 07:14:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3BC7D1BF980
 for <devel@linuxdriverproject.org>; Tue, 30 Jul 2019 07:14:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 38D34862E8
 for <devel@linuxdriverproject.org>; Tue, 30 Jul 2019 07:14:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kv6NDy5t35Oo for <devel@linuxdriverproject.org>;
 Tue, 30 Jul 2019 07:14:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 683BB82D8E
 for <devel@driverdev.osuosl.org>; Tue, 30 Jul 2019 07:14:44 +0000 (UTC)
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 813B213D3EF4D30829A5;
 Tue, 30 Jul 2019 15:14:41 +0800 (CST)
Received: from architecture4.huawei.com (10.140.130.215) by smtp.huawei.com
 (10.3.19.210) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 30 Jul
 2019 15:14:32 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Alexander Viro <viro@zeniv.linux.org.uk>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Andrew Morton <akpm@linux-foundation.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>, Theodore Ts'o <tytso@mit.edu>,
 "David Sterba" <dsterba@suse.cz>, Amir Goldstein <amir73il@gmail.com>,
 "Christoph Hellwig" <hch@infradead.org>, "Darrick J . Wong"
 <darrick.wong@oracle.com>, Dave Chinner <david@fromorbit.com>, Jaegeuk Kim
 <jaegeuk@kernel.org>, "Jan Kara" <jack@suse.cz>, Linus Torvalds
 <torvalds@linux-foundation.org>
Subject: [PATCH v5 02/24] erofs: add erofs in-memory stuffs
Date: Tue, 30 Jul 2019 15:13:51 +0800
Message-ID: <20190730071413.11871-3-gaoxiang25@huawei.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190730071413.11871-1-gaoxiang25@huawei.com>
References: <20190730071413.11871-1-gaoxiang25@huawei.com>
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
Cc: devel@driverdev.osuosl.org, linux-erofs@lists.ozlabs.org,
 Chao Yu <yuchao0@huawei.com>, LKML <linux-kernel@vger.kernel.org>,
 Li Guifu <bluce.liguifu@huawei.com>, Fang Wei <fangwei1@huawei.com>,
 linux-fsdevel@vger.kernel.org, Miao Xie <miaoxie@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

 - erofs_sb_info:
   contains erofs-specific in-memory information.

 - erofs_vnode:
   contains vfs_inode and other fs-specific information.
   same as super block, the only one in-memory definition exists.

 - erofs_map_blocks
   Logical to physical block mapping, used by erofs_map_blocks().

Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
---
 fs/erofs/internal.h | 354 ++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 354 insertions(+)
 create mode 100644 fs/erofs/internal.h

diff --git a/fs/erofs/internal.h b/fs/erofs/internal.h
new file mode 100644
index 000000000000..9e0ad271394b
--- /dev/null
+++ b/fs/erofs/internal.h
@@ -0,0 +1,354 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * linux/fs/erofs/internal.h
+ *
+ * Copyright (C) 2017-2018 HUAWEI, Inc.
+ *             http://www.huawei.com/
+ * Created by Gao Xiang <gaoxiang25@huawei.com>
+ */
+#ifndef __EROFS_INTERNAL_H
+#define __EROFS_INTERNAL_H
+
+#include <linux/fs.h>
+#include <linux/dcache.h>
+#include <linux/mm.h>
+#include <linux/pagemap.h>
+#include <linux/bio.h>
+#include <linux/buffer_head.h>
+#include <linux/cleancache.h>
+#include <linux/magic.h>
+#include <linux/slab.h>
+#include <linux/vmalloc.h>
+#include "erofs_fs.h"
+
+/* redefine pr_fmt "erofs: " */
+#undef pr_fmt
+#define pr_fmt(fmt) "erofs: " fmt
+
+#define errln(x, ...)   pr_err(x "\n", ##__VA_ARGS__)
+#define infoln(x, ...)  pr_info(x "\n", ##__VA_ARGS__)
+#ifdef CONFIG_EROFS_FS_DEBUG
+#define debugln(x, ...) pr_debug(x "\n", ##__VA_ARGS__)
+#define DBG_BUGON               BUG_ON
+#else
+#define debugln(x, ...)         ((void)0)
+#define DBG_BUGON(x)            ((void)(x))
+#endif	/* !CONFIG_EROFS_FS_DEBUG */
+
+enum {
+	FAULT_KMALLOC,
+	FAULT_READ_IO,
+	FAULT_MAX,
+};
+
+#ifdef CONFIG_EROFS_FAULT_INJECTION
+extern const char *erofs_fault_name[FAULT_MAX];
+#define IS_FAULT_SET(fi, type) ((fi)->inject_type & (1 << (type)))
+
+struct erofs_fault_info {
+	atomic_t inject_ops;
+	unsigned int inject_rate;
+	unsigned int inject_type;
+};
+#endif	/* CONFIG_EROFS_FAULT_INJECTION */
+
+/* EROFS_SUPER_MAGIC_V1 to represent the whole file system */
+#define EROFS_SUPER_MAGIC   EROFS_SUPER_MAGIC_V1
+
+typedef u64 erofs_nid_t;
+typedef u64 erofs_off_t;
+/* data type for filesystem-wide blocks number */
+typedef u32 erofs_blk_t;
+
+struct erofs_sb_info {
+	u32 blocks;
+	u32 meta_blkaddr;
+
+	/* inode slot unit size in bit shift */
+	unsigned char islotbits;
+
+	u32 build_time_nsec;
+	u64 build_time;
+
+	/* what we really care is nid, rather than ino.. */
+	erofs_nid_t root_nid;
+	/* used for statfs, f_files - f_favail */
+	u64 inos;
+
+	u8 uuid[16];                    /* 128-bit uuid for volume */
+	u8 volume_name[16];             /* volume name */
+	u32 requirements;
+
+	unsigned int mount_opt;
+
+#ifdef CONFIG_EROFS_FAULT_INJECTION
+	struct erofs_fault_info fault_info;	/* For fault injection */
+#endif
+};
+
+#ifdef CONFIG_EROFS_FAULT_INJECTION
+#define erofs_show_injection_info(type)					\
+	infoln("inject %s in %s of %pS", erofs_fault_name[type],        \
+		__func__, __builtin_return_address(0))
+
+static inline bool time_to_inject(struct erofs_sb_info *sbi, int type)
+{
+	struct erofs_fault_info *ffi = &sbi->fault_info;
+
+	if (!ffi->inject_rate)
+		return false;
+
+	if (!IS_FAULT_SET(ffi, type))
+		return false;
+
+	atomic_inc(&ffi->inject_ops);
+	if (atomic_read(&ffi->inject_ops) >= ffi->inject_rate) {
+		atomic_set(&ffi->inject_ops, 0);
+		return true;
+	}
+	return false;
+}
+#else
+static inline bool time_to_inject(struct erofs_sb_info *sbi, int type)
+{
+	return false;
+}
+
+static inline void erofs_show_injection_info(int type)
+{
+}
+#endif	/* !CONFIG_EROFS_FAULT_INJECTION */
+
+static inline void *erofs_kmalloc(struct erofs_sb_info *sbi,
+					size_t size, gfp_t flags)
+{
+	if (time_to_inject(sbi, FAULT_KMALLOC)) {
+		erofs_show_injection_info(FAULT_KMALLOC);
+		return NULL;
+	}
+	return kmalloc(size, flags);
+}
+
+#define EROFS_SB(sb) ((struct erofs_sb_info *)(sb)->s_fs_info)
+#define EROFS_I_SB(inode) ((struct erofs_sb_info *)(inode)->i_sb->s_fs_info)
+
+/* Mount flags set via mount options or defaults */
+#define EROFS_MOUNT_FAULT_INJECTION	0x00000040
+
+#define clear_opt(sbi, option)	((sbi)->mount_opt &= ~EROFS_MOUNT_##option)
+#define set_opt(sbi, option)	((sbi)->mount_opt |= EROFS_MOUNT_##option)
+#define test_opt(sbi, option)	((sbi)->mount_opt & EROFS_MOUNT_##option)
+
+/* we strictly follow PAGE_SIZE and no buffer head yet */
+#define LOG_BLOCK_SIZE		PAGE_SHIFT
+
+#undef LOG_SECTORS_PER_BLOCK
+#define LOG_SECTORS_PER_BLOCK	(PAGE_SHIFT - 9)
+
+#undef SECTORS_PER_BLOCK
+#define SECTORS_PER_BLOCK	(1 << SECTORS_PER_BLOCK)
+
+#define EROFS_BLKSIZ		(1 << LOG_BLOCK_SIZE)
+
+#if (EROFS_BLKSIZ % 4096 || !EROFS_BLKSIZ)
+#error erofs cannot be used in this platform
+#endif
+
+#define ROOT_NID(sb)		((sb)->root_nid)
+
+#define erofs_blknr(addr)       ((addr) / EROFS_BLKSIZ)
+#define erofs_blkoff(addr)      ((addr) % EROFS_BLKSIZ)
+#define blknr_to_addr(nr)       ((erofs_off_t)(nr) * EROFS_BLKSIZ)
+
+static inline erofs_off_t iloc(struct erofs_sb_info *sbi, erofs_nid_t nid)
+{
+	return blknr_to_addr(sbi->meta_blkaddr) + (nid << sbi->islotbits);
+}
+
+struct erofs_vnode {
+	erofs_nid_t nid;
+
+	unsigned char datamode;
+	unsigned char inode_isize;
+	unsigned short xattr_isize;
+
+	erofs_blk_t raw_blkaddr;
+	/* the corresponding vfs inode */
+	struct inode vfs_inode;
+};
+
+#define EROFS_V(ptr)	\
+	container_of(ptr, struct erofs_vnode, vfs_inode)
+
+#define __inode_advise(x, bit, bits) \
+	(((x) >> (bit)) & ((1 << (bits)) - 1))
+
+#define __inode_version(advise)	\
+	__inode_advise(advise, EROFS_I_VERSION_BIT,	\
+		EROFS_I_VERSION_BITS)
+
+#define __inode_data_mapping(advise)	\
+	__inode_advise(advise, EROFS_I_DATA_MAPPING_BIT,\
+		EROFS_I_DATA_MAPPING_BITS)
+
+static inline unsigned long inode_datablocks(struct inode *inode)
+{
+	/* since i_size cannot be changed */
+	return DIV_ROUND_UP(inode->i_size, EROFS_BLKSIZ);
+}
+
+static inline bool is_inode_layout_compression(struct inode *inode)
+{
+	return erofs_inode_is_data_compressed(EROFS_V(inode)->datamode);
+}
+
+static inline bool is_inode_flat_inline(struct inode *inode)
+{
+	return EROFS_V(inode)->datamode == EROFS_INODE_FLAT_INLINE;
+}
+
+extern const struct super_operations erofs_sops;
+
+extern const struct address_space_operations erofs_raw_access_aops;
+
+/*
+ * Logical to physical block mapping, used by erofs_map_blocks()
+ *
+ * Different with other file systems, it is used for 2 access modes:
+ *
+ * 1) RAW access mode:
+ *
+ * Users pass a valid (m_lblk, m_lofs -- usually 0) pair,
+ * and get the valid m_pblk, m_pofs and the longest m_len(in bytes).
+ *
+ * Note that m_lblk in the RAW access mode refers to the number of
+ * the compressed ondisk block rather than the uncompressed
+ * in-memory block for the compressed file.
+ *
+ * m_pofs equals to m_lofs except for the inline data page.
+ *
+ * 2) Normal access mode:
+ *
+ * If the inode is not compressed, it has no difference with
+ * the RAW access mode. However, if the inode is compressed,
+ * users should pass a valid (m_lblk, m_lofs) pair, and get
+ * the needed m_pblk, m_pofs, m_len to get the compressed data
+ * and the updated m_lblk, m_lofs which indicates the start
+ * of the corresponding uncompressed data in the file.
+ */
+enum {
+	BH_Zipped = BH_PrivateStart,
+	BH_FullMapped,
+};
+
+/* Has a disk mapping */
+#define EROFS_MAP_MAPPED	(1 << BH_Mapped)
+/* Located in metadata (could be copied from bd_inode) */
+#define EROFS_MAP_META		(1 << BH_Meta)
+
+struct erofs_map_blocks {
+	erofs_off_t m_pa, m_la;
+	u64 m_plen, m_llen;
+
+	unsigned int m_flags;
+
+	struct page *mpage;
+};
+
+/* Flags used by erofs_map_blocks() */
+#define EROFS_GET_BLOCKS_RAW    0x0001
+
+/* data.c */
+static inline struct bio *erofs_grab_bio(struct super_block *sb,
+					 erofs_blk_t blkaddr,
+					 unsigned int nr_pages,
+					 void *bi_private, bio_end_io_t endio,
+					 bool nofail)
+{
+	const gfp_t gfp = GFP_NOIO;
+	struct bio *bio;
+
+	do {
+		if (nr_pages == 1) {
+			bio = bio_alloc(gfp | (nofail ? __GFP_NOFAIL : 0), 1);
+			if (unlikely(!bio)) {
+				DBG_BUGON(nofail);
+				return ERR_PTR(-ENOMEM);
+			}
+			break;
+		}
+		bio = bio_alloc(gfp, nr_pages);
+		nr_pages /= 2;
+	} while (unlikely(!bio));
+
+	bio->bi_end_io = endio;
+	bio_set_dev(bio, sb->s_bdev);
+	bio->bi_iter.bi_sector = (sector_t)blkaddr << LOG_SECTORS_PER_BLOCK;
+	bio->bi_private = bi_private;
+	return bio;
+}
+
+static inline void __submit_bio(struct bio *bio, unsigned int op,
+				unsigned int op_flags)
+{
+	bio_set_op_attrs(bio, op, op_flags);
+	submit_bio(bio);
+}
+
+struct page *__erofs_get_meta_page(struct super_block *sb, erofs_blk_t blkaddr,
+				   bool prio, bool nofail);
+
+static inline struct page *erofs_get_meta_page(struct super_block *sb,
+	erofs_blk_t blkaddr, bool prio)
+{
+	return __erofs_get_meta_page(sb, blkaddr, prio, false);
+}
+
+int erofs_map_blocks(struct inode *, struct erofs_map_blocks *, int);
+
+static inline struct page *erofs_get_inline_page(struct inode *inode,
+						 erofs_blk_t blkaddr)
+{
+	return erofs_get_meta_page(inode->i_sb, blkaddr,
+				   S_ISDIR(inode->i_mode));
+}
+
+/* inode.c */
+static inline unsigned long erofs_inode_hash(erofs_nid_t nid)
+{
+#if BITS_PER_LONG == 32
+	return (nid >> 32) ^ (nid & 0xffffffff);
+#else
+	return nid;
+#endif
+}
+
+extern const struct inode_operations erofs_generic_iops;
+extern const struct inode_operations erofs_symlink_iops;
+extern const struct inode_operations erofs_fast_symlink_iops;
+
+static inline void set_inode_fast_symlink(struct inode *inode)
+{
+	inode->i_op = &erofs_fast_symlink_iops;
+}
+
+static inline bool is_inode_fast_symlink(struct inode *inode)
+{
+	return inode->i_op == &erofs_fast_symlink_iops;
+}
+
+struct inode *erofs_iget(struct super_block *sb, erofs_nid_t nid, bool dir);
+int erofs_getattr(const struct path *path, struct kstat *stat,
+		  u32 request_mask, unsigned int query_flags);
+
+/* namei.c */
+extern const struct inode_operations erofs_dir_iops;
+
+int erofs_namei(struct inode *dir, struct qstr *name,
+		erofs_nid_t *nid, unsigned int *d_type);
+
+/* dir.c */
+extern const struct file_operations erofs_dir_fops;
+
+#endif	/* __EROFS_INTERNAL_H */
+
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
