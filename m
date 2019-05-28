Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 79CD32BD41
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 May 2019 04:32:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6498423B9B;
	Tue, 28 May 2019 02:32:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1eN33NuedplI; Tue, 28 May 2019 02:32:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 61E9622091;
	Tue, 28 May 2019 02:32:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D637E1BF28E
 for <devel@linuxdriverproject.org>; Tue, 28 May 2019 02:32:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D334520656
 for <devel@linuxdriverproject.org>; Tue, 28 May 2019 02:32:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oX8xZSYXHqqw for <devel@linuxdriverproject.org>;
 Tue, 28 May 2019 02:32:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by silver.osuosl.org (Postfix) with ESMTPS id 84DB51FFC1
 for <devel@driverdev.osuosl.org>; Tue, 28 May 2019 02:32:43 +0000 (UTC)
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id A01172B9E052B8072D83;
 Tue, 28 May 2019 10:32:39 +0800 (CST)
Received: from architecture4.huawei.com (10.140.130.215) by smtp.huawei.com
 (10.3.19.212) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 28 May
 2019 10:32:29 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Chao Yu <yuchao0@huawei.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, <devel@driverdev.osuosl.org>
Subject: [PATCH 2/2] staging: erofs: fix i_blocks calculation
Date: Tue, 28 May 2019 10:31:47 +0800
Message-ID: <20190528023147.94117-2-gaoxiang25@huawei.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190528023147.94117-1-gaoxiang25@huawei.com>
References: <20190528023147.94117-1-gaoxiang25@huawei.com>
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

For compressed files, i_blocks should not be calculated
by using i_size. i_u.compressed_blocks is used instead.

In addition, i_blocks is miscalculated for non-compressed
files previously, fix it as well.

Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
---
 drivers/staging/erofs/inode.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/erofs/inode.c b/drivers/staging/erofs/inode.c
index 8da144943ed6..b1b790767089 100644
--- a/drivers/staging/erofs/inode.c
+++ b/drivers/staging/erofs/inode.c
@@ -20,6 +20,7 @@ static int read_inode(struct inode *inode, void *data)
 	struct erofs_vnode *vi = EROFS_V(inode);
 	struct erofs_inode_v1 *v1 = data;
 	const unsigned int advise = le16_to_cpu(v1->i_advise);
+	erofs_blk_t nblks = 0;
 
 	vi->data_mapping_mode = __inode_data_mapping(advise);
 
@@ -60,6 +61,10 @@ static int read_inode(struct inode *inode, void *data)
 			le32_to_cpu(v2->i_ctime_nsec);
 
 		inode->i_size = le64_to_cpu(v2->i_size);
+
+		/* total blocks for compressed files */
+		if (vi->data_mapping_mode == EROFS_INODE_LAYOUT_COMPRESSION)
+			nblks = v2->i_u.compressed_blocks;
 	} else if (__inode_version(advise) == EROFS_INODE_LAYOUT_V1) {
 		struct erofs_sb_info *sbi = EROFS_SB(inode->i_sb);
 
@@ -90,6 +95,8 @@ static int read_inode(struct inode *inode, void *data)
 			sbi->build_time_nsec;
 
 		inode->i_size = le32_to_cpu(v1->i_size);
+		if (vi->data_mapping_mode == EROFS_INODE_LAYOUT_COMPRESSION)
+			nblks = v1->i_u.compressed_blocks;
 	} else {
 		errln("unsupported on-disk inode version %u of nid %llu",
 		      __inode_version(advise), vi->nid);
@@ -97,8 +104,11 @@ static int read_inode(struct inode *inode, void *data)
 		return -EIO;
 	}
 
-	/* measure inode.i_blocks as the generic filesystem */
-	inode->i_blocks = ((inode->i_size - 1) >> 9) + 1;
+	if (!nblks)
+		/* measure inode.i_blocks as generic filesystems */
+		inode->i_blocks = roundup(inode->i_size, EROFS_BLKSIZ) >> 9;
+	else
+		inode->i_blocks = nblks >> LOG_SECTORS_PER_BLOCK;
 	return 0;
 }
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
