Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A135078549
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Jul 2019 08:52:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4D8BA878B7;
	Mon, 29 Jul 2019 06:52:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qWYNdm-pm1Pf; Mon, 29 Jul 2019 06:52:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3AC4B878AE;
	Mon, 29 Jul 2019 06:52:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B5DE61BF966
 for <devel@linuxdriverproject.org>; Mon, 29 Jul 2019 06:52:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B2C2E883B8
 for <devel@linuxdriverproject.org>; Mon, 29 Jul 2019 06:52:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kD4pp0eyTLkL for <devel@linuxdriverproject.org>;
 Mon, 29 Jul 2019 06:52:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 178DE88471
 for <devel@driverdev.osuosl.org>; Mon, 29 Jul 2019 06:52:29 +0000 (UTC)
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 21B1FA02D945F686E4E7;
 Mon, 29 Jul 2019 14:52:25 +0800 (CST)
Received: from architecture4.huawei.com (10.140.130.215) by smtp.huawei.com
 (10.3.19.210) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 29 Jul
 2019 14:52:15 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 <devel@driverdev.osuosl.org>
Subject: [PATCH 02/22] staging: erofs: rename source files for better
 understanding
Date: Mon, 29 Jul 2019 14:51:39 +0800
Message-ID: <20190729065159.62378-3-gaoxiang25@huawei.com>
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

Keep in line with erofs-outofstaging patchset as well, see
https://lore.kernel.org/linux-fsdevel/20190725095658.155779-1-gaoxiang25@huawei.com/

Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
---
 drivers/staging/erofs/Makefile                     | 2 +-
 drivers/staging/erofs/{include/linux => }/tagptr.h | 6 +++---
 drivers/staging/erofs/{unzip_vle.c => zdata.c}     | 4 ++--
 drivers/staging/erofs/{unzip_vle.h => zdata.h}     | 8 ++++----
 drivers/staging/erofs/{unzip_pagevec.h => zpvec.h} | 8 ++++----
 5 files changed, 14 insertions(+), 14 deletions(-)
 rename drivers/staging/erofs/{include/linux => }/tagptr.h (97%)
 rename drivers/staging/erofs/{unzip_vle.c => zdata.c} (99%)
 rename drivers/staging/erofs/{unzip_vle.h => zdata.h} (97%)
 rename drivers/staging/erofs/{unzip_pagevec.h => zpvec.h} (96%)

diff --git a/drivers/staging/erofs/Makefile b/drivers/staging/erofs/Makefile
index 3ade87e78d06..5cdae21cb5af 100644
--- a/drivers/staging/erofs/Makefile
+++ b/drivers/staging/erofs/Makefile
@@ -9,5 +9,5 @@ obj-$(CONFIG_EROFS_FS) += erofs.o
 ccflags-y += -I $(srctree)/$(src)/include
 erofs-objs := super.o inode.o data.o namei.o dir.o utils.o
 erofs-$(CONFIG_EROFS_FS_XATTR) += xattr.o
-erofs-$(CONFIG_EROFS_FS_ZIP) += unzip_vle.o zmap.o decompressor.o
+erofs-$(CONFIG_EROFS_FS_ZIP) += decompressor.o zmap.o zdata.o
 
diff --git a/drivers/staging/erofs/include/linux/tagptr.h b/drivers/staging/erofs/tagptr.h
similarity index 97%
rename from drivers/staging/erofs/include/linux/tagptr.h
rename to drivers/staging/erofs/tagptr.h
index b3f13773fb99..a72897c86744 100644
--- a/drivers/staging/erofs/include/linux/tagptr.h
+++ b/drivers/staging/erofs/tagptr.h
@@ -4,8 +4,8 @@
  *
  * Copyright (C) 2018 Gao Xiang <gaoxiang25@huawei.com>
  */
-#ifndef _LINUX_TAGPTR_H
-#define _LINUX_TAGPTR_H
+#ifndef __EROFS_FS_TAGPTR_H
+#define __EROFS_FS_TAGPTR_H
 
 #include <linux/types.h>
 #include <linux/build_bug.h>
@@ -106,5 +106,5 @@ tagptr_init(o, cmpxchg(&ptptr->v, o.v, n.v)); })
 	ptptr->v &= ~tags; \
 *ptptr; })
 
-#endif
+#endif	/* __EROFS_FS_TAGPTR_H */
 
diff --git a/drivers/staging/erofs/unzip_vle.c b/drivers/staging/erofs/zdata.c
similarity index 99%
rename from drivers/staging/erofs/unzip_vle.c
rename to drivers/staging/erofs/zdata.c
index 28a98e79c1e9..f7667628bbf1 100644
--- a/drivers/staging/erofs/unzip_vle.c
+++ b/drivers/staging/erofs/zdata.c
@@ -1,12 +1,12 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /*
- * linux/drivers/staging/erofs/unzip_vle.c
+ * linux/drivers/staging/erofs/zdata.c
  *
  * Copyright (C) 2018 HUAWEI, Inc.
  *             http://www.huawei.com/
  * Created by Gao Xiang <gaoxiang25@huawei.com>
  */
-#include "unzip_vle.h"
+#include "zdata.h"
 #include "compress.h"
 #include <linux/prefetch.h>
 
diff --git a/drivers/staging/erofs/unzip_vle.h b/drivers/staging/erofs/zdata.h
similarity index 97%
rename from drivers/staging/erofs/unzip_vle.h
rename to drivers/staging/erofs/zdata.h
index d92515cd1c06..8d0119d697da 100644
--- a/drivers/staging/erofs/unzip_vle.h
+++ b/drivers/staging/erofs/zdata.h
@@ -1,16 +1,16 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 /*
- * linux/drivers/staging/erofs/unzip_vle.h
+ * linux/drivers/staging/erofs/zdata.h
  *
  * Copyright (C) 2018 HUAWEI, Inc.
  *             http://www.huawei.com/
  * Created by Gao Xiang <gaoxiang25@huawei.com>
  */
-#ifndef __EROFS_FS_UNZIP_VLE_H
-#define __EROFS_FS_UNZIP_VLE_H
+#ifndef __EROFS_FS_ZDATA_H
+#define __EROFS_FS_ZDATA_H
 
 #include "internal.h"
-#include "unzip_pagevec.h"
+#include "zpvec.h"
 
 #define Z_EROFS_NR_INLINE_PAGEVECS      3
 
diff --git a/drivers/staging/erofs/unzip_pagevec.h b/drivers/staging/erofs/zpvec.h
similarity index 96%
rename from drivers/staging/erofs/unzip_pagevec.h
rename to drivers/staging/erofs/zpvec.h
index f07302c3c3f5..77bf6877bad8 100644
--- a/drivers/staging/erofs/unzip_pagevec.h
+++ b/drivers/staging/erofs/zpvec.h
@@ -1,15 +1,15 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 /*
- * linux/drivers/staging/erofs/unzip_pagevec.h
+ * linux/drivers/staging/erofs/zpvec.h
  *
  * Copyright (C) 2018 HUAWEI, Inc.
  *             http://www.huawei.com/
  * Created by Gao Xiang <gaoxiang25@huawei.com>
  */
-#ifndef __EROFS_UNZIP_PAGEVEC_H
-#define __EROFS_UNZIP_PAGEVEC_H
+#ifndef __EROFS_FS_ZPVEC_H
+#define __EROFS_FS_ZPVEC_H
 
-#include <linux/tagptr.h>
+#include "tagptr.h"
 
 /* page type in pagevec for unzip subsystem */
 enum z_erofs_page_type {
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
