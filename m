Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F9718FBCA
	for <lists+driverdev-devel@lfdr.de>; Fri, 16 Aug 2019 09:12:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D06B386A14;
	Fri, 16 Aug 2019 07:12:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tROptgwO9XUu; Fri, 16 Aug 2019 07:12:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 56A9F869F6;
	Fri, 16 Aug 2019 07:12:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1A02C1BF354
 for <devel@linuxdriverproject.org>; Fri, 16 Aug 2019 07:12:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1333A86D78
 for <devel@linuxdriverproject.org>; Fri, 16 Aug 2019 07:12:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RR1yKBtTWhgj for <devel@linuxdriverproject.org>;
 Fri, 16 Aug 2019 07:12:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DEFD986D37
 for <devel@driverdev.osuosl.org>; Fri, 16 Aug 2019 07:12:28 +0000 (UTC)
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 0B2F5E6B3FC0967671C6;
 Fri, 16 Aug 2019 15:12:25 +0800 (CST)
Received: from architecture4.huawei.com (10.140.130.215) by smtp.huawei.com
 (10.3.19.202) with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 16 Aug
 2019 15:12:16 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Chao Yu <yuchao0@huawei.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, <devel@driverdev.osuosl.org>,
 <linux-fsdevel@vger.kernel.org>
Subject: [PATCH] staging: erofs: use common file type conversion
Date: Fri, 16 Aug 2019 15:11:42 +0800
Message-ID: <20190816071142.8633-1-gaoxiang25@huawei.com>
X-Mailer: git-send-email 2.17.1
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
Cc: Miao Xie <miaoxie@huawei.com>, Chao Yu <chao@kernel.org>,
 linux-erofs@lists.ozlabs.org, LKML <linux-kernel@vger.kernel.org>,
 weidu.du@huawei.com, Fang Wei <fangwei1@huawei.com>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Deduplicate the EROFS file type conversion implementation and
remove EROFS_FT_* definitions since it's the same as defined
by POSIX, let's follow ext2 as Linus pointed out [1]
commit e10892189428 ("ext2: use common file type conversion").

[1] https://lore.kernel.org/r/CAHk-=wiUs+b=iVKM3mVooXgVk7cmmC67KTmnAuL0cd_cMMVAKw@mail.gmail.com/

Reported-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
---
 drivers/staging/erofs/dir.c      | 16 +---------------
 drivers/staging/erofs/erofs_fs.h | 17 +++++------------
 drivers/staging/erofs/namei.c    |  2 +-
 3 files changed, 7 insertions(+), 28 deletions(-)

diff --git a/drivers/staging/erofs/dir.c b/drivers/staging/erofs/dir.c
index 01efc96e1212..5f38382637e6 100644
--- a/drivers/staging/erofs/dir.c
+++ b/drivers/staging/erofs/dir.c
@@ -8,17 +8,6 @@
  */
 #include "internal.h"
 
-static const unsigned char erofs_filetype_table[EROFS_FT_MAX] = {
-	[EROFS_FT_UNKNOWN]	= DT_UNKNOWN,
-	[EROFS_FT_REG_FILE]	= DT_REG,
-	[EROFS_FT_DIR]		= DT_DIR,
-	[EROFS_FT_CHRDEV]	= DT_CHR,
-	[EROFS_FT_BLKDEV]	= DT_BLK,
-	[EROFS_FT_FIFO]		= DT_FIFO,
-	[EROFS_FT_SOCK]		= DT_SOCK,
-	[EROFS_FT_SYMLINK]	= DT_LNK,
-};
-
 static void debug_one_dentry(unsigned char d_type, const char *de_name,
 			     unsigned int de_namelen)
 {
@@ -46,10 +35,7 @@ static int erofs_fill_dentries(struct inode *dir, struct dir_context *ctx,
 		unsigned int de_namelen;
 		unsigned char d_type;
 
-		if (de->file_type < EROFS_FT_MAX)
-			d_type = erofs_filetype_table[de->file_type];
-		else
-			d_type = DT_UNKNOWN;
+		d_type = fs_ftype_to_dtype(de->file_type);
 
 		nameoff = le16_to_cpu(de->nameoff);
 		de_name = (char *)dentry_blk + nameoff;
diff --git a/drivers/staging/erofs/erofs_fs.h b/drivers/staging/erofs/erofs_fs.h
index 8dc2a75e478f..6db70f395937 100644
--- a/drivers/staging/erofs/erofs_fs.h
+++ b/drivers/staging/erofs/erofs_fs.h
@@ -282,18 +282,11 @@ struct erofs_dirent {
 	__u8 reserved;  /* 11, reserved */
 } __packed;
 
-/* file types used in inode_info->flags */
-enum {
-	EROFS_FT_UNKNOWN,
-	EROFS_FT_REG_FILE,
-	EROFS_FT_DIR,
-	EROFS_FT_CHRDEV,
-	EROFS_FT_BLKDEV,
-	EROFS_FT_FIFO,
-	EROFS_FT_SOCK,
-	EROFS_FT_SYMLINK,
-	EROFS_FT_MAX
-};
+/*
+ * EROFS file types should match generic FT_* types and
+ * it seems no need to add BUILD_BUG_ONs since potential
+ * unmatchness will break other fses as well...
+ */
 
 #define EROFS_NAME_LEN      255
 
diff --git a/drivers/staging/erofs/namei.c b/drivers/staging/erofs/namei.c
index c0963f5a2d22..8334a910acef 100644
--- a/drivers/staging/erofs/namei.c
+++ b/drivers/staging/erofs/namei.c
@@ -237,7 +237,7 @@ static struct dentry *erofs_lookup(struct inode *dir,
 	} else {
 		debugln("%s, %s (nid %llu) found, d_type %u", __func__,
 			dentry->d_name.name, nid, d_type);
-		inode = erofs_iget(dir->i_sb, nid, d_type == EROFS_FT_DIR);
+		inode = erofs_iget(dir->i_sb, nid, d_type == FT_DIR);
 	}
 	return d_splice_alias(inode, dentry);
 }
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
