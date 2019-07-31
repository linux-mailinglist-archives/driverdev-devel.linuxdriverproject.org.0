Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4236F7C7D9
	for <lists+driverdev-devel@lfdr.de>; Wed, 31 Jul 2019 17:59:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 90DF985C56;
	Wed, 31 Jul 2019 15:59:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ws3kzoYTGIch; Wed, 31 Jul 2019 15:59:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D732F86977;
	Wed, 31 Jul 2019 15:58:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C980B1BF844
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 15:58:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C2EE92044B
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 15:58:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aZ4HjZZa0umh for <devel@linuxdriverproject.org>;
 Wed, 31 Jul 2019 15:58:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by silver.osuosl.org (Postfix) with ESMTPS id C5B682038A
 for <devel@driverdev.osuosl.org>; Wed, 31 Jul 2019 15:58:39 +0000 (UTC)
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 17C2ED3AC4F1369DB432;
 Wed, 31 Jul 2019 23:58:36 +0800 (CST)
Received: from architecture4.huawei.com (10.140.130.215) by smtp.huawei.com
 (10.3.19.210) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 31 Jul
 2019 23:58:27 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Chao Yu
 <yuchao0@huawei.com>, <devel@driverdev.osuosl.org>
Subject: [PATCH v2 15/22] staging: erofs: tidy up zpvec.h
Date: Wed, 31 Jul 2019 23:57:45 +0800
Message-ID: <20190731155752.210602-16-gaoxiang25@huawei.com>
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
Cc: linux-erofs@lists.ozlabs.org, Chao Yu <chao@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, weidu.du@huawei.com,
 Fang Wei <fangwei1@huawei.com>, Miao Xie <miaoxie@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

- use shorter function names:
  z_erofs_pagevec_enqueue and z_erofs_pagevec_dequeue;
- minor code cleanup.

In order to keep in line with erofs-outofstaging patchset.

Reviewed-by: Chao Yu <yuchao0@huawei.com>
Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
---
 drivers/staging/erofs/zdata.c |  6 +++---
 drivers/staging/erofs/zpvec.h | 25 +++++++++----------------
 2 files changed, 12 insertions(+), 19 deletions(-)

diff --git a/drivers/staging/erofs/zdata.c b/drivers/staging/erofs/zdata.c
index 3078510e350d..88c8c4082498 100644
--- a/drivers/staging/erofs/zdata.c
+++ b/drivers/staging/erofs/zdata.c
@@ -314,8 +314,8 @@ static int z_erofs_vle_work_add_page(
 	    try_to_reuse_as_compressed_page(builder, page))
 		return 0;
 
-	ret = z_erofs_pagevec_ctor_enqueue(&builder->vector,
-					   page, type, &occupied);
+	ret = z_erofs_pagevec_enqueue(&builder->vector,
+				      page, type, &occupied);
 	builder->work->vcnt += (unsigned int)ret;
 
 	return ret ? 0 : -EAGAIN;
@@ -938,7 +938,7 @@ static int z_erofs_vle_unzip(struct super_block *sb,
 	for (i = 0; i < work->vcnt; ++i) {
 		unsigned int pagenr;
 
-		page = z_erofs_pagevec_ctor_dequeue(&ctor, &page_type);
+		page = z_erofs_pagevec_dequeue(&ctor, &page_type);
 
 		/* all pages in pagevec ought to be valid */
 		DBG_BUGON(!page);
diff --git a/drivers/staging/erofs/zpvec.h b/drivers/staging/erofs/zpvec.h
index 77bf6877bad8..9798f5627786 100644
--- a/drivers/staging/erofs/zpvec.h
+++ b/drivers/staging/erofs/zpvec.h
@@ -11,7 +11,7 @@
 
 #include "tagptr.h"
 
-/* page type in pagevec for unzip subsystem */
+/* page type in pagevec for decompress subsystem */
 enum z_erofs_page_type {
 	/* including Z_EROFS_VLE_PAGE_TAIL_EXCLUSIVE */
 	Z_EROFS_PAGE_TYPE_EXCLUSIVE,
@@ -103,16 +103,14 @@ static inline void z_erofs_pagevec_ctor_init(struct z_erofs_pagevec_ctor *ctor,
 			z_erofs_pagevec_ctor_pagedown(ctor, false);
 		}
 	}
-
 	ctor->next = z_erofs_pagevec_ctor_next_page(ctor, i);
 	ctor->index = i;
 }
 
-static inline bool
-z_erofs_pagevec_ctor_enqueue(struct z_erofs_pagevec_ctor *ctor,
-			     struct page *page,
-			     enum z_erofs_page_type type,
-			     bool *occupied)
+static inline bool z_erofs_pagevec_enqueue(struct z_erofs_pagevec_ctor *ctor,
+					   struct page *page,
+					   enum z_erofs_page_type type,
+					   bool *occupied)
 {
 	*occupied = false;
 	if (unlikely(!ctor->next && type))
@@ -131,15 +129,13 @@ z_erofs_pagevec_ctor_enqueue(struct z_erofs_pagevec_ctor *ctor,
 		ctor->next = page;
 		*occupied = true;
 	}
-
-	ctor->pages[ctor->index++] =
-		tagptr_fold(erofs_vtptr_t, page, type);
+	ctor->pages[ctor->index++] = tagptr_fold(erofs_vtptr_t, page, type);
 	return true;
 }
 
 static inline struct page *
-z_erofs_pagevec_ctor_dequeue(struct z_erofs_pagevec_ctor *ctor,
-			     enum z_erofs_page_type *type)
+z_erofs_pagevec_dequeue(struct z_erofs_pagevec_ctor *ctor,
+			enum z_erofs_page_type *type)
 {
 	erofs_vtptr_t t;
 
@@ -156,11 +152,8 @@ z_erofs_pagevec_ctor_dequeue(struct z_erofs_pagevec_ctor *ctor,
 	if (*type == (uintptr_t)ctor->next)
 		ctor->next = tagptr_unfold_ptr(t);
 
-	ctor->pages[ctor->index++] =
-		tagptr_fold(erofs_vtptr_t, NULL, 0);
-
+	ctor->pages[ctor->index++] = tagptr_fold(erofs_vtptr_t, NULL, 0);
 	return tagptr_unfold_ptr(t);
 }
-
 #endif
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
