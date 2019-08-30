Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 62266A2D71
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Aug 2019 05:39:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9069226337;
	Fri, 30 Aug 2019 03:39:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4FM+uSigQ-KJ; Fri, 30 Aug 2019 03:39:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B95212630B;
	Fri, 30 Aug 2019 03:39:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 925761BF488
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 03:39:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8F39388269
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 03:39:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y1ID2MzC-2q2 for <devel@linuxdriverproject.org>;
 Fri, 30 Aug 2019 03:39:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C76DC88267
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2019 03:39:29 +0000 (UTC)
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 1E80C5E287575E30FBF5;
 Fri, 30 Aug 2019 11:39:28 +0800 (CST)
Received: from architecture4.huawei.com (10.140.130.215) by smtp.huawei.com
 (10.3.19.211) with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 30 Aug
 2019 11:39:21 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Chao Yu <yuchao0@huawei.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 Christoph Hellwig <hch@infradead.org>, Joe Perches <joe@perches.com>, "Greg
 Kroah-Hartman" <gregkh@linuxfoundation.org>, <devel@driverdev.osuosl.org>
Subject: [PATCH v4 2/7] erofs: some macros are much more readable as a function
Date: Fri, 30 Aug 2019 11:38:32 +0800
Message-ID: <20190830033832.53652-1-gaoxiang25@huawei.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190830033643.51019-2-gaoxiang25@huawei.com>
References: <20190830033643.51019-2-gaoxiang25@huawei.com>
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

As Christoph suggested [1], these macros are much
more readable as a function.

[1] https://lore.kernel.org/r/20190829095954.GB20598@infradead.org/
Reported-by: Christoph Hellwig <hch@infradead.org>
Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
---
v4: a type fix in commit message.
v3: change as Joe suggested,
 https://lore.kernel.org/r/5b2ecf5cec1a6aa3834e9af41886a7fcb18ae86a.camel@perches.com/

 fs/erofs/erofs_fs.h | 24 ++++++++++++++++--------
 fs/erofs/inode.c    |  4 ++--
 fs/erofs/xattr.c    |  2 +-
 3 files changed, 19 insertions(+), 11 deletions(-)

diff --git a/fs/erofs/erofs_fs.h b/fs/erofs/erofs_fs.h
index 2447ad4d0920..0782ba9da623 100644
--- a/fs/erofs/erofs_fs.h
+++ b/fs/erofs/erofs_fs.h
@@ -168,16 +168,24 @@ struct erofs_xattr_entry {
 	char   e_name[0];       /* attribute name */
 } __packed;
 
-#define ondisk_xattr_ibody_size(count)	({\
-	u32 __count = le16_to_cpu(count); \
-	((__count) == 0) ? 0 : \
-	sizeof(struct erofs_xattr_ibody_header) + \
-		sizeof(__u32) * ((__count) - 1); })
+static inline unsigned int erofs_xattr_ibody_size(__le16 d_icount)
+{
+	struct erofs_xattr_ibody_header *ibh;
+	unsigned int icount = le16_to_cpu(d_icount);
+
+	if (!icount)
+		return 0;
+
+	return struct_size(ibh, h_shared_xattrs, icount - 1);
+}
 
 #define EROFS_XATTR_ALIGN(size) round_up(size, sizeof(struct erofs_xattr_entry))
-#define EROFS_XATTR_ENTRY_SIZE(entry) EROFS_XATTR_ALIGN( \
-	sizeof(struct erofs_xattr_entry) + \
-	(entry)->e_name_len + le16_to_cpu((entry)->e_value_size))
+
+static inline unsigned int erofs_xattr_entry_size(struct erofs_xattr_entry *e)
+{
+	return EROFS_XATTR_ALIGN(sizeof(struct erofs_xattr_entry) +
+				 e->e_name_len + le16_to_cpu(e->e_value_size));
+}
 
 /* available compression algorithm types */
 enum {
diff --git a/fs/erofs/inode.c b/fs/erofs/inode.c
index 80f4fe919ee7..cf31554075c9 100644
--- a/fs/erofs/inode.c
+++ b/fs/erofs/inode.c
@@ -29,7 +29,7 @@ static int read_inode(struct inode *inode, void *data)
 		struct erofs_inode_v2 *v2 = data;
 
 		vi->inode_isize = sizeof(struct erofs_inode_v2);
-		vi->xattr_isize = ondisk_xattr_ibody_size(v2->i_xattr_icount);
+		vi->xattr_isize = erofs_xattr_ibody_size(v2->i_xattr_icount);
 
 		inode->i_mode = le16_to_cpu(v2->i_mode);
 		if (S_ISREG(inode->i_mode) || S_ISDIR(inode->i_mode) ||
@@ -62,7 +62,7 @@ static int read_inode(struct inode *inode, void *data)
 		struct erofs_sb_info *sbi = EROFS_SB(inode->i_sb);
 
 		vi->inode_isize = sizeof(struct erofs_inode_v1);
-		vi->xattr_isize = ondisk_xattr_ibody_size(v1->i_xattr_icount);
+		vi->xattr_isize = erofs_xattr_ibody_size(v1->i_xattr_icount);
 
 		inode->i_mode = le16_to_cpu(v1->i_mode);
 		if (S_ISREG(inode->i_mode) || S_ISDIR(inode->i_mode) ||
diff --git a/fs/erofs/xattr.c b/fs/erofs/xattr.c
index a8286998a079..7ef8d4bb45cd 100644
--- a/fs/erofs/xattr.c
+++ b/fs/erofs/xattr.c
@@ -231,7 +231,7 @@ static int xattr_foreach(struct xattr_iter *it,
 	 */
 	entry = *(struct erofs_xattr_entry *)(it->kaddr + it->ofs);
 	if (tlimit) {
-		unsigned int entry_sz = EROFS_XATTR_ENTRY_SIZE(&entry);
+		unsigned int entry_sz = erofs_xattr_entry_size(&entry);
 
 		/* xattr on-disk corruption: xattr entry beyond xattr_isize */
 		if (unlikely(*tlimit < entry_sz)) {
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
