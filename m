Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A19A96A449
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Jul 2019 10:53:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E849587E0B;
	Tue, 16 Jul 2019 08:53:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zIsqxOtscIpd; Tue, 16 Jul 2019 08:53:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4021D87D7C;
	Tue, 16 Jul 2019 08:53:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3F2841BF32B
 for <devel@linuxdriverproject.org>; Tue, 16 Jul 2019 08:53:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3A7FB87D7F
 for <devel@linuxdriverproject.org>; Tue, 16 Jul 2019 08:53:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YjSggMbVOVsw for <devel@linuxdriverproject.org>;
 Tue, 16 Jul 2019 08:53:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8B2CF87D7C
 for <devel@driverdev.osuosl.org>; Tue, 16 Jul 2019 08:53:19 +0000 (UTC)
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 4C4B38E9AD9D2EE5710D;
 Tue, 16 Jul 2019 16:53:15 +0800 (CST)
Received: from szvp000203569.huawei.com (10.120.216.130) by
 DGGEMS412-HUB.china.huawei.com (10.3.19.212) with Microsoft SMTP Server id
 14.3.439.0; Tue, 16 Jul 2019 16:53:07 +0800
From: Chao Yu <yuchao0@huawei.com>
To: <gregkh@linuxfoundation.org>, <devel@driverdev.osuosl.org>
Subject: [PATCH] staging: erofs: avoid opened loop codes
Date: Tue, 16 Jul 2019 16:52:59 +0800
Message-ID: <20190716085259.103481-1-yuchao0@huawei.com>
X-Mailer: git-send-email 2.18.0.rc1
MIME-Version: 1.0
X-Originating-IP: [10.120.216.130]
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
Cc: Chao Yu <yuchao0@huawei.com>, linux-erofs@lists.ozlabs.org, chao@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Use __GFP_NOFAIL to avoid opened loop codes in z_erofs_vle_unzip().

Signed-off-by: Chao Yu <yuchao0@huawei.com>
---
 drivers/staging/erofs/unzip_vle.c | 17 ++++++++---------
 1 file changed, 8 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/erofs/unzip_vle.c b/drivers/staging/erofs/unzip_vle.c
index f0dab81ff816..3a0dbcb8cc9f 100644
--- a/drivers/staging/erofs/unzip_vle.c
+++ b/drivers/staging/erofs/unzip_vle.c
@@ -921,18 +921,17 @@ static int z_erofs_vle_unzip(struct super_block *sb,
 		 mutex_trylock(&z_pagemap_global_lock))
 		pages = z_pagemap_global;
 	else {
-repeat:
-		pages = kvmalloc_array(nr_pages, sizeof(struct page *),
-				       GFP_KERNEL);
+		gfp_t flags = GFP_KERNEL;
+
+		if (nr_pages > Z_EROFS_VLE_VMAP_GLOBAL_PAGES)
+			flags |= __GFP_NOFAIL;
+
+		pages = kvmalloc_array(nr_pages, sizeof(struct page *), flags);
 
 		/* fallback to global pagemap for the lowmem scenario */
 		if (unlikely(!pages)) {
-			if (nr_pages > Z_EROFS_VLE_VMAP_GLOBAL_PAGES)
-				goto repeat;
-			else {
-				mutex_lock(&z_pagemap_global_lock);
-				pages = z_pagemap_global;
-			}
+			mutex_lock(&z_pagemap_global_lock);
+			pages = z_pagemap_global;
 		}
 	}
 
-- 
2.18.0.rc1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
