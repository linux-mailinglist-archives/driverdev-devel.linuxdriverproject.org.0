Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 22270A7867
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Sep 2019 04:10:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B8583869EA;
	Wed,  4 Sep 2019 02:10:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ki8l1QAjkUDX; Wed,  4 Sep 2019 02:10:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7D8AC869D2;
	Wed,  4 Sep 2019 02:10:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8B9081BF4DB
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 02:10:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 888A785644
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 02:10:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fc86tst8SHY6 for <devel@linuxdriverproject.org>;
 Wed,  4 Sep 2019 02:10:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga06-in.huawei.com [45.249.212.32])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 65279869D2
 for <devel@driverdev.osuosl.org>; Wed,  4 Sep 2019 02:10:23 +0000 (UTC)
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 9480DE587523B9E9D287;
 Wed,  4 Sep 2019 10:10:20 +0800 (CST)
Received: from architecture4.huawei.com (10.140.130.215) by smtp.huawei.com
 (10.3.19.211) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 4 Sep 2019
 10:10:13 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Chao Yu <yuchao0@huawei.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Christoph Hellwig <hch@lst.de>,
 <devel@driverdev.osuosl.org>
Subject: [PATCH v2 08/25] erofs: kill erofs_{init,exit}_inode_cache
Date: Wed, 4 Sep 2019 10:08:55 +0800
Message-ID: <20190904020912.63925-9-gaoxiang25@huawei.com>
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

As Christoph said [1] "having this function seems
entirely pointless", let's kill those.

filesystem                              function name
ext2,f2fs,ext4,isofs,squashfs,cifs,...  init_inodecache

In addition, add a necessary "rcu_barrier()" on exit_fs();

[1] https://lore.kernel.org/r/20190829101545.GC20598@infradead.org/
Reported-by: Christoph Hellwig <hch@infradead.org>
Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
---
 fs/erofs/super.c | 31 ++++++++++++-------------------
 1 file changed, 12 insertions(+), 19 deletions(-)

diff --git a/fs/erofs/super.c b/fs/erofs/super.c
index 8d9f38d56b3b..499dc7f5d0e6 100644
--- a/fs/erofs/super.c
+++ b/fs/erofs/super.c
@@ -23,21 +23,6 @@ static void init_once(void *ptr)
 	inode_init_once(&vi->vfs_inode);
 }
 
-static int __init erofs_init_inode_cache(void)
-{
-	erofs_inode_cachep = kmem_cache_create("erofs_inode",
-					       sizeof(struct erofs_vnode), 0,
-					       SLAB_RECLAIM_ACCOUNT,
-					       init_once);
-
-	return erofs_inode_cachep ? 0 : -ENOMEM;
-}
-
-static void erofs_exit_inode_cache(void)
-{
-	kmem_cache_destroy(erofs_inode_cachep);
-}
-
 static struct inode *alloc_inode(struct super_block *sb)
 {
 	struct erofs_vnode *vi =
@@ -531,9 +516,14 @@ static int __init erofs_module_init(void)
 	erofs_check_ondisk_layout_definitions();
 	infoln("initializing erofs " EROFS_VERSION);
 
-	err = erofs_init_inode_cache();
-	if (err)
+	erofs_inode_cachep = kmem_cache_create("erofs_inode",
+					       sizeof(struct erofs_vnode), 0,
+					       SLAB_RECLAIM_ACCOUNT,
+					       init_once);
+	if (!erofs_inode_cachep) {
+		err = -ENOMEM;
 		goto icache_err;
+	}
 
 	err = erofs_init_shrinker();
 	if (err)
@@ -555,7 +545,7 @@ static int __init erofs_module_init(void)
 zip_err:
 	erofs_exit_shrinker();
 shrinker_err:
-	erofs_exit_inode_cache();
+	kmem_cache_destroy(erofs_inode_cachep);
 icache_err:
 	return err;
 }
@@ -565,7 +555,10 @@ static void __exit erofs_module_exit(void)
 	unregister_filesystem(&erofs_fs_type);
 	z_erofs_exit_zip_subsystem();
 	erofs_exit_shrinker();
-	erofs_exit_inode_cache();
+
+	/* Ensure all RCU free inodes are safe before cache is destroyed. */
+	rcu_barrier();
+	kmem_cache_destroy(erofs_inode_cachep);
 	infoln("successfully finalize erofs");
 }
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
