Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4728978548
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Jul 2019 08:52:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AF8DB8850A;
	Mon, 29 Jul 2019 06:52:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BvzxI4Us9rYi; Mon, 29 Jul 2019 06:52:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2432A883F0;
	Mon, 29 Jul 2019 06:52:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 347061BF40D
 for <devel@linuxdriverproject.org>; Mon, 29 Jul 2019 06:52:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 31894883B8
 for <devel@linuxdriverproject.org>; Mon, 29 Jul 2019 06:52:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XaCOcfBRt-fl for <devel@linuxdriverproject.org>;
 Mon, 29 Jul 2019 06:52:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9FC2B883F0
 for <devel@driverdev.osuosl.org>; Mon, 29 Jul 2019 06:52:28 +0000 (UTC)
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 11FA1FD40DBE7A999088;
 Mon, 29 Jul 2019 14:52:25 +0800 (CST)
Received: from architecture4.huawei.com (10.140.130.215) by smtp.huawei.com
 (10.3.19.210) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 29 Jul
 2019 14:52:18 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 <devel@driverdev.osuosl.org>
Subject: [PATCH 04/22] staging: erofs: keep up erofs_fs.h with
 erofs-outofstaging patchset
Date: Mon, 29 Jul 2019 14:51:41 +0800
Message-ID: <20190729065159.62378-5-gaoxiang25@huawei.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190729065159.62378-1-gaoxiang25@huawei.com>
References: <20190729065159.62378-1-gaoxiang25@huawei.com>
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

The main change is to reserve all checksums except for superblock,
since it's more useful to do block-based verity for read-only fs.

Some comments change as well, which is minor.

Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
---
 drivers/staging/erofs/erofs_fs.h | 39 ++++++++++++++++----------------
 1 file changed, 19 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/erofs/erofs_fs.h b/drivers/staging/erofs/erofs_fs.h
index 9cd749d56920..e82e833985e4 100644
--- a/drivers/staging/erofs/erofs_fs.h
+++ b/drivers/staging/erofs/erofs_fs.h
@@ -96,7 +96,7 @@ struct erofs_inode_v1 {
 /* 20 */__le32 i_ino;           /* only used for 32-bit stat compatibility */
 /* 24 */__le16 i_uid;
 /* 26 */__le16 i_gid;
-/* 28 */__le32 i_checksum;
+/* 28 */__le32 i_reserved2;
 } __packed;
 
 /* 32 bytes on-disk inode */
@@ -105,14 +105,14 @@ struct erofs_inode_v1 {
 #define EROFS_INODE_LAYOUT_V2   1
 
 struct erofs_inode_v2 {
-	__le16 i_advise;
+/*  0 */__le16 i_advise;
 
-	/* 1 header + n-1 * 4 bytes inline xattr to keep continuity */
-	__le16 i_xattr_icount;
-	__le16 i_mode;
-	__le16 i_reserved;      /* 8 bytes */
-	__le64 i_size;          /* 16 bytes */
-	union {
+/* 1 header + n-1 * 4 bytes inline xattr to keep continuity */
+/*  2 */__le16 i_xattr_icount;
+/*  4 */__le16 i_mode;
+/*  6 */__le16 i_reserved;
+/*  8 */__le64 i_size;
+/* 16 */union {
 		/* file total compressed blocks for data mapping 1 */
 		__le32 compressed_blocks;
 		__le32 raw_blkaddr;
@@ -122,16 +122,15 @@ struct erofs_inode_v2 {
 	} i_u __packed;
 
 	/* only used for 32-bit stat compatibility */
-	__le32 i_ino;           /* 24 bytes */
-
-	__le32 i_uid;
-	__le32 i_gid;
-	__le64 i_ctime;         /* 32 bytes */
-	__le32 i_ctime_nsec;
-	__le32 i_nlink;
-	__u8   i_reserved2[12];
-	__le32 i_checksum;      /* 64 bytes */
-} __packed;
+/* 20 */__le32 i_ino;
+
+/* 24 */__le32 i_uid;
+/* 28 */__le32 i_gid;
+/* 32 */__le64 i_ctime;
+/* 40 */__le32 i_ctime_nsec;
+/* 44 */__le32 i_nlink;
+/* 48 */__u8   i_reserved2[16];
+} __packed;                     /* 64 bytes */
 
 #define EROFS_MAX_SHARED_XATTRS         (128)
 /* h_shared_count between 129 ... 255 are special # */
@@ -149,9 +148,9 @@ struct erofs_inode_v2 {
  * for read-only fs, no need to introduce h_refcount
  */
 struct erofs_xattr_ibody_header {
-	__le32 h_checksum;
+	__le32 h_reserved;
 	__u8   h_shared_count;
-	__u8   h_reserved[7];
+	__u8   h_reserved2[7];
 	__le32 h_shared_xattrs[0];      /* shared xattr id array */
 } __packed;
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
