Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D717C78573
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Jul 2019 08:53:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6C01C8796B;
	Mon, 29 Jul 2019 06:53:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ME+uMR3KRWzF; Mon, 29 Jul 2019 06:53:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6C95A87A79;
	Mon, 29 Jul 2019 06:53:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 58DF81BF40D
 for <devel@linuxdriverproject.org>; Mon, 29 Jul 2019 06:53:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 55703878A5
 for <devel@linuxdriverproject.org>; Mon, 29 Jul 2019 06:53:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3MCqWrra86I1 for <devel@linuxdriverproject.org>;
 Mon, 29 Jul 2019 06:52:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EDEAA879B1
 for <devel@driverdev.osuosl.org>; Mon, 29 Jul 2019 06:52:42 +0000 (UTC)
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 43E344C4AB38D58BBAB4;
 Mon, 29 Jul 2019 14:52:40 +0800 (CST)
Received: from architecture4.huawei.com (10.140.130.215) by smtp.huawei.com
 (10.3.19.210) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 29 Jul
 2019 14:52:30 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 <devel@driverdev.osuosl.org>
Subject: [PATCH 15/22] staging: erofs: remove redundant braces in inode.c
Date: Mon, 29 Jul 2019 14:51:52 +0800
Message-ID: <20190729065159.62378-16-gaoxiang25@huawei.com>
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

Remove redundant braces in inode.c since
these are all single statements.

Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
---
 drivers/staging/erofs/inode.c | 18 ++++++++----------
 1 file changed, 8 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/erofs/inode.c b/drivers/staging/erofs/inode.c
index c13d66ccc74a..286729143365 100644
--- a/drivers/staging/erofs/inode.c
+++ b/drivers/staging/erofs/inode.c
@@ -35,16 +35,15 @@ static int read_inode(struct inode *inode, void *data)
 
 		inode->i_mode = le16_to_cpu(v2->i_mode);
 		if (S_ISREG(inode->i_mode) || S_ISDIR(inode->i_mode) ||
-		    S_ISLNK(inode->i_mode)) {
+		    S_ISLNK(inode->i_mode))
 			vi->raw_blkaddr = le32_to_cpu(v2->i_u.raw_blkaddr);
-		} else if (S_ISCHR(inode->i_mode) || S_ISBLK(inode->i_mode)) {
+		else if (S_ISCHR(inode->i_mode) || S_ISBLK(inode->i_mode))
 			inode->i_rdev =
 				new_decode_dev(le32_to_cpu(v2->i_u.rdev));
-		} else if (S_ISFIFO(inode->i_mode) || S_ISSOCK(inode->i_mode)) {
+		else if (S_ISFIFO(inode->i_mode) || S_ISSOCK(inode->i_mode))
 			inode->i_rdev = 0;
-		} else {
+		else
 			return -EIO;
-		}
 
 		i_uid_write(inode, le32_to_cpu(v2->i_uid));
 		i_gid_write(inode, le32_to_cpu(v2->i_gid));
@@ -69,16 +68,15 @@ static int read_inode(struct inode *inode, void *data)
 
 		inode->i_mode = le16_to_cpu(v1->i_mode);
 		if (S_ISREG(inode->i_mode) || S_ISDIR(inode->i_mode) ||
-		    S_ISLNK(inode->i_mode)) {
+		    S_ISLNK(inode->i_mode))
 			vi->raw_blkaddr = le32_to_cpu(v1->i_u.raw_blkaddr);
-		} else if (S_ISCHR(inode->i_mode) || S_ISBLK(inode->i_mode)) {
+		else if (S_ISCHR(inode->i_mode) || S_ISBLK(inode->i_mode))
 			inode->i_rdev =
 				new_decode_dev(le32_to_cpu(v1->i_u.rdev));
-		} else if (S_ISFIFO(inode->i_mode) || S_ISSOCK(inode->i_mode)) {
+		else if (S_ISFIFO(inode->i_mode) || S_ISSOCK(inode->i_mode))
 			inode->i_rdev = 0;
-		} else {
+		else
 			return -EIO;
-		}
 
 		i_uid_write(inode, le16_to_cpu(v1->i_uid));
 		i_gid_write(inode, le16_to_cpu(v1->i_gid));
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
