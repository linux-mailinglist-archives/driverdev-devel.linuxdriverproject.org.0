Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BB5CA2D62
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Aug 2019 05:37:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E0F3C87387;
	Fri, 30 Aug 2019 03:37:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id acTfrJx6uFog; Fri, 30 Aug 2019 03:37:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 21E85871D7;
	Fri, 30 Aug 2019 03:37:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CEC2E1BF488
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 03:37:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CA76287053
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 03:37:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KByDuXaR9gM7 for <devel@linuxdriverproject.org>;
 Fri, 30 Aug 2019 03:37:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 431A187019
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2019 03:37:42 +0000 (UTC)
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 04FA0AE93D6D41465E28;
 Fri, 30 Aug 2019 11:37:40 +0800 (CST)
Received: from architecture4.huawei.com (10.140.130.215) by smtp.huawei.com
 (10.3.19.204) with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 30 Aug
 2019 11:37:33 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Chao Yu <yuchao0@huawei.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 Christoph Hellwig <hch@infradead.org>, Joe Perches <joe@perches.com>, "Greg
 Kroah-Hartman" <gregkh@linuxfoundation.org>, <devel@driverdev.osuosl.org>
Subject: [PATCH v3 4/7] erofs: kill __packed for on-disk structures
Date: Fri, 30 Aug 2019 11:36:40 +0800
Message-ID: <20190830033643.51019-4-gaoxiang25@huawei.com>
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

As Christoph claimed "Please don't add __packed" [1],
I have to remove all __packed except struct erofs_dirent here.

Note that all on-disk fields except struct erofs_dirent
(12 bytes with a 8-byte nid) in EROFS are naturally aligned.

[1] https://lore.kernel.org/lkml/20190829095954.GB20598@infradead.org/
Reported-by: Christoph Hellwig <hch@infradead.org>
Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
---
no change.

 fs/erofs/erofs_fs.h | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/fs/erofs/erofs_fs.h b/fs/erofs/erofs_fs.h
index fbdaf873d736..b07984a17f11 100644
--- a/fs/erofs/erofs_fs.h
+++ b/fs/erofs/erofs_fs.h
@@ -37,7 +37,7 @@ struct erofs_super_block {	/* off description */
 	__le32 requirements;	/* 80  (aka. feature_incompat) */
 
 	__u8 reserved2[44];	/* 84 */
-} __packed;			/* 128 bytes */
+};				/* 128 bytes */
 
 /*
  * erofs inode data mapping:
@@ -89,12 +89,12 @@ struct erofs_inode_v1 {		/* off description */
 
 		/* for device files, used to indicate old/new device # */
 		__le32 rdev;
-	} i_u __packed;
+	} i_u;
 	__le32 i_ino;		/* 20 only used for 32-bit stat compatibility */
 	__le16 i_uid;		/* 24 */
 	__le16 i_gid;		/* 26 */
 	__le32 i_reserved2;	/* 28 */
-} __packed;			/* 32 bytes */
+};				/* 32 bytes */
 
 /* 32 bytes on-disk inode */
 #define EROFS_INODE_LAYOUT_V1   0
@@ -116,7 +116,7 @@ struct erofs_inode_v2 {		/* off description */
 
 		/* for device files, used to indicate old/new device # */
 		__le32 rdev;
-	} i_u __packed;
+	} i_u;
 
 	/* only used for 32-bit stat compatibility */
 	__le32 i_ino;		/* 20 only used for 32-bit stat compatibility */
@@ -127,7 +127,7 @@ struct erofs_inode_v2 {		/* off description */
 	__le32 i_ctime_nsec;	/* 40 */
 	__le32 i_nlink;		/* 44 */
 	__u8   i_reserved2[16];	/* 48 */
-} __packed;			/* 64 bytes */
+};				/* 64 bytes */
 
 #define EROFS_MAX_SHARED_XATTRS         (128)
 /* h_shared_count between 129 ... 255 are special # */
@@ -149,7 +149,7 @@ struct erofs_xattr_ibody_header {
 	__u8   h_shared_count;
 	__u8   h_reserved2[7];
 	__le32 h_shared_xattrs[0];      /* shared xattr id array */
-} __packed;
+};
 
 /* Name indexes */
 #define EROFS_XATTR_INDEX_USER              1
@@ -166,7 +166,7 @@ struct erofs_xattr_entry {
 	__le16 e_value_size;    /* size of attribute value */
 	/* followed by e_name and e_value */
 	char   e_name[0];       /* attribute name */
-} __packed;
+};
 
 static inline unsigned int erofs_xattr_ibody_size(__le16 d_icount)
 {
@@ -272,8 +272,8 @@ struct z_erofs_vle_decompressed_index {
 		 * [1] - pointing to the tail cluster
 		 */
 		__le16 delta[2];
-	} di_u __packed;		/* 8 bytes */
-} __packed;
+	} di_u;			/* 8 bytes */
+};
 
 #define Z_EROFS_VLE_LEGACY_INDEX_ALIGN(size) \
 	(round_up(size, sizeof(struct z_erofs_vle_decompressed_index)) + \
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
