Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id ED235A7866
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Sep 2019 04:10:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9AD51869E3;
	Wed,  4 Sep 2019 02:10:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0lIeyv5WxpiH; Wed,  4 Sep 2019 02:10:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E468F869C8;
	Wed,  4 Sep 2019 02:10:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AE8CE1BF4DB
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 02:10:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AABED88251
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 02:10:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2Fi8xci4exsY for <devel@linuxdriverproject.org>;
 Wed,  4 Sep 2019 02:10:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F16AA880E0
 for <devel@driverdev.osuosl.org>; Wed,  4 Sep 2019 02:10:22 +0000 (UTC)
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 60BE85B9F2CE80E7185B;
 Wed,  4 Sep 2019 10:10:20 +0800 (CST)
Received: from architecture4.huawei.com (10.140.130.215) by smtp.huawei.com
 (10.3.19.211) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 4 Sep 2019
 10:10:11 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Chao Yu <yuchao0@huawei.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Christoph Hellwig <hch@lst.de>,
 <devel@driverdev.osuosl.org>
Subject: [PATCH v2 06/25] erofs: use feature_incompat rather than requirements
Date: Wed, 4 Sep 2019 10:08:53 +0800
Message-ID: <20190904020912.63925-7-gaoxiang25@huawei.com>
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

As Christoph said [1], "This is only cosmetic, why
not stick to feature_compat and feature_incompat?"

In my thought, requirements means "incompatible"
instead of "feature" though.

[1] https://lore.kernel.org/r/20190902125109.GA9826@infradead.org/
Reported-by: Christoph Hellwig <hch@infradead.org>
Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
---
 fs/erofs/decompressor.c |  3 ++-
 fs/erofs/erofs_fs.h     | 12 ++++++------
 fs/erofs/internal.h     |  2 +-
 fs/erofs/super.c        | 10 +++++-----
 4 files changed, 14 insertions(+), 13 deletions(-)

diff --git a/fs/erofs/decompressor.c b/fs/erofs/decompressor.c
index df349888f911..555c04730f87 100644
--- a/fs/erofs/decompressor.c
+++ b/fs/erofs/decompressor.c
@@ -129,7 +129,8 @@ static int lz4_decompress(struct z_erofs_decompress_req *rq, u8 *out)
 	support_0padding = false;
 
 	/* decompression inplace is only safe when 0padding is enabled */
-	if (EROFS_SB(rq->sb)->requirements & EROFS_REQUIREMENT_LZ4_0PADDING) {
+	if (EROFS_SB(rq->sb)->feature_incompat &
+	    EROFS_FEATURE_INCOMPAT_LZ4_0PADDING) {
 		support_0padding = true;
 
 		while (!src[inputmargin & ~PAGE_MASK])
diff --git a/fs/erofs/erofs_fs.h b/fs/erofs/erofs_fs.h
index 87d7ae82339a..b2aef3bc377d 100644
--- a/fs/erofs/erofs_fs.h
+++ b/fs/erofs/erofs_fs.h
@@ -11,17 +11,17 @@
 #define EROFS_SUPER_OFFSET      1024
 
 /*
- * Any bits that aren't in EROFS_ALL_REQUIREMENTS should be
- * incompatible with this kernel version.
+ * Any bits that aren't in EROFS_ALL_FEATURE_INCOMPAT should
+ * be incompatible with this kernel version.
  */
-#define EROFS_REQUIREMENT_LZ4_0PADDING	0x00000001
-#define EROFS_ALL_REQUIREMENTS		EROFS_REQUIREMENT_LZ4_0PADDING
+#define EROFS_FEATURE_INCOMPAT_LZ4_0PADDING	0x00000001
+#define EROFS_ALL_FEATURE_INCOMPAT		EROFS_FEATURE_INCOMPAT_LZ4_0PADDING
 
 /* 128-byte erofs on-disk super block */
 struct erofs_super_block {
 	__le32 magic;           /* file system magic number */
 	__le32 checksum;        /* crc32c(super_block) */
-	__le32 features;        /* (aka. feature_compat) */
+	__le32 feature_compat;
 	__u8 blkszbits;         /* support block_size == PAGE_SIZE only */
 	__u8 reserved;
 
@@ -35,7 +35,7 @@ struct erofs_super_block {
 	__le32 xattr_blkaddr;	/* start block address of shared xattr area */
 	__u8 uuid[16];          /* 128-bit uuid for volume */
 	__u8 volume_name[16];   /* volume name */
-	__le32 requirements;    /* (aka. feature_incompat) */
+	__le32 feature_incompat;
 
 	__u8 reserved2[44];
 };
diff --git a/fs/erofs/internal.h b/fs/erofs/internal.h
index 141ea424587d..7ff36f404ec3 100644
--- a/fs/erofs/internal.h
+++ b/fs/erofs/internal.h
@@ -96,7 +96,7 @@ struct erofs_sb_info {
 
 	u8 uuid[16];                    /* 128-bit uuid for volume */
 	u8 volume_name[16];             /* volume name */
-	u32 requirements;
+	u32 feature_incompat;
 
 	unsigned int mount_opt;
 
diff --git a/fs/erofs/super.c b/fs/erofs/super.c
index 6603f0ba8905..6a7ab194783c 100644
--- a/fs/erofs/super.c
+++ b/fs/erofs/super.c
@@ -67,14 +67,14 @@ static void free_inode(struct inode *inode)
 static bool check_layout_compatibility(struct super_block *sb,
 				       struct erofs_super_block *layout)
 {
-	const unsigned int requirements = le32_to_cpu(layout->requirements);
+	const unsigned int feature = le32_to_cpu(layout->feature_incompat);
 
-	EROFS_SB(sb)->requirements = requirements;
+	EROFS_SB(sb)->feature_incompat = feature;
 
 	/* check if current kernel meets all mandatory requirements */
-	if (requirements & (~EROFS_ALL_REQUIREMENTS)) {
-		errln("unidentified requirements %x, please upgrade kernel version",
-		      requirements & ~EROFS_ALL_REQUIREMENTS);
+	if (feature & (~EROFS_ALL_FEATURE_INCOMPAT)) {
+		errln("unidentified incompatible feature %x, please upgrade kernel version",
+		      feature & ~EROFS_ALL_FEATURE_INCOMPAT);
 		return false;
 	}
 	return true;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
