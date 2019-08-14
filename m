Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C57F08D0CB
	for <lists+driverdev-devel@lfdr.de>; Wed, 14 Aug 2019 12:37:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CCBA78757F;
	Wed, 14 Aug 2019 10:37:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s3W1r2s4r5nA; Wed, 14 Aug 2019 10:37:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C0E5E875A9;
	Wed, 14 Aug 2019 10:37:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EA8601BF30C
 for <devel@linuxdriverproject.org>; Wed, 14 Aug 2019 10:37:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E7C0787589
 for <devel@linuxdriverproject.org>; Wed, 14 Aug 2019 10:37:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jLpLWl5rWEz5 for <devel@linuxdriverproject.org>;
 Wed, 14 Aug 2019 10:37:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga06-in.huawei.com [45.249.212.32])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6E5558757F
 for <devel@driverdev.osuosl.org>; Wed, 14 Aug 2019 10:37:50 +0000 (UTC)
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 383BC3802EDB3BCF20C5;
 Wed, 14 Aug 2019 18:37:47 +0800 (CST)
Received: from architecture4.huawei.com (10.140.130.215) by smtp.huawei.com
 (10.3.19.214) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 14 Aug
 2019 18:37:40 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Chao Yu <yuchao0@huawei.com>, Pavel Machek <pavel@denx.de>, "Greg
 Kroah-Hartman" <gregkh@linuxfoundation.org>, <devel@driverdev.osuosl.org>,
 <linux-fsdevel@vger.kernel.org>
Subject: [PATCH v2 3/3] staging: erofs: correct all misused ENOTSUPP
Date: Wed, 14 Aug 2019 18:37:05 +0800
Message-ID: <20190814103705.60698-3-gaoxiang25@huawei.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190814103705.60698-1-gaoxiang25@huawei.com>
References: <20190814103705.60698-1-gaoxiang25@huawei.com>
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
Cc: linux-erofs@lists.ozlabs.org, Chao Yu <chao@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, weidu.du@huawei.com,
 Fang Wei <fangwei1@huawei.com>, Miao Xie <miaoxie@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

As Chao pointed out [1], ENOTSUPP is used for NFS
protocol only, we should use EOPNOTSUPP instead...

[1] https://lore.kernel.org/lkml/108ee2f9-75dd-b8ab-8da7-b81c17bafbf6@huawei.com/

Reported-by: Chao Yu <yuchao0@huawei.com>
Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
---
 drivers/staging/erofs/decompressor.c | 2 +-
 drivers/staging/erofs/internal.h     | 6 +++---
 drivers/staging/erofs/xattr.c        | 2 +-
 drivers/staging/erofs/xattr.h        | 4 ++--
 drivers/staging/erofs/zmap.c         | 8 ++++----
 5 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/erofs/decompressor.c b/drivers/staging/erofs/decompressor.c
index 5361a2bbedb6..32a811ac704a 100644
--- a/drivers/staging/erofs/decompressor.c
+++ b/drivers/staging/erofs/decompressor.c
@@ -124,7 +124,7 @@ static int lz4_decompress(struct z_erofs_decompress_req *rq, u8 *out)
 	int ret;
 
 	if (rq->inputsize > PAGE_SIZE)
-		return -ENOTSUPP;
+		return -EOPNOTSUPP;
 
 	src = kmap_atomic(*rq->in);
 	inputmargin = 0;
diff --git a/drivers/staging/erofs/internal.h b/drivers/staging/erofs/internal.h
index 12f737cbc0c0..0e8d58546c52 100644
--- a/drivers/staging/erofs/internal.h
+++ b/drivers/staging/erofs/internal.h
@@ -403,12 +403,12 @@ int z_erofs_map_blocks_iter(struct inode *inode,
 			    struct erofs_map_blocks *map,
 			    int flags);
 #else
-static inline int z_erofs_fill_inode(struct inode *inode) { return -ENOTSUPP; }
+static inline int z_erofs_fill_inode(struct inode *inode) { return -EOPNOTSUPP; }
 static inline int z_erofs_map_blocks_iter(struct inode *inode,
 					  struct erofs_map_blocks *map,
 					  int flags)
 {
-	return -ENOTSUPP;
+	return -EOPNOTSUPP;
 }
 #endif	/* !CONFIG_EROFS_FS_ZIP */
 
@@ -516,7 +516,7 @@ void *erofs_get_pcpubuf(unsigned int pagenr);
 #else
 static inline void *erofs_get_pcpubuf(unsigned int pagenr)
 {
-	return ERR_PTR(-ENOTSUPP);
+	return ERR_PTR(-EOPNOTSUPP);
 }
 
 #define erofs_put_pcpubuf(buf) do {} while (0)
diff --git a/drivers/staging/erofs/xattr.c b/drivers/staging/erofs/xattr.c
index c5bfc9be412f..e7e5840e3f9d 100644
--- a/drivers/staging/erofs/xattr.c
+++ b/drivers/staging/erofs/xattr.c
@@ -71,7 +71,7 @@ static int init_inode_xattrs(struct inode *inode)
 	if (vi->xattr_isize == sizeof(struct erofs_xattr_ibody_header)) {
 		errln("xattr_isize %d of nid %llu is not supported yet",
 		      vi->xattr_isize, vi->nid);
-		ret = -ENOTSUPP;
+		ret = -EOPNOTSUPP;
 		goto out_unlock;
 	} else if (vi->xattr_isize < sizeof(struct erofs_xattr_ibody_header)) {
 		if (unlikely(vi->xattr_isize)) {
diff --git a/drivers/staging/erofs/xattr.h b/drivers/staging/erofs/xattr.h
index 63cc87e3d3f4..e20249647541 100644
--- a/drivers/staging/erofs/xattr.h
+++ b/drivers/staging/erofs/xattr.h
@@ -74,13 +74,13 @@ static inline int erofs_getxattr(struct inode *inode, int index,
 				 const char *name, void *buffer,
 				 size_t buffer_size)
 {
-	return -ENOTSUPP;
+	return -EOPNOTSUPP;
 }
 
 static inline ssize_t erofs_listxattr(struct dentry *dentry,
 				      char *buffer, size_t buffer_size)
 {
-	return -ENOTSUPP;
+	return -EOPNOTSUPP;
 }
 #endif	/* !CONFIG_EROFS_FS_XATTR */
 
diff --git a/drivers/staging/erofs/zmap.c b/drivers/staging/erofs/zmap.c
index 5551e615e8ea..b61b9b5950ac 100644
--- a/drivers/staging/erofs/zmap.c
+++ b/drivers/staging/erofs/zmap.c
@@ -68,7 +68,7 @@ static int fill_inode_lazy(struct inode *inode)
 	if (vi->z_algorithmtype[0] >= Z_EROFS_COMPRESSION_MAX) {
 		errln("unknown compression format %u for nid %llu, please upgrade kernel",
 		      vi->z_algorithmtype[0], vi->nid);
-		err = -ENOTSUPP;
+		err = -EOPNOTSUPP;
 		goto unmap_done;
 	}
 
@@ -79,7 +79,7 @@ static int fill_inode_lazy(struct inode *inode)
 	if (vi->z_physical_clusterbits[0] != LOG_BLOCK_SIZE) {
 		errln("unsupported physical clusterbits %u for nid %llu, please upgrade kernel",
 		      vi->z_physical_clusterbits[0], vi->nid);
-		err = -ENOTSUPP;
+		err = -EOPNOTSUPP;
 		goto unmap_done;
 	}
 
@@ -211,7 +211,7 @@ static int unpack_compacted_index(struct z_erofs_maprecorder *m,
 	else if (1 << amortizedshift == 2 && lclusterbits == 12)
 		vcnt = 16;
 	else
-		return -ENOTSUPP;
+		return -EOPNOTSUPP;
 
 	encodebits = ((vcnt << amortizedshift) - sizeof(__le32)) * 8 / vcnt;
 	base = round_down(eofs, vcnt << amortizedshift);
@@ -275,7 +275,7 @@ static int compacted_load_cluster_from_disk(struct z_erofs_maprecorder *m,
 	int err;
 
 	if (lclusterbits != 12)
-		return -ENOTSUPP;
+		return -EOPNOTSUPP;
 
 	if (lcn >= totalidx)
 		return -EINVAL;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
