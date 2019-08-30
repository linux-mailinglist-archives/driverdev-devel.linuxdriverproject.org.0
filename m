Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FD83A2D64
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Aug 2019 05:37:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8733220419;
	Fri, 30 Aug 2019 03:37:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YvIGs9YQJarX; Fri, 30 Aug 2019 03:37:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E54512630B;
	Fri, 30 Aug 2019 03:37:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 07CFF1BF9BF
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 03:37:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0455B89180
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 03:37:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oFReiJ67zxhz for <devel@linuxdriverproject.org>;
 Fri, 30 Aug 2019 03:37:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 564CA886F7
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2019 03:37:43 +0000 (UTC)
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 172A9FD79D8E817BEFDD;
 Fri, 30 Aug 2019 11:37:40 +0800 (CST)
Received: from architecture4.huawei.com (10.140.130.215) by smtp.huawei.com
 (10.3.19.204) with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 30 Aug
 2019 11:37:32 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Chao Yu <yuchao0@huawei.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 Christoph Hellwig <hch@infradead.org>, Joe Perches <joe@perches.com>, "Greg
 Kroah-Hartman" <gregkh@linuxfoundation.org>, <devel@driverdev.osuosl.org>
Subject: [PATCH v3 3/7] erofs: use a better form for complicated on-disk fields
Date: Fri, 30 Aug 2019 11:36:39 +0800
Message-ID: <20190830033643.51019-3-gaoxiang25@huawei.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190830033643.51019-1-gaoxiang25@huawei.com>
References: <20190830032006.GA20217@architecture4>
 <20190830033643.51019-1-gaoxiang25@huawei.com>
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

As Joe Perches [1] suggested, let's use a better
form to describe complicated on-disk fields.

p.s. it has different tab alignment looking between
     the real file and patch file.
p.p.s. due to changing a different form, some lines
       have to exceed 80 characters.
[1] https://lore.kernel.org/r/67d6efbbc9ac6db23215660cb970b7ef29dc0c1d.camel@perches.com/
Reported-by: Joe Perches <joe@perches.com>
Reviewed-by: Chao Yu <yuchao0@huawei.com>
Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
---
no change.

 fs/erofs/erofs_fs.h | 100 ++++++++++++++++++++++----------------------
 1 file changed, 50 insertions(+), 50 deletions(-)

diff --git a/fs/erofs/erofs_fs.h b/fs/erofs/erofs_fs.h
index 0782ba9da623..fbdaf873d736 100644
--- a/fs/erofs/erofs_fs.h
+++ b/fs/erofs/erofs_fs.h
@@ -17,27 +17,27 @@
 #define EROFS_REQUIREMENT_LZ4_0PADDING	0x00000001
 #define EROFS_ALL_REQUIREMENTS		EROFS_REQUIREMENT_LZ4_0PADDING
 
-struct erofs_super_block {
-/*  0 */__le32 magic;           /* in the little endian */
-/*  4 */__le32 checksum;        /* crc32c(super_block) */
-/*  8 */__le32 features;        /* (aka. feature_compat) */
-/* 12 */__u8 blkszbits;         /* support block_size == PAGE_SIZE only */
-/* 13 */__u8 reserved;
-
-/* 14 */__le16 root_nid;
-/* 16 */__le64 inos;            /* total valid ino # (== f_files - f_favail) */
-
-/* 24 */__le64 build_time;      /* inode v1 time derivation */
-/* 32 */__le32 build_time_nsec;
-/* 36 */__le32 blocks;          /* used for statfs */
-/* 40 */__le32 meta_blkaddr;
-/* 44 */__le32 xattr_blkaddr;
-/* 48 */__u8 uuid[16];          /* 128-bit uuid for volume */
-/* 64 */__u8 volume_name[16];   /* volume name */
-/* 80 */__le32 requirements;    /* (aka. feature_incompat) */
-
-/* 84 */__u8 reserved2[44];
-} __packed;                     /* 128 bytes */
+struct erofs_super_block {	/* off description */
+	__le32 magic;		/*  0  file system magic number */
+	__le32 checksum;	/*  4  crc32c(super_block) */
+	__le32 features;	/*  8  (aka. feature_compat) */
+	__u8 blkszbits;		/* 12  support PAGE_SIZE only currently */
+	__u8 reserved;		/* 13  */
+
+	__le16 root_nid;	/* 14  nid of root directory */
+	__le64 inos;		/* 16  total valid ino # (== f_files - f_favail) */
+
+	__le64 build_time;	/* 24  inode v1 time derivation */
+	__le32 build_time_nsec;	/* 32  inode v1 time derivation in nano scale */
+	__le32 blocks;		/* 36  used for statfs */
+	__le32 meta_blkaddr;	/* 40  start block address of metadata area */
+	__le32 xattr_blkaddr;	/* 44  start block address of shared xattr area */
+	__u8 uuid[16];		/* 48  128-bit uuid for volume */
+	__u8 volume_name[16];	/* 64  volume name */
+	__le32 requirements;	/* 80  (aka. feature_incompat) */
+
+	__u8 reserved2[44];	/* 84 */
+} __packed;			/* 128 bytes */
 
 /*
  * erofs inode data mapping:
@@ -73,16 +73,16 @@ static inline bool erofs_inode_is_data_compressed(unsigned int datamode)
 #define EROFS_I_VERSION_BIT             0
 #define EROFS_I_DATA_MAPPING_BIT        1
 
-struct erofs_inode_v1 {
-/*  0 */__le16 i_advise;
+struct erofs_inode_v1 {		/* off description */
+	__le16 i_advise;	/*  0  file hints */
 
 /* 1 header + n-1 * 4 bytes inline xattr to keep continuity */
-/*  2 */__le16 i_xattr_icount;
-/*  4 */__le16 i_mode;
-/*  6 */__le16 i_nlink;
-/*  8 */__le32 i_size;
-/* 12 */__le32 i_reserved;
-/* 16 */union {
+	__le16 i_xattr_icount;	/*  2  encoding for xattr ibody size */
+	__le16 i_mode;		/*  4 */
+	__le16 i_nlink;		/*  6 */
+	__le32 i_size;		/*  8 */
+	__le32 i_reserved;	/* 12 */
+	union {			/* 16 */
 		/* file total compressed blocks for data mapping 1 */
 		__le32 compressed_blocks;
 		__le32 raw_blkaddr;
@@ -90,26 +90,26 @@ struct erofs_inode_v1 {
 		/* for device files, used to indicate old/new device # */
 		__le32 rdev;
 	} i_u __packed;
-/* 20 */__le32 i_ino;           /* only used for 32-bit stat compatibility */
-/* 24 */__le16 i_uid;
-/* 26 */__le16 i_gid;
-/* 28 */__le32 i_reserved2;
-} __packed;
+	__le32 i_ino;		/* 20 only used for 32-bit stat compatibility */
+	__le16 i_uid;		/* 24 */
+	__le16 i_gid;		/* 26 */
+	__le32 i_reserved2;	/* 28 */
+} __packed;			/* 32 bytes */
 
 /* 32 bytes on-disk inode */
 #define EROFS_INODE_LAYOUT_V1   0
 /* 64 bytes on-disk inode */
 #define EROFS_INODE_LAYOUT_V2   1
 
-struct erofs_inode_v2 {
-/*  0 */__le16 i_advise;
+struct erofs_inode_v2 {		/* off description */
+	__le16 i_advise;	/*  0  file hints */
 
 /* 1 header + n-1 * 4 bytes inline xattr to keep continuity */
-/*  2 */__le16 i_xattr_icount;
-/*  4 */__le16 i_mode;
-/*  6 */__le16 i_reserved;
-/*  8 */__le64 i_size;
-/* 16 */union {
+	__le16 i_xattr_icount;	/*  2  encoding for xattr ibody size */
+	__le16 i_mode;		/*  4 */
+	__le16 i_reserved;	/*  6 */
+	__le64 i_size;		/*  8 */
+	union {			/* 16 */
 		/* file total compressed blocks for data mapping 1 */
 		__le32 compressed_blocks;
 		__le32 raw_blkaddr;
@@ -119,15 +119,15 @@ struct erofs_inode_v2 {
 	} i_u __packed;
 
 	/* only used for 32-bit stat compatibility */
-/* 20 */__le32 i_ino;
-
-/* 24 */__le32 i_uid;
-/* 28 */__le32 i_gid;
-/* 32 */__le64 i_ctime;
-/* 40 */__le32 i_ctime_nsec;
-/* 44 */__le32 i_nlink;
-/* 48 */__u8   i_reserved2[16];
-} __packed;                     /* 64 bytes */
+	__le32 i_ino;		/* 20 only used for 32-bit stat compatibility */
+
+	__le32 i_uid;		/* 24 */
+	__le32 i_gid;		/* 28 */
+	__le64 i_ctime;		/* 32 */
+	__le32 i_ctime_nsec;	/* 40 */
+	__le32 i_nlink;		/* 44 */
+	__u8   i_reserved2[16];	/* 48 */
+} __packed;			/* 64 bytes */
 
 #define EROFS_MAX_SHARED_XATTRS         (128)
 /* h_shared_count between 129 ... 255 are special # */
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
