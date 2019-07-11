Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 67674659A6
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Jul 2019 16:59:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EE4F586227;
	Thu, 11 Jul 2019 14:59:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id awZffzI6P-LQ; Thu, 11 Jul 2019 14:59:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 70E2786278;
	Thu, 11 Jul 2019 14:58:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C53531BF83E
 for <devel@linuxdriverproject.org>; Thu, 11 Jul 2019 14:58:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BCED58626D
 for <devel@linuxdriverproject.org>; Thu, 11 Jul 2019 14:58:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ESit_KyMUIbZ for <devel@linuxdriverproject.org>;
 Thu, 11 Jul 2019 14:58:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9466C8626B
 for <devel@driverdev.osuosl.org>; Thu, 11 Jul 2019 14:58:42 +0000 (UTC)
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 593B3B2996D78ABC4E9E;
 Thu, 11 Jul 2019 22:58:38 +0800 (CST)
Received: from architecture4.huawei.com (10.140.130.215) by smtp.huawei.com
 (10.3.19.209) with Microsoft SMTP Server (TLS) id 14.3.439.0; Thu, 11 Jul
 2019 22:58:30 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Alexander Viro <viro@zeniv.linux.org.uk>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Andrew Morton <akpm@linux-foundation.org>,
 Theodore Ts'o <tytso@mit.edu>, Linus Torvalds <torvalds@linux-foundation.org>
Subject: [PATCH v2 12/24] erofs: introduce tagged pointer
Date: Thu, 11 Jul 2019 22:57:43 +0800
Message-ID: <20190711145755.33908-13-gaoxiang25@huawei.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190711145755.33908-1-gaoxiang25@huawei.com>
References: <20190711145755.33908-1-gaoxiang25@huawei.com>
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
Cc: devel@driverdev.osuosl.org, linux-erofs@lists.ozlabs.org,
 Chao Yu <yuchao0@huawei.com>, LKML <linux-kernel@vger.kernel.org>,
 Li Guifu <bluce.liguifu@huawei.com>, Fang Wei <fangwei1@huawei.com>,
 linux-fsdevel@vger.kernel.org, Miao Xie <miaoxie@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Currently kernel has scattered tagged pointer usages
hacked by hand in plain code, without a unique and
portable functionset to highlight the tagged pointer
itself and wrap these hacked code in order to clean up
all over meaningless magic masks.

This patch introduces simple generic methods to fold
tags into a pointer integer. Currently it supports
the last n bits of the pointer for tags, which can be
selected by users.

In addition, it will also be used for the upcoming EROFS
filesystem, which heavily uses tagged pointer pproach
 to reduce extra memory allocation.

Link: https://en.wikipedia.org/wiki/Tagged_pointer

Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
---
 fs/erofs/tagptr.h | 110 ++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 110 insertions(+)
 create mode 100644 fs/erofs/tagptr.h

diff --git a/fs/erofs/tagptr.h b/fs/erofs/tagptr.h
new file mode 100644
index 000000000000..121403cff2a3
--- /dev/null
+++ b/fs/erofs/tagptr.h
@@ -0,0 +1,110 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Tagged pointer implementation
+ *
+ * Copyright (C) 2018 Gao Xiang <gaoxiang25@huawei.com>
+ */
+#ifndef __EROFS_TAGPTR_H
+#define __EROFS_TAGPTR_H
+
+#include <linux/types.h>
+#include <linux/build_bug.h>
+
+/*
+ * the name of tagged pointer types are tagptr{1, 2, 3...}_t
+ * avoid directly using the internal structs __tagptr{1, 2, 3...}
+ */
+#define __MAKE_TAGPTR(n) \
+typedef struct __tagptr##n {	\
+	uintptr_t v;	\
+} tagptr##n##_t;
+
+__MAKE_TAGPTR(1)
+__MAKE_TAGPTR(2)
+__MAKE_TAGPTR(3)
+__MAKE_TAGPTR(4)
+
+#undef __MAKE_TAGPTR
+
+extern void __compiletime_error("bad tagptr tags")
+	__bad_tagptr_tags(void);
+
+extern void __compiletime_error("bad tagptr type")
+	__bad_tagptr_type(void);
+
+/* fix the broken usage of "#define tagptr2_t tagptr3_t" by users */
+#define __tagptr_mask_1(ptr, n)	\
+	__builtin_types_compatible_p(typeof(ptr), struct __tagptr##n) ? \
+		(1UL << (n)) - 1 :
+
+#define __tagptr_mask(ptr)	(\
+	__tagptr_mask_1(ptr, 1) ( \
+	__tagptr_mask_1(ptr, 2) ( \
+	__tagptr_mask_1(ptr, 3) ( \
+	__tagptr_mask_1(ptr, 4) ( \
+	__bad_tagptr_type(), 0)))))
+
+/* generate a tagged pointer from a raw value */
+#define tagptr_init(type, val) \
+	((typeof(type)){ .v = (uintptr_t)(val) })
+
+/*
+ * directly cast a tagged pointer to the native pointer type, which
+ * could be used for backward compatibility of existing code.
+ */
+#define tagptr_cast_ptr(tptr) ((void *)(tptr).v)
+
+/* encode tagged pointers */
+#define tagptr_fold(type, ptr, _tags) ({ \
+	const typeof(_tags) tags = (_tags); \
+	if (__builtin_constant_p(tags) && (tags & ~__tagptr_mask(type))) \
+		__bad_tagptr_tags(); \
+tagptr_init(type, (uintptr_t)(ptr) | tags); })
+
+/* decode tagged pointers */
+#define tagptr_unfold_ptr(tptr) \
+	((void *)((tptr).v & ~__tagptr_mask(tptr)))
+
+#define tagptr_unfold_tags(tptr) \
+	((tptr).v & __tagptr_mask(tptr))
+
+/* operations for the tagger pointer */
+#define tagptr_eq(_tptr1, _tptr2) ({ \
+	typeof(_tptr1) tptr1 = (_tptr1); \
+	typeof(_tptr2) tptr2 = (_tptr2); \
+	(void)(&tptr1 == &tptr2); \
+(tptr1).v == (tptr2).v; })
+
+/* lock-free CAS operation */
+#define tagptr_cmpxchg(_ptptr, _o, _n) ({ \
+	typeof(_ptptr) ptptr = (_ptptr); \
+	typeof(_o) o = (_o); \
+	typeof(_n) n = (_n); \
+	(void)(&o == &n); \
+	(void)(&o == ptptr); \
+tagptr_init(o, cmpxchg(&ptptr->v, o.v, n.v)); })
+
+/* wrap WRITE_ONCE if atomic update is needed */
+#define tagptr_replace_tags(_ptptr, tags) ({ \
+	typeof(_ptptr) ptptr = (_ptptr); \
+	*ptptr = tagptr_fold(*ptptr, tagptr_unfold_ptr(*ptptr), tags); \
+*ptptr; })
+
+#define tagptr_set_tags(_ptptr, _tags) ({ \
+	typeof(_ptptr) ptptr = (_ptptr); \
+	const typeof(_tags) tags = (_tags); \
+	if (__builtin_constant_p(tags) && (tags & ~__tagptr_mask(*ptptr))) \
+		__bad_tagptr_tags(); \
+	ptptr->v |= tags; \
+*ptptr; })
+
+#define tagptr_clear_tags(_ptptr, _tags) ({ \
+	typeof(_ptptr) ptptr = (_ptptr); \
+	const typeof(_tags) tags = (_tags); \
+	if (__builtin_constant_p(tags) && (tags & ~__tagptr_mask(*ptptr))) \
+		__bad_tagptr_tags(); \
+	ptptr->v &= ~tags; \
+*ptptr; })
+
+#endif
+
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
