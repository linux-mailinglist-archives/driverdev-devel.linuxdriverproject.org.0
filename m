Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F2B88A7888
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Sep 2019 04:11:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 89F6D878D6;
	Wed,  4 Sep 2019 02:11:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 58VbEGB0bH+l; Wed,  4 Sep 2019 02:11:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 36121878B7;
	Wed,  4 Sep 2019 02:10:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0B3A81BF4DB
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 02:10:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 04A848829B
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 02:10:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V3vcV+R0ovlw for <devel@linuxdriverproject.org>;
 Wed,  4 Sep 2019 02:10:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 58681880E0
 for <devel@driverdev.osuosl.org>; Wed,  4 Sep 2019 02:10:42 +0000 (UTC)
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id AAD3C2CB4D783838F6DE;
 Wed,  4 Sep 2019 10:10:40 +0800 (CST)
Received: from architecture4.huawei.com (10.140.130.215) by smtp.huawei.com
 (10.3.19.211) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 4 Sep 2019
 10:10:32 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Chao Yu <yuchao0@huawei.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Christoph Hellwig <hch@lst.de>,
 <devel@driverdev.osuosl.org>
Subject: [PATCH v2 24/25] erofs: always use iget5_locked
Date: Wed, 4 Sep 2019 10:09:11 +0800
Message-ID: <20190904020912.63925-25-gaoxiang25@huawei.com>
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

As Christoph said [1] [2], "Just use the slightly
more complicated 32-bit version everywhere so that
you have a single actually tested code path.
And then remove this helper. "

[1] https://lore.kernel.org/r/20190829102426.GE20598@infradead.org/
[2] https://lore.kernel.org/r/20190902125320.GA16726@infradead.org/
Reported-by: Christoph Hellwig <hch@infradead.org>
Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
---
 fs/erofs/inode.c | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/fs/erofs/inode.c b/fs/erofs/inode.c
index a0cec3c754cd..3350ab65d892 100644
--- a/fs/erofs/inode.c
+++ b/fs/erofs/inode.c
@@ -243,7 +243,6 @@ static int erofs_fill_inode(struct inode *inode, int isdir)
  * erofs nid is 64bits, but i_ino is 'unsigned long', therefore
  * we should do more for 32-bit platform to find the right inode.
  */
-#if BITS_PER_LONG == 32
 static int erofs_ilookup_test_actor(struct inode *inode, void *opaque)
 {
 	const erofs_nid_t nid = *(erofs_nid_t *)opaque;
@@ -258,20 +257,14 @@ static int erofs_iget_set_actor(struct inode *inode, void *opaque)
 	inode->i_ino = erofs_inode_hash(nid);
 	return 0;
 }
-#endif
 
 static inline struct inode *erofs_iget_locked(struct super_block *sb,
 					      erofs_nid_t nid)
 {
 	const unsigned long hashval = erofs_inode_hash(nid);
 
-#if BITS_PER_LONG >= 64
-	/* it is safe to use iget_locked for >= 64-bit platform */
-	return iget_locked(sb, hashval);
-#else
 	return iget5_locked(sb, hashval, erofs_ilookup_test_actor,
 		erofs_iget_set_actor, &nid);
-#endif
 }
 
 struct inode *erofs_iget(struct super_block *sb,
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
