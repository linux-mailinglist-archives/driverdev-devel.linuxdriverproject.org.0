Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B3CDAA7873
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Sep 2019 04:10:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 61DF5869EC;
	Wed,  4 Sep 2019 02:10:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NVTW9RBxmy-Y; Wed,  4 Sep 2019 02:10:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1C404869C0;
	Wed,  4 Sep 2019 02:10:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A7F3F1BF983
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 02:10:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 999FB8789A
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 02:10:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CYC+WFLXCGPS for <devel@linuxdriverproject.org>;
 Wed,  4 Sep 2019 02:10:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga06-in.huawei.com [45.249.212.32])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 30770878A9
 for <devel@driverdev.osuosl.org>; Wed,  4 Sep 2019 02:10:27 +0000 (UTC)
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 7F8A3CC9CCE41AD6FC5E;
 Wed,  4 Sep 2019 10:10:25 +0800 (CST)
Received: from architecture4.huawei.com (10.140.130.215) by smtp.huawei.com
 (10.3.19.211) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 4 Sep 2019
 10:10:19 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Chao Yu <yuchao0@huawei.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Christoph Hellwig <hch@lst.de>,
 <devel@driverdev.osuosl.org>
Subject: [PATCH v2 13/25] erofs: use dsb instead of layout for ondisk
 super_block
Date: Wed, 4 Sep 2019 10:09:00 +0800
Message-ID: <20190904020912.63925-14-gaoxiang25@huawei.com>
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

As Christoph pointed out [1], "Why is the variable name
for the on-disk subperblock layout? We usually still
calls this something with sb in the name, e.g. dsb.
for disksuper block. " Let's fix it.

[1] https://lore.kernel.org/r/20190829101545.GC20598@infradead.org/
Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
---
 fs/erofs/super.c | 35 +++++++++++++++++------------------
 1 file changed, 17 insertions(+), 18 deletions(-)

diff --git a/fs/erofs/super.c b/fs/erofs/super.c
index b8b0e35f6621..63cb17a4073b 100644
--- a/fs/erofs/super.c
+++ b/fs/erofs/super.c
@@ -49,9 +49,9 @@ static void free_inode(struct inode *inode)
 }
 
 static bool check_layout_compatibility(struct super_block *sb,
-				       struct erofs_super_block *layout)
+				       struct erofs_super_block *dsb)
 {
-	const unsigned int feature = le32_to_cpu(layout->feature_incompat);
+	const unsigned int feature = le32_to_cpu(dsb->feature_incompat);
 
 	EROFS_SB(sb)->feature_incompat = feature;
 
@@ -68,7 +68,7 @@ static int superblock_read(struct super_block *sb)
 {
 	struct erofs_sb_info *sbi;
 	struct buffer_head *bh;
-	struct erofs_super_block *layout;
+	struct erofs_super_block *dsb;
 	unsigned int blkszbits;
 	int ret;
 
@@ -80,16 +80,15 @@ static int superblock_read(struct super_block *sb)
 	}
 
 	sbi = EROFS_SB(sb);
-	layout = (struct erofs_super_block *)((u8 *)bh->b_data
-		 + EROFS_SUPER_OFFSET);
+	dsb = (struct erofs_super_block *)(bh->b_data + EROFS_SUPER_OFFSET);
 
 	ret = -EINVAL;
-	if (le32_to_cpu(layout->magic) != EROFS_SUPER_MAGIC_V1) {
+	if (le32_to_cpu(dsb->magic) != EROFS_SUPER_MAGIC_V1) {
 		errln("cannot find valid erofs superblock");
 		goto out;
 	}
 
-	blkszbits = layout->blkszbits;
+	blkszbits = dsb->blkszbits;
 	/* 9(512 bytes) + LOG_SECTORS_PER_BLOCK == LOG_BLOCK_SIZE */
 	if (blkszbits != LOG_BLOCK_SIZE) {
 		errln("blksize %u isn't supported on this platform",
@@ -97,25 +96,25 @@ static int superblock_read(struct super_block *sb)
 		goto out;
 	}
 
-	if (!check_layout_compatibility(sb, layout))
+	if (!check_layout_compatibility(sb, dsb))
 		goto out;
 
-	sbi->blocks = le32_to_cpu(layout->blocks);
-	sbi->meta_blkaddr = le32_to_cpu(layout->meta_blkaddr);
+	sbi->blocks = le32_to_cpu(dsb->blocks);
+	sbi->meta_blkaddr = le32_to_cpu(dsb->meta_blkaddr);
 #ifdef CONFIG_EROFS_FS_XATTR
-	sbi->xattr_blkaddr = le32_to_cpu(layout->xattr_blkaddr);
+	sbi->xattr_blkaddr = le32_to_cpu(dsb->xattr_blkaddr);
 #endif
 	sbi->islotbits = ilog2(sizeof(struct erofs_inode_compact));
-	sbi->root_nid = le16_to_cpu(layout->root_nid);
-	sbi->inos = le64_to_cpu(layout->inos);
+	sbi->root_nid = le16_to_cpu(dsb->root_nid);
+	sbi->inos = le64_to_cpu(dsb->inos);
 
-	sbi->build_time = le64_to_cpu(layout->build_time);
-	sbi->build_time_nsec = le32_to_cpu(layout->build_time_nsec);
+	sbi->build_time = le64_to_cpu(dsb->build_time);
+	sbi->build_time_nsec = le32_to_cpu(dsb->build_time_nsec);
 
-	memcpy(&sb->s_uuid, layout->uuid, sizeof(layout->uuid));
+	memcpy(&sb->s_uuid, dsb->uuid, sizeof(dsb->uuid));
 
-	ret = strscpy(sbi->volume_name, layout->volume_name,
-		      sizeof(layout->volume_name));
+	ret = strscpy(sbi->volume_name, dsb->volume_name,
+		      sizeof(dsb->volume_name));
 	if (ret < 0) {	/* -E2BIG */
 		errln("bad volume name without NIL terminator");
 		ret = -EFSCORRUPTED;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
