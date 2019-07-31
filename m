Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 722727C7C2
	for <lists+driverdev-devel@lfdr.de>; Wed, 31 Jul 2019 17:58:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6285786995;
	Wed, 31 Jul 2019 15:58:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ON-+c+kE6Swc; Wed, 31 Jul 2019 15:58:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5D51186912;
	Wed, 31 Jul 2019 15:58:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C797F1BF844
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 15:58:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A653A87CDE
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 15:58:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SrSis13oAuUp for <devel@linuxdriverproject.org>;
 Wed, 31 Jul 2019 15:58:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CB59187D05
 for <devel@driverdev.osuosl.org>; Wed, 31 Jul 2019 15:58:23 +0000 (UTC)
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id DE6697A1CE4951A09D39;
 Wed, 31 Jul 2019 23:58:20 +0800 (CST)
Received: from architecture4.huawei.com (10.140.130.215) by smtp.huawei.com
 (10.3.19.210) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 31 Jul
 2019 23:58:13 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Chao Yu
 <yuchao0@huawei.com>, <devel@driverdev.osuosl.org>
Subject: [PATCH v2 03/22] staging: erofs: fix dummy functions erofs_{get,
 list}xattr
Date: Wed, 31 Jul 2019 23:57:33 +0800
Message-ID: <20190731155752.210602-4-gaoxiang25@huawei.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190731155752.210602-1-gaoxiang25@huawei.com>
References: <20190731155752.210602-1-gaoxiang25@huawei.com>
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
Cc: Yue Hu <zbestahu@gmail.com>, linux-erofs@lists.ozlabs.org,
 Chao Yu <chao@kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 weidu.du@huawei.com, Fang Wei <fangwei1@huawei.com>,
 Miao Xie <miaoxie@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

dummy functions erofs_{get,list}xattr should be inlined
without xattr enabled.

Signed-off-by: Yue Hu <zbestahu@gmail.com>
[ Gao Xiang : this patch was "staging: erofs: remove needless
              dummy functions of erofs_{get,list}xattr. "]
Reviewed-by: Chao Yu <yuchao0@huawei.com>
Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
---
 drivers/staging/erofs/xattr.h | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/erofs/xattr.h b/drivers/staging/erofs/xattr.h
index fbcd57bdf886..63cc87e3d3f4 100644
--- a/drivers/staging/erofs/xattr.h
+++ b/drivers/staging/erofs/xattr.h
@@ -39,6 +39,7 @@ static inline unsigned int xattrblock_offset(struct erofs_sb_info *sbi,
 	return (xattr_id * sizeof(__u32)) % EROFS_BLKSIZ;
 }
 
+#ifdef CONFIG_EROFS_FS_XATTR
 extern const struct xattr_handler erofs_xattr_user_handler;
 extern const struct xattr_handler erofs_xattr_trusted_handler;
 #ifdef CONFIG_EROFS_FS_SECURITY
@@ -64,25 +65,24 @@ static const struct xattr_handler *xattr_handler_map[] = {
 		xattr_handler_map[idx] : NULL;
 }
 
-#ifdef CONFIG_EROFS_FS_XATTR
 extern const struct xattr_handler *erofs_xattr_handlers[];
 
 int erofs_getxattr(struct inode *, int, const char *, void *, size_t);
 ssize_t erofs_listxattr(struct dentry *, char *, size_t);
 #else
-static int __maybe_unused erofs_getxattr(struct inode *inode, int index,
-	const char *name,
-	void *buffer, size_t buffer_size)
+static inline int erofs_getxattr(struct inode *inode, int index,
+				 const char *name, void *buffer,
+				 size_t buffer_size)
 {
 	return -ENOTSUPP;
 }
 
-static ssize_t __maybe_unused erofs_listxattr(struct dentry *dentry,
-	char *buffer, size_t buffer_size)
+static inline ssize_t erofs_listxattr(struct dentry *dentry,
+				      char *buffer, size_t buffer_size)
 {
 	return -ENOTSUPP;
 }
-#endif
+#endif	/* !CONFIG_EROFS_FS_XATTR */
 
 #ifdef CONFIG_EROFS_FS_POSIX_ACL
 struct posix_acl *erofs_get_acl(struct inode *inode, int type);
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
