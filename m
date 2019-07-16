Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 569276A5A9
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Jul 2019 11:44:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6FD1E869F8;
	Tue, 16 Jul 2019 09:44:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IyUuSxGyTRYH; Tue, 16 Jul 2019 09:44:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A009F86A16;
	Tue, 16 Jul 2019 09:44:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 629A31BF303
 for <devel@linuxdriverproject.org>; Tue, 16 Jul 2019 09:44:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5A447866F0
 for <devel@linuxdriverproject.org>; Tue, 16 Jul 2019 09:44:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hS1xG8-L-pqS for <devel@linuxdriverproject.org>;
 Tue, 16 Jul 2019 09:44:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 05B578669E
 for <devel@driverdev.osuosl.org>; Tue, 16 Jul 2019 09:44:41 +0000 (UTC)
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 027507B6789D5CE75D77;
 Tue, 16 Jul 2019 17:44:39 +0800 (CST)
Received: from szvp000203569.huawei.com (10.120.216.130) by
 DGGEMS406-HUB.china.huawei.com (10.3.19.206) with Microsoft SMTP Server id
 14.3.439.0; Tue, 16 Jul 2019 17:44:28 +0800
From: Chao Yu <yuchao0@huawei.com>
To: <gregkh@linuxfoundation.org>, <devel@driverdev.osuosl.org>
Subject: [PATCH v2] staging: erofs: avoid opened loop codes
Date: Tue, 16 Jul 2019 17:44:22 +0800
Message-ID: <20190716094422.110805-1-yuchao0@huawei.com>
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
Cc: Chao Yu <yuchao0@huawei.com>, linux-erofs@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, chao@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Use __GFP_NOFAIL to avoid opened loop codes in z_erofs_vle_unzip().

Signed-off-by: Chao Yu <yuchao0@huawei.com>
---
v2:
- change variable name from 'flags' to 'gfp_flags' to avoid common
name.
 drivers/staging/erofs/unzip_vle.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/erofs/unzip_vle.c b/drivers/staging/erofs/unzip_vle.c
index f0dab81ff816..56c009cf611e 100644
--- a/drivers/staging/erofs/unzip_vle.c
+++ b/drivers/staging/erofs/unzip_vle.c
@@ -921,18 +921,18 @@ static int z_erofs_vle_unzip(struct super_block *sb,
 		 mutex_trylock(&z_pagemap_global_lock))
 		pages = z_pagemap_global;
 	else {
-repeat:
+		gfp_t gfp_flags = GFP_KERNEL;
+
+		if (nr_pages > Z_EROFS_VLE_VMAP_GLOBAL_PAGES)
+			gfp_flags |= __GFP_NOFAIL;
+
 		pages = kvmalloc_array(nr_pages, sizeof(struct page *),
-				       GFP_KERNEL);
+				       gfp_flags);
 
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
