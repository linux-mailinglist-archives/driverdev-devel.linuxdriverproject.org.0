Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D3EDC7A1B8
	for <lists+driverdev-devel@lfdr.de>; Tue, 30 Jul 2019 09:15:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7381B2079A;
	Tue, 30 Jul 2019 07:15:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JMaWvCI9GLz0; Tue, 30 Jul 2019 07:15:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9D36520778;
	Tue, 30 Jul 2019 07:14:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AF4951BF2FA
 for <devel@linuxdriverproject.org>; Tue, 30 Jul 2019 07:14:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AB07620527
 for <devel@linuxdriverproject.org>; Tue, 30 Jul 2019 07:14:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IAtFdOtjTrNc for <devel@linuxdriverproject.org>;
 Tue, 30 Jul 2019 07:14:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by silver.osuosl.org (Postfix) with ESMTPS id 27F4C2052B
 for <devel@driverdev.osuosl.org>; Tue, 30 Jul 2019 07:14:50 +0000 (UTC)
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 9AADAACBD89F83AAC19A;
 Tue, 30 Jul 2019 15:14:46 +0800 (CST)
Received: from architecture4.huawei.com (10.140.130.215) by smtp.huawei.com
 (10.3.19.210) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 30 Jul
 2019 15:14:39 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Alexander Viro <viro@zeniv.linux.org.uk>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Andrew Morton <akpm@linux-foundation.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>, Theodore Ts'o <tytso@mit.edu>,
 "David Sterba" <dsterba@suse.cz>, Amir Goldstein <amir73il@gmail.com>,
 "Christoph Hellwig" <hch@infradead.org>, "Darrick J . Wong"
 <darrick.wong@oracle.com>, Dave Chinner <david@fromorbit.com>, Jaegeuk Kim
 <jaegeuk@kernel.org>, "Jan Kara" <jack@suse.cz>, Linus Torvalds
 <torvalds@linux-foundation.org>
Subject: [PATCH v5 06/24] erofs: support special inode
Date: Tue, 30 Jul 2019 15:13:55 +0800
Message-ID: <20190730071413.11871-7-gaoxiang25@huawei.com>
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

This patch adds to support special inode, such as
block dev, char, socket, pipe inode.

Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
---
 fs/erofs/inode.c | 27 +++++++++++++++++++++++++--
 1 file changed, 25 insertions(+), 2 deletions(-)

diff --git a/fs/erofs/inode.c b/fs/erofs/inode.c
index b6ea997bc4ae..637bf6e4de44 100644
--- a/fs/erofs/inode.c
+++ b/fs/erofs/inode.c
@@ -34,7 +34,16 @@ static int read_inode(struct inode *inode, void *data)
 		vi->xattr_isize = ondisk_xattr_ibody_size(v2->i_xattr_icount);
 
 		inode->i_mode = le16_to_cpu(v2->i_mode);
-		vi->raw_blkaddr = le32_to_cpu(v2->i_u.raw_blkaddr);
+		if (S_ISREG(inode->i_mode) || S_ISDIR(inode->i_mode) ||
+		    S_ISLNK(inode->i_mode))
+			vi->raw_blkaddr = le32_to_cpu(v2->i_u.raw_blkaddr);
+		else if (S_ISCHR(inode->i_mode) || S_ISBLK(inode->i_mode))
+			inode->i_rdev =
+				new_decode_dev(le32_to_cpu(v2->i_u.rdev));
+		else if (S_ISFIFO(inode->i_mode) || S_ISSOCK(inode->i_mode))
+			inode->i_rdev = 0;
+		else
+			return -EIO;
 
 		i_uid_write(inode, le32_to_cpu(v2->i_uid));
 		i_gid_write(inode, le32_to_cpu(v2->i_gid));
@@ -58,7 +67,16 @@ static int read_inode(struct inode *inode, void *data)
 		vi->xattr_isize = ondisk_xattr_ibody_size(v1->i_xattr_icount);
 
 		inode->i_mode = le16_to_cpu(v1->i_mode);
-		vi->raw_blkaddr = le32_to_cpu(v1->i_u.raw_blkaddr);
+		if (S_ISREG(inode->i_mode) || S_ISDIR(inode->i_mode) ||
+		    S_ISLNK(inode->i_mode))
+			vi->raw_blkaddr = le32_to_cpu(v1->i_u.raw_blkaddr);
+		else if (S_ISCHR(inode->i_mode) || S_ISBLK(inode->i_mode))
+			inode->i_rdev =
+				new_decode_dev(le32_to_cpu(v1->i_u.rdev));
+		else if (S_ISFIFO(inode->i_mode) || S_ISSOCK(inode->i_mode))
+			inode->i_rdev = 0;
+		else
+			return -EIO;
 
 		i_uid_write(inode, le16_to_cpu(v1->i_uid));
 		i_gid_write(inode, le16_to_cpu(v1->i_gid));
@@ -176,6 +194,11 @@ static int fill_inode(struct inode *inode, int isdir)
 			/* by default, page_get_link is used for symlink */
 			inode->i_op = &erofs_symlink_iops;
 			inode_nohighmem(inode);
+		} else if (S_ISCHR(inode->i_mode) || S_ISBLK(inode->i_mode) ||
+			S_ISFIFO(inode->i_mode) || S_ISSOCK(inode->i_mode)) {
+			inode->i_op = &erofs_generic_iops;
+			init_special_inode(inode, inode->i_mode, inode->i_rdev);
+			goto out_unlock;
 		} else {
 			err = -EIO;
 			goto out_unlock;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
