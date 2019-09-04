Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 01535A7886
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Sep 2019 04:11:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A4AA7869EA;
	Wed,  4 Sep 2019 02:10:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s5ml2yPjXouq; Wed,  4 Sep 2019 02:10:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F02C686A24;
	Wed,  4 Sep 2019 02:10:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1BF131BF4DB
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 02:10:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1155087885
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 02:10:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k0T+I9SMNSk4 for <devel@linuxdriverproject.org>;
 Wed,  4 Sep 2019 02:10:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga06-in.huawei.com [45.249.212.32])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C4BDF878C1
 for <devel@driverdev.osuosl.org>; Wed,  4 Sep 2019 02:10:40 +0000 (UTC)
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 060AAA4F430BAAEEEBB4;
 Wed,  4 Sep 2019 10:10:39 +0800 (CST)
Received: from architecture4.huawei.com (10.140.130.215) by smtp.huawei.com
 (10.3.19.211) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 4 Sep 2019
 10:10:28 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Chao Yu <yuchao0@huawei.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Christoph Hellwig <hch@lst.de>,
 <devel@driverdev.osuosl.org>
Subject: [PATCH v2 21/25] erofs: save one level of indentation
Date: Wed, 4 Sep 2019 10:09:08 +0800
Message-ID: <20190904020912.63925-22-gaoxiang25@huawei.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190904020912.63925-1-gaoxiang25@huawei.com>
References: <20190901055130.30572-1-hsiangkao@aol.com>
 <20190904020912.63925-1-gaoxiang25@huawei.com>
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
Cc: linux-fsdevel@vger.kernel.org, Miao Xie <miaoxie@huawei.com>,
 Chao Yu <chao@kernel.org>, linux-erofs@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

As Christoph said [1], ".. and save one
level of indentation."

[1] https://lore.kernel.org/r/20190829102426.GE20598@infradead.org/
Reported-by: Christoph Hellwig <hch@infradead.org>
Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
---
 fs/erofs/inode.c | 65 ++++++++++++++++++++++++------------------------
 1 file changed, 33 insertions(+), 32 deletions(-)

diff --git a/fs/erofs/inode.c b/fs/erofs/inode.c
index 8e53765a532c..5a6d3282fefb 100644
--- a/fs/erofs/inode.c
+++ b/fs/erofs/inode.c
@@ -193,41 +193,42 @@ static int erofs_fill_inode(struct inode *inode, int isdir)
 	data = page_address(page);
 
 	err = erofs_read_inode(inode, data + ofs);
-	if (!err) {
-		/* setup the new inode */
-		switch (inode->i_mode & S_IFMT) {
-		case S_IFREG:
-			inode->i_op = &erofs_generic_iops;
-			inode->i_fop = &generic_ro_fops;
-			break;
-		case S_IFDIR:
-			inode->i_op = &erofs_dir_iops;
-			inode->i_fop = &erofs_dir_fops;
-			break;
-		case S_IFLNK:
-			err = erofs_fill_symlink(inode, data, ofs);
-			if (err)
-				goto out_unlock;
-			inode_nohighmem(inode);
-			break;
-		case S_IFCHR:
-		case S_IFBLK:
-		case S_IFIFO:
-		case S_IFSOCK:
-			inode->i_op = &erofs_generic_iops;
-			init_special_inode(inode, inode->i_mode, inode->i_rdev);
-			goto out_unlock;
-		default:
-			err = -EFSCORRUPTED;
+	if (err)
+		goto out_unlock;
+
+	/* setup the new inode */
+	switch (inode->i_mode & S_IFMT) {
+	case S_IFREG:
+		inode->i_op = &erofs_generic_iops;
+		inode->i_fop = &generic_ro_fops;
+		break;
+	case S_IFDIR:
+		inode->i_op = &erofs_dir_iops;
+		inode->i_fop = &erofs_dir_fops;
+		break;
+	case S_IFLNK:
+		err = erofs_fill_symlink(inode, data, ofs);
+		if (err)
 			goto out_unlock;
-		}
+		inode_nohighmem(inode);
+		break;
+	case S_IFCHR:
+	case S_IFBLK:
+	case S_IFIFO:
+	case S_IFSOCK:
+		inode->i_op = &erofs_generic_iops;
+		init_special_inode(inode, inode->i_mode, inode->i_rdev);
+		goto out_unlock;
+	default:
+		err = -EFSCORRUPTED;
+		goto out_unlock;
+	}
 
-		if (erofs_inode_is_data_compressed(vi->datalayout)) {
-			err = z_erofs_fill_inode(inode);
-			goto out_unlock;
-		}
-		inode->i_mapping->a_ops = &erofs_raw_access_aops;
+	if (erofs_inode_is_data_compressed(vi->datalayout)) {
+		err = z_erofs_fill_inode(inode);
+		goto out_unlock;
 	}
+	inode->i_mapping->a_ops = &erofs_raw_access_aops;
 
 out_unlock:
 	unlock_page(page);
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
