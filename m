Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8576A2D19
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Aug 2019 05:02:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B3AA78920C;
	Fri, 30 Aug 2019 03:02:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f1yfoR0Yx0Yb; Fri, 30 Aug 2019 03:02:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E571789197;
	Fri, 30 Aug 2019 03:02:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5E0471BF2C8
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 03:02:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 10B8D8846C
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 03:02:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4l1CihCsWO0X for <devel@linuxdriverproject.org>;
 Fri, 30 Aug 2019 03:02:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C577788473
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2019 03:01:59 +0000 (UTC)
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 115084CA086545A548F5;
 Fri, 30 Aug 2019 11:01:56 +0800 (CST)
Received: from architecture4.huawei.com (10.140.130.215) by smtp.huawei.com
 (10.3.19.212) with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 30 Aug
 2019 11:01:46 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Chao Yu <yuchao0@huawei.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 Christoph Hellwig <hch@infradead.org>, Joe Perches <joe@perches.com>, "Greg
 Kroah-Hartman" <gregkh@linuxfoundation.org>, <devel@driverdev.osuosl.org>
Subject: [PATCH v2 7/7] erofs: reduntant assignment in __erofs_get_meta_page()
Date: Fri, 30 Aug 2019 11:00:40 +0800
Message-ID: <20190830030040.10599-7-gaoxiang25@huawei.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190830030040.10599-1-gaoxiang25@huawei.com>
References: <20190830030040.10599-1-gaoxiang25@huawei.com>
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

As Joe Perches suggested [1],
 		err = bio_add_page(bio, page, PAGE_SIZE, 0);
-		if (unlikely(err != PAGE_SIZE)) {
+		if (err != PAGE_SIZE) {
 			err = -EFAULT;
 			goto err_out;
 		}

The initial assignment to err is odd as it's not
actually an error value -E<FOO> but a int size
from a unsigned int len.

Here the return is either 0 or PAGE_SIZE.

This would be more legible to me as:

		if (bio_add_page(bio, page, PAGE_SIZE, 0) != PAGE_SIZE) {
			err = -EFAULT;
			goto err_out;
		}

[1] https://lore.kernel.org/r/74c4784319b40deabfbaea92468f7e3ef44f1c96.camel@perches.com/
Reported-by: Joe Perches <joe@perches.com>
Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
---
v2: no change, just resend in case of dependency problem;

 fs/erofs/data.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/fs/erofs/data.c b/fs/erofs/data.c
index 0f2f1a839372..0983807737fd 100644
--- a/fs/erofs/data.c
+++ b/fs/erofs/data.c
@@ -69,8 +69,7 @@ struct page *__erofs_get_meta_page(struct super_block *sb,
 			goto err_out;
 		}
 
-		err = bio_add_page(bio, page, PAGE_SIZE, 0);
-		if (err != PAGE_SIZE) {
+		if (bio_add_page(bio, page, PAGE_SIZE, 0) != PAGE_SIZE) {
 			err = -EFAULT;
 			goto err_out;
 		}
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
