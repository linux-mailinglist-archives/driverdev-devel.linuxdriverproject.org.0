Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63D5C8B3AB
	for <lists+driverdev-devel@lfdr.de>; Tue, 13 Aug 2019 11:15:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8252A87FC3;
	Tue, 13 Aug 2019 09:15:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NBj49Yxh+cOZ; Tue, 13 Aug 2019 09:15:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3E83287EB8;
	Tue, 13 Aug 2019 09:15:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 772541BF282
 for <devel@linuxdriverproject.org>; Tue, 13 Aug 2019 09:15:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 741C386388
 for <devel@linuxdriverproject.org>; Tue, 13 Aug 2019 09:15:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DEdakXoFQmPt for <devel@linuxdriverproject.org>;
 Tue, 13 Aug 2019 09:14:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1F5ED8632D
 for <devel@driverdev.osuosl.org>; Tue, 13 Aug 2019 09:14:17 +0000 (UTC)
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id BFEAF7FDF218147D03E4;
 Tue, 13 Aug 2019 17:14:14 +0800 (CST)
Received: from architecture4.huawei.com (10.140.130.215) by smtp.huawei.com
 (10.3.19.208) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 13 Aug
 2019 17:14:08 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: linux-fsdevel <linux-fsdevel@vger.kernel.org>, LKML
 <linux-kernel@vger.kernel.org>, Alexander Viro <viro@zeniv.linux.org.uk>
Subject: [PATCH v7 07/24] erofs: add directory operations
Date: Tue, 13 Aug 2019 17:13:09 +0800
Message-ID: <20190813091326.84652-8-gaoxiang25@huawei.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190813091326.84652-1-gaoxiang25@huawei.com>
References: <20190813091326.84652-1-gaoxiang25@huawei.com>
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
Cc: devel@driverdev.osuosl.org, Stephen Rothwell <sfr@canb.auug.org.au>,
 linux-erofs@lists.ozlabs.org, Chao Yu <yuchao0@huawei.com>,
 Theodore Ts'o <tytso@mit.edu>, "Darrick J . Wong" <darrick.wong@oracle.com>,
 Pavel Machek <pavel@denx.de>, Jan Kara <jack@suse.cz>,
 Amir Goldstein <amir73il@gmail.com>, Dave
 Chinner <david@fromorbit.com>, David Sterba <dsterba@suse.cz>,
 Li Guifu <bluce.liguifu@huawei.com>, Christoph Hellwig <hch@infradead.org>,
 Richard Weinberger <richard@nod.at>, Miao Xie <miaoxie@huawei.com>,
 Fang Wei <fangwei1@huawei.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jaegeuk Kim <jaegeuk@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This adds functions for directory, mainly readdir.

Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
---
 fs/erofs/dir.c | 147 +++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 147 insertions(+)
 create mode 100644 fs/erofs/dir.c

diff --git a/fs/erofs/dir.c b/fs/erofs/dir.c
new file mode 100644
index 000000000000..7cf7da8574c4
--- /dev/null
+++ b/fs/erofs/dir.c
@@ -0,0 +1,147 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * linux/fs/erofs/dir.c
+ *
+ * Copyright (C) 2017-2018 HUAWEI, Inc.
+ *             http://www.huawei.com/
+ * Created by Gao Xiang <gaoxiang25@huawei.com>
+ */
+#include "internal.h"
+
+static const unsigned char erofs_filetype_table[EROFS_FT_MAX] = {
+	[EROFS_FT_UNKNOWN]	= DT_UNKNOWN,
+	[EROFS_FT_REG_FILE]	= DT_REG,
+	[EROFS_FT_DIR]		= DT_DIR,
+	[EROFS_FT_CHRDEV]	= DT_CHR,
+	[EROFS_FT_BLKDEV]	= DT_BLK,
+	[EROFS_FT_FIFO]		= DT_FIFO,
+	[EROFS_FT_SOCK]		= DT_SOCK,
+	[EROFS_FT_SYMLINK]	= DT_LNK,
+};
+
+static void debug_one_dentry(unsigned char d_type, const char *de_name,
+			     unsigned int de_namelen)
+{
+#ifdef CONFIG_EROFS_FS_DEBUG
+	/* since the on-disk name could not have the trailing '\0' */
+	unsigned char dbg_namebuf[EROFS_NAME_LEN + 1];
+
+	memcpy(dbg_namebuf, de_name, de_namelen);
+	dbg_namebuf[de_namelen] = '\0';
+
+	debugln("found dirent %s de_len %u d_type %d", dbg_namebuf,
+		de_namelen, d_type);
+#endif
+}
+
+static int erofs_fill_dentries(struct dir_context *ctx,
+			       void *dentry_blk, unsigned int *ofs,
+			       unsigned int nameoff, unsigned int maxsize)
+{
+	struct erofs_dirent *de = dentry_blk + *ofs;
+	const struct erofs_dirent *end = dentry_blk + nameoff;
+
+	while (de < end) {
+		const char *de_name;
+		unsigned int de_namelen;
+		unsigned char d_type;
+
+		if (de->file_type < EROFS_FT_MAX)
+			d_type = erofs_filetype_table[de->file_type];
+		else
+			d_type = DT_UNKNOWN;
+
+		nameoff = le16_to_cpu(de->nameoff);
+		de_name = (char *)dentry_blk + nameoff;
+
+		/* the last dirent in the block? */
+		if (de + 1 >= end)
+			de_namelen = strnlen(de_name, maxsize - nameoff);
+		else
+			de_namelen = le16_to_cpu(de[1].nameoff) - nameoff;
+
+		/* a corrupted entry is found */
+		if (unlikely(nameoff + de_namelen > maxsize ||
+			     de_namelen > EROFS_NAME_LEN)) {
+			DBG_BUGON(1);
+			return -EIO;
+		}
+
+		debug_one_dentry(d_type, de_name, de_namelen);
+		if (!dir_emit(ctx, de_name, de_namelen,
+			      le64_to_cpu(de->nid), d_type))
+			/* stopped by some reason */
+			return 1;
+		++de;
+		*ofs += sizeof(struct erofs_dirent);
+	}
+	*ofs = maxsize;
+	return 0;
+}
+
+static int erofs_readdir(struct file *f, struct dir_context *ctx)
+{
+	struct inode *dir = file_inode(f);
+	struct address_space *mapping = dir->i_mapping;
+	const size_t dirsize = i_size_read(dir);
+	unsigned int i = ctx->pos / EROFS_BLKSIZ;
+	unsigned int ofs = ctx->pos % EROFS_BLKSIZ;
+	int err = 0;
+	bool initial = true;
+
+	while (ctx->pos < dirsize) {
+		struct page *dentry_page;
+		struct erofs_dirent *de;
+		unsigned int nameoff, maxsize;
+
+		dentry_page = read_mapping_page(mapping, i, NULL);
+		if (IS_ERR(dentry_page))
+			continue;
+
+		de = (struct erofs_dirent *)kmap(dentry_page);
+
+		nameoff = le16_to_cpu(de->nameoff);
+
+		if (unlikely(nameoff < sizeof(struct erofs_dirent) ||
+			     nameoff >= PAGE_SIZE)) {
+			errln("%s, invalid de[0].nameoff %u",
+			      __func__, nameoff);
+
+			err = -EIO;
+			goto skip_this;
+		}
+
+		maxsize = min_t(unsigned int,
+				dirsize - ctx->pos + ofs, PAGE_SIZE);
+
+		/* search dirents at the arbitrary position */
+		if (unlikely(initial)) {
+			initial = false;
+
+			ofs = roundup(ofs, sizeof(struct erofs_dirent));
+			if (unlikely(ofs >= nameoff))
+				goto skip_this;
+		}
+
+		err = erofs_fill_dentries(ctx, de, &ofs, nameoff, maxsize);
+skip_this:
+		kunmap(dentry_page);
+
+		put_page(dentry_page);
+
+		ctx->pos = blknr_to_addr(i) + ofs;
+
+		if (unlikely(err))
+			break;
+		++i;
+		ofs = 0;
+	}
+	return err < 0 ? err : 0;
+}
+
+const struct file_operations erofs_dir_fops = {
+	.llseek		= generic_file_llseek,
+	.read		= generic_read_dir,
+	.iterate_shared	= erofs_readdir,
+};
+
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
