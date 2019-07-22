Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E9B856F75A
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Jul 2019 04:51:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0CE14203CF;
	Mon, 22 Jul 2019 02:51:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L7d9Bsre--gv; Mon, 22 Jul 2019 02:51:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 10F932010C;
	Mon, 22 Jul 2019 02:51:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 09D8E1BF3CA
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 02:51:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 072F720017
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 02:51:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PtkGHcxYcyTC for <devel@linuxdriverproject.org>;
 Mon, 22 Jul 2019 02:51:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga06-in.huawei.com [45.249.212.32])
 by silver.osuosl.org (Postfix) with ESMTPS id 6BD0F1FFFE
 for <devel@driverdev.osuosl.org>; Mon, 22 Jul 2019 02:51:10 +0000 (UTC)
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 9A6F583B66726315D233;
 Mon, 22 Jul 2019 10:51:08 +0800 (CST)
Received: from architecture4.huawei.com (10.140.130.215) by smtp.huawei.com
 (10.3.19.203) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 22 Jul
 2019 10:51:03 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Alexander Viro <viro@zeniv.linux.org.uk>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Andrew Morton <akpm@linux-foundation.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>, Theodore Ts'o <tytso@mit.edu>,
 "Linus Torvalds" <torvalds@linux-foundation.org>
Subject: [PATCH v3 08/24] erofs: add namei functions
Date: Mon, 22 Jul 2019 10:50:27 +0800
Message-ID: <20190722025043.166344-9-gaoxiang25@huawei.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190722025043.166344-1-gaoxiang25@huawei.com>
References: <20190722025043.166344-1-gaoxiang25@huawei.com>
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

This commit adds functions that transfer names to inodes.

Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
---
 fs/erofs/namei.c | 246 +++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 246 insertions(+)
 create mode 100644 fs/erofs/namei.c

diff --git a/fs/erofs/namei.c b/fs/erofs/namei.c
new file mode 100644
index 000000000000..7665d3603503
--- /dev/null
+++ b/fs/erofs/namei.c
@@ -0,0 +1,246 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * linux/fs/erofs/namei.c
+ *
+ * Copyright (C) 2017-2018 HUAWEI, Inc.
+ *             http://www.huawei.com/
+ * Created by Gao Xiang <gaoxiang25@huawei.com>
+ */
+#include "internal.h"
+
+#include <trace/events/erofs.h>
+
+struct erofs_qstr {
+	const unsigned char *name;
+	const unsigned char *end;
+};
+
+/* based on the end of qn is accurate and it must have the trailing '\0' */
+static inline int dirnamecmp(const struct erofs_qstr *qn,
+			     const struct erofs_qstr *qd,
+			     unsigned int *matched)
+{
+	unsigned int i = *matched;
+
+	/*
+	 * on-disk error, let's only BUG_ON in the debugging mode.
+	 * otherwise, it will return 1 to just skip the invalid name
+	 * and go on (in consideration of the lookup performance).
+	 */
+	DBG_BUGON(qd->name > qd->end);
+
+	/* qd could not have trailing '\0' */
+	/* However it is absolutely safe if < qd->end */
+	while (qd->name + i < qd->end && qd->name[i] != '\0') {
+		if (qn->name[i] != qd->name[i]) {
+			*matched = i;
+			return qn->name[i] > qd->name[i] ? 1 : -1;
+		}
+		++i;
+	}
+	*matched = i;
+	/* See comments in __d_alloc on the terminating NUL character */
+	return qn->name[i] == '\0' ? 0 : 1;
+}
+
+#define nameoff_from_disk(off, sz)	(le16_to_cpu(off) & ((sz) - 1))
+
+static struct erofs_dirent *find_target_dirent(struct erofs_qstr *name,
+					       u8 *data,
+					       unsigned int dirblksize,
+					       const int ndirents)
+{
+	int head, back;
+	unsigned int startprfx, endprfx;
+	struct erofs_dirent *const de = (struct erofs_dirent *)data;
+
+	/* since the 1st dirent has been evaluated previously */
+	head = 1;
+	back = ndirents - 1;
+	startprfx = endprfx = 0;
+
+	while (head <= back) {
+		const int mid = head + (back - head) / 2;
+		const int nameoff = nameoff_from_disk(de[mid].nameoff,
+						      dirblksize);
+		unsigned int matched = min(startprfx, endprfx);
+		struct erofs_qstr dname = {
+			.name = data + nameoff,
+			.end = unlikely(mid >= ndirents - 1) ?
+				data + dirblksize :
+				data + nameoff_from_disk(de[mid + 1].nameoff,
+							 dirblksize)
+		};
+
+		/* string comparison without already matched prefix */
+		int ret = dirnamecmp(name, &dname, &matched);
+
+		if (unlikely(!ret)) {
+			return de + mid;
+		} else if (ret > 0) {
+			head = mid + 1;
+			startprfx = matched;
+		} else {
+			back = mid - 1;
+			endprfx = matched;
+		}
+	}
+	return ERR_PTR(-ENOENT);
+}
+
+static struct page *find_target_block_classic(struct inode *dir,
+					      struct erofs_qstr *name,
+					      int *_ndirents)
+{
+	unsigned int startprfx, endprfx;
+	int head, back;
+	struct address_space *const mapping = dir->i_mapping;
+	struct page *candidate = ERR_PTR(-ENOENT);
+
+	startprfx = endprfx = 0;
+	head = 0;
+	back = inode_datablocks(dir) - 1;
+
+	while (head <= back) {
+		const int mid = head + (back - head) / 2;
+		struct page *page = read_mapping_page(mapping, mid, NULL);
+
+		if (!IS_ERR(page)) {
+			struct erofs_dirent *de = kmap_atomic(page);
+			const int nameoff = nameoff_from_disk(de->nameoff,
+							      EROFS_BLKSIZ);
+			const int ndirents = nameoff / sizeof(*de);
+			int diff;
+			unsigned int matched;
+			struct erofs_qstr dname;
+
+			if (unlikely(!ndirents)) {
+				DBG_BUGON(1);
+				kunmap_atomic(de);
+				put_page(page);
+				page = ERR_PTR(-EIO);
+				goto out;
+			}
+
+			matched = min(startprfx, endprfx);
+
+			dname.name = (u8 *)de + nameoff;
+			if (ndirents == 1)
+				dname.end = (u8 *)de + EROFS_BLKSIZ;
+			else
+				dname.end = (u8 *)de +
+					nameoff_from_disk(de[1].nameoff,
+							  EROFS_BLKSIZ);
+
+			/* string comparison without already matched prefix */
+			diff = dirnamecmp(name, &dname, &matched);
+			kunmap_atomic(de);
+
+			if (unlikely(!diff)) {
+				*_ndirents = 0;
+				goto out;
+			} else if (diff > 0) {
+				head = mid + 1;
+				startprfx = matched;
+
+				if (!IS_ERR(candidate))
+					put_page(candidate);
+				candidate = page;
+				*_ndirents = ndirents;
+			} else {
+				put_page(page);
+
+				back = mid - 1;
+				endprfx = matched;
+			}
+			continue;
+		}
+out:		/* free if the candidate is valid */
+		if (!IS_ERR(candidate))
+			put_page(candidate);
+		return page;
+	}
+	return candidate;
+}
+
+int erofs_namei(struct inode *dir,
+		struct qstr *name,
+		erofs_nid_t *nid, unsigned int *d_type)
+{
+	int ndirents;
+	struct page *page;
+	void *data;
+	struct erofs_dirent *de;
+	struct erofs_qstr qn;
+
+	if (unlikely(!dir->i_size))
+		return -ENOENT;
+
+	qn.name = name->name;
+	qn.end = name->name + name->len;
+
+	ndirents = 0;
+	page = find_target_block_classic(dir, &qn, &ndirents);
+
+	if (IS_ERR(page))
+		return PTR_ERR(page);
+
+	data = kmap_atomic(page);
+	/* the target page has been mapped */
+	if (ndirents)
+		de = find_target_dirent(&qn, data, EROFS_BLKSIZ, ndirents);
+	else
+		de = (struct erofs_dirent *)data;
+
+	if (!IS_ERR(de)) {
+		*nid = le64_to_cpu(de->nid);
+		*d_type = de->file_type;
+	}
+
+	kunmap_atomic(data);
+	put_page(page);
+
+	return PTR_ERR_OR_ZERO(de);
+}
+
+/* NOTE: i_mutex is already held by vfs */
+static struct dentry *erofs_lookup(struct inode *dir,
+				   struct dentry *dentry,
+				   unsigned int flags)
+{
+	int err;
+	erofs_nid_t nid;
+	unsigned int d_type;
+	struct inode *inode;
+
+	DBG_BUGON(!d_really_is_negative(dentry));
+	/* dentry must be unhashed in lookup, no need to worry about */
+	DBG_BUGON(!d_unhashed(dentry));
+
+	trace_erofs_lookup(dir, dentry, flags);
+
+	/* file name exceeds fs limit */
+	if (unlikely(dentry->d_name.len > EROFS_NAME_LEN))
+		return ERR_PTR(-ENAMETOOLONG);
+
+	/* false uninitialized warnings on gcc 4.8.x */
+	err = erofs_namei(dir, &dentry->d_name, &nid, &d_type);
+
+	if (err == -ENOENT) {
+		/* negative dentry */
+		inode = NULL;
+	} else if (unlikely(err)) {
+		inode = ERR_PTR(err);
+	} else {
+		debugln("%s, %s (nid %llu) found, d_type %u", __func__,
+			dentry->d_name.name, nid, d_type);
+		inode = erofs_iget(dir->i_sb, nid, d_type == EROFS_FT_DIR);
+	}
+	return d_splice_alias(inode, dentry);
+}
+
+const struct inode_operations erofs_dir_iops = {
+	.lookup = erofs_lookup,
+	.getattr = erofs_getattr,
+};
+
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
