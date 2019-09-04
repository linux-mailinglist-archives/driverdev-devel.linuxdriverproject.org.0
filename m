Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 28AB1A785D
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Sep 2019 04:10:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 499C8869BB;
	Wed,  4 Sep 2019 02:10:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HOuvR3Hwn0hl; Wed,  4 Sep 2019 02:10:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AA79485644;
	Wed,  4 Sep 2019 02:10:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AE04D1BF4DB
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 02:10:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id AB02E869BB
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 02:10:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7aHd4_lD9cPn for <devel@linuxdriverproject.org>;
 Wed,  4 Sep 2019 02:10:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 86C8985644
 for <devel@driverdev.osuosl.org>; Wed,  4 Sep 2019 02:10:17 +0000 (UTC)
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 4D35536BA690EBFB9591;
 Wed,  4 Sep 2019 10:10:15 +0800 (CST)
Received: from architecture4.huawei.com (10.140.130.215) by smtp.huawei.com
 (10.3.19.211) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 4 Sep 2019
 10:10:08 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Chao Yu <yuchao0@huawei.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Christoph Hellwig <hch@lst.de>,
 <devel@driverdev.osuosl.org>
Subject: [PATCH v2 04/25] erofs: kill __packed for on-disk structures
Date: Wed, 4 Sep 2019 10:08:51 +0800
Message-ID: <20190904020912.63925-5-gaoxiang25@huawei.com>
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

As Christoph suggested "Please don't add __packed" [1],
remove all __packed except struct erofs_dirent here.

Note that all on-disk fields except struct erofs_dirent
(12 bytes with a 8-byte nid) in EROFS are naturally aligned.

[1] https://lore.kernel.org/r/20190829095954.GB20598@infradead.org/
Reported-by: Christoph Hellwig <hch@infradead.org>
Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
---
 fs/erofs/erofs_fs.h | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/fs/erofs/erofs_fs.h b/fs/erofs/erofs_fs.h
index c1220b0f26e0..59dcc2e8cb02 100644
--- a/fs/erofs/erofs_fs.h
+++ b/fs/erofs/erofs_fs.h
@@ -38,7 +38,7 @@ struct erofs_super_block {
 	__le32 requirements;    /* (aka. feature_incompat) */
 
 	__u8 reserved2[44];
-} __packed;
+};
 
 /*
  * erofs inode data mapping:
@@ -91,12 +91,12 @@ struct erofs_inode_v1 {
 
 		/* for device files, used to indicate old/new device # */
 		__le32 rdev;
-	} i_u __packed;
+	} i_u;
 	__le32 i_ino;           /* only used for 32-bit stat compatibility */
 	__le16 i_uid;
 	__le16 i_gid;
 	__le32 i_reserved2;
-} __packed;
+};
 
 /* 32 bytes on-disk inode */
 #define EROFS_INODE_LAYOUT_V1   0
@@ -119,7 +119,7 @@ struct erofs_inode_v2 {
 
 		/* for device files, used to indicate old/new device # */
 		__le32 rdev;
-	} i_u __packed;
+	} i_u;
 
 	/* only used for 32-bit stat compatibility */
 	__le32 i_ino;
@@ -130,7 +130,7 @@ struct erofs_inode_v2 {
 	__le32 i_ctime_nsec;
 	__le32 i_nlink;
 	__u8   i_reserved2[16];
-} __packed;
+};
 
 #define EROFS_MAX_SHARED_XATTRS         (128)
 /* h_shared_count between 129 ... 255 are special # */
@@ -152,7 +152,7 @@ struct erofs_xattr_ibody_header {
 	__u8   h_shared_count;
 	__u8   h_reserved2[7];
 	__le32 h_shared_xattrs[0];      /* shared xattr id array */
-} __packed;
+};
 
 /* Name indexes */
 #define EROFS_XATTR_INDEX_USER              1
@@ -169,7 +169,7 @@ struct erofs_xattr_entry {
 	__le16 e_value_size;    /* size of attribute value */
 	/* followed by e_name and e_value */
 	char   e_name[0];       /* attribute name */
-} __packed;
+};
 
 static inline unsigned int erofs_xattr_ibody_size(__le16 i_xattr_icount)
 {
@@ -273,8 +273,8 @@ struct z_erofs_vle_decompressed_index {
 		 * [1] - pointing to the tail cluster
 		 */
 		__le16 delta[2];
-	} di_u __packed;
-} __packed;
+	} di_u;
+};
 
 #define Z_EROFS_VLE_LEGACY_INDEX_ALIGN(size) \
 	(round_up(size, sizeof(struct z_erofs_vle_decompressed_index)) + \
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
